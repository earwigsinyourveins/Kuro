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

#undef MAIN
#include "build.h"

#include "keys.h"
#include "names2.h"
#include "panel.h"
#include "game.h"
#include "pal.h"
#include "text.h"
#include "colormap.h"
#include "player.h"
#include "network.h"

//#define SAVE_EXTERN
//#include "_save.h"
//#undef SAVE_EXTERN

extern short NormalVisibility;

// indexed by gs.BorderNum   130,172
short InventoryBarXpos[] = {110, 110, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80};
short InventoryBarYpos[] = {162, 172, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130};

void PlayerUpdateInventory(PLAYERp pp, short InventoryNum);
void SpawnInventoryBar(PLAYERp pp);
void InventoryBarUpdatePosition(PLAYERp pp);
void InvBorderRefresh(PLAYERp pp);
void InventoryUse(PLAYERp pp);
void InventoryStop(PLAYERp pp, short InventoryNum);
void KillInventoryBar(PLAYERp pp);
void PlayerUpdateInventoryPercent(PLAYERp pp);
void PlayerUpdateInventoryPic(PLAYERp pp);
void PlayerUpdateInventoryState(PLAYERp pp);


//#define INVENTORY_ICON_WIDTH  32
#define INVENTORY_ICON_WIDTH  28

void UseInventoryRepairKit(PLAYERp pp);
void UseInventoryMedkit(PLAYERp pp);
void UseInventoryRepairKit(PLAYERp pp);
void UseInventoryCloak(PLAYERp pp);
void UseInventoryEnvironSuit(PLAYERp pp);
void UseInventoryNightVision(PLAYERp pp);
void UseInventoryChemBomb(PLAYERp pp);
void UseInventoryFlashBomb(PLAYERp pp);
void UseInventoryCaltrops(PLAYERp pp);

void StopInventoryRepairKit(PLAYERp pp, short);
void StopInventoryMedkit(PLAYERp pp, short);
void StopInventoryRepairKit(PLAYERp pp, short);
void StopInventoryCloak(PLAYERp pp, short);
void StopInventoryEnvironSuit(PLAYERp pp, short);
void StopInventoryNightVision(PLAYERp pp, short);

extern PANEL_STATE ps_PanelEnvironSuit[];
extern PANEL_STATE ps_PanelCloak[];
extern PANEL_STATE ps_PanelMedkit[];
extern PANEL_STATE ps_PanelRepairKit[];
extern PANEL_STATE ps_PanelSelectionBox[];
extern PANEL_STATE ps_PanelNightVision[];
extern PANEL_STATE ps_PanelChemBomb[];
extern PANEL_STATE ps_PanelFlashBomb[];
extern PANEL_STATE ps_PanelCaltrops[];


INVENTORY_DATA InventoryData[MAX_INVENTORY+1] =
{
    {"PORTABLE MEDKIT",  UseInventoryMedkit,      NULL,                 ps_PanelMedkit,        0,   1, (1<<16),     0},
    {"REPAIR KIT",       NULL,                    NULL,                 ps_PanelRepairKit,     100, 1, (1<<16),     INVF_AUTO_USE},
    {"SMOKE BOMB",       UseInventoryCloak,       StopInventoryCloak,   ps_PanelCloak,         4,   1, (1<<16),     INVF_TIMED},
    {"NIGHT VISION",     UseInventoryNightVision, StopInventoryNightVision, ps_PanelNightVision,3,  1, (1<<16),     INVF_TIMED},
    {"GAS BOMB",         UseInventoryChemBomb,    NULL,                 ps_PanelChemBomb,      0,   1, (1<<16),     INVF_COUNT},
    {"FLASH BOMB",       UseInventoryFlashBomb,   NULL,                 ps_PanelFlashBomb,     0,   2, (1<<16),     INVF_COUNT},
    {"CALTROPS",         UseInventoryCaltrops,    NULL,                 ps_PanelCaltrops,      0,   3, (1<<16),     INVF_COUNT},
    {NULL, NULL, NULL, NULL, 0, 0, 0, 0}
};

void PanelInvTestSuicide(PANEL_SPRITEp psp);

// SWP-style compact weapon HUD. It is used by the former "no HUD" mode
// (BORDER_NONE), so the original full and minimal HUD layouts remain intact.
static void DrawSWPWeaponHudNumbers(short x, short y, int number, short shade, short pal)
{
    char buffer[16];
    snprintf(buffer, sizeof(buffer), "%d", number);

    for (const char *ptr = buffer; *ptr; ++ptr)
    {
        short pic = short(3613 + (*ptr - '0'));
        rotatesprite(long(x) << 16, long(y) << 16, 32768, 0, pic, shade, pal,
                     ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER,
                     0, 0, xdim - 1, ydim - 1);
        x += tilesiz[pic].x - 1;
    }
}

// Use Kuro/SWP's regular green HUD digits for health, armor, and active ammo.
// Keep SWP's centered anchors and clipping behavior, but render at native scale
// so these status values stay prominent. The weapon-roster numbers use their
// separate small yellow font in DrawSWPWeaponHudNumbers() and are unchanged.
static void DrawSWPStatusNumber(short centerX, short y, int number)
{
    const short statusFontBase = 3636; // PANEL_FONT_G, regular-sized green digits
    const int statusFontScale = (1 << 16);
    char buffer[16];
    int totalWidth = 0;
    int digitCount = 0;
    int x;

    snprintf(buffer, sizeof(buffer), "%d", number);

    // Measure the actual rendered width, including the one-pixel inter-digit
    // spacing used by DisplayMiniBarNumber(), so the value remains centered.
    for (const char *ptr = buffer; *ptr; ++ptr)
    {
        if (*ptr >= '0' && *ptr <= '9')
        {
            short pic = short(statusFontBase + (*ptr - '0'));
            totalWidth += tilesiz[pic].x;
            ++digitCount;
        }
    }
    if (digitCount > 1)
        totalWidth += digitCount - 1;

    x = centerX - (totalWidth >> 1);
    for (const char *ptr = buffer; *ptr; ++ptr)
    {
        if (*ptr < '0' || *ptr > '9')
            continue;

        short pic = short(statusFontBase + (*ptr - '0'));
        rotatesprite(long(x) << 16, long(y) << 16, statusFontScale, 0, pic, 0, 0,
                     ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER,
                     0, 0, xdim - 1, ydim - 1);
        x += tilesiz[pic].x + 1;
    }
}

