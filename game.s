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
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #0
	mov	r6, #1
	mov	r5, #16
	mov	r8, #36864
	mov	r7, #80
	mov	r2, #50
	mov	r1, #60
	mov	ip, #12
	mov	r0, #2
	ldr	lr, .L6
	str	r8, [lr]
	str	r3, [lr, #28]
	str	r6, [lr, #12]
	str	r5, [lr, #16]
	str	r5, [lr, #20]
	str	r3, [lr, #8]
	str	r7, [lr, #4]
	ldr	lr, .L6+4
	ldr	r5, .L6+8
	str	r3, [lr]
	ldr	lr, .L6+12
	str	r3, [r5]
	str	r3, [lr]
	mov	r4, r6
	ldr	lr, .L6+16
	ldr	r6, .L6+20
	ldr	r5, .L6+24
	str	r3, [lr, #28]
	str	r3, [lr, #88]
	str	r3, [lr, #148]
	str	r3, [lr, #208]
	str	r3, [lr, #268]
	str	r3, [lr, #328]
	str	r3, [r6]
	str	r3, [r5]
	ldr	lr, .L6+28
	ldr	r3, .L6+32
.L2:
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
	bne	.L2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	goog
	.word	hOff
	.word	score
	.word	stuck
	.word	butterflies
	.word	vOff
	.word	cheater
	.word	350
	.word	flowers
	.size	initGame, .-initGame
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
	ldr	r3, .L10
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
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
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L13
	str	r2, [r3, #28]
	str	r2, [r3, #88]
	str	r2, [r3, #148]
	str	r2, [r3, #208]
	str	r2, [r3, #268]
	str	r2, [r3, #328]
	bx	lr
.L14:
	.align	2
.L13:
	.word	butterflies
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	ldr	r3, .L19
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	lr, #1
	ldr	r3, .L19+4
	smull	r6, r7, r0, r3
	ldr	r2, .L19+8
	asr	r3, r0, #31
	ldr	r2, [r2, #4]
	rsb	r3, r3, r7, asr #6
	ands	r2, r2, lr
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl lr
	moveq	r3, #224
	mov	ip, #16
	mov	r1, #0
	streq	r2, [r4, #32]
	streq	r3, [r4, #4]
	mov	r2, #3
	mov	r3, #0
	add	r0, r0, #10
	str	r0, [r4]
	str	ip, [r4, #16]
	str	ip, [r4, #20]
	str	r1, [r4, #28]
	str	r1, [r4, #8]
	str	r1, [r4, #40]
	str	lr, [r4, #12]
	strne	lr, [r4, #32]
	strne	ip, [r4, #4]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	str	r2, [r4, #52]
	pop	{r4, r6, r7, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	rand
	.word	2114445439
	.word	goog
	.size	initEnemy, .-initEnemy
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
	ldr	r3, .L25
	ldr	lr, .L25+4
.L22:
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
	bne	.L22
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r0, .L38
	push	{r4, r5, r6, lr}
	mov	r2, r0
	mov	lr, #512
	mov	r1, r0
	mov	r5, #64
	ldr	r3, .L38+4
	ldr	ip, .L38+8
	ldr	r4, [r3]
	orr	ip, ip, r4, asr #8
	ldr	r4, [r3, #4]
	strh	ip, [r0]	@ movhi
	ldr	ip, [r3, #36]
	ldr	r3, .L38+12
	strh	r4, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	add	ip, r3, #192
.L30:
	ldr	r0, [r3, #28]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrne	r4, [r3]
	orrne	r0, r0, #16384
	add	r3, r3, #32
	strhne	r5, [r1, #12]	@ movhi
	strhne	r0, [r1, #10]	@ movhi
	strhne	r4, [r1, #8]	@ movhi
	strheq	lr, [r1, #8]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L30
	ldr	r3, .L38+16
	mov	lr, #512
	ldr	r4, .L38+20
	add	ip, r3, #360
	b	.L33
.L32:
	add	r3, r3, #60
	cmp	r3, ip
	add	r2, r2, #8
	beq	.L37
.L33:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	strheq	lr, [r2, #56]	@ movhi
	beq	.L32
	ldr	r1, [r3, #16]
	add	r0, r1, #7
	cmp	r1, #0
	movlt	r1, r0
	ldr	r0, [r3, #56]
	asr	r5, r1, #3
	mul	r1, r0, r5
	ldr	r0, [r3, #4]
	ldrb	r5, [r3]	@ zero_extendqisi2
	and	r0, r0, r4
	add	r3, r3, #60
	add	r1, r1, #128
	orr	r0, r0, #16384
	cmp	r3, ip
	strh	r1, [r2, #60]	@ movhi
	strh	r0, [r2, #58]	@ movhi
	strh	r5, [r2, #56]	@ movhi
	add	r2, r2, #8
	bne	.L33
.L37:
	mov	r3, #128
	mov	r2, #117440512
	ldr	r1, .L38
	ldr	r4, .L38+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L38+28
	ldrh	r1, [r2]
	ldr	r2, .L38+32
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L39:
	.align	2
.L38:
	.word	shadowOAM
	.word	goog
	.word	-32768
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
	ldr	r1, .L41
	ldr	r2, .L41+4
	ldr	ip, [r1]
	ldr	r3, .L41+8
	ldr	r0, [r1, #4]
	ldr	r1, [r1, #36]
	orr	r2, r2, ip, asr #8
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
	.word	goog
	.word	-32768
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
	bne	.L50
	mov	r2, #512
	ldr	r3, .L51
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L50:
	ldr	r3, [r0, #16]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	ldr	ip, [r0, #56]
	asr	r3, r3, #3
	mul	r2, r3, ip
	ldr	r3, [r0, #4]
	ldr	ip, .L51
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
.L52:
	.align	2
.L51:
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
	bne	.L60
	mov	r2, #512
	ldr	r3, .L61
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L60:
	str	lr, [sp, #-4]!
	mov	lr, #64
	ldr	r3, [r0, #4]
	ldr	ip, .L61
	ldr	r0, [r0]
	lsl	r1, r1, #3
	add	r2, ip, r1
	orr	r3, r3, #16384
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [ip, r1]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r3, .L81
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r3, .L81+4
	bne	.L64
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	cmp	r2, r1
	bge	.L79
.L64:
	ldr	r2, .L81
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L67
	add	r0, r3, #12
	ldm	r0, {r0, r2}
	ldr	r1, [r3, #4]
	rsb	ip, r0, #240
	add	r2, r1, r2
	cmp	r2, ip
	ble	.L80
.L67:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L70
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
	strgt	r2, [r3, #28]
	ldr	r2, .L81+8
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #3
	str	r0, [r3, #8]
	str	r2, [r3, #36]
.L73:
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
	bx	lr
.L70:
	ldr	r2, .L81+12
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L73
	ldr	r2, .L81+16
	ldrh	r2, [r2]
	ands	r2, r2, #64
	moveq	r0, #1
	ldreq	r1, .L81+20
	streq	r2, [r3, #36]
	streq	r0, [r3, #28]
	streq	r1, [r3, #8]
	b	.L73
.L80:
	ldr	r2, .L81+8
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #4
	moveq	r2, #1
	add	r1, r1, r0
	str	r2, [r3, #36]
	str	r1, [r3, #4]
	b	.L67
.L79:
	ldr	r0, .L81+8
	ldr	r0, [r0]
	cmp	r0, #0
	movne	r0, #5
	moveq	r0, #2
	sub	r2, r2, r1
	str	r0, [r3, #36]
	str	r2, [r3, #4]
	b	.L64
.L82:
	.align	2
.L81:
	.word	67109120
	.word	goog
	.word	cheater
	.word	oldButtons
	.word	buttons
	.word	-2550
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
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #28]
	ldr	r5, .L106
	cmp	r3, #0
	sub	sp, sp, #16
	mov	r4, r0
	ldr	r2, [r5]
	beq	.L84
	ldr	r3, [r0, #32]
	add	r1, r0, #12
	cmp	r3, #0
	ldm	r1, {r1, ip}
	ldr	r3, [r0, #4]
	beq	.L85
	add	r3, ip, r3
	add	r3, r3, r1
	cmp	r3, #239
	strgt	ip, [r0, #4]
.L86:
	cmp	r2, #0
	bne	.L88
	ldr	r3, [r4, #4]
	cmp	r3, #120
	beq	.L96
.L88:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L105
.L91:
	ldr	r2, [r4, #48]
	ldr	r3, .L106+4
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L93
	ldr	r1, [r4, #52]
	ldr	r0, [r4, #56]
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #56]
	strge	r3, [r4, #56]
.L93:
	add	r2, r2, #1
	str	r2, [r4, #48]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	cmp	r2, #0
	bne	.L91
	ldr	r3, [r0, #4]
	cmp	r3, #120
	bne	.L91
.L96:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L91
	mov	r1, #1
	ldr	r2, .L106+8
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	str	r1, [r4, #40]
	b	.L91
.L85:
	sub	r3, r3, r1
	sub	r3, r3, ip
	cmp	r3, #0
	rsble	r3, ip, #240
	strle	r3, [r4, #4]
	b	.L86
.L105:
	ldr	r0, .L106+12
	ldr	r6, [r4, #20]
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldm	r0, {r0, r1}
	str	ip, [sp, #12]
	ldr	lr, [r4, #4]
	str	r6, [sp, #8]
	ldr	ip, [r4]
	asr	r0, r0, #8
	stm	sp, {ip, lr}
	ldr	r6, .L106+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L90
	ldr	r3, [r5]
	cmp	r3, #0
	streq	r3, [r4, #28]
	b	.L91
.L90:
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #12]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	addne	r3, r3, r2
	subeq	r3, r3, r2
	str	r3, [r4, #4]
	b	.L91
.L107:
	.align	2
.L106:
	.word	cheater
	.word	1717986919
	.word	stuck
	.word	goog
	.word	collision
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
	push	{r4, r5, r6, r7, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r4, r0
	beq	.L115
	ldr	lr, [r4, #16]
	ldr	r0, .L117
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
	ldr	r5, .L117+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L116
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L115:
	mov	r3, #1
	ldr	r5, .L117+8
	str	r3, [r0, #28]
	mov	lr, pc
	bx	r5
	ldr	r3, .L117+12
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #10
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	ldr	r3, .L117+16
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	add	r2, r0, r7
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #3
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	add	r3, r3, #10
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L116:
	mov	r3, #0
	ldr	r2, .L117+20
	ldr	r1, .L117+24
	ldr	r0, .L117+28
	ldr	r5, .L117+32
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L117+36
	ldr	r3, [r2]
	add	r3, r3, #5
	str	r3, [r2]
	str	r1, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	goog
	.word	collision
	.word	rand
	.word	2114445439
	.word	-1677082467
	.word	11025
	.word	10250
	.word	Ding
	.word	playSoundA
	.word	score
	.size	updateFlower, .-updateFlower
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
	ldr	r0, .L130
	mov	r2, r0
	ldr	r1, [r2, #28]
	cmp	r1, #0
	mov	r3, #0
	beq	.L129
.L120:
	add	r3, r3, #1
	cmp	r3, #6
	add	r2, r2, #60
	bxeq	lr
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L120
.L129:
	rsb	r3, r3, r3, lsl #4
	push	{r4, lr}
	add	r4, r0, r3, lsl #2
	mov	r0, r4
	bl	initEnemy
	mov	r3, #1
	str	r3, [r4, #28]
	pop	{r4, lr}
	bx	lr
.L131:
	.align	2
.L130:
	.word	butterflies
	.size	fireEnemy, .-fireEnemy
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
	ldr	r0, .L141
	bl	updateFlower
	ldr	r0, .L141+4
	bl	updateFlower
	ldr	r0, .L141+8
	bl	updateFlower
	ldr	r0, .L141+12
	bl	updateFlower
	ldr	r0, .L141+16
	bl	updateFlower
	ldr	r0, .L141+20
	mov	r5, r4
	bl	updateFlower
	ldr	r6, .L141+24
.L134:
	ldr	r3, [r6, r4]
	tst	r3, #1
	moveq	r5, #1
	add	r0, r6, r4
	mov	r1, r5
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, #360
	bne	.L134
	ldr	r3, .L141+28
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r3, #250
	beq	.L135
	cmp	r3, #2
	moveq	r3, #100
	movne	r3, #50
.L135:
	ldr	r4, .L141+32
	ldr	r2, [r4, #32]
	cmp	r2, r3
	blt	.L132
	bl	fireEnemy
	mov	r3, #0
	str	r3, [r4, #32]
.L132:
	pop	{r4, r5, r6, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	flowers
	.word	flowers+32
	.word	flowers+64
	.word	flowers+96
	.word	flowers+128
	.word	flowers+160
	.word	butterflies
	.word	level
	.word	goog
	.size	updateGame, .-updateGame
	.comm	butterflies,360,4
	.comm	flowers,192,4
	.comm	goog,40,4
	.comm	shadowOAM,1024,4
	.comm	level,4,4
	.comm	cheater,4,4
	.comm	stuck,4,4
	.comm	score,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
