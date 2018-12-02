#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sound.h"
#include "Ding.h"

// Variables
// Background
int hOff;
int vOff;
// Gameplay
int score;
int stuck;
// Jumping


// Shadow OAM
OBJ_ATTR shadowOAM[128];

// Player: Goog
GOOG goog;

// Flowers
FLOWER flowers[FLOWERCOUNT];

// Enemies
BUTTERFLY butterflies[ENEMYCOUNT];

void initGame() {
	vOff = 0;
	hOff = 0;
	//DMANow(3, flowerPal, PALETTE, 256);
	score = 0;
	stuck = 0;
	initPlayer();
	initEnemies();
	initFlowers();
}

// The player should show up on the ground to start
void initPlayer() {
	goog.row = SHIFTUP(SCREENHEIGHT - 16);
	goog.col = 80;
	goog.width = 16;
	goog.height = 16;
	goog.rdel = 0;
	goog.cdel = 1;
	goog.isJumping = 0;
	//goog.row = SHIFTUP(SCREENHEIGHT/2-goog.width/2);

}

void initEnemies() {
	//butterflies should be initialized as not active
	//change their levels so that they don't all appear on the same line
	// start from either left or right depending on "side" field in struct
	// // state variable will eventually be used to determine if butterfly is active, stuck on the tree, or has collided with player. just using active for now.
	// r: initial row
	int r = 0;
	// c: initial column
	int c = 0;
	// s: initial side (1 is left, 0 is right)
	int s = 1;
	// a: active
	int a = 1;
	for (int i = 0; i < ENEMYCOUNT; i++) {
		butterflies[i].row = r;
		butterflies[i].width = 16;
		// Left to Right
		if (butterflies[i].side) {
			butterflies[i].col = butterflies[i].width;
		} else { // Right to Left
			butterflies[i].col = (SCREENWIDTH - butterflies[i].width);
		}
		butterflies[i].active = a;
		butterflies[i].height = 16;
		butterflies[i].rdel = 0.5;
		butterflies[i].cdel = 1;
		butterflies[i].stuck = 0;
		butterflies[i].side = s;
		butterflies[i].aniState = 0;
		butterflies[i].aniCounter = 0;
		butterflies[i].numFrames = 3;
		butterflies[i].currFrame = 0;
		// r: spaces out butterflies 20 spaces vertically
		r += 20;
		// c: spaces out butterflies 10 spaces horizontally
		c += 10;
		// s: alternates side that butterfly is initialized on
		s = !s;
		// a: alternades whether the butterfly is initialized as active
		a = !a;
	}
}

void initFlowers() {
	int c = 50;
	int r = 60;
	for (int i = 0; i < FLOWERCOUNT; i++) {
		flowers[i].row = r;
		flowers[i].col = c;
		flowers[i].active = 1;
		flowers[i].width = 12;
		flowers[i].height = 12;
		flowers[i].rdel = 2;
		flowers[i].cdel = 2;
		c += 50;
		r += 15;
	}
}

