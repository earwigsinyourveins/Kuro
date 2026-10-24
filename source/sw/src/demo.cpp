//-------------------------------------------------------------------------
/*
Copyright (C) 1997, 2005 - 3D Realms Entertainment

This file is part of Shadow Warrior version 1.2

Shadow Warrior is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

Original Source: 1997 - Frank Maddin and Jim Norwood
Prepared for public release: 03/28/2005 - Charlie Wiederhold, 3D Realms
*/
//-------------------------------------------------------------------------

//#define MAIN
//#define QUIET
#include "build.h"
#include "cache1d.h"

#include "keys.h"
#include "names2.h"
#include "panel.h"
#include "game.h"
#include "network.h"

#include "mytypes.h"
#include "control.h"
#include "function.h"
#include "demo.h"

#include "player.h"
#include "menus.h"

// These headers are required by the retained demo-playback hotkeys.
// They do not enable Poda's extended demo-file format.
#include "config.h"
#include "text.h"

// Poda's Windows-only demo-format/conversion dependencies remain disabled for vanilla parity.
// #include <windows.h>
// #include <Shlobj.h>
// #include <sys/stat.h>
#include <algorithm>
#include <cctype>
#include <string>
#include <vector>
#include <ctime>
#include <chrono>
#include <cerrno>
#include <climits>
#include <sys/stat.h>
#ifdef _WIN32
# include <direct.h>
# include <io.h>
#else
# include <dirent.h>
#endif

DFILE DemoFileIn = DF_ERR;
FILE *DemoFileOut;
SWBOOL DemoPlaying = FALSE;
SWBOOL DEMOSS = FALSE;
SWBOOL NoHide = FALSE;
SWBOOL DemoRecording = FALSE;
SWBOOL DemoEdit = FALSE;
SWBOOL DemoMode = FALSE;
// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// The flag enabled the one-off conversion path to Poda's extended demo format.
//SWBOOL CONVERTDEMO = FALSE;
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Kept for the demo HUD code; classic recordings do not set these values.
int DemoNew = 0;
unsigned long TOTALDEMOSECONDS = 0;
unsigned long DemoRunningTics = 0;
unsigned long DemoTotalTics = 0;
SWBOOL DemoTotalTicsAvailable = FALSE;
SWBOOL DemoModeMenuState = FALSE;
char DemoFileName[166] = "demo.dmo";
char DemoLevelName[80] = "";
// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// The extended format embedded these names and colors inside each demo.
//char DemoPlayerNames[8][16];
//char DemoPlayerColors[8];
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.
// extern char UserMapName[80];  // Used by the disabled converter.
extern SWBOOL NewGame;

// Demo sync stuff
FILE *DemoSyncFile;
SWBOOL DemoSyncTest = FALSE, DemoSyncRecord = FALSE;
char DemoTmpName[16] = "";

SW_PACKET DemoBuffer[DEMO_BUFFER_MAX];
int DemoRecCnt = 0;                    // Can only record 1-player game

SWBOOL DemoDone;
bool isPaused = false;
void DemoWriteHeader(void);
void DemoReadHeader(void);
void DemoReadBuffer(void);


//
// DemoDebug Vars
//

// DemoDebugMode will close the file after every write
SWBOOL DemoDebugMode = FALSE;
//SWBOOL DemoDebugMode = TRUE;
SWBOOL DemoInitOnce = FALSE;
short DemoDebugBufferMax = 1;

// Takusan-derived automatic multiplayer demo archive state. Metadata is kept
// in sidecar files; the recorded DMO itself remains the classic vanilla format.
static SWBOOL DemoAutoRecording = FALSE;
// Use the compile-time regular-game maximum for storage. MAX_SW_PLAYERS depends
// on SW_SHAREWARE, which is selected at runtime and therefore cannot be used as
// a C++ static array bound. Shareware games use only their first four entries.
static char DemoAutoPlayerNames[MAX_SW_PLAYERS_REG][32];
static short DemoAutoPlayerKills[MAX_SW_PLAYERS_REG];
static char DemoAutoPlayerColors[MAX_SW_PLAYERS_REG];
static SWBOOL DemoAutoPlayerCaptured[MAX_SW_PLAYERS_REG];
static short DemoAutoPlayerCount = 0;
static short DemoAutoScoreboardCount = 0;
static SWBOOL DemoAutoScoreboardAvailable = FALSE;
static short DemoAutoLevel = 0;
static char DemoAutoMapName[160] = "";
static SWBOOL DemoAutoBots = FALSE;
static uint8_t DemoAutoBotCount = 0;
// Chat lines seen by this client during the automatic recording. These are
// appended to the archive TXT when the DMO and sidecar files are finalized.
static std::vector<std::string> DemoAutoChatLines;

extern char LevelName[];
extern char LevelSong[16];
extern char UserMapName[80];
extern uint8_t FakeMultiNumPlayers;
extern SWBOOL BotMode;
extern int32_t MapCopyEnabled;
extern SWBOOL QuitFlag;

// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// This converter rewrote classic demos into Poda's extended format and generated metadata-based filenames.
////PODA:  JUST A WAY TO CONVERT DOS DEMOS TO THE NEW FORMAT.
//
//void ConvertDemo(void)
//{
//    DEMO_HEADER dh;
//    DEMO_START_POS dsp;
//    PLAYERp pp;
//
//    FILE* DemoFileOut = fopen("demofixed.dmo", "wb");
//    FILE* in = fopen(DemoFileName, "rb");
//
//    if (!DemoFileOut)
//        return;
//
//    strcpy(dh.map_name, LevelName);
//    strcpy(dh.LevelSong, LevelSong);
//    dh.Level = Level;
//
//    if (FakeMultiNumPlayers)
//        dh.numplayers = FakeMultiNumPlayers;
//    else
//        dh.numplayers = numplayers;
//
//    unsigned char ver = 63;
//    unsigned long secs = totalsynctics / 120;
//    char buf[64] = { 0 };
//
//    fwrite(&secs, sizeof(secs), 1, DemoFileOut);
//    fwrite(&ver, 1, 1, DemoFileOut);
//
//    for (pp = Player; pp < Player + 8; pp++)
//        fwrite(pp->PlayerName, 16, 1, DemoFileOut);
//
//    for (pp = Player; pp < Player + 8; pp++)
//        fwrite(&pp->TeamColor, 1, 1, DemoFileOut);
//
//    for (pp = Player; pp < Player + 8; pp++)
//        fwrite(&pp->Kills, 2, 1, DemoFileOut);
//
//    for (int x = 0; x < 8; ++x)
//        for (int y = 0; y < 8; ++y)
//            fwrite(&Player[x].KilledPlayer[y], 2, 1, DemoFileOut);
//
//    FindLevelInfo(LevelName, &Level);
//
//    if (Level > 0)
//        strcpy(dh.map_description, LevelInfo[Level].Description);
//
//    else
//    {
//
//        FindLevelInfo2(LevelName, &Level);
//
//        if (Level > 0)
//        {
//
//            dh.Level = Level;
//            strcpy(dh.map_description, DefaultLevelInfo[Level].Description);
//
//        }
//
//        else
//            strcpy(dh.map_description, "");
//
//    }
//
//    dh.Level = Level;
//
//    strcpy(dh.mod_name, &MODNAME[0]);
//
//    std::string duhmap = dh.map_name;
//
//    if (stricmp(duhmap.substr(duhmap.length() - 4, 4).c_str(), ".map") == 0)
//    {
//
//        duhmap = duhmap.substr(0, duhmap.length() - 4);
//        //strcpy(dh.map_name, duhmap.c_str());
//
//    }
//
//
//    fwrite(&dh, sizeof(dh), 1, DemoFileOut);
//
//    char buf2[200];
//
//    //Need to copy position information from demo since this is before the demo starts.
//
//    fseek(in, 35, 0);
//    fread(&buf2[0], 18 * dh.numplayers, 1, in);
//
//    fwrite(&buf2[0], 18 * dh.numplayers, 1, DemoFileOut);
//
//    //Then, just write 0s for the remaining player positions.
//
//    for (int x = 0; x < 8 - dh.numplayers; ++x)
//        buf2[x] = 0;
//
//    fwrite(&buf2[0], 18 * (8 - dh.numplayers), 1, DemoFileOut);
//
//    //PODA:  SKILL NEEDS SOME ADJUSTMENT IN CERTAIN CASES.
//
//    if (DebugActor && numplayers == 1)
//        Skill = -1;
//
//    if (numplayers >= 2)
//        Skill = gs.NetMonsters;
//
//    fwrite(&Skill, sizeof(Skill), 1, DemoFileOut);
//    fwrite(&gNet, sizeof(gNet), 1, DemoFileOut);
//
//    fseek(in, 57 + 18 * dh.numplayers, 0);
//
//    while (fread(buf2, 1, 1, in) == 1)
//        fwrite(&buf2[0], 1, 1, DemoFileOut);
//
//    fclose(in); 
//
//    fclose(DemoFileOut);
//
//    std::string newName;
//    char buffy[200];
//    bool doColors = false;
//
//    for (int x = 0; x < dh.numplayers; ++x)
//    {
//
//        if (Player[x].TeamColor != x || gNet.TeamPlay)
//        {
//
//            doColors = true;
//            break;
//
//        }
//
//    }
//
//    for (int x = 0; x < dh.numplayers; ++x)
//    {
//
//        if (doColors)
//        {
//
//            sprintf(buffy, "%d#", Player[x].TeamColor + 1);
//            newName += buffy;
//
//        }
//
//        sprintf(buffy, "%s[%01d]-", Player[x].PlayerName, Player[x].Kills);
//
//        newName += buffy;
//
//    }
//
//    newName = newName.substr(0, newName.length() - 1);
//
//
//    struct _stat sb;
//    _stat(DemoFileName, &sb);
//
//    std::string date = ctime(&sb.st_mtime);
//
//    char month[20];
//    char day[20];
//    char year[20];
//
//    sprintf(day, "%c%c",date[8], date[9]); 
//    sprintf(month, "%c%c%c", date[4], date[5], date[6]);
//    sprintf(year, "%c%c%c%c", date[20], date[21], date[22], date[23]);
//
//    if (stricmp(month, "jan") == 0)
//        strcpy(month, "01");
//
//    else if (stricmp(month, "feb") == 0)
//        strcpy(month, "02");
//
//    else if (stricmp(month, "mar") == 0)
//        strcpy(month, "03");
//
//    else if (stricmp(month, "apr") == 0)
//        strcpy(month, "04");
//
//    else if (stricmp(month, "may") == 0)
//        strcpy(month, "05");
//
//    else if (stricmp(month, "jun") == 0)
//        strcpy(month, "06");
//
//    else if (stricmp(month, "jul") == 0)
//        strcpy(month, "07");
//
//    else if (stricmp(month, "aug") == 0)
//        strcpy(month, "08");
//
//    else if (stricmp(month, "sep") == 0)
//        strcpy(month, "09");
//
//    else if (stricmp(month, "oct") == 0)
//        strcpy(month, "10");
//
//    else if (stricmp(month, "nov") == 0)
//        strcpy(month, "11");
//
//    else if (stricmp(month, "dec") == 0)
//        strcpy(month, "12");
//
//    if (!isdigit(day[0]))
//        day[0] = '0';
//
//    sprintf(buffy, "(%s-%s-%sA ", year, month, day);
//
//    newName += buffy;
//
//    long hoursTime, minutesTime;
//
//    hoursTime = secs / 3600;
//
//    if (hoursTime > 99)
//        hoursTime = 99;
//
//    minutesTime = (secs % 3600) / 60;
//
//    if (minutesTime > 59)
//        minutesTime = 59;
//
//    secs = ((secs % 3600) % 60);
//
//    if (secs > 59)
//        secs = 59;
//
//    sprintf(buffy, "%02d%02d%02d)", hoursTime, minutesTime, secs);
//
//    newName += buffy;
//
//    if (Level == 0)
//        newName += duhmap;
//
//    else
//        newName += dh.map_description;
//
//    std::transform(newName.begin(), newName.end(), newName.begin(), toupper);
//
//    newName += ".dmo";
//
//    system(("move /y demofixed.dmo \"" + newName + "\"").c_str());
//
//}
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.