// Draw SWP's compact inventory count/percentage using the original mini-HUD
// fragment font (tiles 2930 onward), reduced to the weapon-roster number scale.
// Center it on the inventory icon and use the same widescreen anchoring flags
// as that icon; RS_ALIGN_L would shift this text separately in widescreen mode.
static void DrawSWPInventoryValue(short centerX, short y, const char *text, short pal)
{
    const int firstFragmentTile = 2930; // '!' is the first fragment-font glyph.
    const int fragmentAdvance = 2;
    const int fragmentScale = 32768;
    const int spriteFlags = ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER;
    
	int textWidth = 0;
    int x;

    for (const char *ptr = text; *ptr; ++ptr)
        textWidth += fragmentAdvance;

    x = centerX - (textWidth / 2);
    for (const char *ptr = text; *ptr; ++ptr, x += fragmentAdvance)
    {
        if (*ptr == ' ')
            continue;
        if (*ptr < '!' || *ptr > '}')
            continue;

        short pic = short(firstFragmentTile + (*ptr - '!'));
        rotatesprite(long(x) << 16, long(y) << 16, fragmentScale, 0, pic, 0, pal,
                     spriteFlags, 0, 0, xdim - 1, ydim - 1);
    }
}

// Draw CTF capture scores with Kuro's regular HUD digit tiles instead of the
// mapper-positioned counter artwork. The map sprites remain the source of truth:
// their tile offset from 1900 is the current score (DoFlagScore increments it).
static int CompactCTFScoreWidth(int score, int scale)
{
    char buffer[16];
    int width = 0;
    int digits = 0;

    snprintf(buffer, sizeof(buffer), "%d", score);
    for (const char *ptr = buffer; *ptr; ++ptr)
    {
        const short pic = short(3732 + (*ptr - '0')); // Large main-menu font digit tiles (3732-3741).
        int digitWidth = (tilesiz[pic].x * scale) >> 16;
        if (digitWidth < 1)
            digitWidth = 1;
        width += digitWidth;
        ++digits;
    }

    if (digits > 1)
        width += digits - 1;
    return width;
}

static void DrawCompactCTFScoreNumber(int x, int y, int score, int scale, short pal)
{
    char buffer[16];
    const int flags = ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER;

    snprintf(buffer, sizeof(buffer), "%d", score);
    for (const char *ptr = buffer; *ptr; ++ptr)
    {
        const short pic = short(3732 + (*ptr - '0')); // Large main-menu font digits; player palettes tint the red/blue scores.
        int digitWidth = (tilesiz[pic].x * scale) >> 16;
        if (digitWidth < 1)
            digitWidth = 1;

        rotatesprite(x << 16, y << 16, scale, 0, pic, 0, pal,
                     flags, 0, 0, xdim - 1, ydim - 1);
        x += digitWidth;
        if (ptr[1])
            ++x; // Keep the same small inter-digit spacing as the regular HUD font.
    }
}

// Show live red/blue CTF scores in the compact HUD. Detect the map's real
// wall-aligned counter sprites, but use only their tile-derived score value;
// drawing large main-menu font digits avoids inheriting mappers' inconsistent
// counter-art alignment. The user's counter scale adjustment (57344) is kept.
static void DrawCompactCTFCounters(void)
{
    if (gNet.MultiGameType != MULTI_GAME_COMMBAT || !gNet.TeamPlay)
        return;

    int redTile = -1;
    int blueTile = -1;
    int spriteNum;

    for (spriteNum = headspritestat[STAT_DEFAULT]; spriteNum >= 0;
         spriteNum = nextspritestat[spriteNum])
    {
        const SPRITEp sp = &sprite[spriteNum];

        // TRACK_SPRITE also uses this tile range; wall alignment identifies
        // the actual CTF capture counters instead of ordinary track markers.
        if (sp->picnum < 1900 || sp->picnum > 1999 ||
            !TEST(sp->cstat, CSTAT_SPRITE_ALIGNMENT_WALL))
            continue;

        if (sp->pal == PALETTE_PLAYER3 && redTile < 0)
            redTile = sp->picnum;
        else if (sp->pal == PALETTE_PLAYER7 && blueTile < 0)
            blueTile = sp->picnum;

        if (redTile >= 0 && blueTile >= 0)
            break;
    }

    if (redTile < 0 && blueTile < 0)
        return;

    // The counter sprite's tile number is 1900 + score. DoFlagScore() advances
    // every counter of the scoring palette, so these values stay synchronized.
    const int redScore = redTile >= 0 ? redTile - 1900 : -1;
    const int blueScore = blueTile >= 0 ? blueTile - 1900 : -1;
    static const int counterScale = 57344; // User-adjusted scale; preserve it.
    static const int counterLeftMargin = 4;
    static const int counterGap = 8;
    const int digitHeight = (tilesiz[3732].y * counterScale) >> 16;
    const int y = (200 - digitHeight) / 2;
    const int redWidth = redScore >= 0 ? CompactCTFScoreWidth(redScore, counterScale) : 0;
    const int blueWidth = blueScore >= 0 ? CompactCTFScoreWidth(blueScore, counterScale) : 0;
    // Place the pair together at the left side, with the red score first.
    int x = counterLeftMargin;
    if (redScore >= 0)
    {
        // Player palettes 19/23 only remap player-colour ranges and do not tint the
        // main-menu font's digit pixels. Use the full-image lighting palettes instead.
        DrawCompactCTFScoreNumber(x, y, redScore, counterScale, PALETTE_RED_LIGHTING);
        x += redWidth + counterGap;
    }
    if (blueScore >= 0)
        DrawCompactCTFScoreNumber(x, y, blueScore, counterScale, PALETTE_BLUE_LIGHTING);
}