void drawGame() {
	drawPlayer();
	waitForVBlank();
	
	for (int i = 0; i < FLOWERCOUNT; i++) {
		FLOWER *f = &flowers[i];
		drawFlower(f, i+1);
	}
    for (int i = 0; i < ENEMYCOUNT; i++) {
		drawEnemy(&butterflies[i], i+FLOWERCOUNT+1);
    }
	DMANow(3, shadowOAM, OAM, 128);
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

void drawPlayer() {
	shadowOAM[0].attr0 = SHIFTDOWN(goog.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = goog.col | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,0);
}

void drawEnemy(BUTTERFLY* b, int index) {
	if (b->active) {
		shadowOAM[index].attr0 = (ROWMASK & b->row)  | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[index].attr1 = (COLMASK & b->col) | ATTR1_SMALL;
		shadowOAM[index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, b->currFrame*((b->width/8)));
	} else {
		shadowOAM[index].attr0 = ATTR0_HIDE;
	}
}

void drawFlower(FLOWER* f, int index) {
	if (f->active) {
		shadowOAM[index].attr0 = f->row | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[index].attr1 = f->col | ATTR1_SMALL;
		shadowOAM[index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 0);
	} else {
		shadowOAM[index].attr0 = ATTR0_HIDE;
	}
}

void updateGame() {
	int s = 0;
	updatePlayer();
	for (int i = 0; i < FLOWERCOUNT; i++) {
		updateFlower(&flowers[i]);
	}
	for (int i = 0; i < ENEMYCOUNT; i++) {
		if (butterflies[i].row %2 == 0) {
			s = 1;
		}
		updateEnemy(&butterflies[i], s);
	}
	if (goog.timer >= 100) {
		fireEnemy();
		goog.timer = 0;
	}
}

void updatePlayer() {

	if (BUTTON_HELD(BUTTON_LEFT)
		&& goog.col >= goog.cdel) {

		goog.col -= goog.cdel;

	} 

	if (BUTTON_HELD(BUTTON_RIGHT)
		&& goog.col + goog.width - 1 < SCREENWIDTH - goog.cdel) {

		goog.col += goog.cdel;

	}

	if (goog.isJumping) {
		goog.row += goog.rdel;
		goog.rdel += GRAVITY;
		if (SHIFTDOWN(goog.row + goog.rdel) + goog.height - 1 > SCREENHEIGHT ) {
			goog.isJumping = 0;
		}
	} else {
		if(BUTTON_PRESSED(BUTTON_UP)) {
			goog.rdel = -JUMPPOWER;
			goog.isJumping = 1;
		}
	}

	

	goog.timer++;

}

// On update, the butterflies should "fly" in from either the left or right side, unless they have reached the center of the screen.
void updateEnemy(BUTTERFLY* b, int s) {
	// s is the side that the butterfly should come in on
	int r = rand() % 150 + 10;
	if (b->active) {
		if (b->side && b->col + b->width + b->cdel >= SCREENWIDTH) {
			b->col = b->width;
		}
		if (!(b->side) && b->col - b->cdel - b->width <= 0) {
			b->col = SCREENWIDTH - b->width;
		}
	}
	if (!(b->active)) {
		b->row = r;
		b->width = 16;
		// Left to Right
		if (b->side) {
			b->col = b->width;
		} else { // Right to Left
			b->col = (SCREENWIDTH - b->width);
		}
		b->active = 1;
		b->height = 16;
		b->rdel = 0.5;
		b->cdel = 1;
		b->stuck = 0;
		b->side = s;
		b->aniState = 0;
		b->aniCounter = 0;
		b->numFrames = 3;
		b->currFrame = 0;
	}
	if (b->col == SCREENWIDTH/2 && (b->stuck == 0)) {
		b->stuck = 1;
		stuck++;
	}
	if (b->active && !(b->stuck)) {
		// If it collides with the player...
		if (collision(SHIFTDOWN(goog.row), goog.col, goog.height, goog.width, b->row, b->col, b->height, b->width)) {
			b->active = 0;
		} else {
			// Left to Right
			if (b->side) {
				b->col += b->cdel;
			} else { // Right to Left
				b->col -= b->cdel;
			}
		}
	}
	if (b->aniCounter % 20 == 0) {
		if (b->currFrame < b->numFrames - 1) {
			b->currFrame++;
		} else {
			b->currFrame = 0;
		}
	}
	b->aniCounter++;

}

// On update, the flower should populate in a new, random position. If it's not active, then we calculate the new position and set it to active. If it is active, we check to see if it collides with the player so that they can get poitns.
void updateFlower(FLOWER* f) {
	if (!(f->active)) {
		f->active = 1;
		f->row = rand() % 150 + 10;
		f->col = rand() % 150 + 10; 
	} else {
	// If it collides with the player...
		if (collision(SHIFTDOWN(goog.row), goog.col, goog.height, goog.width, f->row, f->col, f->height, f->width)) {
			playSoundA(Ding, DINGLEN, DINGFREQ, 0);
			f->active = 0;
			score+=5;
		} 
	}
}

void fireEnemy() {
	for (int i = 0; i < ENEMYCOUNT; i++) {
		if (!butterflies[i].active) {
			butterflies[i].active = 1;
			break;
		}
	}
}
