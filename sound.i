# 1 "sound.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sound.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
    u16 tileimg[8192];
} charblock;


typedef struct {
    u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 161 "myLib.h"
void hideSprites();


typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 351 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;
# 2 "sound.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 3 "sound.c" 2
# 1 "JumpAround.h" 1
# 20 "JumpAround.h"
extern const unsigned char JumpAround[2371392];
# 4 "sound.c" 2

void setupSounds()
{
    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000102 = 0;

        *(volatile unsigned short*)0x4000100 = -ticks;
        *(volatile unsigned short*)0x4000102 = (1<<7);


        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.priority = 0;
        soundA.duration = (59.727) * length/frequency;
        soundA.vBlankCount = 0;
        soundA.isPlaying = 1;
        soundA.loops = loops;

}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000106 = 0;

        *(volatile unsigned short*)0x4000104 = -ticks;
        *(volatile unsigned short*)0x4000106 = (1<<7);


        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.priority = 0;
        soundB.duration = (59.727) * length/frequency;
        soundB.vBlankCount = 0;
        soundB.isPlaying = 1;
        soundB.loops = loops;

}

void setupInterrupts()
{
 *(unsigned short*)0x4000208 = 0;


 *(unsigned int*)0x3007FFC = (unsigned int) interruptHandler;



 *(unsigned short*)0x4000200 |= 1 << 0;
 *(unsigned short*)0x4000004 |= 1 << 3;
 *(unsigned short*)0x4000208 = 1;
}

void interruptHandler() {

 *(unsigned short*)0x4000208 = 0;

 if(*(volatile unsigned short*)0x4000202 & 1 << 0) {
  if (soundA.isPlaying) {


   soundA.vBlankCount++;

   if (soundA.vBlankCount > soundA.duration) {
    if (soundA.loops) {

     playSoundA(JumpAround,2371392,11025, 1);
    } else {
     soundA.isPlaying = 0;
     dma[1].cnt = 0;
     *(volatile unsigned short*)0x4000102 = 0;
    }
   }
  }

  if (soundB.isPlaying) {


   soundB.vBlankCount++;

   if (soundB.vBlankCount > soundB.duration) {
    if (soundB.loops) {
     playSoundB(JumpAround, 2371392, 11025, 1);

    } else {
     soundB.isPlaying = 0;
     dma[2].cnt = 0;
     *(volatile unsigned short*)0x4000106 = 0;
    }
   }

  }

  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }

 *(unsigned short*)0x4000208 = 1;
}

void pauseSound() {


 soundA.isPlaying = 0;
 soundB.isPlaying = 0;

 *(volatile unsigned short*)0x4000102 = 0;
 *(volatile unsigned short*)0x4000106 = 0;

}

void unpauseSound() {


 soundA.isPlaying = 1;
 soundB.isPlaying = 1;

 *(volatile unsigned short*)0x4000102 = (1<<7);
 *(volatile unsigned short*)0x4000106 = (1<<7);


}

void stopSound() {

 soundA.isPlaying = 0;
 soundB.isPlaying = 0;

 dma[1].cnt = 0;
 dma[2].cnt = 0;

 *(volatile unsigned short*)0x4000102 = 0;
 *(volatile unsigned short*)0x4000106 = 0;

}
