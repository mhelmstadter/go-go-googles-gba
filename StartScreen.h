
//{{BLOCK(StartScreen)

//======================================================================
//
//	StartScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 93 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2976 + 2048 = 5536
//
//	Time-stamp: 2018-11-30, 01:18:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define StartScreenTilesLen 2976
extern const unsigned short StartScreenTiles[1488];

#define StartScreenMapLen 2048
extern const unsigned short StartScreenMap[1024];

#define StartScreenPalLen 512
extern const unsigned short StartScreenPal[256];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(StartScreen)
