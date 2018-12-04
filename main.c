#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "sound.h"
#include "StartScreen.h"
#include "PauseScreen.h"
#include "MiscScreen.h"
#include "WinScreen.h"
#include "LoseScreen.h"
#include "spritesheet.h"
#include "BlankTreeBG.h"
#include "JumpAround.h"
#include "GameSong.h"
#include "PrimaryTree.h"

// Prototypes
void initialize();
void initGame();
void updateGame();
void drawGame();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToInstructions();
void instructions();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {START, GAME, INSTRUCTIONS, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Offsets
unsigned short hOff;

// Random Seed
int seed;

// Text Buffer
char buffer[41];


int main() {

    level = 1;

    setupSounds();
    setupInterrupts();

    playSoundA(JumpAround,JUMPAROUNDLEN,JUMPAROUNDFREQ, 1);

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
               
    }
}

// Initializes the game in Mode 0, and sets up the GBA
void initialize() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    //DMANow(3, furtherTreesPal, PALETTE, 256);


    // Load spritesheet to CHARBLOCK
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    // Load spritesheet palette
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    // Hide Sprites
    hideSprites();

    // Enable Mode 0, background, and sprites
    //REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    // Initialize hOff to 0
    hOff = 0;

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    // Load Start Screen palette
    DMANow(3, StartScreenPal, PALETTE, 256);

    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    // Load tiles to charblock and map to screenblock
    DMANow(3, StartScreenTiles, &CHARBLOCK[1], StartScreenTilesLen/2);
    DMANow(3, StartScreenMap, &SCREENBLOCK[29], StartScreenMapLen/2);

    state = START;
}

// Runs every frame of the start state
void start() {

    // Hide Sprites
    hideSprites();

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundB(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);
        initGame();
        goToGame();   
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        goToInstructions();
    }

}

void goToInstructions() {

    pauseSound();
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

     // Load Instructions Screen palette
    DMANow(3, StartScreenPal, PALETTE, 256);

    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    // Load tiles to charblock and map to screenblock
    DMANow(3, MiscScreenTiles, &CHARBLOCK[1], MiscScreenTilesLen/2);
    DMANow(3, MiscScreenMap, &SCREENBLOCK[29], MiscScreenMapLen/2);

    state = INSTRUCTIONS;
}

void instructions() {
     // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        unpauseSound();
        goToStart();
    }
}

void goToLevel2Splash() {

}

void goToLevel3Splash() {
    
}

// Sets up the game state
void goToGame() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    // Load palette
    DMANow(3, BlankTreeBGPal, PALETTE, 256);
    
    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG0CNT = BG_8BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    // Load tiles to charblock and map to screenblock
    DMANow(3, PrimaryTreeTiles, &CHARBLOCK[0], PrimaryTreeTilesLen/2);
    DMANow(3, PrimaryTreeMap, &SCREENBLOCK[31], PrimaryTreeMapLen/2);
    
    //// BACKGROUND 1
    // Set background 1 control register
    REG_BG1CNT = BG_8BPP | BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    DMANow(3, BlankTreeBGTiles, &CHARBLOCK[1], BlankTreeBGTilesLen/2);

    // TODO 4.4 - load trees map to screenblock
    DMANow(3, BlankTreeBGMap, &SCREENBLOCK[29], BlankTreeBGMapLen/2);

    waitForVBlank();

    state = GAME;
}

// Runs every frame of the game state
void game() {

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    // Check win and lose conditions
    if (score >= 100) {
        if (level == 1) {
            goToLevel2Splash();
        } else if (level == 2) {
            goToLevel3Splash();
        } else {
            goToWin();
        }
        level++;
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        cheater = !cheater;
    }

    if (stuck >= 6) {
        goToLose();
    }

    updateGame();
    drawGame();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);
  
}

// Sets up the pause state
void goToPause() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    // Load pause screen palette
    DMANow(3, PauseScreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    // Load tiles to charblock and map to screenblock
    DMANow(3, PauseScreenTiles, &CHARBLOCK[1], PauseScreenTilesLen/2);
    DMANow(3, PauseScreenMap, &SCREENBLOCK[29], PauseScreenMapLen/2);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
        //state = GAME;
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundA(JumpAround,JUMPAROUNDLEN,JUMPAROUNDFREQ, 1);
        goToStart();
        //state = START;
    }

}

// Sets up the win state
void goToWin() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    stopSound();

    // Load win screen palette
    DMANow(3, WinScreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    // Load tiles to charblock and map to screenblock
    DMANow(3, WinScreenTiles, &CHARBLOCK[1], WinScreenTilesLen/2);
    DMANow(3, WinScreenMap, &SCREENBLOCK[29], WinScreenMapLen/2);
    
    state = WIN;
}

// Runs every frame of the win state
void win() {
    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {

    stopSound();
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    // Load lose screen palette
    DMANow(3, LoseScreenPal, PALETTE, 256);

    // Set background 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    // Load tiles to charblock and map to screenblock
    DMANow(3, LoseScreenTiles, &CHARBLOCK[1], LoseScreenTilesLen/2);
    DMANow(3, LoseScreenMap, &SCREENBLOCK[29], LoseScreenMapLen/2);  

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}