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
// BEGIN: Poda's new demo-format code, disabled for the sake of vanilla parity.
// Retained as comments for possible future reuse.
// Declarations used only by Poda's extended-format reader/converter.
//extern char DemoPlayerNames[8][16];
//extern char DemoPlayerColors[8];
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
// DMO data itself remains the classic Shadow Warrior format.
void DemoAutoRecordStart(void);
void DemoAutoRecordCapturePlayer(short player_index, const char *player_name, short kills);
void DemoAutoRecordScoreboardComplete(short player_count);

void DemoTerm(void);
void DemoPlaySetup(void);
void DemoPlayBack(void);
void DemoRecordSetup(void);
void DemoDebugWrite(void);
void DemoWriteBuffer(void);
void DemoReadHeader(void);