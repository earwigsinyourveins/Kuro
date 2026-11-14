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


extern FILE *DemoFile;
extern SWBOOL DemoPlaying;

extern SWBOOL NoHide;
extern SWBOOL DemoRecording;
extern SWBOOL DemoEdit;
extern SWBOOL DemoMode;

// Reserved for the demo HUD duration display and possible future reuse.
// These values are not stored in the classic demo file format.
extern int DemoNew;
extern unsigned long TOTALDEMOSECONDS;

// Classic-format demo playback progress, counted in simulation tics.
extern unsigned long DemoRunningTics;
extern unsigned long DemoTotalTics;
extern SWBOOL DemoTotalTicsAvailable;
// -mdr: Kuro's opt-in extended recording format ("MDR"). Without -mdr none of
// this is active and automatic recordings stay in the classic DMO format.
extern SWBOOL DemoMDR;            // -mdr was given on the command line
extern SWBOOL DemoMDRActive;      // MDR rules are in force for the current level
                                  // (negotiated for a live match, or read from the file)
extern SWBOOL DemoExtendedFormat; // the demo being played back has the extended header

// Gameplay features of the MDR mode (-wpn, -trix, -nosticky, -noheart, -newctf, -aim2, -noexit, ...). Each one changes the
// simulation, so every player has to ask for it, it only takes effect together
// with -mdr, and the demo header records it so that playback applies it as well.
// Feature bit n is bit (16 + n) of the demo header flags and of the offer in the
// version packet. Add new features here, one bit each (14 at most).
#define MDR_FEATURE_WEAPONS_STAY  (1u << 0)  // -wpn:  WangBang weapons stay once picked up, as in Cooperative
#define MDR_FEATURE_BUNNY_ROCKETS (1u << 1)  // -trix: bunny rockets for everybody, like the swtrix cheat
#define MDR_FEATURE_NO_STICKY     (1u << 2)  // -nosticky: no Sticky Bomb pickups on the map
#define MDR_FEATURE_NO_HEART      (1u << 3)  // -noheart:  no Ripper Heart pickups on the map
#define MDR_FEATURE_NEW_CTF       (1u << 4)  // -newctf: traditional Capture the Flag rules (see MdrNewCtfActive())
#define MDR_FEATURE_AIM_HITSCAN   (1u << 5)  // -aim2: autoaim only helps hitscan weapons, never projectiles
#define MDR_FEATURE_NO_EXIT       (1u << 6)  // -noexit: level exits (exit switches and exit sectors) do nothing
#define MDR_FEATURE_ALL (MDR_FEATURE_NO_EXIT | MDR_FEATURE_WEAPONS_STAY | MDR_FEATURE_BUNNY_ROCKETS | MDR_FEATURE_NO_STICKY | MDR_FEATURE_NO_HEART | MDR_FEATURE_NEW_CTF | MDR_FEATURE_AIM_HITSCAN)
extern uint32_t DemoMDRRequestedFeatures;    // asked for on the command line (ignored without -mdr)
extern uint32_t DemoMDRFeatures;             // in force for the current level (0 unless DemoMDRActive)
static inline SWBOOL MDRFeature(uint32_t feature) { return (DemoMDRFeatures & feature) != 0; }
int DemoMDRVersionBits(SWBOOL offered);      // what to OR into the number SendVersion() sends
// Names and colors embedded in an extended demo's header (valid while
// DemoExtendedFormat is set); used instead of the .wang/.wb sidecar files.
extern char DemoPlayerNames[8][32];
extern uint8_t DemoPlayerColors[8];
void DemoMDRResolve(SWBOOL offered);

// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// Declaration used only by Poda's converter.
//extern void ConvertDemo(void);
// END: Poda's new demo-format code, disabled for the sake of vanilla parity.

//PODA:  LONGER DEMO FILE NAME.

extern char DemoFileName[166];
extern char DemoLevelName[80];

extern FILE *DemoSyncFile;
extern SWBOOL DemoSyncTest;
extern SWBOOL DemoSyncRecord;
extern char DemoTmpName[16];

extern SWBOOL DemoDebugMode;
extern SWBOOL DemoInitOnce;
extern short DemoDebugBufferMax;

#define DEMO_BUFFER_MAX 2048
extern SW_PACKET DemoBuffer[DEMO_BUFFER_MAX];
extern int DemoRecCnt;                    // Can only record 1-player game

#define DEMO_FILE_GROUP 0
#define DEMO_FILE_STD   1
#define DEMO_FILE_TYPE DEMO_FILE_GROUP

// Demo File - reading from group
#if DEMO_FILE_TYPE == DEMO_FILE_GROUP
typedef buildvfs_kfd DFILE;
#define DREAD(ptr, size, num, handle) kread((handle),(ptr),(size)*(num))
#define DOPEN_READ(name) kopen4load(name,0)
#define DCLOSE(handle) kclose(handle)
#define DF_ERR buildvfs_kfd_invalid
#else
typedef FILE *DFILE;
#define DREAD(ptr, size, num,handle) fread((ptr),(size),(num),(handle))
#define DWRITE(ptr, size, num,handle) fwrite((ptr),(size),(num),(handle))
#define DOPEN_WRITE(name) fopen(name,"wb")
#define DOPEN_READ(name) fopen(name,"rb")
#define DCLOSE(handle) fclose(handle)
#define DF_ERR NULL
#endif

// Takusan-derived automatic multiplayer recording and sidecar archive.
// DMO data itself remains the classic Shadow Warrior format unless -mdr
// negotiated the extended format for the match.
void DemoAutoRecordStart(void);
void DemoAutoRecordUpdatePlayerColor(short player_index, unsigned char color);
void DemoAutoRecordUpdatePlayerName(short player_index, const char *player_name);
void DemoAutoRecordSyncMetadata(void);
void DemoAutoScoreboardScreenshot(void);  // StatScreen(): scoreboard screenshot into the archive folder
void DemoAutoRecordChatLine(const char *chat_line);
void DemoAutoRecordCapturePlayer(short player_index, const char *player_name, short kills);
void DemoAutoRecordScoreboardComplete(short player_count);

void DemoTerm(void);
void DemoPlaySetup(void);
void DemoPlayBack(void);
void DemoRecordSetup(void);
void DemoDebugWrite(void);
void DemoWriteBuffer(void);
void DemoReadHeader(void);