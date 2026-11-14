# Makefile for kuro updater (MinGW-w64)
#
# Usage:
#   mingw32-make            build updater.exe
#   mingw32-make clean      remove build output
#   mingw32-make run        build and run
#
# Requires icon.ico next to this Makefile (embedded via updater.rc).

CXX      := g++
RC       := windres
CXXFLAGS := -std=c++11 -O2 -Wall -Wextra
LDFLAGS  := -static -static-libgcc -static-libstdc++
LDLIBS   := -lwininet

TARGET   := KuroUpdater.exe
SRC      := updater.cpp
RCFILE   := updater.rc
MANIFEST := updater.manifest
ICON     := icon.ico
RESOBJ   := updater_res.o

# "del" works in cmd.exe; if you run make from MSYS2/Git Bash, use:
#   make RM="rm -f"
RM       := del /Q /F

.PHONY: all clean run

all: $(TARGET)

$(RESOBJ): $(RCFILE) $(MANIFEST) $(ICON)
	$(RC) $(RCFILE) -O coff -o $@

$(TARGET): $(SRC) $(RESOBJ)
	$(CXX) $(CXXFLAGS) $(SRC) $(RESOBJ) -o $@ $(LDFLAGS) $(LDLIBS)

run: $(TARGET)
	.\$(TARGET)

clean:
	-$(RM) $(TARGET) $(RESOBJ)