static void UpdateSWPWeaponHud(PLAYERp pp, USERp u)
{
    // These tile IDs and the 320x200 layout are from SWP's modern mini HUD.
    static const int ammoTile[20] =
        {4050, 1793, 1823, 1799, 1800, 1831, 1842, 1812, 2055, 1825,
         1819, 1809, 0, 492, 1821, 1798, 2519, 2056, 2057, 0};
    static const int ammoScale[20] =
        {4000, 32000, 46200, 38000, 32000, 30000, 30000, 30000, 6500, 24200,
         32000, 28000, 0, 15000, 44000, 46000, 16000, 6500, 6500, 0};
    static const int ammoX[20] =
        {53, 54, 53, 59, 54, 52, 52, 52, 55, 54, 54, 52, 0, 53, 53, 55, 58, 55, 55, 0};
    static const int ammoY[20] =
        {184, 180, 182, 180, 179, 180, 180, 180, 178, 181, 181, 181, 0, 184, 182, 180, 178, 178, 178, 0};
    static const int weaponTile[10] = {1793, 1794, 1797, 1818, 1817, 2223, 1811, 1815, 1825, 0};
    static const int weaponScale[10] = {22000, 20000, 14000, 18000, 20000, 12000, 18000, 16000, 19000, 0};
    static const short weaponX[10] = {98, 115, 139, 162, 184, 209, 223, 253, 273, 0};
    static const short weaponY[10] = {184, 186, 186, 185, 187, 186, 186, 184, 185, 0};
    static const short ammoNumberX[9] = {102, 122, 144, 168, 190, 212, 234, 256, 279};
    short shade[10], pal[10];
    short selectedWeapon;
    int i, selectedAmmo;
    extern int32_t ShowHeatEnabled;
    extern int32_t ShowNukeEnabled;
    const int spriteFlags = ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER;
	const int specialIconFlags = spriteFlags | ROTATE_SPRITE_TRANSLUCENT;

    DrawCompactCTFCounters();

    // Health and armor icons; display the active weapon's ammo icon beside them.
    rotatesprite(4L << 16, 182L << 16, 44000, 0, 1803, 22, 0,
                 spriteFlags, 0, 0, xdim - 1, ydim - 1);
    rotatesprite(28L << 16, 183L << 16, 30000, 0, 3030, 16, 0,
                 spriteFlags, 0, 0, xdim - 1, ydim - 1);

    selectedWeapon = u->WeaponNum;
    if (selectedWeapon < 0 || selectedWeapon > 13)
        selectedWeapon = 0;

    // Keep each weapon's retail ammo icon for its standard fire modes.
    // SWP's alternate shotgun and double-Uzi entries are not reliable
    // resources in Kuro, so both weapons use their normal ammo icon.
    selectedAmmo = selectedWeapon;
    if (selectedWeapon == WPN_STAR && gs.Darts)
        selectedAmmo = 16;
    else if (selectedWeapon == WPN_MICRO)
    {
        if (pp->WpnRocketType == 1 && pp->WpnRocketHeat)
            selectedAmmo = 10;
        else if (pp->WpnRocketType == 2)
            selectedAmmo = 11;
    }
    else if (selectedWeapon == WPN_HOTHEAD && pp->WpnFlameType > 0)
        selectedAmmo = 16 + pp->WpnFlameType;

    if (selectedAmmo >= 0 && selectedAmmo < 20 && ammoTile[selectedAmmo] != 0)
        rotatesprite(long(ammoX[selectedAmmo]) << 16,
                     long(ammoY[selectedAmmo] + 3) << 16,
                     ammoScale[selectedAmmo], 0, ammoTile[selectedAmmo], 6, 0,
                     spriteFlags, 0, 0, xdim - 1, ydim - 1);

    // Optional special-weapon indicators, positioned beside the bottom-left status row.
    // Use the existing in-game pickup tiles for each base icon; shade them
    // while unavailable, and draw enlarged status glyphs near each icon center when owned.
    // In TILES018.ART, 4624-4628 are the digits 1-5, 4638 is '?', and 4608 is '!'.
    if (ShowNukeEnabled)
    {
        const bool hasNuke = (pp->WpnRocketNuke != 0);
        // Move the pair upward to match the reference HUD, with a small size reduction.
        rotatesprite(2L << 16, 145L << 16, 39000, 0, ICON_NUKE,
                     hasNuke ? 0 : 30, 0, specialIconFlags,
                     0, 0, xdim - 1, ydim - 1);

        if (hasNuke)
        {
            const int nukeStatusTile = (pp->WpnRocketType == 2 && pp->NukeInitialized) ? 4608 : 4638;
            // Sit slightly below the icon's upper edge instead of crowding its top.
            rotatesprite(13L << 16, 152L << 16, 39000, 0, nukeStatusTile,
                         0, 0, spriteFlags, 0, 0, xdim - 1, ydim - 1);
        }
    }

    if (ShowHeatEnabled)
    {
        const int heatCharges = pp->WpnRocketHeat;
        const bool hasHeat = (heatCharges > 0);
        rotatesprite(4L << 16, 163L << 16, 39000, 0, ICON_HEAT_CARD,
                     hasHeat ? 0 : 30, 0, specialIconFlags,
                     0, 0, xdim - 1, ydim - 1);

        if (hasHeat)
        {
            // The five regular SW font digit tiles correspond directly to charges 1-5.
            const int heatNumberTile = 4623 + (heatCharges > 5 ? 5 : heatCharges);
            // Move the charge digit left toward the heat card's visual center.
            rotatesprite(12L << 16, 168L << 16, 39000, 0, heatNumberTile,
                         0, 0, spriteFlags, 0, 0, xdim - 1, ydim - 1);
        }
    }

    // Keep the SWP anchor positions, but use its centered number renderer so
    // each value aligns with its corresponding health, armor, or ammo icon.
    DrawSWPStatusNumber(14, 186, u->Health);
    DrawSWPStatusNumber(38, 186, pp->Armor);
    if (selectedWeapon != WPN_SWORD && selectedWeapon != WPN_FIST)
        DrawSWPStatusNumber(62, 186, pp->WpnAmmo[selectedWeapon]);

    // Show all nine weapon icons. Unowned/empty weapons are dimmed; the active
    // weapon is highlighted. The icon and ammo arrays use the retail SW tiles.
    for (i = 0; i < 10; ++i)
    {
        shade[i] = 30;
        pal[i] = 11;
        if (TEST(pp->WpnFlags, BIT(i)) && pp->WpnAmmo[i] > 0)
        {
            shade[i] = 16;
            pal[i] = 13;
        }
    }
    if (selectedWeapon > 0 && selectedWeapon < 10)
    {
        shade[selectedWeapon] = 0;
        pal[selectedWeapon] = 17;
    }

    for (i = 1; i <= 9; ++i)
    {
        if (i == WPN_STAR && gs.Darts)
            rotatesprite(101L << 16, 184L << 16, 8000, 0, 2519,
                         shade[i], pal[i], spriteFlags, 0, 0, xdim - 1, ydim - 1);
        else
            rotatesprite(long(weaponX[i - 1]) << 16, long(weaponY[i - 1]) << 16,
                         weaponScale[i - 1], 0, weaponTile[i - 1],
                         shade[i], pal[i], spriteFlags, 0, 0, xdim - 1, ydim - 1);

        DrawSWPWeaponHudNumbers(ammoNumberX[i - 1], 195, pp->WpnAmmo[i],
                                selectedWeapon == i ? 0 : 18, 0);
    }

    // Selected inventory item, when present, occupies the slot before the weapons.
    // SWP displays a stack count for count-based items and a percentage otherwise.
    if (pp->InventoryNum >= 0 && pp->InventoryNum < MAX_INVENTORY &&
        pp->InventoryAmount[pp->InventoryNum] > 0)
    {
        INVENTORY_DATAp id = &InventoryData[pp->InventoryNum];
        char inventoryValue[16];

        if (id->State != NULL)
            rotatesprite(77L << 16, 184L << 16, 44000, 0, id->State->picndx,
                         0, 0, spriteFlags, 0, 0, xdim - 1, ydim - 1);

        if (TEST(id->Flags, INVF_COUNT))
            snprintf(inventoryValue, sizeof(inventoryValue), "%d", pp->InventoryAmount[pp->InventoryNum]);
        else
            snprintf(inventoryValue, sizeof(inventoryValue), "%d%%", pp->InventoryPercent[pp->InventoryNum]);

        // Match SWP's slightly imperfect but visually centered inventory-value placement.
        DrawSWPInventoryValue(82, 195, inventoryValue, 0);
    }
}

