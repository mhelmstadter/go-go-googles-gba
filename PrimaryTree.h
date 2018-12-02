
//{{BLOCK(PrimaryTree)

//======================================================================
//
//	PrimaryTree, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 150 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4800 + 2048 = 7360
//
//	Time-stamp: 2018-11-30, 01:01:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PRIMARYTREE_H
#define GRIT_PRIMARYTREE_H

#define PrimaryTreeTilesLen 4800
extern const unsigned short PrimaryTreeTiles[2400];

#define PrimaryTreeMapLen 2048
extern const unsigned short PrimaryTreeMap[1024];

#define PrimaryTreePalLen 512
extern const unsigned short PrimaryTreePal[256];

#endif // GRIT_PRIMARYTREE_H

//}}BLOCK(PrimaryTree)