///////////////////////////////////////////
//
// Demo File Manipulation
//
///////////////////////////////////////////

char *DemoSyncFileName(void)
{
    static char file_name[32];
    char *ptr;
    strcpy(file_name, DemoFileName);

    if ((ptr = strchr(file_name, '.')) == 0)
        strcat(file_name, ".dms");
    else
    {
        *ptr = '\0';
        strcat(file_name, ".dms");
    }

    return file_name;
}

void
DemoSetup(void)
{
    if (DemoRecording)
    {
        if (DemoSyncRecord)
            DemoSyncFile = fopen(DemoSyncFileName(),"wb");

        DemoWriteHeader();
        memset(&DemoBuffer, -1, sizeof(DemoBuffer));
    }

    if (DemoPlaying)
    {
        if (DemoSyncRecord)
            DemoSyncFile = fopen(DemoSyncFileName(),"wb");
        if (DemoSyncTest)
            DemoSyncFile = fopen(DemoSyncFileName(),"rb");

        DemoReadHeader();
        memset(&DemoBuffer, -1, sizeof(DemoBuffer));
        DemoReadBuffer();
    }
}

void
DemoRecordSetup(void)
{
    if (DemoRecording)
    {
        if (DemoSyncRecord)
            DemoSyncFile = fopen(DemoSyncFileName(),"wb");

        DemoWriteHeader();
        memset(&DemoBuffer, -1, sizeof(DemoBuffer));
    }
}

void
DemoPlaySetup(void)
{
    if (DemoPlaying)
    {
        if (DemoSyncRecord)
            DemoSyncFile = fopen(DemoSyncFileName(),"wb");
        if (DemoSyncTest)
            DemoSyncFile = fopen(DemoSyncFileName(),"rb");

        DemoReadHeader();
        memset(&DemoBuffer, -1, sizeof(DemoBuffer));
        DemoReadBuffer();
    }
}

void
DemoWriteHeader(void)
{
    DEMO_HEADER dh;
    DEMO_START_POS dsp;
    PLAYERp pp;

    DemoFileOut = fopen(DemoFileName, "wb");

    if (!DemoFileOut)
    {
        DemoRecording = FALSE;
        DemoAutoRecording = FALSE;
        OSD_Printf("Could not create demo file %s; recording disabled.\n", DemoFileName);
        return;
    }

    // Write the original Shadow Warrior demo header layout.
    memset(&dh, 0, sizeof(dh));
    strncpy(dh.map_name, LevelName, sizeof(dh.map_name) - 1);
    dh.map_name[sizeof(dh.map_name) - 1] = '\0';
    dh.numplayers = FakeMultiNumPlayers ? FakeMultiNumPlayers : numplayers;
    dh.Level = Level;
    strncpy(dh.LevelSong, LevelSong, sizeof(dh.LevelSong) - 1);
    dh.LevelSong[sizeof(dh.LevelSong) - 1] = '\0';

// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// Writes duration/version, names, colors, scores, map description/mod metadata, and eight starting positions.
//	//PODA:  NEW HEADER HAS VERSION NUMBER, TIME, PLAYER NAMES, PLAYER COLORS, AND SCORES.
//
//	unsigned char ver = 63;
//	unsigned long secs = totalsynctics / 120;
//    char buf[64] = {0};
//
//	fwrite(&secs, sizeof(secs), 1, DemoFileOut);
//	fwrite(&ver, 1, 1, DemoFileOut);
//
//	for (pp = Player; pp < Player + 8; pp++)
//		fwrite(pp->PlayerName, 16, 1, DemoFileOut);
//
//	for (pp = Player; pp < Player + 8; pp++)
//		fwrite(&pp->TeamColor, 1, 1, DemoFileOut);
//
//    for (pp = Player; pp < Player + 8; pp++)
//         fwrite(&pp->Kills, 2, 1, DemoFileOut);
//
//    for (int x = 0; x < 8; ++x)
//         for (int y = 0; y < 8; ++y)
//            fwrite(&Player[x].KilledPlayer[y], 2, 1, DemoFileOut);
//
//    FindLevelInfo(LevelName, &Level);
//
//    if (Level > 0)
//        strcpy(dh.map_description, LevelInfo[Level].Description);
//
//    else
//    {
//
//        FindLevelInfo2(LevelName, &Level);
//
//        if (Level > 0)
//        {
//
//            dh.Level = Level;
//            strcpy(dh.map_description, DefaultLevelInfo[Level].Description);
//
//        }
//
//        else
//            strcpy(dh.map_description, "");
//
//    }
//
//    strcpy(dh.mod_name, &MODNAME[0]);
//
//	fwrite(&dh, sizeof(dh), 1, DemoFileOut);
//
//    for (pp = Player; pp < Player + 8; pp++)
//    {
//        dsp.x = pp->posx;
//        dsp.y = pp->posy;
//        dsp.z = pp->posz;
//        fwrite(&dsp, sizeof(dsp), 1, DemoFileOut);
//        fwrite(&pp->Flags, sizeof(pp->Flags), 1, DemoFileOut);
//        int16_t ang = fix16_to_int(pp->q16ang);
//        fwrite(&ang, sizeof(ang), 1, DemoFileOut);
//    }
//	
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.

    fwrite(&dh, sizeof(dh), 1, DemoFileOut);

    for (pp = Player; pp < Player + dh.numplayers; pp++)
    {
        dsp.x = pp->posx;
        dsp.y = pp->posy;
        dsp.z = pp->posz;
        fwrite(&dsp, sizeof(dsp), 1, DemoFileOut);
        fwrite(&pp->Flags, sizeof(pp->Flags), 1, DemoFileOut);
        int16_t ang = fix16_to_int(pp->q16ang);
        fwrite(&ang, sizeof(ang), 1, DemoFileOut);
    }

    // Serialize the Skill that is actually in force for this game, exactly as
    // vanilla/VoidSW/DOS do (-1 = No Monsters, 0..3 = Easy..Insane). The menu slider
    // gs.NetMonsters is 1-based (0 = No Monsters) and is converted by
    // MNU_StartNetGame()/PACKET_NEW_GAME into Skill = NetMonsters-1, so it must
    // never be written to the header directly, and the global Skill must never be
    // modified here: it stays live for the rest of the match and the next level.
    // Single-player -debugactor games spawn no actors, so record them as -1.
    short demoSkill = Skill;
    if (DebugActor && numplayers == 1)
        demoSkill = -1;

    fwrite(&demoSkill, sizeof(demoSkill), 1, DemoFileOut);
    fwrite(&gNet, sizeof(gNet), 1, DemoFileOut);

    if (DemoDebugMode)
    {
        DemoDebugBufferMax = numplayers;
        fclose(DemoFileOut);
    }
}

// -----------------------------------------------------------------------------
// Automatic multiplayer demo recording and sidecar archive, ported from
// Takusan's DEMO.C. Keep all match metadata outside the DMO to preserve the
// classic Shadow Warrior demo layout (vanilla parity).
// -----------------------------------------------------------------------------
static bool DemoAutoPathExists(const char *path)
{
    struct stat info;
    return path != NULL && stat(path, &info) == 0;
}

static bool DemoAutoIsDirectory(const char *path)
{
    struct stat info;
    if (path == NULL || stat(path, &info) != 0)
        return false;
#ifdef _WIN32
    return (info.st_mode & _S_IFDIR) != 0;
#else
    return S_ISDIR(info.st_mode);
#endif
}

static bool DemoAutoMakeDirectory(const char *path)
{
    if (DemoAutoIsDirectory(path))
        return true;
#ifdef _WIN32
    if (_mkdir(path) == 0)
        return true;
#else
    if (mkdir(path, 0777) == 0)
        return true;
#endif
    return errno == EEXIST && DemoAutoIsDirectory(path);
}

