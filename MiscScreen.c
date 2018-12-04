
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

const unsigned short MiscScreenTiles[3328] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5000,0x0005,0x5000,0x0005,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5500,0x5550,0x5500,0x5550,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0555,0x0000,0x5555,0x000E,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5500,0x0000,0x5500,0x0000,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,
	0x5500,0x0550,0x5500,0x0550,0x5500,0x0550,0x5500,0x0550,
	0x5500,0x5550,0x5500,0x5550,0x5500,0x0550,0x5500,0x0550,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,0x5700,0x0005,
	0x5555,0x0000,0x0555,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5500,0x5555,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0B55,0x0000,0x0000,0x0000,
	0x5500,0x0000,0x5500,0x0000,0x5500,0x0550,0x5500,0x0550,
	0x5500,0x0550,0x5500,0x0550,0x5500,0x0550,0x5500,0x0550,
	0x0000,0x0000,0x0000,0x0000,0x5500,0x5500,0x5500,0x5500,
	0x5500,0x5500,0x5500,0x5500,0x5500,0x5500,0x5500,0x5500,

	0x0000,0x0000,0x0000,0x0000,0x055A,0x3550,0x5555,0x5555,
	0x5506,0x5005,0x5400,0x5003,0x5000,0x5000,0x5000,0x5000,
	0x0000,0x0000,0x0000,0x0000,0x5000,0x55E0,0x500C,0x5555,
	0x5005,0x4075,0x5005,0x0005,0x5005,0x000C,0x5005,0x0007,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x00C5,0x0000,
	0x0055,0x0000,0x0055,0x0000,0x0755,0x0000,0x0055,0x0000,
	0x5000,0x0005,0x5000,0x0055,0x0000,0x5555,0x0000,0x5560,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x6550,0x0550,0x0554,0x0550,0x0A55,0x0550,0x0005,0x0550,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0xD000,0x0000,0x5000,0x0000,0xF000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5500,0x0550,0x65D0,0xD550,0x0555,0x5500,0x0455,0x5000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5500,0x5500,0x5530,0x5500,0x5555,0x5500,0x5525,0x5500,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x5000,0x5000,0x5000,0x5000,0x5000,0x5000,0x5000,0x5000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5005,0x0007,0x5005,0xF045,0x5005,0x5555,0x5005,0x55F7,
	0x5000,0x0007,0x5000,0x0007,0x5000,0x0007,0x5000,0x0007,
	0x0055,0x0000,0x0055,0x0000,0x0005,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0005,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0xF000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x00A5,0x0000,0x0005,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0070,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0550,0x0000,0x0550,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x7000,0x00A5,0x5500,0x0055,0x5500,0x5000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0005,0x5000,0x0005,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5000,0x5555,0x5000,0xCCC5,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0A55,0x0C50,0x0555,0x0050,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x7570,0x0000,0x7570,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,0x0000,
	0x0000,0x5500,0x0000,0x555B,0x5D00,0x0055,0x5553,0x0000,
	0x0055,0x0000,0xB555,0x0000,0x5520,0x0005,0x0000,0xE555,
	0x0005,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5500,0x0555,0x5500,0x0555,0x0000,0x0000,

	0x0000,0x5000,0x0000,0x5000,0x0000,0x5000,0x0000,0x5300,
	0x0000,0x5500,0x0000,0x0500,0x0000,0x0500,0x0000,0x05D0,
	0x0005,0x0000,0x000F,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x5000,0x0000,0x5000,0x0000,0x0000,
	0x0000,0xC550,0x0000,0x5550,0x0000,0xB000,0x0000,0x0000,
	0x0000,0x0000,0xB555,0x0000,0xB555,0x0000,0x0000,0x5500,
	0x0000,0x0000,0x0005,0x0000,0x0555,0x0000,0x5560,0x0005,
	0x4000,0x0055,0x5500,0x00E5,0x5555,0x0000,0x0035,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5000,0x5555,0x5000,0x5555,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5555,0x0000,0x5555,0x0000,0x0000,0x0000,
	0x0550,0x0000,0x0550,0x0000,0x0550,0x0000,0x0550,0x0000,
	0x0550,0x0000,0x0550,0x0000,0x0550,0x0000,0x0550,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5000,0x3555,0x5500,0x5504,
	0x0560,0x5000,0x5550,0x5555,0x5550,0x5555,0x0550,0x0000,

	0x5500,0x5000,0x5500,0x5000,0x5550,0x5555,0x5570,0x5777,
	0x5505,0x5000,0x5505,0x5000,0x5505,0x5000,0x5508,0x5000,
	0x0005,0x0000,0x0005,0x0000,0x0555,0x0000,0x0775,0x0000,
	0x0005,0x0000,0x0005,0x0000,0x0005,0x0000,0x0005,0x0000,
	0x5000,0x0003,0x5000,0x0000,0x5200,0x0000,0x5500,0x0000,
	0xF500,0x0000,0x0500,0x0000,0x05E0,0x0000,0x0550,0x0000,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,0x5000,0x5555,
	0x5000,0x5555,0x5000,0x3005,0x5000,0x0005,0x5000,0x0005,

	0x0550,0x0000,0x0550,0x0000,0x0550,0x0050,0x0055,0x0050,
	0x0005,0x0050,0x0055,0x0050,0x0055,0x0050,0x0D50,0x0050,
	0x0000,0x0000,0x0000,0x0000,0x5530,0x5555,0xC550,0x5551,
	0x0055,0x5500,0x0055,0x5500,0x0055,0x5500,0x0055,0x5500,
	0x7570,0x0000,0x7570,0x0000,0x7570,0x5555,0x5570,0x5525,
	0x5570,0x5000,0x3570,0x5000,0x1570,0x5000,0x7570,0x5000,
	0x5000,0x0000,0x5200,0x0000,0x5550,0x0755,0x5870,0x0477,
	0x570C,0x0000,0x570C,0x0000,0x570C,0x0000,0x570C,0x0000,

	0x0000,0x5500,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0005,0x0000,0x0005,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0550,0x0000,0x0050,0x0000,0x0053,0x0000,0x0055,
	0x0000,0x0035,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3550,0x0000,0x00E0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0550,0x0000,0x5550,0x5555,0x5550,0x5555,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5540,0xC000,0x5505,0x5555,0x5005,0x5555,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5505,0x5000,0x5505,0x5000,0x5500,0x5000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0005,0x0000,0x05B5,0x0000,0x0555,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0A50,0x0000,0x0057,0x0000,0x0055,0x0000,0x0055,0x0000,
	0x0005,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0550,0x0050,0x0550,0x0050,0x8510,0x0050,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0655,0x5550,0x5550,0x5555,0x5500,0x5505,0x0000,0x5500,
	0x000C,0xE550,0x455C,0x0555,0x5550,0x0055,0x0000,0x0000,

	0x7570,0x5000,0x7570,0x5000,0x7570,0x5000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x570C,0x0000,0x500C,0x0735,0x500C,0x0755,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,0x0000,0x5700,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5555,0x00B5,0x5555,0x0055,0x0005,0x0050,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x005C,0x0055,0x005C,0x0055,0x005C,0x0055,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0055,0x0000,0x0055,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x065E,0x5500,0x5555,0x5500,0x5575,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x5B00,0x0005,0x5558,0x0005,0x7D55,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0002,0x0000,0x0055,0x0000,0x0555,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5500,0x5555,0x5500,0x5555,0x5500,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x50B5,0x000B,0x50B5,0x000B,0x5000,0x000B,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0750,0x0000,0x0750,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x5000,0x0000,0x5000,0x0000,0x5000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0003,0x0055,0x0005,0x0055,0x0005,0x0C55,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1570,0x0050,0x0550,0x0454,0x0550,0x0050,
	0x0000,0x5500,0x0000,0x5500,0x0000,0x1570,0x0000,0x05B0,
	0x0000,0x05C0,0x0000,0x3500,0x0000,0x5500,0x0000,0x5500,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,
	0x0000,0x5000,0x0000,0x5000,0x0000,0x5000,0x000E,0x5010,
	0x0000,0x0000,0x5550,0x0005,0x5555,0x0055,0x00D5,0x055A,
	0x0005,0x0550,0x0005,0x0550,0x0005,0x0550,0x0005,0x0550,
	0x005C,0x0055,0x005C,0x0055,0x005C,0x0055,0x005C,0x0055,
	0x005C,0x0055,0x005C,0x0055,0x005C,0x0055,0x005C,0x0055,
	0x0000,0x0000,0x5500,0x0075,0x5550,0x0D55,0x0055,0x0550,
	0x5555,0x0555,0x5555,0x0555,0x0055,0x0000,0x0055,0x0300,

	0x0000,0x0000,0x5500,0x5C55,0x5550,0x5C55,0x0E55,0x0000,
	0x0055,0x0000,0x0055,0x0000,0x0055,0x0000,0x0055,0x0000,
	0x0055,0x0000,0x5555,0x0000,0x5555,0x0000,0x0055,0x0000,
	0x0055,0x0000,0x0055,0x0000,0x0055,0x0000,0x0055,0x0000,
	0x0500,0xB000,0x0000,0x7000,0x0000,0x5000,0x0000,0x5500,
	0x0000,0x6550,0x8000,0x0755,0x5E00,0x0005,0x5500,0x0000,
	0x50A5,0x00A5,0x5045,0x0005,0x5705,0x0005,0x5B0E,0x000C,
	0x5B00,0x000C,0x5700,0x0005,0x5000,0x0005,0x5000,0x0005,

	0x0550,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,
	0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,0x4550,0x0000,
	0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x5555,
	0x5500,0x5555,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,
	0x5000,0x000B,0x5000,0x000B,0x5000,0x500B,0x5005,0x550B,
	0x5005,0x550B,0x5000,0x550B,0x5000,0x550B,0x5000,0x550B,
	0x0000,0x0000,0x5555,0x5500,0x5555,0x5105,0xD00D,0x5055,
	0x0000,0x5055,0x0000,0x6055,0x0000,0x0055,0x0000,0x0055,

	0x0000,0x0000,0x5000,0x0005,0x500F,0x0005,0x5405,0x0055,
	0x5505,0x5055,0x5505,0x5052,0x5505,0x5050,0x0555,0x5150,
	0x0000,0x0000,0x0055,0x5555,0x5055,0x5555,0x5005,0xB00D,
	0x5505,0x5555,0x5505,0x5555,0x5505,0x0000,0x5300,0x000F,
	0x0000,0x0000,0x5000,0x5557,0x5005,0x5555,0x5035,0x00A5,
	0x5055,0x0005,0x5055,0x0005,0x5000,0x0005,0x5050,0x0005,
	0x0000,0x0000,0x5550,0x0005,0x5555,0x0055,0x0055,0x0050,
	0x0355,0x0000,0x5555,0x0005,0x5600,0x0055,0x0000,0x0055,

	0x0000,0x0750,0x5000,0x5555,0x5000,0x5555,0x0000,0x0750,
	0x0000,0x0750,0x0000,0x0750,0x0000,0x0750,0x0000,0x0750,
	0x0000,0x0000,0x5005,0x0555,0x5505,0x5555,0x5550,0x5600,
	0x0550,0x5000,0x0550,0x5000,0x0550,0x5000,0x0550,0x5000,
	0x0000,0x5000,0x0000,0xD000,0x0000,0x0000,0x0005,0x0000,
	0x0005,0x0000,0x0005,0x0000,0x0005,0x0000,0x0005,0x0000,
	0x5005,0x0555,0x5045,0x0555,0x5055,0x05E5,0x5055,0x050C,
	0x5055,0x7500,0x5755,0x5500,0x5556,0x5500,0x5550,0x5D00,

	0x0550,0x0000,0x0550,0x0050,0x0E5F,0x0050,0x0055,0x0050,
	0x0055,0x0050,0x0055,0x0050,0x0055,0x0050,0x00C5,0x0050,
	0x0000,0x0000,0x5055,0x0055,0x5555,0x0555,0x0555,0x0550,
	0x0055,0x0550,0x0055,0x0550,0x0055,0x0550,0x0055,0x0550,
	0x0055,0x1055,0x5555,0x0055,0x6520,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0055,0x0455,0x5553,0x0055,0xBB00,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x005C,0x0055,0x005C,0x0055,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0555,0x0550,0x5550,0x0555,0x5000,0x000B,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0555,0x0050,0x5550,0x0055,0x5000,0x000C,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x6055,0x0000,0x5555,0x0000,0x03B0,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0xB500,0xCCCC,0x5500,0x5555,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x00CC,0x0455,0x0055,0x5551,0x0000,0x5600,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0555,0x0000,0x0055,0x0000,0x0004,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5000,0x510B,0x5000,0x500B,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x5005,0x0045,0x5555,0x0005,0x0BB0,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0555,0x5550,0x0552,0x55B0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5000,0x60C5,0xA000,0x5555,0x0000,0x25B0,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5055,0x0005,0x5005,0x0005,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x00A5,0x0055,0x5555,0x00F5,0x65A0,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0550,0x0000,0x5550,0x0000,0xB500,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x550B,0x5500,0x5505,0x5555,0x0000,0x003B,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x000C,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x5550,0x5000,0x7550,0x5000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0005,0x0050,0x0005,0x0050,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0055,0x0550,0x0055,0x0550,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5700,0x0000,0x5C00,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x5000,0x0000,0x5500,0x0000,0x5550,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x4555,0x0000,0x5555,0x0000,0x5200,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x5000,0x5555,0x5000,0x5555,0x5000,0x0005,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0055,0x0000,0x0555,0x0000,0x0554,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0500,0x0000,0x0500,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0xB000,0x0000,0x5500,0x0000,0x5580,0x0000,0x05B0,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0000,0x55B5,0x5500,0x5560,0x5500,0x5500,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0550,0x0000,0x0550,0x0000,0x0550,
	0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,
	0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,
	0x0000,0x0000,0x5000,0x5555,0x5500,0x550C,0x5500,0x5000,
	0x5500,0x5555,0x5570,0x5555,0xD500,0x0000,0x5500,0x0000,
	0x5300,0x0000,0x5550,0x0055,0x5571,0x0077,0x5505,0x0000,
	0x5505,0x0000,0x5505,0x0000,0x5500,0x0000,0x5505,0x0000,

	0x0000,0x0550,0x0000,0x0055,0x0000,0x5055,0x0000,0x5555,
	0x0000,0xE555,0x0000,0x0055,0x0000,0x0055,0x0000,0x0550,
	0x0000,0x0000,0x0000,0x0000,0x0555,0x0000,0x5555,0x0000,
	0x5500,0x0007,0x5400,0x0005,0x5000,0x0005,0x5500,0x0004,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x5555,0x5000,0x5555,
	0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,0x5000,0x0005,
	0x0550,0x0000,0x0255,0x005B,0x00B5,0x005B,0x0555,0x005B,
	0x0552,0x005B,0x65A0,0x005B,0xB520,0x005B,0x0550,0x0D5C,

	0x0000,0x0500,0x0500,0x5555,0x0500,0x7577,0x0500,0x0500,
	0x0500,0x0500,0x0500,0x0500,0x05F0,0x0500,0x0550,0x0500,
	0x5000,0x0005,0x5565,0x0555,0x57A7,0x0775,0x5000,0x8005,
	0x5000,0x5005,0x5000,0x5005,0x5000,0x5005,0x5000,0x0005,
	0x0000,0x0000,0x5550,0x00E5,0x0055,0x0055,0x0025,0x0350,
	0x5555,0x0555,0x5555,0x0555,0x0005,0x0A00,0x0055,0x07D0,
	0x0000,0x05B0,0x5575,0x5555,0x4555,0x7535,0x0055,0x05B0,
	0x0055,0x05B0,0x0055,0x05B0,0x0055,0x05B0,0x0055,0x05B0,

	0x5500,0x0000,0x55B5,0x5500,0x55A7,0x5500,0x5500,0x5500,
	0x5500,0x5500,0x5500,0x5500,0x5500,0x5500,0x5500,0x5500,
	0x0000,0x0000,0x5000,0xE555,0x5500,0x5502,0x2580,0x5000,
	0x5550,0x5555,0x5550,0x5555,0x0550,0x0000,0x5500,0xD000,
	0x0000,0x0000,0x5500,0x0555,0xF550,0x0560,0x0555,0x0000,
	0x5555,0x0005,0x5505,0x0555,0x0007,0x5550,0x0055,0x5500,
	0x0000,0x0000,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,
	0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,

	0x0000,0x0000,0x5555,0x5000,0x5545,0x5005,0x5000,0x0005,
	0xE000,0x00A5,0x0000,0x50C5,0x6000,0x5505,0x5000,0x5505,
	0x0000,0x0000,0x5555,0x5000,0x5303,0x5505,0x5000,0x5505,
	0x55F0,0x5305,0x5555,0x5005,0x5008,0x0005,0x5000,0x0505,
	0x0000,0x0000,0x5555,0x5500,0x5F06,0x3550,0x0000,0x0550,
	0x0055,0x5580,0x5555,0x5300,0x5500,0x0005,0x5000,0x0055,
	0x0000,0x0000,0x0555,0x0000,0x05C0,0x0000,0x0000,0x0000,
	0x0005,0x0000,0x0555,0x0000,0x5550,0x0000,0x5500,0x0000,

	0x5500,0x0000,0x5550,0x0055,0x5570,0x5077,0x5500,0x5000,
	0x5500,0x5700,0x5500,0x5B00,0x5500,0x5200,0x5500,0x5000,
	0x0000,0x0000,0x5555,0x0005,0x6055,0x0055,0x0005,0x0D5D,
	0x0005,0x0550,0x000C,0x0550,0x0005,0x0550,0x0005,0x0755,
	0x0000,0x0000,0x0000,0x5500,0x0000,0x55D0,0x0000,0x0550,
	0x0000,0x0550,0x0000,0x0B50,0x0000,0x0550,0x0000,0x0550,
	0x0000,0x0000,0x0555,0x5500,0x55F0,0x5520,0x5B00,0xD5B5,
	0x5000,0x5505,0x5000,0x5705,0x5000,0x0005,0x5500,0x00BC,

	0x0000,0x0000,0x5555,0x5500,0x5570,0x5550,0x0000,0x0550,
	0x0005,0x5550,0x2555,0x5550,0x5560,0x0550,0x5500,0x4550,
	0x0000,0x0000,0x0555,0x0000,0x55B0,0x0000,0x5500,0x0000,
	0x5555,0x0000,0x5555,0x0000,0x0000,0x0000,0x5000,0x0000,
	0x5500,0x5555,0x5500,0x5555,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5D05,0x5555,0xD005,0x5555,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x5605,0x0055,0x5000,0x0055,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x5550,0x0000,0x5500,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5555,0x0000,0x0555,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5000,0x5555,0x5000,0x5555,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0555,0x5550,0x00F5,0x55E0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0555,0x5500,0x0505,0x5500,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x50C3,0x05B5,0x50C5,0x0555,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5555,0x0755,0x5550,0x00B5,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0055,0x05B0,0x0055,0x05B0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5500,0x5500,0x5500,0x5500,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5500,0x5555,0x5000,0xB555,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5555,0x7553,0x5540,0x0155,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,
	0x0000,0x5500,0x0000,0x5500,0x0000,0x0000,0x0000,0x0000,
	0x5555,0x570D,0x5555,0x5000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x55C5,0x55C5,0x7555,0x5055,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x55B5,0x555C,0xC555,0x5500,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x455B,0x0000,0x0B55,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5500,0xE055,0x5000,0x0055,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5B55,0x0055,0x555F,0x0005,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x5550,0x0000,0x5550,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x5555,0x55A0,0x5555,0x5800,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5553,0x55B0,0x0555,0x5500,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x555B,0x5570,0x0555,0x5600,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5B00,0x5550,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,0x0550,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5510,0x0002,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0555,0x5F00,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0035,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5530,0x000F,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5500,
	0x0000,0x5500,0x0000,0x5500,0x0000,0x5500,0xF550,0x5500,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x0E55,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,0x5055,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0055,0x0000,0x0055,0x0000,0xC555,0x0000,
	0x0000,0x5550,0x0000,0x5C55,0x0000,0x0004,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0004,0x0005,0x5555,0x0005,0x7550,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5B00,0x5555,0x5B00,0x5005,0x5B00,0x0000,0x5B00,0x0000,
	0x5B00,0x0000,0x5B00,0x500B,0x5B00,0x5555,0x5B00,0x5550,

	0x5005,0x0555,0x5005,0x0005,0x50D5,0x3005,0x5055,0x5006,
	0x50B5,0x300C,0x5005,0x000C,0x5005,0x000C,0x5000,0x000C,
	0x5555,0x5065,0x0065,0x5055,0x5555,0x5055,0x5555,0xD055,
	0x0005,0x0000,0x0055,0x0050,0x5555,0x5055,0x5550,0xD005,
	0x5555,0x5550,0x4000,0x0550,0x0035,0x5550,0x5555,0x5500,
	0x5500,0x0008,0x5000,0x005D,0x5555,0x5550,0x0555,0x5500,
	0x0555,0x0000,0x0500,0x0000,0x0000,0x0000,0x0055,0x0000,
	0x055D,0x0000,0x0550,0x0000,0x0555,0x0000,0x0055,0x0000,

	0x5555,0x6075,0x0055,0x5070,0x0555,0x5300,0x5550,0x5505,
	0x5000,0x5355,0x0006,0x5055,0x5555,0x5035,0x5554,0x0003,
	0x5555,0x5505,0x5005,0x5505,0x5555,0x5505,0x5555,0x5505,
	0x0004,0x5500,0x0005,0x5505,0x5555,0x5505,0x5553,0x5500,
	0x5D00,0xD555,0x5500,0x5500,0x5550,0x5555,0x5550,0x5555,
	0x0550,0x0000,0x5500,0x5000,0x5500,0x5555,0x5000,0x0555,
	0x5500,0x5555,0x0550,0x0D00,0x0550,0x0000,0x0B50,0x0000,
	0x0550,0x0000,0x0550,0x0300,0x5500,0x0555,0x5200,0x0055,

	0xC555,0x0000,0x0055,0x0000,0x0055,0x0000,0x0055,0x0000,
	0x0055,0x0000,0x0055,0x0000,0xC555,0x0000,0xC55B,0x0000,
	0x55C0,0x0005,0x5350,0x5555,0x0000,0x5560,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x000B,0x0000,0x0005,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5B00,0x0000,0x5B00,0x0000,0x5B00,0x0000,0x5B00,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short MiscScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0001,0x0002,0x0003,0x0000,0x0000,0x0004,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0005,0x0006,0x0007,0x0008,0x0009,0x000A,
	0x000B,0x000C,0x000D,0x000E,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x000F,0x0010,0x0000,0x0000,0x0011,0x0012,
	0x0013,0x0014,0x0015,0x0016,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0017,
	0x0018,0x0019,0x001A,0x0000,0x0000,0x0000,0x001B,0x0000,
	0x001C,0x0017,0x001D,0x001E,0x001F,0x0000,0x0020,0x0021,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0022,0x0023,
	0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,0x002B,
	0x002C,0x002D,0x002E,0x002F,0x0030,0x0031,0x0032,0x0033,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0034,0x0035,
	0x0036,0x0000,0x0037,0x0000,0x0000,0x0000,0x0038,0x0039,
	0x003A,0x003B,0x003C,0x003D,0x003E,0x003F,0x0040,0x0041,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0042,0x0043,0x0000,0x0044,0x0000,
	0x0000,0x0045,0x0046,0x0047,0x0048,0x0049,0x004A,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x004B,0x0000,0x004C,0x004D,
	0x004E,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x004F,0x0050,0x0051,0x0052,0x0053,
	0x0054,0x0055,0x0056,0x0057,0x0058,0x0059,0x005A,0x005B,
	0x005C,0x005D,0x005E,0x005F,0x0060,0x0061,0x0062,0x0063,
	0x0064,0x0065,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0C17,0x0066,0x0067,0x0068,0x0069,
	0x006A,0x006B,0x006C,0x006D,0x006E,0x0804,0x006F,0x0070,
	0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,
	0x0079,0x007A,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x007B,0x0000,0x007C,0x007D,0x007E,0x007F,
	0x0080,0x0081,0x0001,0x0000,0x0082,0x0083,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0004,0x0000,0x0084,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0085,0x0086,0x0087,0x0088,0x0089,0x008A,
	0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,0x0091,0x0092,
	0x0093,0x0094,0x0095,0x0096,0x0097,0x0098,0x0099,0x042A,
	0x009A,0x009B,0x009C,0x009D,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x009E,0x009F,0x00A0,0x00A1,0x00A2,0x00A3,
	0x00A4,0x00A5,0x00A6,0x00A7,0x00A8,0x00A9,0x00AA,0x00AB,
	0x00AC,0x00AD,0x00AE,0x00AF,0x00B0,0x00B1,0x00B2,0x00B3,
	0x00B4,0x00B5,0x00B6,0x00A2,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x00B7,0x00B8,0x00B9,0x00BA,0x00BB,0x00BC,
	0x00BD,0x00BE,0x00BF,0x00C0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x00C1,0x00C2,0x00C3,0x00C4,0x00C5,0x00C6,0x00C7,0x00C8,
	0x00C9,0x00CA,0x00CB,0x00CC,0x00CD,0x00CE,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x00CF,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short MiscScreenPal[256] __attribute__((aligned(4)))=
{
	0x20E0,0x5270,0x35A7,0x77BD,0x2D43,0x7FFF,0x6F59,0x4A2D,
	0x5EF4,0x4631,0x41EA,0x739B,0x6316,0x7FDE,0x56B2,0x6737,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(MiscScreen)
