// kuro updater - simple console updater for kuro.exe (Windows, WinINet, no external deps)
//
// Build (MSVC):   cl /EHsc /O2 updater.cpp /link wininet.lib
// Build (MinGW):  g++ -O2 updater.cpp -o updater.exe -lwininet
//
// Place updater.exe in the same folder as kuro.exe and run it.

#include <windows.h>
#include <wininet.h>

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <string>

#ifdef _MSC_VER
#pragma comment(lib, "wininet.lib")
#endif

// ------------------------------- CONFIG ---------------------------------
static const char* UPDATE_URL  = "https://obfuscated";
static const char* LOCAL_FILE  = "kuro.exe";
static const char* TEMP_FILE   = "kuro.exe.download";
static const int   BAR_WIDTH   = 40;
// ------------------------------------------------------------------------

// ASCII art by ldb - https://asciiart.website/art/6080
// (raw string literal, so backslashes and quotes need no escaping)
static const char* BANNER = R"KURO(   /\       /\
  / ".-'"'-." \
 ;   _     _   ;
 ;  (o)   (o) _;_
  \   = Y =  (,,,)
   '   .-.   | -,
  .(________/   ;
 . __ (MN)   '  ;
/     )        ,
;  --'          ;
 . __  . , __  .
  (,,,)   (,,,)   ldb)KURO";

#ifndef ENABLE_VIRTUAL_TERMINAL_PROCESSING
#define ENABLE_VIRTUAL_TERMINAL_PROCESSING 0x0004
#endif

#define C_RED    "\x1b[31m"
#define C_GREEN  "\x1b[32m"
#define C_YELLOW "\x1b[33m"
#define C_RESET  "\x1b[0m"

// Small RAII wrapper so we never leak an HINTERNET.
struct NetHandle {
    HINTERNET h = nullptr;
    ~NetHandle() { if (h) InternetCloseHandle(h); }
};