// Windows limits a single folder-name component to 255 characters. Leave room
// for DEMOS\, the demo/sidecar filenames, and collision suffixes.
#define DEMO_AUTO_FOLDER_COMPONENT_MAX 220

static void DemoAutoSanitizeFolderName(char *dest, size_t dest_size, const char *source)
{
    size_t used = 0;
    if (dest == NULL || dest_size == 0)
        return;
    if (source == NULL)
        source = "";

    while (*source != '\0' && used + 1 < dest_size &&
           used < DEMO_AUTO_FOLDER_COMPONENT_MAX)
    {
        unsigned char c = (unsigned char)*source++;
        // Replace Windows-reserved filename characters in the folder name only.
        if (c < 32 || c == 127 || strchr("<>:\"/\\|?*", c) != NULL)
            c = '-';
        dest[used++] = (char)c;
    }

    // Windows also rejects directory names ending in a dot or a space.
    while (used > 0 && (dest[used - 1] == '.' || dest[used - 1] == ' '))
        dest[used - 1] = '-';
    dest[used] = '\0';

    if (used == 0)
        snprintf(dest, dest_size, "Unknown-demo");
}

// Generate a lowercase suffix letter without consuming the game's krand() stream.
// krand() is gameplay-related and must not be advanced by archive naming.
static char DemoAutoRandomLetter(void)
{
    static unsigned int state = 0;
    static unsigned int sequence = 0;
    const unsigned long long ticks = (unsigned long long)
        std::chrono::high_resolution_clock::now().time_since_epoch().count();

    state ^= (unsigned int)time(NULL);
    state ^= (unsigned int)clock() * 0x9E3779B9U;
    state ^= (unsigned int)ticks;
    state ^= (unsigned int)(ticks >> 32);
    state += ++sequence * 0x85EBCA6BU;
    if (state == 0)
        state = 0xA341316CU;

    // Small local xorshift PRNG, independent of gameplay/demo RNG state.
    state ^= state << 13;
    state ^= state >> 17;
    state ^= state << 5;
    return (char)('a' + (state % 26U));
}

static bool DemoAutoCreateUniqueFolder(const char *base_name, char *folder_path,
                                       size_t folder_path_size)
{
    unsigned int suffix;
    char candidate[DEMO_AUTO_FOLDER_COMPONENT_MAX + 1];
    char suffix_text[16];
    char path[256];

    if (base_name == NULL || base_name[0] == '\0' ||
        folder_path == NULL || folder_path_size == 0)
        return false;

    for (suffix = 1; suffix < 1000000U; ++suffix)
    {
        int written;
        if (suffix == 1)
        {
            snprintf(candidate, sizeof(candidate), "%s", base_name);
        }
        else
        {
            size_t suffix_length, base_length;
            snprintf(suffix_text, sizeof(suffix_text), "-%u", suffix);
            suffix_length = strlen(suffix_text);
            base_length = strlen(base_name);
            if (base_length + suffix_length > DEMO_AUTO_FOLDER_COMPONENT_MAX)
                base_length = DEMO_AUTO_FOLDER_COMPONENT_MAX - suffix_length;
            memcpy(candidate, base_name, base_length);
            memcpy(candidate + base_length, suffix_text, suffix_length + 1);
            while (base_length > 0 &&
                   (candidate[base_length - 1] == '.' || candidate[base_length - 1] == ' '))
                candidate[base_length - 1] = '-';
        }

        written = snprintf(path, sizeof(path), "DEMOS/%s", candidate);
        if (written < 0 || (size_t)written >= sizeof(path) ||
            strlen(path) >= folder_path_size)
            return false;

        // Do not reuse a previous recording's directory; identical labels get -2, -3, ... .
        if (DemoAutoPathExists(path))
            continue;
#ifdef _WIN32
        if (_mkdir(path) == 0)
#else
        if (mkdir(path, 0777) == 0)
#endif
        {
            snprintf(folder_path, folder_path_size, "%s", path);
            return true;
        }
        // A directory may have appeared after the existence check (for example,
        // another game instance finishing the same match); try the next suffix.
        if (errno == EEXIST)
            continue;
        return false;
    }
    return false;
}

static bool DemoAutoSetDailyFilename(const struct tm *record_time, int sequence)
{
    int year;
    int written;
    if (record_time == NULL || sequence < 1 || sequence > 359)
        return false;

    year = (record_time->tm_year + 1900) % 100;
    if (sequence <= 99)
    {
        written = snprintf(DemoFileName, sizeof(DemoFileName),
                           "DEMOS/%02d%02d%02d%02d.DMO",
                           record_time->tm_mday, record_time->tm_mon + 1,
                           year, sequence);
    }
    else
    {
        int extended = sequence - 100;
        written = snprintf(DemoFileName, sizeof(DemoFileName),
                           "DEMOS/%02d%02d%02d%c%d.DMO",
                           record_time->tm_mday, record_time->tm_mon + 1,
                           year, 'A' + (extended / 10), extended % 10);
    }
    return written >= 0 && (size_t)written < sizeof(DemoFileName);
}

void DemoAutoRecordStart(void)
{
    time_t now;
    struct tm *record_time;
    struct tm record_time_copy;
    int sequence, highest_sequence = 0;
    int i;

    if (DemoRecording || DemoPlaying || DemoEdit || DemoMode)
        return;
    if (!DemoAutoMakeDirectory("DEMOS"))
    {
        OSD_Printf("Automatic demo recording disabled: cannot create DEMOS directory.\n");
        return;
    }

    now = time(NULL);
    record_time = localtime(&now);
    if (record_time == NULL || record_time->tm_mday < 1 || record_time->tm_mday > 31 ||
        record_time->tm_mon < 0 || record_time->tm_mon > 11)
    {
        OSD_Printf("Automatic demo recording disabled: could not read the system date.\n");
        return;
    }
    record_time_copy = *record_time;

    // Daily sequence: 01..99, followed by A0..Z9. Scan all 359 possible
    // names so deleting an earlier file never causes later numbers to be reused.
    for (sequence = 1; sequence <= 359; ++sequence)
    {
        if (!DemoAutoSetDailyFilename(&record_time_copy, sequence))
            return;
        if (DemoAutoPathExists(DemoFileName))
            highest_sequence = sequence;
    }
    if (highest_sequence >= 359)
    {
        OSD_Printf("Automatic demo recording disabled: daily demo number limit (359) has been reached.\n");
        DemoFileName[0] = '\0';
        return;
    }
    if (!DemoAutoSetDailyFilename(&record_time_copy, highest_sequence + 1))
        return;

    DemoRecCnt = 0;
    DemoDebugMode = FALSE;
    PedanticMode = TRUE; // Auto-recorded multiplayer demos must use vanilla simulation rules.

    DemoAutoPlayerCount = numplayers;
    if (DemoAutoPlayerCount < 1)
        DemoAutoPlayerCount = 1;
    if (DemoAutoPlayerCount > MAX_SW_PLAYERS)
        DemoAutoPlayerCount = MAX_SW_PLAYERS;

    DemoAutoLevel = (UserMapName[0] != '\0') ? 0 : Level;
    if (DemoAutoLevel <= 0 && UserMapName[0] != '\0')
        snprintf(DemoAutoMapName, sizeof(DemoAutoMapName), "%s", UserMapName);
    else
        snprintf(DemoAutoMapName, sizeof(DemoAutoMapName), "%s", LevelName);

    DemoAutoBots = (BotMode && FakeMultiNumPlayers > 0);
    DemoAutoBotCount = FakeMultiNumPlayers;
    DemoAutoChatLines.clear();
    DemoAutoScoreboardCount = 0;
    DemoAutoScoreboardAvailable = FALSE;

    for (i = 0; i < MAX_SW_PLAYERS; ++i)
    {
        DemoAutoPlayerNames[i][0] = '\0';
        DemoAutoPlayerKills[i] = 0;
        DemoAutoPlayerColors[i] = 0;
        DemoAutoPlayerCaptured[i] = FALSE;
        if (i < DemoAutoPlayerCount)
        {
            snprintf(DemoAutoPlayerNames[i], sizeof(DemoAutoPlayerNames[i]), "%s",
                     Player[i].PlayerName);
            DemoAutoPlayerColors[i] = Player[i].TeamColor;
        }
    }

    DemoRecording = TRUE;
    DemoAutoRecording = TRUE;
    OSD_Printf("Automatic demo recording: %s\n", DemoFileName);
}

// Keep autorecord sidecar colors synchronized with the authoritative network
// PLAYER_OPTIONS packet. The recording starts before the post-options ready
// barrier, so remote players can still have their zero-initialized color here.
// This only updates WANG sidecar metadata; it does not affect gameplay state.
void DemoAutoRecordUpdatePlayerColor(short player_index, unsigned char color)
{
    if (!DemoAutoRecording || player_index < 0 ||
        player_index >= DemoAutoPlayerCount || player_index >= MAX_SW_PLAYERS_REG)
        return;

    DemoAutoPlayerColors[player_index] = (char)color;
}

void DemoAutoRecordChatLine(const char *chat_line)
{
    std::string line;
    const char *p;

    if (!DemoAutoRecording || chat_line == NULL || chat_line[0] == '\0')
        return;

    // A report entry must stay on one line even if a future chat source passes
    // an unexpected carriage return or newline.
    line.reserve(strlen(chat_line));
    for (p = chat_line; *p != '\0'; ++p)
        line += ((*p == '\r' || *p == '\n') ? ' ' : *p);

    if (!line.empty())
        DemoAutoChatLines.push_back(line);
}

void DemoAutoRecordCapturePlayer(short player_index, const char *player_name, short kills)
{
    if (!DemoAutoRecording || player_index < 0 || player_index >= MAX_SW_PLAYERS)
        return;
    if (player_name != NULL)
        snprintf(DemoAutoPlayerNames[player_index], sizeof(DemoAutoPlayerNames[player_index]),
                 "%s", player_name);
    DemoAutoPlayerKills[player_index] = kills;
    DemoAutoPlayerCaptured[player_index] = TRUE;
}

