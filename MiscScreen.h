
//{{BLOCK(MiscScreen)

//======================================================================
//
//	MiscScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 199 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6368 + 2048 = 8928
//
//	Time-stamp: 2018-11-30, 18:08:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MISCSCREEN_H
#define GRIT_MISCSCREEN_H

#define MiscScreenTilesLen 6368
extern const unsigned short MiscScreenTiles[3184];

#define MiscScreenMapLen 2048
extern const unsigned short MiscScreenMap[1024];

#define MiscScreenPalLen 512
extern const unsigned short MiscScreenPal[256];

#endif // GRIT_MISCSCREEN_H

//}}BLOCK(MiscScreen)
