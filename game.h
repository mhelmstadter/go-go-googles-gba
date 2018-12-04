// Googles Struct (Player)
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int hide;
    int isJumping;
    int timer;
} GOOG;

// Butterflies Struct (Enemy)
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int hide;
    int active;
    int side;
    int state; // state variable will eventually be used to determine if butterfly is active, stuck on the tree, or has collided with player. just using active for now.
    int stuck;
    int aniState;
    int aniCounter;
    int numFrames;
    int currFrame;
} BUTTERFLY;

// Flowers Struct (Points Sprites)
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int hide;
    int active;
} FLOWER;

// Tree Struct

// Prototypes
void initGame();
void initPlayer();
void initEnemies();
void initFlowers();
void drawGame();
void drawPlayer();
void drawEnemy();
void drawFlower();
void updateGame();
void updatePlayer();
void updateEnemy();
void updateFlower();
void updateButterfly();
void fireEnemy();

// Gameplay Variables
#define FLOWERCOUNT 6
#define ENEMYCOUNT 6
extern int score;
extern int stuck;
extern int cheater;
extern int level;

// Jump Variables
#define FANCY
#define GRAVITY 100
#define JUMPPOWER 2550