void DemoAutoRecordScoreboardComplete(short player_count)
{
    int i;
    if (!DemoAutoRecording || player_count < 1 || player_count > MAX_SW_PLAYERS)
        return;
    for (i = 0; i < player_count; ++i)
        if (!DemoAutoPlayerCaptured[i])
            return;
    DemoAutoScoreboardCount = player_count;
    DemoAutoScoreboardAvailable = TRUE;
}

static bool DemoAutoCopyFile(const char *source_name, const char *dest_name)
{
    FILE *source = fopen(source_name, "rb");
    FILE *dest;
    char buffer[4096];
    size_t bytes_read;
    bool ok = true;

    if (source == NULL)
        return false;
    dest = fopen(dest_name, "wb");
    if (dest == NULL)
    {
        fclose(source);
        return false;
    }
    while ((bytes_read = fread(buffer, 1, sizeof(buffer), source)) > 0)
    {
        if (fwrite(buffer, 1, bytes_read, dest) != bytes_read)
        {
            ok = false;
            break;
        }
    }
    if (ferror(source))
        ok = false;
    if (fclose(source) != 0)
        ok = false;
    if (fclose(dest) != 0)
        ok = false;
    return ok;
}

static void DemoAutoBuildMapPart(char *map_part, size_t map_part_size)
{
    char map_copy[160];
    char *leaf, *dot, *slash, *backslash;
    if (map_part == NULL || map_part_size == 0)
        return;
    if (DemoAutoLevel > 0)
    {
        snprintf(map_part, map_part_size, "L%d", (int)DemoAutoLevel);
        return;
    }
    snprintf(map_copy, sizeof(map_copy), "%s", DemoAutoMapName);
    slash = strrchr(map_copy, '/');
    backslash = strrchr(map_copy, '\\');
    leaf = map_copy;
    if (slash != NULL && (backslash == NULL || slash > backslash))
        leaf = slash + 1;
    else if (backslash != NULL)
        leaf = backslash + 1;
    dot = strrchr(leaf, '.');
    if (dot != NULL)
        *dot = '\0';
    if (leaf[0] == '\0')
    {
        snprintf(map_part, map_part_size, "UNKNOWN");
        return;
    }
    snprintf(map_part, map_part_size, "%s", leaf);
}

static void DemoAutoSafeCommandName(char *dest, size_t dest_size, const char *source)
{
    size_t used = 0;
    if (dest == NULL || dest_size == 0)
        return;
    if (source == NULL)
        source = "Player";
    while (*source && used + 1 < dest_size)
    {
        unsigned char c = (unsigned char)*source++;
        // Keep generated command files on one command per line and avoid '&' chain injection.
        if (c == '\r' || c == '\n' || c == '&' || c == '"')
            continue;
        dest[used++] = (char)c;
    }
    dest[used] = '\0';
    if (used == 0)
        snprintf(dest, dest_size, "Player");
}

static bool DemoAutoResolveMapFile(char *map_file, size_t map_file_size)
{
    char *dot;
    size_t len;
    if (DemoAutoMapName[0] == '\0' || map_file == NULL || map_file_size == 0)
        return false;
    snprintf(map_file, map_file_size, "%s", DemoAutoMapName);
    dot = strrchr(map_file, '.');
    if (dot == NULL || Bstrcasecmp(dot, ".map") != 0)
    {
        len = strlen(map_file);
        if (len + 4 >= map_file_size)
            return false;
        strcat(map_file, ".map");
    }
    return true;
}

static bool DemoAutoCopyMap(const char *folder_path, char *copied_map_name,
                            size_t copied_name_size)
{
    char source_map[192], dest_map[320];
    char *slash, *backslash, *leaf;
    if (!MapCopyEnabled || DemoAutoLevel > 0 || copied_map_name == NULL || copied_name_size == 0)
        return false;
    copied_map_name[0] = '\0';
    if (!DemoAutoResolveMapFile(source_map, sizeof(source_map)))
        return false;
    slash = strrchr(source_map, '/');
    backslash = strrchr(source_map, '\\');
    leaf = source_map;
    if (slash != NULL && (backslash == NULL || slash > backslash))
        leaf = slash + 1;
    else if (backslash != NULL)
        leaf = backslash + 1;
    if (leaf[0] == '\0' || strlen(leaf) >= copied_name_size)
        return false;
    snprintf(copied_map_name, copied_name_size, "%s", leaf);
    snprintf(dest_map, sizeof(dest_map), "%s/%s", folder_path, leaf);
    if (!DemoAutoCopyFile(source_map, dest_map))
    {
        copied_map_name[0] = '\0';
        return false;
    }
    return true;
}

static bool DemoAutoMapFileSize(unsigned long long *size_result)
{
    char map_file[192];
    buildvfs_kfd map_handle;
    long long map_length;

    if (size_result == NULL || !DemoAutoResolveMapFile(map_file, sizeof(map_file)))
        return false;

    // Maps are opened through Build's virtual filesystem, not necessarily as
    // loose files in the process working directory. Use the same lookup path
    // as the map loader so mounted search directories and archives are handled.
    map_handle = kopen4load(map_file, 0);
    if (map_handle == buildvfs_kfd_invalid)
        return false;

    map_length = (long long)kfilelength(map_handle);
    kclose(map_handle);
    if (map_length < 0)
        return false;

    *size_result = (unsigned long long)map_length;
    return true;
}

static bool DemoAutoWriteWB(const char *file_name, const char *demo_base,
                           const char *copied_map_name)
{
    FILE *out = fopen(file_name, "wt");
    int i, instance_count, player_index, color;
    char map_arg[224], safe_name[64];
    char *dot;
    const char *map_source_name;
    if (out == NULL)
        return false;

    instance_count = DemoAutoBots ? 1 : DemoAutoPlayerCount;
    if (instance_count < 1)
        instance_count = 1;
    fprintf(out, "PLAYERS = %d\n---\n", instance_count);

    map_arg[0] = '\0';
    if (DemoAutoLevel <= 0)
    {
        map_source_name = (copied_map_name != NULL && copied_map_name[0] != '\0')
                          ? copied_map_name : DemoAutoMapName;
        snprintf(map_arg, sizeof(map_arg), "%s", map_source_name);
        dot = strrchr(map_arg, '.');
        if (dot == NULL || Bstrcasecmp(dot, ".map") != 0)
        {
            size_t len = strlen(map_arg);
            if (len + 4 < sizeof(map_arg))
                strcat(map_arg, ".map");
        }
    }

    for (i = 0; i < instance_count; ++i)
    {
        player_index = DemoAutoBots ? 0 : i;
        color = (int)DemoAutoPlayerColors[player_index];
        if ((unsigned int)color > 7U)
            color = 0;
        DemoAutoSafeCommandName(safe_name, sizeof(safe_name),
                                DemoAutoPlayerNames[player_index]);
        fprintf(out, "INSTANCE%d = MOUNT C . & C: & ", i + 1);
        if (DemoAutoBots)
        {
            fprintf(out, "vcommit sw.exe -dp%s.DMO -bots%d ", demo_base,
                    (int)DemoAutoBotCount);
        }
        else
        {
            if (i == 0)
                fprintf(out, "ipxnet startserver & ");
            else
                fprintf(out, "ipxnet connect localhost & ");
            fprintf(out, "ipxsetup -player %d -nodes %d vcommit sw.exe -dp%s.DMO ",
                    i + 1, instance_count, demo_base);
        }
        if (DemoAutoLevel > 0)
            fprintf(out, "-level%d ", (int)DemoAutoLevel);
        else if (map_arg[0] != '\0')
            fprintf(out, "-map %s ", map_arg);
        fprintf(out, "-autonet 0,3,0,1,1,0,20,0,%d,0 -name %s\n", color, safe_name);
    }
    if (fclose(out) != 0)
        return false;
    return true;
}

static bool DemoAutoWriteTXT(const char *file_name, const char *demo_base,
                             const char *archive_label)
{
    FILE *out = fopen(file_name, "wt");
    int i, count;
    unsigned long long map_size;
    if (out == NULL)
        return false;

    fprintf(out, "%s\n", archive_label);
    fprintf(out, "DEMO: %s.DMO\n", demo_base);
    if (DemoAutoLevel > 0)
        fprintf(out, "LEVEL: %d\n", (int)DemoAutoLevel);
    else if (DemoAutoMapFileSize(&map_size))
        fprintf(out, "MAP: %s | SIZE: %llu BYTES\n", DemoAutoMapName, map_size);
    else
        fprintf(out, "MAP: %s | SIZE: UNAVAILABLE\n", DemoAutoMapName);

    fprintf(out, "PLAYNUM: %d\n---\n", (int)DemoAutoPlayerCount);
    fprintf(out, "%s\n", DemoAutoScoreboardAvailable ? "SCOREBOARD" : "SCORE UNAVAILABLE");
    count = DemoAutoScoreboardAvailable ? DemoAutoScoreboardCount : DemoAutoPlayerCount;
    for (i = 0; i < count; ++i)
    {
        if (DemoAutoScoreboardAvailable && i < DemoAutoScoreboardCount)
            fprintf(out, "PLAYER %d: %s | KILLS: %d\n", i + 1,
                    DemoAutoPlayerNames[i][0] ? DemoAutoPlayerNames[i] : "Unknown",
                    (int)DemoAutoPlayerKills[i]);
        else
            fprintf(out, "PLAYER %d: %s | KILLS: UNAVAILABLE\n", i + 1,
                    DemoAutoPlayerNames[i][0] ? DemoAutoPlayerNames[i] : "Unknown");
    }
    // Include CTF scores only when the same game-mode/map-counter conditions
    // used by the compact HUD are satisfied. This is report-only and does not
    // alter match scoring, networking, or the recorded demo.
    {
        int red_captures = -1;
        int blue_captures = -1;
        if (GetCompactCTFCaptureScores(&red_captures, &blue_captures))
        {
            fprintf(out, "\nFLAG CAPTURES\n---\n");
            if (red_captures >= 0)
                fprintf(out, "RED: %d\n", red_captures);
            else
                fprintf(out, "RED: UNAVAILABLE\n");
            if (blue_captures >= 0)
                fprintf(out, "BLUE: %d\n", blue_captures);
            else
                fprintf(out, "BLUE: UNAVAILABLE\n");
            if (FlagCaptureLimit > 0)
                fprintf(out, "CAPTURE LIMIT: %d\n", FlagCaptureLimit);
		}
    }

    fprintf(out, "SUBMIT YOUR DEMO TO WANGBANG DEMO ARCHIVE! https://desomorphine.ru/sw/demos\n");

    // Keep chat history at the end so the original report header and scoreboard
    // remain unchanged. This is the local client's chronological chat view.
    fprintf(out, "\nCHAT LOG\n---\n");
    if (DemoAutoChatLines.empty())
        fprintf(out, "HMMM... NO POWER\n");
    else
    {
        size_t chat_index;
        for (chat_index = 0; chat_index < DemoAutoChatLines.size(); ++chat_index)
            fprintf(out, "%s\n", DemoAutoChatLines[chat_index].c_str());
    }

    if (fclose(out) != 0)
        return false;
    return true;
}