void UpdateMiniBar(PLAYERp pp)
{
    if ((unsigned)pp->PlayerSprite >= MAXSPRITES)
        return;

    USERp u = User[pp->PlayerSprite];
    int x,y;
    INVENTORY_DATAp id;
    extern SWBOOL PanelUpdateMode;
    extern int32_t MinHUDArmorEnabled;

#define MINI_BAR_Y 174

#define MINI_BAR_HEALTH_BOX_PIC 2437
#define MINI_BAR_ARMOR_BOX_PIC 2437
#define MINI_BAR_AMMO_BOX_PIC 2437
#define MINI_BAR_INVENTORY_BOX_PIC 2438

#define MINI_BAR_HEALTH_BOX_X 4
#define MINI_BAR_AMMO_BOX_X 32
#define MINI_BAR_INVENTORY_BOX_X 64
#define MINI_BAR_INVENTORY_BOX_Y MINI_BAR_Y

    if (!PanelUpdateMode || u == NULL)
        return;

    // Reuse the former no-HUD setting for SWP's weapon-icon HUD overlay.
    // BORDER_MINI_BAR (minimal HUD) and BORDER_BAR (full HUD) are unchanged.
    if (gs.BorderNum == BORDER_NONE)
    {
        UpdateSWPWeaponHud(pp, u);
        return;
    }

    if (gs.BorderNum != BORDER_MINI_BAR)
        return;

    /* Optional armor counter: show it immediately above the health counter. */
    if (MinHUDArmorEnabled)
    {
        x = MINI_BAR_HEALTH_BOX_X;
        y = 200 - 50;

        rotatesprite(x << 16, y << 16, (1 << 16), 0,
                     MINI_BAR_ARMOR_BOX_PIC, 0, 0,
                     ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER | RS_ALIGN_L,
                     0, 0, xdim - 1, ydim - 1);

        x = MINI_BAR_HEALTH_BOX_X + 3;
        DisplayMiniBarNumber(x, y + 5, pp->Armor);
    }

    x = MINI_BAR_HEALTH_BOX_X;
    y = 200 - 26;

    rotatesprite(x << 16, y << 16, (1 << 16), 0,
                 MINI_BAR_HEALTH_BOX_PIC, 0, 0,
                 ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER | RS_ALIGN_L,
                 0, 0, xdim - 1, ydim - 1);

    x = MINI_BAR_HEALTH_BOX_X+3;
    DisplayMiniBarNumber(x, y+5, u->Health);

    if (u->WeaponNum != WPN_SWORD && u->WeaponNum != WPN_FIST)
    {
        x = MINI_BAR_AMMO_BOX_X;

        rotatesprite(x << 16, y << 16, (1 << 16), 0,
                     MINI_BAR_AMMO_BOX_PIC, 0, 0,
                     ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER | RS_ALIGN_L,
                     0, 0, xdim - 1, ydim - 1);

        x = MINI_BAR_AMMO_BOX_X+3;
        DisplayMiniBarNumber(x, y+5, pp->WpnAmmo[u->WeaponNum]);
    }

    if (!pp->InventoryAmount[pp->InventoryNum])
        return;

    // Inventory Box
    x = MINI_BAR_INVENTORY_BOX_X;

    rotatesprite(x << 16, y << 16, (1 << 16), 0,
                 MINI_BAR_INVENTORY_BOX_PIC, 0, 0,
                 ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER | RS_ALIGN_L,
                 0, 0, xdim - 1, ydim - 1);

    id = &InventoryData[pp->InventoryNum];

    // Inventory pic
    x = MINI_BAR_INVENTORY_BOX_X + 2;
    y += 2;

    rotatesprite(x << 16, y << 16, (1 << 16), 0,
                 id->State->picndx, 0, 0,
                 ROTATE_SPRITE_SCREEN_CLIP | ROTATE_SPRITE_CORNER | RS_ALIGN_L,
                 0, 0, xdim - 1, ydim - 1);

    // will update the AUTO and % inventory values
    PlayerUpdateInventory(pp, pp->InventoryNum);
}


void
PanelInvTestSuicide(PANEL_SPRITEp psp)
{
    if (TEST(psp->flags, PANF_SUICIDE))
    {
        pKillSprite(psp);
    }
}

PANEL_SPRITEp
SpawnInventoryIcon(PLAYERp pp, short InventoryNum)
{
    PANEL_SPRITEp psp;
    short x,y;

    // check invalid value
    ASSERT(InventoryNum < MAX_INVENTORY);

    // check to see if its already spawned
    if (pp->InventorySprite[InventoryNum])
        return NULL;

    // check for Icon panel state
    if (!InventoryData[InventoryNum].State)
        return NULL;

    x = InventoryBarXpos[gs.BorderNum] + (InventoryNum*INVENTORY_ICON_WIDTH);
    y = InventoryBarYpos[gs.BorderNum];
    psp = pSpawnSprite(pp, InventoryData[InventoryNum].State, PRI_FRONT, x, y);
    pp->InventorySprite[InventoryNum] = psp;

    psp->x1 = 0;
    psp->y1 = 0;
    psp->x2 = xdim - 1;
    psp->y2 = ydim - 1;
    psp->scale = InventoryData[InventoryNum].Scale;
    SET(psp->flags, PANF_STATUS_AREA | PANF_SCREEN_CLIP);

    return psp;
}

void
KillPanelInv(PLAYERp pp, short InventoryNum)
{
    ASSERT(pp->InventorySprite[InventoryNum]);
    ASSERT(InventoryNum < MAX_INVENTORY);

    pp->InventoryTics[InventoryNum] = 0;
    SET(pp->InventorySprite[InventoryNum]->flags, PANF_SUICIDE);
    pp->InventorySprite[InventoryNum] = NULL;
}

void
KillPlayerIcon(PANEL_SPRITEp *pspp)
{
    SET((*pspp)->flags, PANF_SUICIDE);
    (*pspp) = NULL;
}

void
KillAllPanelInv(PLAYERp pp)
{
    short i;

    for (i = 0; i < MAX_INVENTORY; i++)
    {
        if (!pp->InventorySprite[i])
            continue;

        pp->InventoryTics[i] = 0;
        SET(pp->InventorySprite[i]->flags, PANF_SUICIDE);
        pp->InventorySprite[i]->numpages = 0;
        pp->InventorySprite[i] = NULL;
    }
}

