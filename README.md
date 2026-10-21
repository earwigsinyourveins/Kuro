<img width="800" height="562" alt="KuroBG" src="https://github.com/user-attachments/assets/4903979f-7fd7-4fcf-a069-7ea39a22cdeb" />

# Kuro, or KuroSW, is a fork of VoidSW with multiplayer enhancements and hotfixes.

Originally started by Poda as VoidSWD and picked up by me.

Features as of yet, with the ones mainly coded by Poda marked as such:
1. [Poda] Convenient playback of multiplayer demos by dragging .dmo/.wb/.wang to EXE, or using the `-dp` argument. POV could be switched with coop view key (K by default), and during the playback player name and tic counter is shown. Other windows are hidden by default, but this can be reverted with `-nohide` argument stated after `-dp*.dmo`.
2. [Poda] Re-enabled demo controls and added demo pause. Right arrow key to fast-forward, shift+right arrow key for accelerated fast-forward, up arrow key for slo-mo, and down arrow key to pause.
3. Automatic demo recording for multiplayer games, regardless if it was started with `-autonet` on initial launch or in-game menu, including composure of .WANG files with recorded names and colors. Kills are stored as well in a respective .txt report and demo folder titles.
4. Chat logging in console.
5. Fixed brightness slider and screen flash effects in software renderer.
6. Fix for widescreen patch causing demo desyncs and out of sync during multiplayer with clients who don't have it.   
7. Fix for FOV jumping to 90 when TV_CAMERA_SCREEN is in player's field of view.
8. `-aim#` argument to force AutoAim on or off with `-autonet`.
9. Armor display for minimal HUD. Could be toggled off by setting `MinHUDArmor` to 0 in kuro.cfg

Builds on Windows with MinGW32, 64 bit is unsupported for now. Address [EDukeWiki](https://wiki.eduke32.com/wiki/Building_EDuke32_on_Windows#MinGW-w64/GCC_with_MSYS2) for a complete set of instructions. Wangulator linker failure is normal.

For the sake of transparency, my half of this project extensively uses AI code. Poda's half is human-written from top to bottom.

If you're looking for a similiar set of enhancements for Dos Shadow Warrior, check out [Takusan](https://github.com/earwigsinyourveins/Takusan).