// Write a safe double-click helper next to each autorecorded demo. Literal
// percent signs in Windows filenames must be doubled in batch source; delayed
// expansion is disabled in the generated script so exclamation marks survive.
static void DemoAutoWriteBatchLiteral(FILE *out, const char *value)
{
    const unsigned char *p = (const unsigned char *)(value ? value : "");
    while (*p)
    {
        if (*p == '%')
            fputc('%', out);
        fputc(*p++, out);
    }
}


static bool DemoAutoWritePlayDemoBatch(const char *file_name, const char *demo_base,
                                       const char *copied_map_name)
{
    FILE *out;

    if (file_name == NULL || demo_base == NULL || demo_base[0] == '\0')
        return false;

    out = fopen(file_name, "wt");
    if (out == NULL)
        return false;

    fprintf(out, "@echo off\r\n");
    fprintf(out, "setlocal DisableDelayedExpansion\r\n");
    fprintf(out, "rem Copy demo files; reuse existing byte-identical destination files.\r\n");
    fprintf(out, "set \"DEMODIR=%%~dp0\"\r\n");
    fprintf(out, "for %%%%I in (\"%%~dp0..\\..\") do set \"KURODIR=%%%%~fI\"\r\n");
    fprintf(out, "if not exist \"%%KURODIR%%\\kuro.exe\" goto no_kuro\r\n");

    fprintf(out, "set \"DEMOBASE=");
    DemoAutoWriteBatchLiteral(out, demo_base);
    fprintf(out, "\"\r\n");

    fprintf(out, "set \"MAPFILE=");
    if (copied_map_name != NULL && copied_map_name[0] != '\0')
        DemoAutoWriteBatchLiteral(out, copied_map_name);
    fprintf(out, "\"\r\n");

    fprintf(out, "if not exist \"%%DEMODIR%%%%DEMOBASE%%.DMO\" goto no_demo\r\n");

    fprintf(out, "set \"COPY_DMO=1\"\r\n");
    fprintf(out, "set \"COPY_WANG=0\"\r\n");
    fprintf(out, "set \"COPY_WB=0\"\r\n");
    fprintf(out, "set \"COPY_MAP=0\"\r\n");

    fprintf(out, "if exist \"%%DEMODIR%%%%DEMOBASE%%.WANG\" set \"COPY_WANG=1\"\r\n");
    fprintf(out, "if exist \"%%DEMODIR%%%%DEMOBASE%%.WB\" set \"COPY_WB=1\"\r\n");
    fprintf(out, "if defined MAPFILE if not exist \"%%DEMODIR%%%%MAPFILE%%\" goto no_map\r\n");
    fprintf(out, "if defined MAPFILE set \"COPY_MAP=1\"\r\n");

    // Preflight every required file before copying anything.
    // Reuse existing destinations only when their contents match exactly.
    fprintf(out, "\r\nrem Check the DMO destination.\r\n");
    fprintf(out, "if not exist \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" goto dmo_checked\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%DEMOBASE%%.DMO\" \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto collision\r\n");
    fprintf(out, "set \"COPY_DMO=0\"\r\n");
    fprintf(out, ":dmo_checked\r\n");

    fprintf(out, "\r\nrem Check the WANG destination, if a WANG file is present.\r\n");
    fprintf(out, "if not \"%%COPY_WANG%%\"==\"1\" goto wang_checked\r\n");
    fprintf(out, "if not exist \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" goto wang_checked\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%DEMOBASE%%.WANG\" \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto collision\r\n");
    fprintf(out, "set \"COPY_WANG=0\"\r\n");
    fprintf(out, ":wang_checked\r\n");

    fprintf(out, "\r\nrem Check the WB destination, if a WB file is present.\r\n");
    fprintf(out, "if not \"%%COPY_WB%%\"==\"1\" goto wb_checked\r\n");
    fprintf(out, "if not exist \"%%KURODIR%%\\%%DEMOBASE%%.WB\" goto wb_checked\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%DEMOBASE%%.WB\" \"%%KURODIR%%\\%%DEMOBASE%%.WB\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto collision\r\n");
    fprintf(out, "set \"COPY_WB=0\"\r\n");
    fprintf(out, ":wb_checked\r\n");

    fprintf(out, "\r\nrem Reuse an installed map only when byte-identical.\r\n");
    fprintf(out, "if not \"%%COPY_MAP%%\"==\"1\" goto map_checked\r\n");
    fprintf(out, "if not exist \"%%KURODIR%%\\%%MAPFILE%%\" goto map_checked\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%MAPFILE%%\" \"%%KURODIR%%\\%%MAPFILE%%\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto map_conflict\r\n");
    fprintf(out, "set \"COPY_MAP=0\"\r\n");
    fprintf(out, ":map_checked\r\n");

    fprintf(out, "\r\nrem All destinations have been checked. Copy only missing files.\r\n");

    fprintf(out, "if not \"%%COPY_WANG%%\"==\"1\" goto skip_wang_copy\r\n");
    fprintf(out, "if exist \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" goto late_collision\r\n");
    fprintf(out, "copy /B /-Y \"%%DEMODIR%%%%DEMOBASE%%.WANG\" \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%DEMOBASE%%.WANG\" \"%%KURODIR%%\\%%DEMOBASE%%.WANG\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, ":skip_wang_copy\r\n");

    fprintf(out, "if not \"%%COPY_WB%%\"==\"1\" goto skip_wb_copy\r\n");
    fprintf(out, "if exist \"%%KURODIR%%\\%%DEMOBASE%%.WB\" goto late_collision\r\n");
    fprintf(out, "copy /B /-Y \"%%DEMODIR%%%%DEMOBASE%%.WB\" \"%%KURODIR%%\\%%DEMOBASE%%.WB\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%DEMOBASE%%.WB\" \"%%KURODIR%%\\%%DEMOBASE%%.WB\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, ":skip_wb_copy\r\n");

    fprintf(out, "if not \"%%COPY_MAP%%\"==\"1\" goto skip_map_copy\r\n");
    fprintf(out, "if exist \"%%KURODIR%%\\%%MAPFILE%%\" goto late_collision\r\n");
    fprintf(out, "copy /B /-Y \"%%DEMODIR%%%%MAPFILE%%\" \"%%KURODIR%%\\%%MAPFILE%%\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%MAPFILE%%\" \"%%KURODIR%%\\%%MAPFILE%%\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, ":skip_map_copy\r\n");

    fprintf(out, "if not \"%%COPY_DMO%%\"==\"1\" goto skip_dmo_copy\r\n");
    fprintf(out, "if exist \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" goto late_collision\r\n");
    fprintf(out, "copy /B /-Y \"%%DEMODIR%%%%DEMOBASE%%.DMO\" \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, "fc /b \"%%DEMODIR%%%%DEMOBASE%%.DMO\" \"%%KURODIR%%\\%%DEMOBASE%%.DMO\" >nul\r\n");
    fprintf(out, "if errorlevel 1 goto copy_failed\r\n");
    fprintf(out, ":skip_dmo_copy\r\n");

    fprintf(out, "echo Required files are ready. Original archive files were preserved.\r\n");
    fprintf(out, "echo Launching demo playback...\r\n");
    fprintf(out, "start \"\" /D \"%%KURODIR%%\" \"%%KURODIR%%\\kuro.exe\" -dp%%DEMOBASE%%.DMO\r\n");
    fprintf(out, "exit /b 0\r\n\r\n");

    fprintf(out, ":collision\r\n");
    fprintf(out, "echo ERROR: A destination filename exists, but its contents differ from the archived file.\r\n");
    fprintf(out, "echo Nothing was overwritten. Resolve the conflicting file before playing this demo.\r\n");
    fprintf(out, "pause\r\nexit /b 2\r\n\r\n");

    fprintf(out, ":map_conflict\r\n");
    fprintf(out, "echo ERROR: The installed map has the same filename but different contents.\r\n");
    fprintf(out, "echo Neither map was overwritten. Nothing was copied during the preflight checks.\r\n");
    fprintf(out, "pause\r\nexit /b 7\r\n\r\n");

    fprintf(out, ":late_collision\r\n");
    fprintf(out, "echo ERROR: A destination file appeared after the checks. No overwrite was attempted.\r\n");
    fprintf(out, "echo Some earlier files may already have been copied; originals remain in this folder.\r\n");
    fprintf(out, "pause\r\nexit /b 8\r\n\r\n");

    fprintf(out, ":copy_failed\r\n");
    fprintf(out, "echo ERROR: A file copy or byte-verification step failed.\r\n");
    fprintf(out, "echo Originals remain in this folder. Check the Kuro folder for partial copies.\r\n");
    fprintf(out, "pause\r\nexit /b 3\r\n\r\n");

    fprintf(out, ":no_kuro\r\n");
    fprintf(out, "echo ERROR: kuro.exe was not found two directories above this demo folder.\r\n");
    fprintf(out, "pause\r\nexit /b 4\r\n\r\n");

    fprintf(out, ":no_map\r\n");
    fprintf(out, "echo ERROR: The expected archived map is missing. No files were copied.\r\n");
    fprintf(out, "pause\r\nexit /b 6\r\n\r\n");

    fprintf(out, ":no_demo\r\n");
    fprintf(out, "echo ERROR: The expected DMO file is missing from this folder.\r\n");
    fprintf(out, "pause\r\nexit /b 5\r\n");

    if (fclose(out) != 0)
        return false;

    return true;
}


static void DemoAutoRecordFinish(void)
{
    struct stat file_info;
    time_t stamp;
    struct tm *file_time;
    char source_name[192], folder_path[256], dest_demo[320];
    char dest_wb[320], dest_txt[320], dest_playdemo[320], demo_base[32];
    char copied_map_name[192];
    char map_part[160], date_part[32], time_part[32], archive_label[768];
    char random_letter;
    char folder_name[DEMO_AUTO_FOLDER_COMPONENT_MAX + 1];
    char *leaf, *dot, *slash, *backslash;
    std::string player_part;
    int i, copied, map_copied, label_player_count;

    snprintf(source_name, sizeof(source_name), "%s", DemoFileName);
    slash = strrchr(source_name, '/');
    backslash = strrchr(source_name, '\\');
    leaf = source_name;
    if (slash != NULL && (backslash == NULL || slash > backslash))
        leaf = slash + 1;
    else if (backslash != NULL)
        leaf = backslash + 1;
    if (strlen(leaf) >= sizeof(demo_base))
    {
        OSD_Printf("Automatic demo archive skipped: demo filename is too long.\n");
        return;
    }
    memcpy(demo_base, leaf, strlen(leaf) + 1);
    dot = strrchr(demo_base, '.');
    if (dot != NULL)
        *dot = '\0';
    if (demo_base[0] == '\0')
    {
        OSD_Printf("Automatic demo archive skipped: invalid demo filename.\n");
        return;
    }

    DemoAutoBuildMapPart(map_part, sizeof(map_part));
    if (stat(DemoFileName, &file_info) == 0)
        stamp = file_info.st_mtime;
    else
        stamp = time(NULL);
    file_time = localtime(&stamp);
    if (file_time != NULL)
    {
        snprintf(date_part, sizeof(date_part), "%02d.%02d.%04d", file_time->tm_mday,
                 file_time->tm_mon + 1, file_time->tm_year + 1900);
        snprintf(time_part, sizeof(time_part), "%02d.%02d.%02d", file_time->tm_hour,
                 file_time->tm_min, file_time->tm_sec);
    }
    else
    {
        snprintf(date_part, sizeof(date_part), "00.00.0000");
        snprintf(time_part, sizeof(time_part), "00.00.00");
    }

    label_player_count = DemoAutoScoreboardAvailable ? DemoAutoScoreboardCount : DemoAutoPlayerCount;
    for (i = 0; i < label_player_count; ++i)
    {
        char kill_text[24];
        if (i > 0)
            player_part += "x";
        // The TXT WANGEN-style label must retain the original player name,
        // including characters that are illegal in a Windows folder name.
        player_part += DemoAutoPlayerNames[i][0] ? DemoAutoPlayerNames[i] : "Unknown";
        if (DemoAutoScoreboardAvailable && i < DemoAutoScoreboardCount)
            snprintf(kill_text, sizeof(kill_text), "[%d]", (int)DemoAutoPlayerKills[i]);
        else
            snprintf(kill_text, sizeof(kill_text), "[?]");
        player_part += kill_text;
    }
    // Add the recording timestamp (local time) and a separate lowercase letter to
    // distinguish recordings with the same players, kills, map, and date.
    // The original label is also the TXT report's first line; only the folder copy
    // is sanitized below. The suffix generator does not touch the gameplay RNG.
    random_letter = DemoAutoRandomLetter();
    snprintf(archive_label, sizeof(archive_label), "%s%s_%s_%s.%c",
             player_part.c_str(), map_part, date_part, time_part, random_letter);

    // Use the WANGEN-style label for the folder, sanitizing only the folder copy.
    // If sanitization creates a duplicate name, add -2, -3, ... rather than overwrite.
    DemoAutoSanitizeFolderName(folder_name, sizeof(folder_name), archive_label);
    if (!DemoAutoCreateUniqueFolder(folder_name, folder_path, sizeof(folder_path)))
    {
        OSD_Printf("Automatic demo archive skipped: could not create a unique folder for %s.\n",
                   archive_label);
        return;
    }

    snprintf(dest_demo, sizeof(dest_demo), "%s/%s.DMO", folder_path, demo_base);
    snprintf(dest_wb, sizeof(dest_wb), "%s/%s.WANG", folder_path, demo_base);
    snprintf(dest_txt, sizeof(dest_txt), "%s/%s.TXT", folder_path, demo_base);
    copied = DemoAutoCopyFile(DemoFileName, dest_demo);
    if (!copied)
        OSD_Printf("Automatic demo archive warning: could not copy %s.\n", DemoFileName);

    copied_map_name[0] = '\0';
    map_copied = FALSE;
    if (DemoAutoLevel <= 0 && MapCopyEnabled)
    {
        map_copied = DemoAutoCopyMap(folder_path, copied_map_name, sizeof(copied_map_name));
        if (!map_copied)
            OSD_Printf("Automatic demo archive warning: could not copy user map %s.\n", DemoAutoMapName);
    }

    if (!DemoAutoWriteWB(dest_wb, demo_base, map_copied ? copied_map_name : NULL))
        OSD_Printf("Automatic demo archive warning: could not write %s.\n", dest_wb);
    if (!DemoAutoWriteTXT(dest_txt, demo_base, archive_label))
        OSD_Printf("Automatic demo archive warning: could not write %s.\n", dest_txt);
    snprintf(dest_playdemo, sizeof(dest_playdemo), "%s/PLAYDEMO.BAT", folder_path);
    if (!DemoAutoWritePlayDemoBatch(dest_playdemo, demo_base,
                                    map_copied ? copied_map_name : NULL))
        OSD_Printf("Automatic demo archive warning: could not write %s.\n", dest_playdemo);
    else
        OSD_Printf("Double-click playback helper: %s\n", dest_playdemo);
    OSD_Printf("Automatic demo archive: %s\n", folder_path);
    OSD_Printf("WANGEN-style name: %s\n", archive_label);
}

// Count playable tic records in the classic DMO stream without disturbing
// playback. Each recorded simulation tic has one OLD_SW_PACKET per demo player;
// the first packet whose bits field is -1 is the existing end marker.
static long DemoFileTell(DFILE file)
{
#if DEMO_FILE_TYPE == DEMO_FILE_GROUP
    return (long)ktell(file);
#else
    return ftell(file);
#endif
}

static long DemoFileLength(DFILE file, long original_position)
{
#if DEMO_FILE_TYPE == DEMO_FILE_GROUP
    (void)original_position;
    return (long)kfilelength(file);
#else
    if (fseek(file, 0, SEEK_END) != 0)
        return -1;
    long file_length = ftell(file);
    if (fseek(file, original_position, SEEK_SET) != 0)
        return -1;
    return file_length;
#endif
}

static bool DemoFileSeek(DFILE file, long position)
{
#if DEMO_FILE_TYPE == DEMO_FILE_GROUP
    return klseek(file, (int32_t)position, SEEK_SET) >= 0;
#else
    return fseek(file, position, SEEK_SET) == 0;
#endif
}

static int DemoFileReadBytes(DFILE file, void *buffer, int bytes_to_read)
{
#if DEMO_FILE_TYPE == DEMO_FILE_GROUP
    return kread(file, buffer, bytes_to_read);
#else
    return (int)fread(buffer, 1, (size_t)bytes_to_read, file);
#endif
}

static void DemoScanTotalTics(int player_count)
{
    DemoTotalTics = 0;
    DemoTotalTicsAvailable = FALSE;

    if (!DemoTimeEnabled || DemoFileIn == DF_ERR ||
        player_count < 1 || player_count > MAX_SW_PLAYERS_REG)
        return;

    long packet_start = DemoFileTell(DemoFileIn);
    if (packet_start < 0)
        return;

    long file_length = DemoFileLength(DemoFileIn, packet_start);
    if (file_length < packet_start)
        return;

    // Small block reads keep startup scanning efficient even for long demos.
    OLD_SW_PACKET packets[256];
    unsigned long packet_count = 0;
    bool end_marker_found = false;
    long bytes_remaining = file_length - packet_start;

    while (bytes_remaining >= (long)sizeof(OLD_SW_PACKET))
    {
        int bytes_to_read = (int)std::min(bytes_remaining, (long)sizeof(packets));
        bytes_to_read -= bytes_to_read % (int)sizeof(OLD_SW_PACKET);
        if (bytes_to_read <= 0)
            break;

        int bytes_read = DemoFileReadBytes(DemoFileIn, packets, bytes_to_read);
        if (bytes_read <= 0 || bytes_read % (int)sizeof(OLD_SW_PACKET) != 0)
            break;

        int packet_count_in_block = bytes_read / (int)sizeof(OLD_SW_PACKET);
        for (int i = 0; i < packet_count_in_block; ++i)
        {
            if (packets[i].bits == -1)
            {
                end_marker_found = true;
                break;
            }
            ++packet_count;
        }

        bytes_remaining -= bytes_read;
        if (end_marker_found || bytes_read < bytes_to_read)
            break;
    }

    // Restore exactly to the first input packet, so the real playback reader
    // consumes the original stream unmodified.
    if (!DemoFileSeek(DemoFileIn, packet_start))
        return;

    if (end_marker_found)
    {
        DemoTotalTics = packet_count / (unsigned long)player_count;
        DemoTotalTicsAvailable = TRUE;
    }
}

void
DemoReadHeader(void)
{
    DEMO_HEADER dh;
    DEMO_START_POS dsp;
    PLAYERp pp;

#if DEMO_FILE_TYPE != DEMO_FILE_GROUP
    if (DemoEdit)
    {
        DemoFileIn = fopen(DemoFileName, "rb+");
    }
    else
#endif
    {
        DemoFileIn = DOPEN_READ(DemoFileName);
    }

    if (DemoFileIn == DF_ERR)
        TerminateWithMsg(0, "File %s is not a valid demo file.", DemoFileName);

// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// This detects marker 63, reads Poda's extra metadata, and falls back to the classic header.
//	char header[5];
//
//    if (DemoFileIn == DF_ERR)
//        TerminateWithMsg(0, "File %s is not a valid demo file.", DemoFileName);
//
//	DREAD(&header[0], 5, 1, DemoFileIn);
//
//    //PODA:  NEW DEMO FORMAT.
//
//	if (header[4] == 63)
//	{
//
//		kclose(DemoFileIn);
//		DemoFileIn = DOPEN_READ(DemoFileName);
//		char ver;
//        short scores[8];
//        short scores2[8][8];
//
//		DREAD(&TOTALDEMOSECONDS, sizeof(TOTALDEMOSECONDS), 1, DemoFileIn);
//		DREAD(&ver, sizeof(ver), 1, DemoFileIn);
//				
//		DemoNew = 2;
//		DREAD(&DemoPlayerNames[0][0], 16 * 8, 1, DemoFileIn);
//		DREAD(&DemoPlayerColors[0], 8, 1, DemoFileIn);
//
//        //Read scores, but not needed.
//
//        DREAD(&scores[0], 2, 8, DemoFileIn);
//        DREAD(&scores2[0][0], 2, 64, DemoFileIn);
//
//        DREAD(&dh, sizeof(dh), 1, DemoFileIn);
//
//        strcpy(MODNAME, dh.mod_name);
//
//	}
//
//	//Old format.
//
//	else
//	{
//		
//		kclose(DemoFileIn);
//		DemoFileIn = DOPEN_READ(DemoFileName);
//        DREAD(&dh.map_name, 16, 1, DemoFileIn);
//        DREAD(&dh.numplayers, sizeof(dh.numplayers), 1, DemoFileIn);
//        DREAD(&dh.Episode, sizeof(dh.Episode), 1, DemoFileIn);
//        DREAD(&dh.Level, sizeof(dh.Level), 1, DemoFileIn);
//        DREAD(&dh.LevelSong, sizeof(dh.LevelSong), 1, DemoFileIn);
//
//	}
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.

    // Classic demos begin directly with DEMO_HEADER (no version/name/color prefix).
    DREAD(&dh, sizeof(dh), 1, DemoFileIn);

    strcpy(LevelSong, dh.LevelSong);
    Level = dh.Level;
    if (dh.numplayers > 1)
        FakeMultiNumPlayers = dh.numplayers;
    else
        numplayers = dh.numplayers;

    for (pp = Player; pp < Player + dh.numplayers; pp++)
    {
        DREAD(&dsp, sizeof(dsp), 1, DemoFileIn);
        pp->posx = dsp.x;
        pp->posy = dsp.y;
        pp->posz = dsp.z;
        COVERupdatesector(pp->posx, pp->posy, &pp->cursectnum);
        DREAD(&pp->Flags, sizeof(pp->Flags), 1, DemoFileIn);
        int16_t ang;
        DREAD(&ang, sizeof(ang), 1, DemoFileIn);
        pp->q16ang = fix16_from_int(ang);
    }

    DREAD(&Skill, sizeof(Skill), 1, DemoFileIn);
    DREAD(&gNet, sizeof(gNet), 1, DemoFileIn);

    // The classic DMO has no duration field. Count its input records up to the
    // existing -1 end marker, dividing by the recorded player count to obtain
    // simulation tics. Scanning restores the stream position before playback.
    DemoScanTotalTics((unsigned char)dh.numplayers);

    // The classic header only reserves 16 bytes for the map name. Keep this
    // fork's convenience of resolving it to a lowercase .map filename.
    char mapName[sizeof(dh.map_name) + 1];
    memcpy(mapName, dh.map_name, sizeof(dh.map_name));
    mapName[sizeof(dh.map_name)] = '\0';
    std::string map = mapName;
    std::transform(map.begin(), map.end(), map.begin(),
                   [](unsigned char c) { return static_cast<char>(std::tolower(c)); });

    if (map.size() < 4 || map.compare(map.size() - 4, 4, ".map") != 0)
    {
        if (!map.empty() && map.back() == '.')
            map += "map";
        else
            map += ".map";
    }

    const std::string::size_type separator = map.find_last_of("\\/");
    if (separator != std::string::npos)
        map.erase(0, separator + 1);

    strncpy(DemoLevelName, map.c_str(), sizeof(DemoLevelName) - 1);
    DemoLevelName[sizeof(DemoLevelName) - 1] = '\0';
}

// TODO: Write all data at once
static void
DemoWritePackets(const SW_PACKET *buffer, int32_t count, FILE *f)
{
    OLD_SW_PACKET packet;
    for (; count > 0; ++buffer, --count)
    {
        packet.vel = B_LITTLE16(buffer->vel);
        packet.svel = B_LITTLE16(buffer->svel);
        packet.angvel = fix16_to_int(buffer->q16angvel);
        packet.aimvel = fix16_to_int(buffer->q16aimvel);
        packet.bits = B_LITTLE32(buffer->bits);
        fwrite(&packet, sizeof(packet), 1, f);
    }
}

// TODO: Read all data at once
static void
DemoReadPackets(SW_PACKET *buffer, int32_t count, DFILE f)
{
    OLD_SW_PACKET packet;
    for (; count > 0; ++buffer, --count)
    {
        DREAD(&packet, sizeof(packet), 1, f);
        buffer->vel = B_LITTLE16(packet.vel);
        buffer->svel = B_LITTLE16(packet.svel);
        buffer->q16angvel = fix16_from_int(packet.angvel);
        buffer->q16aimvel = fix16_from_int(packet.aimvel);
        buffer->bits = B_LITTLE32(packet.bits);
    }
}

void
DemoDebugWrite(void)
{
    DemoFileOut = fopen(DemoFileName, "ab");

    ASSERT(DemoFileOut);

    DemoWritePackets(DemoBuffer, DemoDebugBufferMax, DemoFileOut);
    memset(DemoBuffer, -1, sizeof(SW_PACKET) * DemoDebugBufferMax);

    fclose(DemoFileOut);
}

void
DemoWriteBuffer(void)
{
    DemoWritePackets(DemoBuffer, sizeof(DemoBuffer)/sizeof(*DemoBuffer), DemoFileOut);
    memset(&DemoBuffer, -1, sizeof(DemoBuffer));
}

void
DemoReadBuffer(void)
{
    memset(&DemoBuffer, -1, sizeof(DemoBuffer));
    DemoReadPackets(DemoBuffer, sizeof(DemoBuffer)/sizeof(*DemoBuffer), DemoFileIn);
}

void
DemoBackupBuffer(void)
{
#if DEMO_FILE_TYPE != DEMO_FILE_GROUP
    FILE *NewDemoFile;
    FILE *OldDemoFile = DemoFileIn;
    int pos,i;
    char copy_buffer;
    char NewDemoFileName[16] = "!";

    // seek backwards to beginning of last buffer
    fseek(OldDemoFile, -sizeof(DemoBuffer)/sizeof(*DemoBuffer)*sizeof(OLD_SW_PACKET), SEEK_CUR);
    pos = ftell(OldDemoFile);

    // open a new edit file
    strcat(NewDemoFileName, DemoFileName);
    NewDemoFile = fopen(NewDemoFileName, "wb");

    rewind(OldDemoFile);

    // copy old demo to new demo
    for (i = 0; i < pos; i++)
    {
        fread(&copy_buffer, sizeof(copy_buffer), 1, OldDemoFile);
        fwrite(&copy_buffer,sizeof(copy_buffer), 1, NewDemoFile);
    }

    DemoFileOut = NewDemoFile;
    fclose(OldDemoFile);
#endif
}

void
DemoTerm(void)
{
    if (DemoRecording)
    {
        if (DemoFileOut == NULL)
        {
            // If setup failed or another path already closed the file, discard
            // the pending archive state instead of leaving recording stuck on.
            DemoRecording = FALSE;
            DemoAutoRecording = FALSE;
        }
        else
        {
            if (DemoDebugMode)
            {
                DemoFileOut = fopen(DemoFileName, "ab");
                ASSERT(DemoFileOut);
            }
            else
            {
                // paste on a -1 record to the current buffer
                if (DemoRecCnt < DEMO_BUFFER_MAX)
                    memset(&DemoBuffer[DemoRecCnt], -1, sizeof(DemoBuffer[DemoRecCnt]));

                DemoWriteBuffer();
            }

            // write at least 1 record at the end filled with -1 just for good measure
            memset(&DemoBuffer[0], -1, sizeof(DemoBuffer[0]));
            DemoWritePackets(DemoBuffer, 1, DemoFileOut);

// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// Rewinds the file and writes Poda's duration, player names/colors, and scores over the beginning.
//		PLAYERp pp;
//
//		rewind(DemoFileOut);
//
//		//PODA:  WRITE SOME HEADER DATA AGAIN WHEN DEMO TERMINATES.
//
//		unsigned char ver = 63;
//		unsigned long secs = totalsynctics / 120;
//
//        fwrite(&secs, sizeof(secs), 1, DemoFileOut);
//        fwrite(&ver, 1, 1, DemoFileOut);
//
//        for (pp = Player; pp < Player + 8; pp++)
//            fwrite(pp->PlayerName, 16, 1, DemoFileOut);
//
//        for (pp = Player; pp < Player + 8; pp++)
//            fwrite(&pp->TeamColor, 1, 1, DemoFileOut);
//
//        for (pp = Player; pp < Player + 8; pp++)
//            fwrite(&pp->Kills, 2, 1, DemoFileOut);
//
//        for (int x = 0; x < 8; ++x)
//            for (int y = 0; y < 8; ++y)
//                fwrite(&Player[x].KilledPlayer[y], 2, 1, DemoFileOut);
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.

            fclose(DemoFileOut);
            DemoFileOut = NULL;

            // Sidecars are generated only once all bytes are written and the DMO is closed.
            if (DemoAutoRecording)
            {
                DemoAutoRecordFinish();
                DemoAutoRecording = FALSE;
            }
            DemoRecording = FALSE;
        }
    }

    if (DemoPlaying)
    {
        if (DemoFileIn == DF_ERR)
            return;

        DCLOSE(DemoFileIn);
        DemoFileIn = DF_ERR;
    }

    if (DemoSyncTest||DemoSyncRecord)
    {
        if (DemoSyncFile == NULL)
            return;

        fclose(DemoSyncFile);
        DemoSyncFile = NULL;
    }

	//PODA:  MAKE SURE TO TURN OFF RECORDING SO DEMO DOESN'T GET REPLACED WITH NEW LEVEL.

    DemoRecording = FALSE;

    

}

///////////////////////////////////////////
//
// Demo Play Back
//
///////////////////////////////////////////





void
DemoPlayBack(void)
{
    int pnum;
    static int buf_ndx;
    PLAYERp pp;
    ControlInfo info;
	short oldscreenpeek = 0;

    if (SW_SHAREWARE)
    {
        // code here needs to be similar to RunLevel startup code
        PlaySong(LevelSong, -1, TRUE, TRUE);
    }


    // Initialize Game part of network code (When ready2send != 0)
    InitNetVars();

    // IMPORTANT - MUST be right before game loop
    InitTimingVars();

    // THIS STUFF DEPENDS ON MYCONNECTINDEX BEING SET RIGHT
    pp = Player + myconnectindex;
    SetRedrawScreen(pp);

    if (!DemoInitOnce)
        buf_ndx = 0;

    // everything has been inited at least once for PLAYBACK
    DemoInitOnce = TRUE;

    DemoRunningTics = 0;
    ready2send = 0;
    DemoDone = FALSE;
    bool rightPressed = false;
    bool upPressed = false;

    if (NoHide)
    {

        isPaused = true;
        timerUninit();
        timerInit(0);

    }
	
    while (TRUE)
    {

        if (NoHide)
            getpauseunpausepackets();

		//PODA:  UNCOMMENTED DEBUG CODE TO ALLOW FAST FORWARD AND SLO-MO.  FIXED IT UP A BIT
		//AND ADDED A PAUSE FUNCTION.

// Poda conversion-only exclusion (disabled for vanilla parity):
// if (!KEY_PRESSED(KEYSC_RIGHT) && !KEY_PRESSED(KEYSC_UP) && !CONVERTDEMO)
        if (!KEY_PRESSED(KEYSC_RIGHT) && !KEY_PRESSED(KEYSC_UP))
        {

            if (isPaused)
            {

                if (timerGetClockRate() != 0)
                {
                
                    timerUninit();
                    timerInit(0);

                }

                handleevents();
                OSD_DispatchQueued();
                CONTROL_GetInput(&info);
                MNU_CheckForMenus();           
        
            }
    
            if (KEY_PRESSED(KEYSC_DOWN))
            {

                KEY_PRESSED(KEYSC_DOWN) = 0;
                isPaused = !isPaused;


                if (isPaused)
                {

                    timerUninit();
                    timerInit(0);

                    if (NoHide)
                    {

                        TRAVERSE_CONNECT(pnum)
                        {

                            SW_SendMessage(pnum, "pause");

                        }

                    }

                }

                else
                {

                    timerUninit();
                    timerInit(120);

                    if (NoHide)
                    {

                        TRAVERSE_CONNECT(pnum)
                        {

                            SW_SendMessage(pnum, "unpause");

                        }

                    }
                

                }

            }

        }


// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// Conversion mode forced a special timer rate while rewriting a demo.
//        if (CONVERTDEMO)
//        {
//
//  
//            if (timerGetClockRate() != (30720))
//            {
//
//                timerUninit();
//                timerInit(30720);
//
//            }
//
//        }
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.

        if (KEY_PRESSED(KEYSC_RIGHT) && (KEY_PRESSED(KEYSC_RSHIFT)))
        {
            
            if (KEY_PRESSED(KEYSC_PGUP) && KEY_PRESSED(KEYSC_RSHIFT))
            {
            
                if (timerGetClockRate() != 9600)
                {

                    timerUninit();
                    timerInit(9600);

                }

            }

            else
            {

                if (timerGetClockRate() != 960)
                {

                    timerUninit();
                    timerInit(960);

                }

            }

        }

        else if (KEY_PRESSED(KEYSC_RIGHT) && !KEY_PRESSED(KEYSC_LSHIFT) && !KEY_PRESSED(KEYSC_RSHIFT))
        {

            if (timerGetClockRate() != 480)
            {

                timerUninit();
                timerInit(480);

            }

        }

        else if (KEY_PRESSED(KEYSC_UP))
        {

            //KB_ClearKeyDown(KEYSC_UP);
 
            if (timerGetClockRate() != 60)
            {

                timerUninit();
                timerInit(60);

            }

            //totalclock += 1 - synctics;

        }

// Poda conversion-only exclusion (disabled for vanilla parity):
// else if (!KEY_PRESSED(KEYSC_RIGHT) && !KEY_PRESSED(KEYSC_UP) && !CONVERTDEMO)
        else if (!KEY_PRESSED(KEYSC_RIGHT) && !KEY_PRESSED(KEYSC_UP))
        {

            if (timerGetClockRate() != 120)
            {

                timerUninit();
                timerInit(120);

            }

        }


    
        timerUpdateClock();

        // makes code run at the same rate
        while (totalclock > totalsynctics)
		{

            handleevents();

            OSD_DispatchQueued();
            
            TRAVERSE_CONNECT(pnum)
            {
                pp = Player + pnum;
                pp->inputfifo[pp->movefifoend & (MOVEFIFOSIZ-1)] = DemoBuffer[buf_ndx];
                pp->movefifoend++;
                buf_ndx++;

                if (pp->inputfifo[(pp->movefifoend - 1) & (MOVEFIFOSIZ-1)].bits == -1)
                {
                    DemoDone = TRUE;
                    break;
                }
				
                if (buf_ndx > DEMO_BUFFER_MAX - 1)
                {
                    DemoReadBuffer();
                    buf_ndx = 0;
                }
            }
            
			if (DemoDone)
                break;

            // Count only simulation tics actually consumed from this demo.
            DemoRunningTics++;

            CONTROL_GetInput(&info);
    		domovethings();
			MNU_CheckForMenus();

            

        }
		
		//PODA:  MAKE SURE F8, F10, ALT+ENTER, CROSSHAIR, AND K WORK FOR PLAYING DEMOS.

		// F8 toggle messages
		if (KEY_PRESSED(KEYSC_F8) && !isPaused)
		{

			KEY_PRESSED(KEYSC_F8) = 0;

			gs.Messages ^= 1;

			if (gs.Messages)
				PutStringInfoLine(Player + screenpeek, "Messages ON");
			else
				PutStringInfoLine(Player + screenpeek, "Messages OFF");

            SetBorder(Player + screenpeek, gs.BorderNum);
		}

		// F10 quit menu
		if (KEY_PRESSED(KEYSC_F10))
		{

			KEY_PRESSED(KEYSC_F10) = 0;
			KEY_PRESSED(KEYSC_ESC) = 1;
			ControlPanelType = ct_quitmenu;

		}

		if (KEY_PRESSED(KEYSC_ENTER) && (KEY_PRESSED(KEYSC_ALT) || KEY_PRESSED(KEYSC_RALT)))
		{

			KEY_PRESSED(KEYSC_ENTER) = 0;
			KEY_PRESSED(KEYSC_ALT) = 0;
			KEY_PRESSED(KEYSC_RALT) = 0;

			ud_setup.ScreenMode = !ud_setup.ScreenMode;
			videoSetGameMode(ud_setup.ScreenMode, ud_setup.ScreenWidth, ud_setup.ScreenHeight, ud_setup.ScreenBPP, upscalefactor);
			SetBorder(Player + screenpeek, 1);

		}

        if (BUTTON(gamefunc_See_Co_Op_View) && !NoHide)
        {			


			CONTROL_ClearButton(gamefunc_See_Co_Op_View);

			screenpeek += 1;
			if (screenpeek > numplayers - 1)
				screenpeek = 0;
			
        }
		
		if (BUTTON(gamefunc_Toggle_Crosshair))
		{
			CONTROL_ClearButton(gamefunc_Toggle_Crosshair);
			pToggleCrosshair();
		}

        // demo is over
        if (DemoDone)
            break;

        if (QuitFlag)
        {
            DemoMode = FALSE;
            break;
        }

        if (ExitLevel)
        {
            // Quiting Demo
            ExitLevel = FALSE;
            if (DemoMode)
            {
                DemoPlaying = FALSE;
                DemoMode = FALSE;
            }
            break;
        }

		drawscreen(Player + screenpeek);
		
		//PODA:  IF SCREEN CHANGED, DO A REFRESH.

		if (screenpeek != oldscreenpeek)
		{
			oldscreenpeek = screenpeek;
			SetBorder(Player + screenpeek, gs.BorderNum);
			//SetRedrawScreen(Player + screenpeek);

		}

    }

    // only exit if conditions are write
    if (DemoDone && !DemoMode && !NewGame)
    {
        TerminateLevel();
        TerminateGame();
        exit(0);
    }

}
