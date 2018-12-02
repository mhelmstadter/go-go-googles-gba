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
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	lr, #36864
	mov	r2, #0
	mov	ip, #80
	mov	r0, #1
	ldr	r3, .L4
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	goog
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	mov	r1, #0
	push	{r4, r5, r6, lr}
	mov	r2, r1
	mov	r6, r0
	mov	ip, #16
	mov	r5, #224
	mov	r4, #3
	ldr	r3, .L12
.L9:
	ldr	lr, [r3, #32]
	cmp	lr, #0
	moveq	lr, r5
	movne	lr, ip
	str	r1, [r3]
	add	r1, r1, #20
	cmp	r1, #60
	str	r0, [r3, #28]
	str	r0, [r3, #32]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #8]
	str	r6, [r3, #12]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r4, [r3, #52]
	str	r2, [r3, #56]
	str	lr, [r3, #4]
	eor	r0, r0, #1
	add	r3, r3, #60
	bne	.L9
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	butterflies
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #16
	mov	ip, #36864
	mov	r0, #80
	mov	r4, #1
	ldr	r3, .L18
	ldr	lr, .L18+4
	str	r2, [r3]
	ldr	r3, .L18+8
	str	r2, [lr]
	str	r2, [r3]
	ldr	lr, .L18+12
	ldr	r3, .L18+16
	str	r2, [lr]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #12]
	bl	initEnemies
	mov	lr, r4
	mov	r1, #50
	mov	r2, #60
	mov	ip, #12
	mov	r0, #2
	ldr	r3, .L18+20
.L15:
	str	r2, [r3]
	add	r2, r2, #15
	cmp	r2, #150
	str	r1, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	add	r1, r1, #50
	add	r3, r3, #32
	bne	.L15
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	vOff
	.word	hOff
	.word	score
	.word	stuck
	.word	goog
	.word	flowers
	.size	initGame, .-initGame
	.align	2
	.global	initFlowers
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFlowers, %function
initFlowers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #60
	mov	r2, #50
	mov	r4, #1
	mov	ip, #12
	mov	r0, #2
	ldr	r3, .L24
	ldr	lr, .L24+4
.L21:
	str	r2, [r3, #4]
	add	r2, r2, #50
	cmp	r2, lr
	str	r1, [r3]
	str	r4, [r3, #28]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	add	r1, r1, #15
	add	r3, r3, #32
	bne	.L21
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	flowers
	.word	350
	.size	initFlowers, .-initFlowers
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	ldr	r3, .L37
	ldm	r3, {r2, r3}
	push	{r4, r5, r6, lr}
	ldr	r4, .L37+4
	asr	r2, r2, #8
	orr	r3, r3, #16384
	ldr	r1, .L37+8
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r5, #64
	mov	r1, r4
	mov	lr, #512
	mov	r2, r4
	ldr	r3, .L37+12
	add	ip, r3, #192
.L29:
	ldr	r0, [r3, #28]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrne	r4, [r3]
	orrne	r0, r0, #16384
	add	r3, r3, #32
	strhne	r5, [r2, #12]	@ movhi
	strhne	r0, [r2, #10]	@ movhi
	strhne	r4, [r2, #8]	@ movhi
	strheq	lr, [r2, #8]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L29
	mov	lr, #512
	ldr	r3, .L37+16
	ldr	r4, .L37+20
	add	ip, r3, #180
.L32:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	strheq	lr, [r1, #56]	@ movhi
	bne	.L36
.L31:
	add	r3, r3, #60
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L32
	mov	r3, #128
	mov	r2, #117440512
	ldr	r1, .L37+4
	ldr	r4, .L37+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L37+28
	ldrh	r1, [r2]
	ldr	r2, .L37+32
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L36:
	ldr	r2, [r3, #16]
	add	r0, r2, #7
	cmp	r2, #0
	movlt	r2, r0
	ldr	r0, [r3, #56]
	asr	r5, r2, #3
	mul	r2, r0, r5
	ldr	r0, [r3, #4]
	ldrb	r5, [r3]	@ zero_extendqisi2
	and	r0, r0, r4
	add	r2, r2, #128
	orr	r0, r0, #16384
	strh	r2, [r1, #60]	@ movhi
	strh	r0, [r1, #58]	@ movhi
	strh	r5, [r1, #56]	@ movhi
	b	.L31
.L38:
	.align	2
.L37:
	.word	goog
	.word	shadowOAM
	.word	waitForVBlank
	.word	flowers
	.word	butterflies
	.word	511
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	ldr	r3, .L40
	ldm	r3, {r1, r2}
	ldr	r3, .L40+4
	asr	r1, r1, #8
	orr	r2, r2, #16384
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bx	lr
.L41:
	.align	2
.L40:
	.word	goog
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L49
	mov	r2, #512
	ldr	r3, .L50
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L49:
	ldr	r3, [r0, #16]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	ldr	ip, [r0, #56]
	asr	r3, r3, #3
	mul	r2, r3, ip
	ldr	r3, [r0, #4]
	ldr	ip, .L50
	lsl	r3, r3, #23
	str	lr, [sp, #-4]!
	lsl	r1, r1, #3
	ldrb	lr, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r0, ip, r1
	orr	r3, r3, #16384
	add	r2, r2, #128
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L51:
	.align	2
.L50:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawFlower
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFlower, %function
drawFlower:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L59
	mov	r2, #512
	ldr	r3, .L60
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L59:
	str	lr, [sp, #-4]!
	mov	lr, #64
	ldr	r3, [r0, #4]
	ldr	ip, .L60
	ldr	r0, [r0]
	lsl	r1, r1, #3
	add	r2, ip, r1
	orr	r3, r3, #16384
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [ip, r1]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L61:
	.align	2
.L60:
	.word	shadowOAM
	.size	drawFlower, .-drawFlower
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r3, .L74+4
	bne	.L63
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	cmp	r2, r1
	subge	r2, r2, r1
	strge	r2, [r3, #4]
.L63:
	ldr	r2, .L74
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L64
	add	r0, r3, #12
	ldr	r1, [r3, #4]
	ldm	r0, {r0, r2}
	add	r2, r1, r2
	rsb	ip, r0, #240
	cmp	r2, ip
	addle	r1, r1, r0
	strle	r1, [r3, #4]
.L64:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L65
	ldr	r2, [r3, #8]
	ldr	r1, [r3]
	add	r0, r2, #100
	add	r2, r2, r1
	ldr	r1, [r3, #20]
	add	ip, r2, r0
	add	r1, r1, ip, asr #8
	cmp	r1, #161
	str	r2, [r3]
	movgt	r2, #0
	str	r0, [r3, #8]
	strgt	r2, [r3, #28]
.L67:
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
	bx	lr
.L65:
	ldr	r2, .L74+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L67
	ldr	r2, .L74+12
	ldrh	r2, [r2]
	tst	r2, #64
	moveq	r1, #1
	ldreq	r2, .L74+16
	streq	r1, [r3, #28]
	streq	r2, [r3, #8]
	b	.L67
.L75:
	.align	2
.L74:
	.word	67109120
	.word	goog
	.word	oldButtons
	.word	buttons
	.word	-2500
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, .L104
	sub	sp, sp, #20
	mov	r5, r1
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	ip, [r4, #4]
	ldr	r3, [r4, #12]
	ldr	r1, [r4, #16]
	beq	.L78
	add	r2, ip, r1
	add	r3, r2, r3
	cmp	r3, #239
	movgt	ip, r1
	strgt	r1, [r4, #4]
	cmp	ip, #120
	ldrne	r3, [r4, #40]
	beq	.L102
.L93:
	cmp	r3, #0
	beq	.L94
.L85:
	ldr	r2, [r4, #48]
	ldr	r3, .L104+4
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L87
	ldr	r1, [r4, #52]
	ldr	r0, [r4, #56]
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #56]
	strge	r3, [r4, #56]
.L87:
	add	r2, r2, #1
	str	r2, [r4, #48]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L77:
	mov	ip, #16
	ldr	r3, .L104+8
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #4
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #32]
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	add	r3, r3, #10
	cmp	r2, #0
	str	ip, [r4, #16]
	mov	r2, #1
	mov	r1, #3
	str	r3, [r4]
	moveq	ip, #224
	mov	r3, #0
	mov	r0, #16
	str	r1, [r4, #52]
	str	ip, [r4, #4]
	str	r5, [r4, #32]
	str	r2, [r4, #28]
	str	r2, [r4, #12]
	str	r0, [r4, #20]
	str	r3, [r4, #8]
	str	r3, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	ldr	r1, [r4, #16]
.L94:
	ldr	r0, .L104+12
	ldr	lr, [r4, #20]
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	str	r1, [sp, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	ip, [r4]
	asr	r0, r0, #8
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r5, .L104+16
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r4, #28]
	bne	.L85
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #12]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	addne	r3, r3, r2
	subeq	r3, r3, r2
	str	r3, [r4, #4]
	b	.L85
.L78:
	sub	r3, ip, r3
	sub	r3, r3, r1
	cmp	r3, #0
	ldr	r3, [r4, #40]
	ble	.L103
.L80:
	cmp	ip, #120
	bne	.L93
.L92:
	cmp	r3, #0
	bne	.L85
	mov	r1, #1
	ldr	r2, .L104+20
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	str	r1, [r4, #40]
	b	.L85
.L103:
	rsb	ip, r1, #240
	str	ip, [r4, #4]
	b	.L80
.L102:
	ldr	r3, [r4, #40]
	b	.L92
.L105:
	.align	2
.L104:
	.word	rand
	.word	1717986919
	.word	458129845
	.word	goog
	.word	collision
	.word	stuck
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateFlower
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFlower, %function
updateFlower:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r4, r0
	beq	.L113
	ldr	lr, [r4, #16]
	ldr	r0, .L115
	ldr	ip, [r4, #20]
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldm	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	asr	r0, r0, #8
	stm	sp, {ip, lr}
	ldr	r5, .L115+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L114
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L113:
	mov	r3, #1
	ldr	r6, .L115+8
	str	r3, [r0, #28]
	mov	lr, pc
	bx	r6
	ldr	r5, .L115+12
	smull	r8, r9, r0, r5
	asr	r3, r0, #31
	rsb	r3, r3, r9, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	add	r3, r3, #10
	str	r3, [r4]
	mov	lr, pc
	bx	r6
	smull	r6, r7, r0, r5
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	add	r3, r3, #10
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L114:
	mov	r3, #0
	ldr	r2, .L115+16
	ldr	r1, .L115+20
	ldr	r0, .L115+24
	ldr	r5, .L115+28
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L115+32
	ldr	r3, [r2]
	add	r3, r3, #5
	str	r3, [r2]
	str	r1, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	goog
	.word	collision
	.word	rand
	.word	458129845
	.word	11025
	.word	10250
	.word	Ding
	.word	playSoundA
	.word	score
	.size	updateFlower, .-updateFlower
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	bl	updatePlayer
	ldr	r0, .L129
	bl	updateFlower
	ldr	r0, .L129+4
	bl	updateFlower
	ldr	r0, .L129+8
	bl	updateFlower
	ldr	r0, .L129+12
	bl	updateFlower
	ldr	r0, .L129+16
	bl	updateFlower
	ldr	r0, .L129+20
	mov	r5, r4
	bl	updateFlower
	ldr	r6, .L129+24
.L119:
	ldr	r3, [r6, r4]
	tst	r3, #1
	moveq	r5, #1
	add	r0, r6, r4
	mov	r1, r5
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, #180
	bne	.L119
	ldr	r3, .L129+28
	ldr	r2, [r3, #32]
	cmp	r2, #99
	ble	.L117
	ldr	r2, [r6, #28]
	cmp	r2, #0
	beq	.L121
	ldr	r2, [r6, #88]
	cmp	r2, #0
	beq	.L123
	ldr	r2, [r6, #148]
	cmp	r2, #0
	moveq	r2, #2
	beq	.L121
.L122:
	mov	r2, #0
	str	r2, [r3, #32]
.L117:
	pop	{r4, r5, r6, lr}
	bx	lr
.L123:
	mov	r2, #1
.L121:
	mov	r1, #1
	rsb	r2, r2, r2, lsl #4
	add	r6, r6, r2, lsl #2
	str	r1, [r6, #28]
	b	.L122
.L130:
	.align	2
.L129:
	.word	flowers
	.word	flowers+32
	.word	flowers+64
	.word	flowers+96
	.word	flowers+128
	.word	flowers+160
	.word	butterflies
	.word	goog
	.size	updateGame, .-updateGame
	.align	2
	.global	fireEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireEnemy, %function
fireEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L139
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L132
	ldr	r2, [r3, #88]
	cmp	r2, #0
	beq	.L134
	ldr	r2, [r3, #148]
	cmp	r2, #0
	moveq	r2, #2
	bxne	lr
.L132:
	mov	r1, #1
	rsb	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #2
	str	r1, [r3, #28]
	bx	lr
.L134:
	mov	r2, #1
	b	.L132
.L140:
	.align	2
.L139:
	.word	butterflies
	.size	fireEnemy, .-fireEnemy
	.comm	butterflies,180,4
	.comm	flowers,192,4
	.comm	goog,36,4
	.comm	shadowOAM,1024,4
	.comm	stuck,4,4
	.comm	score,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
