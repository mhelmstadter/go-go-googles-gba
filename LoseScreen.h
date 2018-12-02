
//{{BLOCK(LoseScreen)

//======================================================================
//
//	LoseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 83 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2656 + 2048 = 5216
//
//	Time-stamp: 2018-11-30, 00:35:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define LoseScreenTilesLen 2656
extern const unsigned short LoseScreenTiles[1328];

#define LoseScreenMapLen 2048
extern const unsigned short LoseScreenMap[1024];

#define LoseScreenPalLen 512
extern const unsigned short LoseScreenPal[256];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(LoseScreen)
