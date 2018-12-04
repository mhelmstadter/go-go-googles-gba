
//{{BLOCK(MiscScreen)

//======================================================================
//
//	MiscScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 208 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6656 + 2048 = 9216
//
//	Time-stamp: 2018-12-04, 03:26:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MISCSCREEN_H
#define GRIT_MISCSCREEN_H

#define MiscScreenTilesLen 6656
extern const unsigned short MiscScreenTiles[3328];

#define MiscScreenMapLen 2048
extern const unsigned short MiscScreenMap[1024];

#define MiscScreenPalLen 512
extern const unsigned short MiscScreenPal[256];

#endif // GRIT_MISCSCREEN_H

//}}BLOCK(MiscScreen)
