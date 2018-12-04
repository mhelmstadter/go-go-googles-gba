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
	.global	goToLevel2Splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2Splash, %function
goToLevel2Splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
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
	ldr	r4, .L27
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L27+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8064
	mov	r3, #4800
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L27+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L27+12
	ldr	r1, .L27+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L27+20
	mov	r3, #16128
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L27+24
	ldr	r2, .L27+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L27+32
	mov	r3, #1024
	ldr	r1, .L27+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L27+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r3, .L41
	ldr	r4, .L41+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L30
	ldr	r2, .L41+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L39
.L30:
	tst	r3, #1
	beq	.L29
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L40
.L29:
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L39:
	ldr	r3, .L41+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L41+20
	ldr	r2, .L41+24
	ldr	r1, .L41+28
	ldr	r0, .L41+32
	mov	r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L41+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L30
.L42:
	.align	2
.L41:
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
	ldr	r4, .L45
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L45+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L45+8
	mov	r3, #1776
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L45+12
	ldr	r2, .L45+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L45+20
	ldr	r1, .L45+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L45+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r4, .L59
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L48
	ldr	r2, .L59+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L57
.L48:
	tst	r3, #4
	beq	.L47
	ldr	r3, .L59+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L58
.L47:
	pop	{r4, lr}
	bx	lr
.L58:
	ldr	r4, .L59+12
	mov	r3, #1
	ldr	r2, .L59+16
	ldr	r1, .L59+20
	ldr	r0, .L59+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToStart
.L57:
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L48
.L60:
	.align	2
.L59:
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
	ldr	r3, .L63
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L63+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L63+12
	mov	r3, #1296
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L63+16
	ldr	r2, .L63+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L63+24
	ldr	r1, .L63+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L63+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L72
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
	ldr	r3, .L72+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L71
.L65:
	pop	{r4, lr}
	bx	lr
.L71:
	pop	{r4, lr}
	b	goToStart
.L73:
	.align	2
.L72:
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
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4608
	ldr	r4, .L76+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L76+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L76+12
	mov	r3, #1328
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L76+16
	ldr	r2, .L76+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L76+24
	ldr	r1, .L76+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L76+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r4, .L94
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L79
	ldr	r3, .L94+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L91
.L79:
	ldr	r3, .L94+8
	ldr	r3, [r3]
	cmp	r3, #99
	ble	.L80
	ldr	r5, .L94+12
	ldr	r3, [r5]
	sub	r2, r3, #1
	cmp	r2, #1
	bhi	.L92
.L81:
	add	r3, r3, #1
	str	r3, [r5]
.L80:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L82
	ldr	r3, .L94+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L93
.L82:
	ldr	r3, .L94+16
	ldr	r3, [r3]
	cmp	r3, #5
	blgt	goToLose
.L83:
	ldr	r3, .L94+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L94+32
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L94+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	ldr	r2, .L94+40
	ldr	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	b	.L82
.L91:
	ldr	r3, .L94+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L79
.L92:
	bl	goToWin
	ldr	r3, [r5]
	b	.L81
.L95:
	.align	2
.L94:
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
	ldr	r2, .L108
	ldr	r3, .L108+4
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+8
	mov	lr, pc
	bx	r3
	mov	r3, r4
	ldr	r2, .L108+12
	ldr	r1, .L108+16
	ldr	r0, .L108+20
	ldr	r4, .L108+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L108+28
	mov	lr, pc
	bx	r3
	ldr	r6, .L108+32
	ldr	r8, .L108+36
	ldr	r5, .L108+40
	ldr	fp, .L108+44
	ldr	r10, .L108+48
	ldr	r9, .L108+52
	ldr	r7, .L108+56
	ldr	r4, .L108+60
.L97:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L98:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L98
.L100:
	.word	.L99
	.word	.L101
	.word	.L102
	.word	.L103
	.word	.L104
	.word	.L104
.L104:
	mov	lr, pc
	bx	r7
	b	.L97
.L103:
	ldr	r3, .L108+64
	mov	lr, pc
	bx	r3
	b	.L97
.L102:
	mov	lr, pc
	bx	r9
	b	.L97
.L101:
	mov	lr, pc
	bx	r10
	b	.L97
.L99:
	mov	lr, pc
	bx	fp
	b	.L97
.L109:
	.align	2
.L108:
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