PANEL_SPRITEp
SpawnIcon(PLAYERp pp, PANEL_STATEp state)
{
    PANEL_SPRITEp psp;

    psp = pSpawnSprite(pp, state, PRI_FRONT, 0, 0);

    psp->x1 = 0;
    psp->y1 = 0;
    psp->x2 = xdim - 1;
    psp->y2 = ydim - 1;
    SET(psp->flags, PANF_STATUS_AREA | PANF_SCREEN_CLIP);
    return psp;
}

//////////////////////////////////////////////////////////////////////
//
// MEDKIT
//
//////////////////////////////////////////////////////////////////////

void AutoPickInventory(PLAYERp pp)
{
    int i;

    // auto pick only if run out of currently selected one

    if (pp->InventoryAmount[pp->InventoryNum] <= 0)
    {
        for (i = 0; i < MAX_INVENTORY; i++)
        {
            if (i == INVENTORY_REPAIR_KIT)
                continue;

            if (pp->InventoryAmount[i])
            {
                pp->InventoryNum = i;
                return;
            }
        }

        // only take this if there is nothing else
        if (pp->InventoryAmount[INVENTORY_REPAIR_KIT])
            pp->InventoryNum = INVENTORY_REPAIR_KIT;
    }
}

void
UseInventoryMedkit(PLAYERp pp)
{
    USERp u = User[pp->PlayerSprite];
    short diff;
    short inv = INVENTORY_MEDKIT;
    short amt;


    if (!pp->InventoryAmount[inv])
        return;

    diff = 100 - u->Health;
    if (diff <= 0)
        return;

    if (diff > pp->InventoryPercent[inv]) // If not enough to get to 100, use what's left
        amt = pp->InventoryPercent[inv];
    else
        amt = diff;

    PlayerUpdateHealth(pp, amt);

    pp->InventoryPercent[inv] -= diff;
    if (pp->InventoryPercent[inv] < 0)
    {
        pp->InventoryPercent[inv] = 0;
        pp->InventoryAmount[inv]--;
    }

    AutoPickInventory(pp);

    //percent
    PlayerUpdateInventory(pp, pp->InventoryNum);

    if (pp == Player+myconnectindex)
    {
        if (amt >= 30)
            PlayerSound(DIGI_GETMEDKIT,&pp->posx,&pp->posy,&pp->posz,v3df_follow|v3df_dontpan,pp);
        else
            PlayerSound(DIGI_AHH,&pp->posx,&pp->posy,&pp->posz,v3df_follow|v3df_dontpan,pp);
    }
}

//////////////////////////////////////////////////////////////////////
//
// CHEMICAL WARFARE CANISTERS
//
//////////////////////////////////////////////////////////////////////
void
UseInventoryChemBomb(PLAYERp pp)
{
    short inv = INVENTORY_CHEMBOMB;

    if (!pp->InventoryAmount[inv])
        return;

    PlayerInitChemBomb(pp); // Throw a chemical bomb out there

    pp->InventoryPercent[inv] = 0;
    if (--pp->InventoryAmount[inv] < 0)
        pp->InventoryAmount[inv] = 0;

    AutoPickInventory(pp);

    PlayerUpdateInventory(pp, pp->InventoryNum);
}

//////////////////////////////////////////////////////////////////////
//
// FLASH BOMBS
//
//////////////////////////////////////////////////////////////////////
void
UseInventoryFlashBomb(PLAYERp pp)
{
    short inv = INVENTORY_FLASHBOMB;

    if (!pp->InventoryAmount[inv])
        return;

    PlayerInitFlashBomb(pp);

    pp->InventoryPercent[inv] = 0;
    if (--pp->InventoryAmount[inv] < 0)
        pp->InventoryAmount[inv] = 0;

    AutoPickInventory(pp);

    PlayerUpdateInventory(pp, pp->InventoryNum);
}

//////////////////////////////////////////////////////////////////////
//
// CALTROPS
//
//////////////////////////////////////////////////////////////////////
void
UseInventoryCaltrops(PLAYERp pp)
{
    short inv = INVENTORY_CALTROPS;

    if (!pp->InventoryAmount[inv])
        return;

    PlayerInitCaltrops(pp);

    pp->InventoryPercent[inv] = 0;
    if (--pp->InventoryAmount[inv] < 0)
        pp->InventoryAmount[inv] = 0;

    AutoPickInventory(pp);

    PlayerUpdateInventory(pp, pp->InventoryNum);
}

//////////////////////////////////////////////////////////////////////
//
// REPAIR KIT
//
//////////////////////////////////////////////////////////////////////

void
UseInventoryRepairKit(PLAYERp pp)
{
    short inv = INVENTORY_REPAIR_KIT;

    //PlaySound(DIGI_TOOLBOX, &pp->posx, &pp->posy, &pp->posz, v3df_none);
    if (pp == Player + myconnectindex)
    {
        if (STD_RANDOM_RANGE(1000) > 500)
            PlayerSound(DIGI_NOREPAIRMAN,&pp->posx,&pp->posy,&pp->posz,v3df_follow|v3df_dontpan,pp);
        else
            PlayerSound(DIGI_NOREPAIRMAN2,&pp->posx,&pp->posy,&pp->posz,v3df_follow|v3df_dontpan,pp);
    }

    pp->InventoryPercent[inv] = 0;
    pp->InventoryAmount[inv] = 0;

    AutoPickInventory(pp);

    //percent
    PlayerUpdateInventory(pp, pp->InventoryNum);
}

//////////////////////////////////////////////////////////////////////
//
// CLOAK
//
//////////////////////////////////////////////////////////////////////

void
UseInventoryCloak(PLAYERp pp)
{
    SPRITEp sp = pp->SpriteP;

    if (pp->InventoryActive[pp->InventoryNum])
    {
//        StopInventoryCloak(pp, pp->InventoryNum);
        return;
    }

    pp->InventoryActive[pp->InventoryNum] = TRUE;

    AutoPickInventory(pp);

    // on/off
    PlayerUpdateInventory(pp, pp->InventoryNum);

    SET(sp->cstat, CSTAT_SPRITE_TRANSLUCENT);
    sp->shade = 100;

    PlaySound(DIGI_GASPOP, &pp->posx, &pp->posy, &pp->posz, v3df_none);
    //if(RANDOM_RANGE(1000) > 950)
    if (pp == Player+myconnectindex)
        PlayerSound(DIGI_IAMSHADOW,&pp->posx,&pp->posy,&pp->posz,v3df_follow|v3df_dontpan,pp);
}

void
StopInventoryCloak(PLAYERp pp, short InventoryNum)
{
    SPRITEp sp = pp->SpriteP;

    pp->InventoryActive[InventoryNum] = FALSE;

    if (pp->InventoryPercent[InventoryNum] <= 0)
    {
        pp->InventoryPercent[InventoryNum] = 0;
        if (--pp->InventoryAmount[InventoryNum] < 0)
            pp->InventoryAmount[InventoryNum] = 0;
    }

    // on/off
    PlayerUpdateInventory(pp, InventoryNum);

    RESET(sp->cstat, CSTAT_SPRITE_TRANSLUCENT);
    sp->shade = 0;

    PlaySound(DIGI_GASPOP, &pp->posx, &pp->posy, &pp->posz, v3df_none);
}

