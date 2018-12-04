	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+8
	mov	r3, #1488
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L4+12
	ldr	r2, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	StartScreenPal
	.word	7428
	.word	StartScreenTiles
	.word	100679680
	.word	100722688
	.word	StartScreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4864
	push	{r4, lr}
	mov	r3, #16384
	strh	r1, [r2]	@ movhi
	ldr	r4, .L8
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+12
	mov	r3, #256
	ldr	r1, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+24
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	hOff
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4608
	ldr	r4, .L12+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L12+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+12
	mov	r3, #3328
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L12+16
	ldr	r2, .L12+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+24
	ldr	r1, .L12+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L12+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	pauseSound
	.word	DMANow
	.word	StartScreenPal
	.word	7428
	.word	MiscScreenTiles
	.word	100679680
	.word	100722688
	.word	MiscScreenMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L21
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L14
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r3, .L21+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L22:
	.align	2
.L21:
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	instructions, .-instructions
	.align	2
	.global	goToLevel2Splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2Splash, %function
goToLevel2Splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L25
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L25+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L25+8
	mov	r3, #2064
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L25+12
	ldr	r2, .L25+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L25+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	DMANow
	.word	Level2SplashPal
	.word	7428
	.word	Level2SplashTiles
	.word	100679680
	.word	100722688
	.word	Level2SplashMap
	.word	state
	.size	goToLevel2Splash, .-goToLevel2Splash
	.align	2
	.global	goToLevel3Splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel3Splash, %function
goToLevel3Splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L29
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L29+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L29+8
	mov	r3, #2064
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L29+12
	ldr	r2, .L29+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L29+20
	ldr	r1, .L29+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L29+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	DMANow
	.word	Level3SplashPal
	.word	7428
	.word	Level3SplashTiles
	.word	100679680
	.word	100722688
	.word	Level3SplashMap
	.word	state
	.size	goToLevel3Splash, .-goToLevel3Splash
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r4, .L33
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L33+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8064
	mov	r3, #4800
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L33+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L33+12
	ldr	r1, .L33+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L33+20
	mov	r3, #16128
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L33+24
	ldr	r2, .L33+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L33+32
	mov	r3, #1024
	ldr	r1, .L33+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L33+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L33+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L34:
	.align	2
.L33:
	.word	DMANow
	.word	BlankTreeBGPal
	.word	PrimaryTreeTiles
	.word	100726784
	.word	PrimaryTreeMap
	.word	7556
	.word	BlankTreeBGTiles
	.word	100679680
	.word	100722688
	.word	BlankTreeBGMap
	.word	waitForVBlank
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #1
	ldr	r2, .L47
	ldr	r3, .L47+4
	ldr	r4, .L47+8
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L36
	ldr	r2, .L47+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L45
.L36:
	tst	r3, #1
	beq	.L35
	ldr	r3, .L47+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L46
.L35:
	pop	{r4, r5, r6, lr}
	bx	lr
.L46:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L45:
	ldr	r3, .L47+20
	mov	lr, pc
	bx	r3
	mov	r3, r5
	ldr	r2, .L47+24
	ldr	r1, .L47+28
	ldr	r0, .L47+32
	ldr	r5, .L47+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L47+40
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L36
.L48:
	.align	2
.L47:
	.word	level
	.word	hideSprites
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	11025
	.word	2977920
	.word	GameSong
	.word	playSoundB
	.word	initGame
	.size	start, .-start
	.align	2
	.global	level2
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2, %function
level2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L61
	ldr	r3, .L61+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L50
	ldr	r2, .L61+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L59
.L50:
	tst	r3, #8
	beq	.L49
	ldr	r3, .L61+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
.L49:
	pop	{r4, lr}
	bx	lr
.L60:
	ldr	r3, .L61+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L59:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L50
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	initGame
	.size	level2, .-level2
	.align	2
	.global	level3
	.syntax unified
	.arm
	.fpu softvfp
	.type	level3, %function
level3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	level2
	.size	level3, .-level3
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L66
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L66+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L66+8
	mov	r3, #1776
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L66+12
	ldr	r2, .L66+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L66+20
	ldr	r1, .L66+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L66+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L67:
	.align	2
.L66:
	.word	DMANow
	.word	PauseScreenPal
	.word	7428
	.word	PauseScreenTiles
	.word	100679680
	.word	100722688
	.word	PauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L80
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L69
	ldr	r2, .L80+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L78
