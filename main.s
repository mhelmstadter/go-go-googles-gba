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
	mov	r3, #3184
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
	ldr	r4, .L25
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L25+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8064
	mov	r3, #4800
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L25+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L25+12
	ldr	r1, .L25+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L25+20
	mov	r3, #16128
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L25+24
	ldr	r2, .L25+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L25+32
	mov	r3, #1024
	ldr	r1, .L25+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L25+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L39
	ldr	r4, .L39+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L28
	ldr	r2, .L39+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L37
.L28:
	tst	r3, #1
	beq	.L27
	ldr	r3, .L39+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L38
.L27:
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L37:
	ldr	r3, .L39+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L39+20
	ldr	r2, .L39+24
	ldr	r1, .L39+28
	ldr	r0, .L39+32
	mov	r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L39+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L28
.L40:
	.align	2
.L39:
	.word	hideSprites
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	playSoundB
	.word	11025
	.word	2977920
	.word	GameSong
	.word	initGame
	.size	start, .-start
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
	ldr	r4, .L43
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L43+8
	mov	r3, #1776
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L43+12
	ldr	r2, .L43+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L43+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r4, .L57
	ldr	r3, .L57+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L46
	ldr	r2, .L57+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L55
.L46:
	tst	r3, #4
	beq	.L45
	ldr	r3, .L57+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L56
.L45:
	pop	{r4, lr}
	bx	lr
.L56:
	ldr	r4, .L57+12
	mov	r3, #1
	ldr	r2, .L57+16
	ldr	r1, .L57+20
	ldr	r0, .L57+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToStart
.L55:
	ldr	r3, .L57+28
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L46
.L58:
	.align	2
.L57:
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
	ldr	r3, .L61
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L61+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L61+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L61+12
	mov	r3, #1296
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L61+16
	ldr	r2, .L61+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L61+24
	ldr	r1, .L61+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L61+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r3, .L70
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L70+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
.L63:
	pop	{r4, lr}
	bx	lr
.L69:
	pop	{r4, lr}
	b	goToStart
.L71:
	.align	2
.L70:
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
	ldr	r3, .L74
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4608
	ldr	r4, .L74+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L74+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L74+12
	mov	r3, #1328
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L74+16
	ldr	r2, .L74+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L74+24
	ldr	r1, .L74+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L74+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L75:
	.align	2
.L74:
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
	push	{r4, lr}
	ldr	r4, .L91
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L77
	ldr	r3, .L91+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
.L77:
	ldr	r3, .L91+8
	ldr	r3, [r3]
	cmp	r3, #99
	bgt	.L89
.L78:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L79
	ldr	r3, .L91+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L90
.L79:
	ldr	r3, .L91+12
	ldr	r3, [r3]
	cmp	r3, #5
	blgt	goToLose
.L80:
	ldr	r3, .L91+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L91+28
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L91+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L90:
	ldr	r2, .L91+36
	ldr	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	b	.L79
.L89:
	bl	goToWin
	b	.L78
.L88:
	ldr	r3, .L91+40
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L77
.L92:
	.align	2
.L91:
	.word	oldButtons
	.word	buttons
	.word	score
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
	ldr	r3, .L105
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L105+8
	mov	r3, #1
	ldr	r2, .L105+12
	ldr	r1, .L105+16
	ldr	r0, .L105+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L105+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L105+28
	ldr	r8, .L105+32
	ldr	r5, .L105+36
	ldr	fp, .L105+40
	ldr	r10, .L105+44
	ldr	r9, .L105+48
	ldr	r7, .L105+52
	ldr	r4, .L105+56
.L94:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L95:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L95
.L97:
	.word	.L96
	.word	.L98
	.word	.L99
	.word	.L100
	.word	.L101
	.word	.L101
.L101:
	mov	lr, pc
	bx	r7
	b	.L94
.L100:
	ldr	r3, .L105+60
	mov	lr, pc
	bx	r3
	b	.L94
.L99:
	mov	lr, pc
	bx	r9
	b	.L94
.L98:
	mov	lr, pc
	bx	r10
	b	.L94
.L96:
	mov	lr, pc
	bx	fp
	b	.L94
.L106:
	.align	2
.L105:
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	2371392
	.word	JumpAround
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	instructions
	.word	win
	.word	67109120
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