//////////////////////////////////////////////////////////////////////
//
// ENVIRONMENT SUIT
//
//////////////////////////////////////////////////////////////////////
#if 0
void
UseInventoryEnvironSuit(PLAYERp pp)
{
    SPRITEp sp = pp->SpriteP;
    short inv = INVENTORY_ENVIRON_SUIT;

    // only activate if you have one
    if (pp->InventoryAmount[inv])
    {
        pp->InventoryActive[inv] = TRUE;
        // on/off
        PlayerUpdateInventory(pp, inv);
    }
}

void
StopInventoryEnvironSuit(PLAYERp pp, short InventoryNum)
{
    SPRITEp sp = pp->SpriteP;
    short inv = INVENTORY_ENVIRON_SUIT;

    pp->InventoryActive[InventoryNum] = FALSE;

    if (pp->InventoryPercent[InventoryNum] <= 0)
    {
        pp->InventoryPercent[InventoryNum] = 0;
        if (--pp->InventoryAmount[InventoryNum] < 0)
            pp->InventoryAmount[InventoryNum] = 0;
    }

    // on/off
    PlayerUpdateInventory(pp, InventoryNum);

    PlaySound(DIGI_SWCLOAKUNCLOAK, &pp->posx, &pp->posy, &pp->posz, v3df_none);
}
#endif

//////////////////////////////////////////////////////////////////////
//
// NIGHT VISION
//
//////////////////////////////////////////////////////////////////////

#if 0
static char sectorfloorpals[MAXSECTORS], sectorceilingpals[MAXSECTORS], wallpals[MAXWALLS];

void
DoPlayerNightVisionPalette(PLAYERp pp)
{
    short i;

    if (pp->InventoryActive[INVENTORY_NIGHT_VISION] && (pp - Player == screenpeek))
    {
        if (NightVision)
            return;                     // Already using night vision, don't
        // bother.
        g_visibility = 0;
        for (i = 0; i < numsectors; i++)
        {
            sectorfloorpals[i] = sector[i].floorpal;
            sectorceilingpals[i] = sector[i].ceilingpal;
            sector[i].floorpal = PALETTE_GREEN_LIGHTING;
            sector[i].ceilingpal = PALETTE_GREEN_LIGHTING;
        }
        for (i = 0; i < numwalls; i++)
        {
            wallpals[i] = wall[i].pal;
            wall[i].pal = PALETTE_GREEN_LIGHTING;
        }


        NightVision = TRUE;
        COVERsetbrightness(4, (char *) &palette_data[0][0]);
    }
    else
    {
        g_visibility = NormalVisibility;
        for (i = 0; i < numsectors; i++)
        {
            sector[i].floorpal = sectorfloorpals[i];
            sector[i].ceilingpal = sectorceilingpals[i];
        }
        for (i = 0; i < numwalls; i++)
        {
            wall[i].pal = wallpals[i];
        }
        DoPlayerDivePalette(pp);  // Check again to see if its a water palette
        NightVision = FALSE;
        COVERsetbrightness(gs.Brightness, (char *) &palette_data[0][0]);
    }
}
#endif

void
DoPlayerNightVisionPalette(PLAYERp pp)
{
    if (pp != Player + screenpeek) return;

    if (pp->InventoryActive[INVENTORY_NIGHT_VISION])
    {
//        if (pp->NightVision && pp->StartColor == 148)
//            return;
        SetFadeAmt(pp,-1005,148); // Night vision green tint
        pp->NightVision = TRUE;
    }
    else
    {
        // Put it all back to normal
        if (pp->StartColor == 148)
        {
            memcpy(pp->temp_pal, palette_data, sizeof(palette_data));
            memcpy(palookup[PALETTE_DEFAULT], DefaultPalette, 256 * 32);
            pp->FadeAmt = 0;
            if (videoGetRenderMode() < REND_POLYMOST)
                COVERsetbrightness(gs.Brightness, &palette_data[0][0]);
            else
                videoFadePalette(0,0,0,0);
        }
        pp->NightVision = FALSE;
    }
}

void
UseInventoryNightVision(PLAYERp pp)
{
#define NIGHT_INVENTORY_TIME 30

    if (pp->InventoryActive[pp->InventoryNum])
    {
        StopInventoryNightVision(pp, pp->InventoryNum);
        return;
    }

    pp->InventoryActive[pp->InventoryNum] = TRUE;

    // on/off
    PlayerUpdateInventory(pp, pp->InventoryNum);

    DoPlayerNightVisionPalette(pp);
    PlaySound(DIGI_NIGHTON, &pp->posx, &pp->posy, &pp->posz, v3df_dontpan|v3df_follow);
}

void
StopInventoryNightVision(PLAYERp pp, short InventoryNum)
{
    pp->InventoryActive[InventoryNum] = FALSE;

    if (pp->InventoryPercent[InventoryNum] <= 0)
    {
        pp->InventoryPercent[InventoryNum] = 0;
        if (--pp->InventoryAmount[InventoryNum] < 0)
            pp->InventoryAmount[InventoryNum] = 0;
    }

    AutoPickInventory(pp);

    // on/off
    PlayerUpdateInventory(pp, pp->InventoryNum);

    DoPlayerNightVisionPalette(pp);
    DoPlayerDivePalette(pp);
    PlaySound(DIGI_NIGHTOFF, &pp->posx, &pp->posy, &pp->posz, v3df_dontpan|v3df_follow);
}

//////////////////////////////////////////////////////////////////////
//
// INVENTORY KEYS
//
//////////////////////////////////////////////////////////////////////