static void enableAnsiColors()
{
    HANDLE out = GetStdHandle(STD_OUTPUT_HANDLE);
    DWORD mode = 0;
    if (out != INVALID_HANDLE_VALUE && GetConsoleMode(out, &mode))
        SetConsoleMode(out, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
}

static bool getLocalSize(const char* path, uint64_t& size)
{
    WIN32_FILE_ATTRIBUTE_DATA info;
    if (!GetFileAttributesExA(path, GetFileExInfoStandard, &info))
        return false;
    size = (static_cast<uint64_t>(info.nFileSizeHigh) << 32) | info.nFileSizeLow;
    return true;
}

// Opens a request (HEAD or GET) and verifies we got HTTP 200.
static bool openRequest(HINTERNET session, const char* url, const char* method,
                        NetHandle& conn, NetHandle& req)
{
    char host[256] = {0};
    char path[2048] = {0};

    URL_COMPONENTSA uc = {};
    uc.dwStructSize     = sizeof(uc);
    uc.lpszHostName     = host;
    uc.dwHostNameLength = sizeof(host);
    uc.lpszUrlPath      = path;
    uc.dwUrlPathLength  = sizeof(path);

    if (!InternetCrackUrlA(url, 0, 0, &uc))
        return false;

    conn.h = InternetConnectA(session, host, uc.nPort, nullptr, nullptr,
                              INTERNET_SERVICE_HTTP, 0, 0);
    if (!conn.h) return false;

    DWORD flags = INTERNET_FLAG_RELOAD | INTERNET_FLAG_NO_CACHE_WRITE | INTERNET_FLAG_NO_UI;
    if (uc.nScheme == INTERNET_SCHEME_HTTPS)
        flags |= INTERNET_FLAG_SECURE;

    req.h = HttpOpenRequestA(conn.h, method, path, nullptr, nullptr, nullptr, flags, 0);
    if (!req.h) return false;

    if (!HttpSendRequestA(req.h, nullptr, 0, nullptr, 0))
        return false;

    DWORD status = 0, len = sizeof(status);
    if (!HttpQueryInfoA(req.h, HTTP_QUERY_STATUS_CODE | HTTP_QUERY_FLAG_NUMBER,
                        &status, &len, nullptr))
        return false;

    return status == 200;
}

static bool readContentLength(HINTERNET req, uint64_t& size)
{
    char buf[64] = {0};
    DWORD len = sizeof(buf);
    if (!HttpQueryInfoA(req, HTTP_QUERY_CONTENT_LENGTH, buf, &len, nullptr))
        return false;
    size = _strtoui64(buf, nullptr, 10);
    return true;
}

static bool getRemoteSize(HINTERNET session, uint64_t& size)
{
    NetHandle conn, req;
    if (!openRequest(session, UPDATE_URL, "HEAD", conn, req))
        return false;
    return readContentLength(req.h, size);
}

static void drawProgress(uint64_t done, uint64_t total)
{
    double frac = total ? static_cast<double>(done) / static_cast<double>(total) : 0.0;
    if (frac > 1.0) frac = 1.0;
    int filled = static_cast<int>(frac * BAR_WIDTH);

    std::string bar = "[";
    for (int i = 0; i < BAR_WIDTH; ++i)
        bar += (i < filled) ? '#' : '-';
    bar += ']';

    printf("\r%s %3d%%  %.2f / %.2f MB   ", bar.c_str(), static_cast<int>(frac * 100),
           done / (1024.0 * 1024.0), total / (1024.0 * 1024.0));
    fflush(stdout);
}

static bool downloadUpdate(HINTERNET session)
{
    NetHandle conn, req;
    if (!openRequest(session, UPDATE_URL, "GET", conn, req)) {
        printf(C_RED "Could not start the download.\n" C_RESET);
        return false;
    }

    uint64_t total = 0;
    if (!readContentLength(req.h, total) || total == 0) {
        printf(C_RED "Server did not report a file size.\n" C_RESET);
        return false;
    }

    HANDLE file = CreateFileA(TEMP_FILE, GENERIC_WRITE, 0, nullptr,
                              CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, nullptr);
    if (file == INVALID_HANDLE_VALUE) {
        printf(C_RED "Could not create temporary file '%s'.\n" C_RESET, TEMP_FILE);
        return false;
    }

    char buffer[16 * 1024];
    uint64_t done = 0;
    bool ok = true;

    drawProgress(0, total);
    while (true) {
        DWORD got = 0;
        if (!InternetReadFile(req.h, buffer, sizeof(buffer), &got)) { ok = false; break; }
        if (got == 0) break;  // end of file

        DWORD written = 0;
        if (!WriteFile(file, buffer, got, &written, nullptr) || written != got) { ok = false; break; }

        done += got;
        drawProgress(done, total);
    }
    CloseHandle(file);
    printf("\n");

    if (!ok || done != total) {
        printf(C_RED "Download failed or was incomplete (%llu of %llu bytes).\n" C_RESET,
               static_cast<unsigned long long>(done), static_cast<unsigned long long>(total));
        DeleteFileA(TEMP_FILE);
        return false;
    }

    // Swap the finished download in for the old exe.
    if (!MoveFileExA(TEMP_FILE, LOCAL_FILE, MOVEFILE_REPLACE_EXISTING)) {
        printf(C_RED "Could not replace %s (error %lu). Is it still running?\n" C_RESET,
               LOCAL_FILE, GetLastError());
        printf("The new version was saved as '%s'.\n", TEMP_FILE);
        return false;
    }
    return true;
}

// Returns true if the answer is "yes". Empty input = defaultYes.
static bool askYesNo(const char* prompt, bool defaultYes)
{
    printf("%s %s ", prompt, defaultYes ? "[Y/n]" : "[y/N]");
    std::string line;
    std::getline(std::cin, line);
    if (line.empty()) return defaultYes;
    return line[0] == 'y' || line[0] == 'Y';
}

static void waitForEnter()
{
    printf("\nPress Enter to exit...");
    std::string dummy;
    std::getline(std::cin, dummy);
}

int main()
{
    enableAnsiColors();
    printf("%s\n\n@ Kuro Updater @\n\n", BANNER);

    NetHandle session;
    session.h = InternetOpenA("KuroUpdater/1.0", INTERNET_OPEN_TYPE_PRECONFIG,
                              nullptr, nullptr, 0);
    if (!session.h) {
        printf(C_RED "Could not initialise networking.\n" C_RESET);
        waitForEnter();
        return 1;
    }

    printf("Checking for updates...\n");

    uint64_t remoteSize = 0;
    if (!getRemoteSize(session.h, remoteSize)) {
        printf(C_RED "Could not reach the update server or find the file.\n" C_RESET);
        waitForEnter();
        return 1;
    }

    uint64_t localSize = 0;
    bool haveLocal = getLocalSize(LOCAL_FILE, localSize);

    if (haveLocal)
        printf("Local size : %llu bytes\n", static_cast<unsigned long long>(localSize));
    else
        printf("Local size : (%s not found)\n", LOCAL_FILE);
    printf("Server size: %llu bytes\n\n", static_cast<unsigned long long>(remoteSize));

    bool doUpdate = false;

    if (haveLocal && localSize == remoteSize) {
        printf(C_GREEN "Your %s is up to date!\n" C_RESET, LOCAL_FILE);
        doUpdate = askYesNo("Update anyway?", false);
    } else {
        if (haveLocal)
            printf(C_RED "Your %s is OUT OF DATE.\n" C_RESET, LOCAL_FILE);
        else
            printf(C_RED "%s was not found - a fresh download is needed.\n" C_RESET, LOCAL_FILE);
        doUpdate = askYesNo("Download the update now?", true);
    }

    if (doUpdate) {
        printf("\nDownloading...\n");
        if (downloadUpdate(session.h))
            printf(C_GREEN "\nUpdate complete!\n" C_RESET);
        else
            printf(C_YELLOW "\nUpdate was not applied.\n" C_RESET);
    } else {
        printf("\nNo changes made.\n");
    }

    waitForEnter();
    return 0;
}