.L69:
	tst	r3, #4
	beq	.L68
	ldr	r3, .L80+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L79
.L68:
	pop	{r4, lr}
	bx	lr
.L79:
	ldr	r4, .L80+12
	mov	r3, #1
	ldr	r2, .L80+16
	ldr	r1, .L80+20
	ldr	r0, .L80+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToStart
.L78:
	ldr	r3, .L80+28
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L69
.L81:
	.align	2
.L80:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	playSoundA
	.word	11025
	.word	2371392
	.word	JumpAround
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r3, .L84
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L84+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L84+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L84+12
	mov	r3, #1296
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L84+16
	ldr	r2, .L84+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L84+24
	ldr	r1, .L84+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L84+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	stopSound
	.word	DMANow
	.word	WinScreenPal
	.word	7428
	.word	WinScreenTiles
	.word	100679680
	.word	100722688
	.word	WinScreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L93
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
	ldr	r3, .L93+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
.L86:
	pop	{r4, lr}
	bx	lr
.L92:
	pop	{r4, lr}
	b	goToStart
.L94:
	.align	2
.L93:
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L97
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4608
	ldr	r4, .L97+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L97+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L97+12
	mov	r3, #1328
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L97+16
	ldr	r2, .L97+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L97+24
	ldr	r1, .L97+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L97+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
	.word	stopSound
	.word	DMANow
	.word	LoseScreenPal
	.word	7428
	.word	LoseScreenTiles
	.word	100679680
	.word	100722688
	.word	LoseScreenMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L118
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L100
	ldr	r3, .L118+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L114
.L100:
	ldr	r5, .L118+8
	ldr	r3, [r5]
	cmp	r3, #99
	ble	.L101
	ldr	r6, .L118+12
	ldr	r3, [r6]
	cmp	r3, #1
	beq	.L115
	cmp	r3, #2
	beq	.L116
	bl	goToWin
.L103:
	mov	r2, #0
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	str	r2, [r5]
.L101:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L105
	ldr	r3, .L118+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L117
.L105:
	ldr	r3, .L118+16
	ldr	r3, [r3]
	cmp	r3, #5
	blgt	goToLose
.L106:
	ldr	r3, .L118+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L118+32
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L118+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L117:
	ldr	r2, .L118+40
	ldr	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	b	.L105
.L114:
	ldr	r3, .L118+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L100
.L115:
	bl	goToLevel2Splash
	b	.L103
.L116:
	bl	goToLevel3Splash
	b	.L103
.L119:
	.align	2
.L118:
	.word	oldButtons
	.word	buttons
	.word	score
	.word	level
	.word	stuck
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	cheater
	.word	pauseSound
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	mov	r4, #1
	ldr	r2, .L133
	ldr	r3, .L133+4
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L133+8
	mov	lr, pc
	bx	r3
	mov	r3, r4
	ldr	r2, .L133+12
	ldr	r1, .L133+16
	ldr	r0, .L133+20
	ldr	r4, .L133+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L133+28
	mov	lr, pc
	bx	r3
	ldr	r6, .L133+32
	ldr	r9, .L133+36
	ldr	r5, .L133+40
	ldr	fp, .L133+44
	ldr	r10, .L133+48
	ldr	r8, .L133+52
	ldr	r7, .L133+56
	ldr	r4, .L133+60
.L121:
	ldr	r2, [r6]
	ldrh	r3, [r9]
.L122:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L122
.L124:
	.word	.L123
	.word	.L125
	.word	.L126
	.word	.L127
	.word	.L127
	.word	.L128
	.word	.L129
	.word	.L129
.L129:
	mov	lr, pc
	bx	r7
	b	.L121
.L127:
	mov	lr, pc
	bx	r8
	b	.L121
.L126:
	ldr	r3, .L133+64
	mov	lr, pc
	bx	r3
	b	.L121
.L125:
	mov	lr, pc
	bx	r10
	b	.L121
.L123:
	mov	lr, pc
	bx	fp
	b	.L121
.L128:
	ldr	r3, .L133+68
	mov	lr, pc
	bx	r3
	b	.L121
.L134:
	.align	2
.L133:
	.word	level
	.word	setupSounds
	.word	setupInterrupts
	.word	11025
	.word	2371392
	.word	JumpAround
	.word	playSoundA
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	level2
	.word	win
	.word	67109120
	.word	instructions
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