void InventoryKeys(PLAYERp pp)
{
    short inv_hotkey;

    // scroll SPELLs left
    if (TEST_SYNC_KEY(pp, SK_INV_LEFT))
    {
        if (FLAG_KEY_PRESSED(pp, SK_INV_LEFT))
        {
            FLAG_KEY_RELEASE(pp, SK_INV_LEFT);
            SpawnInventoryBar(pp);
            PlayerUpdateInventory(pp, pp->InventoryNum - 1);
            PutStringInfo(pp, InventoryData[pp->InventoryNum].Name);
            InventoryBarUpdatePosition(pp);
            InvBorderRefresh(pp);
        }
    }
    else
    {
        FLAG_KEY_RESET(pp, SK_INV_LEFT);
    }

    // scroll SPELLs right
    if (TEST_SYNC_KEY(pp, SK_INV_RIGHT))
    {
        if (FLAG_KEY_PRESSED(pp, SK_INV_RIGHT))
        {
            FLAG_KEY_RELEASE(pp, SK_INV_RIGHT);
            SpawnInventoryBar(pp);
            PlayerUpdateInventory(pp, pp->InventoryNum + 1);
            PutStringInfo(pp, InventoryData[pp->InventoryNum].Name);
            InventoryBarUpdatePosition(pp);
            InvBorderRefresh(pp);
        }
    }
    else
    {
        FLAG_KEY_RESET(pp, SK_INV_RIGHT);
    }

    if (TEST_SYNC_KEY(pp, SK_INV_USE))
    {
        if (FLAG_KEY_PRESSED(pp, SK_INV_USE))
        {
            FLAG_KEY_RELEASE(pp, SK_INV_USE);

            if (InventoryData[pp->InventoryNum].Init)
            {
                if (pp->InventoryAmount[pp->InventoryNum])
                {
                    InventoryUse(pp);
                }
                else
                {
                    sprintf(ds,"No %s",InventoryData[pp->InventoryNum].Name);
                    PutStringInfo(pp,ds); // DONT have message
                }
            }
        }
    }
    else
    {
        FLAG_KEY_RESET(pp, SK_INV_USE);
    }

    // get hotkey number out of input bits
    inv_hotkey = TEST(pp->input.bits, SK_INV_HOTKEY_MASK) >> SK_INV_HOTKEY_BIT0;

    if (inv_hotkey)
    {
        if (FLAG_KEY_PRESSED(pp, SK_INV_HOTKEY_BIT0))
        {
            FLAG_KEY_RELEASE(pp, SK_INV_HOTKEY_BIT0);

            inv_hotkey -= 1;

            ////DSPRINTF(ds,"inv_hotkey %d",inv_hotkey);
            //MONO_PRINT(ds);

            // switches you to this inventory item
            //PlayerUpdateInventory(pp, inv_hotkey);
            pp->InventoryNum = inv_hotkey;

            if (InventoryData[pp->InventoryNum].Init && !TEST(pp->Flags, PF_CLIMBING))
            {
                if (pp->InventoryAmount[pp->InventoryNum])
                {
                    InventoryUse(pp);
                }
#if 0
                else
                {
                    sprintf(ds,"No %s",InventoryData[pp->InventoryNum].Name);
                    PutStringInfo(pp,ds); // DONT have message
                }
#endif
            }

            //PlayerUpdateInventory(pp, pp->InventoryNum);
        }
    }
    else
    {
        FLAG_KEY_RESET(pp, SK_INV_HOTKEY_BIT0);
    }
}

void InvBorderRefresh(PLAYERp pp)
{
//    int x,y;

    if (pp != Player + myconnectindex)
        return;

//    x = InventoryBarXpos[gs.BorderNum];
//    y = InventoryBarYpos[gs.BorderNum];

    SetRedrawScreen(pp);
    //BorderRefreshClip(pp, x-5, y-5, x + (MAX_INVENTORY * INVENTORY_ICON_WIDTH), y + 24);
}

void InventoryTimer(PLAYERp pp)
{
    // called every time through loop
    short inv = 0;
    INVENTORY_DATAp id;

    // if bar is up
    if (pp->InventoryBarTics)
    {
        InventoryBarUpdatePosition(pp);

        pp->InventoryBarTics -= synctics;
        // if bar time has elapsed
        if (pp->InventoryBarTics <= 0)
        {
            // get rid of the bar
            KillInventoryBar(pp);
            // don't update bar anymore
            pp->InventoryBarTics = 0;

            InvBorderRefresh(pp);
            //BorderRefresh(pp);
        }
    }

    for (id = InventoryData; id->Name; id++, inv++)
    {
        // if timed and active
        if (TEST(id->Flags, INVF_TIMED) && pp->InventoryActive[inv])
        {
            // dec tics
            pp->InventoryTics[inv] -= synctics;
            if (pp->InventoryTics[inv] <= 0)
            {
                // take off a percentage
                pp->InventoryPercent[inv] -= id->DecPerSec;
                if (pp->InventoryPercent[inv] <= 0)
                {
                    // ALL USED UP
                    pp->InventoryPercent[inv] = 0;
                    InventoryStop(pp, inv);
                    pp->InventoryActive[inv] = FALSE;
                }
                else
                {
                    // reset 1 sec tic clock
                    pp->InventoryTics[inv] = SEC(1);
                }

                //PlayerUpdateInventoryPercent(pp);
                PlayerUpdateInventory(pp, pp->InventoryNum);
            }
        }
        else
        // the idea behind this is that the USE function will get called
        // every time the player is in an AUTO_USE situation.
        // This code will decrement the timer and set the Item to InActive
        // EVERY SINGLE TIME.  Relies on the USE function getting called!
        if (TEST(id->Flags, INVF_AUTO_USE) && pp->InventoryActive[inv])
        {
            pp->InventoryTics[inv] -= synctics;
            if (pp->InventoryTics[inv] <= 0)
            {
                // take off a percentage
                pp->InventoryPercent[inv] -= id->DecPerSec;
                if (pp->InventoryPercent[inv] <= 0)
                {
                    // ALL USED UP
                    pp->InventoryPercent[inv] = 0;
                    // should get rid if Amount - stop it for good
                    InventoryStop(pp, inv);
                }
                else
                {
                    // reset 1 sec tic clock
                    pp->InventoryTics[inv] = SEC(1);
                    // set to InActive EVERY TIME THROUGH THE LOOP!
                    pp->InventoryActive[inv] = FALSE;
                }

                //PlayerUpdateInventoryPercent(pp);
                PlayerUpdateInventory(pp, pp->InventoryNum);
            }
        }
    }
}

//////////////////////////////////////////////////////////////////////
//
// INVENTORY BAR
//
//////////////////////////////////////////////////////////////////////

void SpawnInventoryBar(PLAYERp pp)
{
    short inv = 0;
    INVENTORY_DATAp id;
    PANEL_SPRITEp psp;


    // its already up
    if (pp->InventoryBarTics)
    {
        pp->InventoryBarTics = SEC(2);
        return;
    }

    pp->InventorySelectionBox = SpawnIcon(pp, ps_PanelSelectionBox);

    for (id = InventoryData; id->Name; id++, inv++)
    {
        psp = SpawnInventoryIcon(pp, inv);

        if (!pp->InventoryAmount[inv])
        {
            //SET(psp->flags, PANF_TRANSLUCENT);
            //SET(psp->flags, PANF_TRANS_FLIP);
            psp->shade = 100; //Darken it
        }
    }

    pp->InventoryBarTics = SEC(2);
}

void KillInventoryBar(PLAYERp pp)
{
    KillAllPanelInv(pp);
    KillPlayerIcon(&pp->InventorySelectionBox);
}

