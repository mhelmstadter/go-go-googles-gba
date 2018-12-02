
//{{BLOCK(Misc)

//======================================================================
//
//	Misc, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 162 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5184 + 2048 = 7744
//
//	Time-stamp: 2018-11-14, 23:42:51
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MISC_H
#define GRIT_MISC_H

#define MiscTilesLen 5184
extern const unsigned short MiscTiles[2592];

#define MiscMapLen 2048
extern const unsigned short MiscMap[1024];

#define MiscPalLen 512
extern const unsigned short MiscPal[256];

#endif // GRIT_MISC_H

//}}BLOCK(Misc)