// In case the BorderNum changes - move the postions
void InventoryBarUpdatePosition(PLAYERp pp)
{
    short inv = 0;
    short x,y;
    INVENTORY_DATAp id;

    x = InventoryBarXpos[gs.BorderNum] + (pp->InventoryNum * INVENTORY_ICON_WIDTH);
    y = InventoryBarYpos[gs.BorderNum];

    pp->InventorySelectionBox->x = x - 5;
    pp->InventorySelectionBox->y = y - 5;

    // Explanation of pointer check: If inventory bar is shown just
    // before player kill, pointer may be nullified via KillAllPanelInv.
    for (id = InventoryData; id->Name; id++, inv++)
        if (pp->InventorySprite[inv])
        {
            x = InventoryBarXpos[gs.BorderNum] + (inv * INVENTORY_ICON_WIDTH);
            y = InventoryBarYpos[gs.BorderNum];

            pp->InventorySprite[inv]->x = x;
            pp->InventorySprite[inv]->y = y;
        }
}

void InventoryUse(PLAYERp pp)
{
    INVENTORY_DATAp id = &InventoryData[pp->InventoryNum];

    if (id->Init)
        (*id->Init)(pp);
}

void InventoryStop(PLAYERp pp, short InventoryNum)
{
    INVENTORY_DATAp id = &InventoryData[InventoryNum];

    if (id->Stop)
        (*id->Stop)(pp, InventoryNum);
}

/////////////////////////////////////////////////////////////////
//
// Inventory Console Area
//
/////////////////////////////////////////////////////////////////

#define INVENTORY_BOX_X 231
#define INVENTORY_BOX_Y (176-8)
#define INVENTORY_BOX_ERASE 2403

short InventoryBoxX;
short InventoryBoxY;
short InventoryXoff;
short InventoryYoff;
void (*InventoryDisplayString)(PLAYERp, short, short, short, const char *);

#define INVENTORY_PIC_XOFF 1
#define INVENTORY_PIC_YOFF 1

#define INVENTORY_PERCENT_XOFF 19
#define INVENTORY_PERCENT_YOFF 13

#define INVENTORY_STATE_XOFF 19
#define INVENTORY_STATE_YOFF 1

void
PlayerUpdateInventory(PLAYERp pp, short InventoryNum)
{
    // Check for items that need to go translucent from use
    if (pp->InventoryBarTics)
    {
        short inv = 0;
        INVENTORY_DATAp id;
        PANEL_SPRITEp psp;

        // Go translucent if used
        for (id = InventoryData; id->Name; id++, inv++)
        {
            psp = pp->InventorySprite[inv];
            // Added pointer check: If inventory bar is shown just before
            // player kill, pointer may be nullified via KillAllPanelInv.
            if (!psp)
                continue;

            if (!pp->InventoryAmount[inv])
            {
                //SET(psp->flags, PANF_TRANSLUCENT);
                //SET(psp->flags, PANF_TRANS_FLIP);
                psp->shade = 100; // Darken it
            }
            else
            {
                //RESET(psp->flags, PANF_TRANSLUCENT);
                //RESET(psp->flags, PANF_TRANS_FLIP);
                psp->shade = 0;
            }
        }
    }

    pp->InventoryNum = InventoryNum;

    if (pp->InventoryNum < 0)
        pp->InventoryNum = MAX_INVENTORY-1;

    if (pp->InventoryNum >= MAX_INVENTORY)
        pp->InventoryNum = 0;

    if (pp - Player != screenpeek)
        return;

    if (gs.BorderNum == BORDER_MINI_BAR)
    {
        InventoryBoxX = MINI_BAR_INVENTORY_BOX_X;
        InventoryBoxY = MINI_BAR_INVENTORY_BOX_Y;

        InventoryXoff = 1;
        InventoryYoff = 1;

        InventoryDisplayString = DisplayMiniBarSmString;
    }
    else
    {
        if (gs.BorderNum < BORDER_BAR)
            return;

        InventoryBoxX = INVENTORY_BOX_X;
        InventoryBoxY = INVENTORY_BOX_Y;

        InventoryXoff = 0;
        InventoryYoff = 0;

        InventoryDisplayString = DisplaySmString;

        // erase old info
        pSpawnFullScreenSprite(pp, INVENTORY_BOX_ERASE, PRI_MID, INVENTORY_BOX_X, INVENTORY_BOX_Y);

        // put pic
        if (pp->InventoryAmount[pp->InventoryNum])
            PlayerUpdateInventoryPic(pp);
    }

    if (pp->InventoryAmount[pp->InventoryNum])
    {
        // Auto/On/Off
        PlayerUpdateInventoryState(pp);
        // Percent count/Item count
        PlayerUpdateInventoryPercent(pp);
    }
}

void
PlayerUpdateInventoryPercent(PLAYERp pp)
{
    short x,y;
    INVENTORY_DATAp id = &InventoryData[pp->InventoryNum];

    x = InventoryBoxX + INVENTORY_PERCENT_XOFF + InventoryXoff;
    y = InventoryBoxY + INVENTORY_PERCENT_YOFF + InventoryYoff;

    if (TEST(id->Flags, INVF_COUNT))
    {
        sprintf(ds,"%d", pp->InventoryAmount[pp->InventoryNum]);
        InventoryDisplayString(pp, x, y, 0, ds);
    }
    else
    {
        sprintf(ds,"%d%c", pp->InventoryPercent[pp->InventoryNum],'%');
        InventoryDisplayString(pp, x, y, 0, ds);
    }
}

void
PlayerUpdateInventoryPic(PLAYERp pp)
{
    PANEL_SPRITEp psp;
    short pic;
    short x,y;
    INVENTORY_DATAp id = &InventoryData[pp->InventoryNum];

    x = InventoryBoxX + INVENTORY_PIC_XOFF + InventoryXoff;
    y = InventoryBoxY + INVENTORY_PIC_YOFF + InventoryYoff;

    pic = id->State->picndx;

    psp = pSpawnFullScreenSprite(pp, pic, PRI_FRONT_MAX, x, y);

    psp->scale = id->Scale;
}

void
PlayerUpdateInventoryState(PLAYERp pp)
{
    short x,y;
    INVENTORY_DATAp id = &InventoryData[pp->InventoryNum];

    x = InventoryBoxX + INVENTORY_STATE_XOFF + InventoryXoff;
    y = InventoryBoxY + INVENTORY_STATE_YOFF + InventoryYoff;

    if (TEST(id->Flags, INVF_AUTO_USE))
    {
        sprintf(ds,"%s", "AUTO");
        InventoryDisplayString(pp, x, y, 0, ds);
    }
    else if (TEST(id->Flags, INVF_TIMED))
    {
        sprintf(ds,"%s", pp->InventoryActive[pp->InventoryNum] ? "ON" : "OFF");
        InventoryDisplayString(pp, x, y, 0, ds);
    }
}
