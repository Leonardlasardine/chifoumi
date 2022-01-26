	.file	"main.c"
@ GNU C version 3.3.2 (arm-thumb-elf)
@	compiled by GNU C version 3.3.1 (cygming special).
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed -mthumb-interwork -mlong-calls
@ -auxbase-strip -O2 -Wall -fverbose-asm
@ options enabled:  -fdefer-pop -fomit-frame-pointer
@ -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
@ -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
@ -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
@ -freg-struct-return -fgcse -fgcse-lm -fgcse-sm -floop-optimize
@ -fcrossjumping -fif-conversion -fif-conversion2 -frerun-cse-after-loop
@ -frerun-loop-opt -fdelete-null-pointer-checks -fschedule-insns
@ -fschedule-insns2 -fsched-interblock -fsched-spec -fbranch-count-reg
@ -freorder-blocks -freorder-functions -fcprop-registers -fcommon
@ -fverbose-asm -fgnu-linker -fregmove -foptimize-register-move
@ -fargument-alias -fstrict-aliasing -fmerge-constants
@ -fzero-initialized-in-bss -fident -fpeephole2 -fguess-branch-probability
@ -fmath-errno -ftrapping-math -mapcs -mapcs-frame -mapcs-32 -msoft-float
@ -mthumb-interwork -mlong-calls

	.global	__gba_multiboot
	.data
	.align	2
	.type	__gba_multiboot, %object
	.size	__gba_multiboot, 4
__gba_multiboot:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Pierre feuille ciseaux\000"
	.align	2
.LC1:
	.ascii	"A  Pierre\000"
	.align	2
.LC2:
	.ascii	"B  Feuille\000"
	.align	2
.LC3:
	.ascii	"UP Ciseaux\000"
	.align	2
.LC4:
	.ascii	"J1\000"
	.align	2
.LC5:
	.ascii	"ORDI\000"
	.align	2
.LC8:
	.ascii	"Ciseaux\000"
	.align	2
.LC7:
	.ascii	"Feuille\000"
	.align	2
.LC6:
	.ascii	"Pierre\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	mov	r7, #0	@  bPressed
	ldr	r3, .L39
	mov	lr, pc
	bx	r3
	mov	r0, r7	@  upPressed
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	mov	r3, #9
	mov	r0, r7	@  upPressed
	mov	r1, r7	@  upPressed
	ldr	r2, .L39+8
	str	r3, [fp, #-44]
	str	r7, [fp, #-48]	@  upPressed
	ldr	r3, .L39+12
	str	r7, [fp, #-52]	@  upPressed
	mov	lr, pc
	bx	r3
	ldr	ip, .L39+12
	mov	r0, #1
	mov	r1, #2
	ldr	r2, .L39+16
	mov	lr, pc
	bx	ip
	ldr	r3, .L39+12
	mov	r0, #1
	mov	r1, #3
	ldr	r2, .L39+20
	mov	lr, pc
	bx	r3
	ldr	ip, .L39+12
	mov	r0, #1
	mov	r1, #4
	ldr	r2, .L39+24
	mov	lr, pc
	bx	ip
	ldr	r3, .L39+12
	mov	r0, #6
	mov	r1, #7
	ldr	r2, .L39+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L39+32
	ldr	ip, .L39+12
	mov	r0, #20
	mov	r1, #7
	mov	lr, pc
	bx	ip
	ldr	r4, .L39+36
	mov	r0, r7	@  upPressed
	mov	r1, r7	@  upPressed
	mov	lr, pc
	bx	r4
	mov	r0, #14
	mov	r1, r7	@  upPressed
	mov	lr, pc
	bx	r4
	mov	r0, #29
	mov	r1, r7	@  upPressed
	mov	lr, pc
	bx	r4
	mov	r0, #6
	mov	r1, #1
	mov	lr, pc
	bx	r4
	mov	r0, #8
	mov	r1, #1
	mov	lr, pc
	bx	r4
	mov	r0, #19
	mov	r1, #1
	mov	lr, pc
	bx	r4
	ldr	r3, [fp, #-44]
	mov	r6, r7	@  upPressed,  bPressed
	mov	r8, r7	@  aPressed,  bPressed
	sub	r9, fp, #48	@  upPressed
	sub	sl, fp, #52	@  upPressed
.L33:
	cmp	r3, #16
	bgt	.L32
	mov	r5, #67108864
	add	r5, r5, #304
.L17:
	ldrh	r3, [r5, #0]
	mvn	r3, r3
	ands	r4, r3, #1	@  upPressed
	movne	r8, #1	@  aPressed
	bne	.L9
	cmp	r8, #0	@  aPressed
	bne	.L34
.L9:
	ldrh	r3, [r5, #0]
	mvn	r3, r3
	and	r3, r3, #2
	mov	r4, r3, asr #1	@  bPressed
	cmp	r4, #0	@  bPressed
	movne	r7, #1	@  bPressed
	bne	.L12
	cmp	r7, #0	@  bPressed
	bne	.L35
.L12:
	ldrh	r3, [r5, #0]
	mvn	r3, r3
	and	r3, r3, #64
	mov	r4, r3, asr #6	@  upPressed
	cmp	r4, #0	@  upPressed
	movne	r6, #1	@  upPressed
	bne	.L5
	cmp	r6, #0	@  upPressed
	bne	.L36
.L5:
	ldr	r3, [fp, #-44]
	cmp	r3, #16
	ble	.L17
.L32:
	ldr	r3, .L39+40
	mov	r0, r9	@  upPressed
	mov	r1, sl	@  upPressed
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	add	r2, r2, #304
	ldrh	r3, [r2, #0]
	mvn	r3, r3
	tst	r3, #1
	movne	r8, #1	@  aPressed
	bne	.L20
	cmp	r8, #0	@  aPressed
	bne	.L37
.L20:
	mov	r2, #67108864
	add	r2, r2, #304
	ldrh	r3, [r2, #0]
	mvn	r3, r3
	tst	r3, #2
	movne	r7, #1	@  bPressed
	bne	.L23
	cmp	r7, #0	@  bPressed
	bne	.L38
.L23:
	mov	r2, #67108864
	add	r2, r2, #304
	ldrh	r3, [r2, #0]
	mvn	r3, r3
	tst	r3, #64
	ldrne	r3, [fp, #-44]
	movne	r6, #1	@  upPressed
	bne	.L33
	cmp	r6, #0	@  upPressed
	beq	.L31
	sub	r0, fp, #44
	mov	r1, r9	@  upPressed
	mov	r2, sl	@  upPressed
	ldr	ip, .L39+44
	mov	lr, pc
	bx	ip
.L31:
	ldr	r3, [fp, #-44]
	b	.L33
.L38:
	sub	r0, fp, #44
	mov	r1, r9	@  upPressed
	mov	r2, sl	@  upPressed
	ldr	r3, .L39+44
	mov	lr, pc
	bx	r3
	b	.L23
.L37:
	sub	r0, fp, #44
	mov	r1, r9	@  upPressed
	mov	r2, sl	@  upPressed
	ldr	ip, .L39+44
	mov	lr, pc
	bx	ip
	b	.L20
.L36:
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@  upPressed
	mov	r0, #4
	ldr	r2, .L39+48
	ldr	r3, .L39+12
	mov	lr, pc
	bx	r3
	mov	r3, sl	@  upPressed
	ldr	r0, [fp, #-44]
	mov	r1, #2
	mov	r2, r9	@  upPressed
	ldr	ip, .L39+52
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
	mov	r6, r4	@  upPressed,  upPressed
	b	.L5
.L35:
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@  upPressed
	mov	r0, #4
	ldr	r2, .L39+56
	ldr	r3, .L39+12
	mov	lr, pc
	bx	r3
	mov	r3, sl	@  upPressed
	ldr	r0, [fp, #-44]
	mov	r1, #1
	mov	r2, r9	@  upPressed
	ldr	ip, .L39+52
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
	mov	r7, r4	@  bPressed,  bPressed
	b	.L12
.L34:
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@  upPressed
	mov	r0, #4
	ldr	r2, .L39+60
	ldr	r3, .L39+12
	mov	lr, pc
	bx	r3
	mov	r3, sl	@  upPressed
	ldr	r0, [fp, #-44]
	mov	r1, r4	@  upPressed
	mov	r2, r9	@  upPressed
	ldr	ip, .L39+52
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
	mov	r8, r4	@  aPressed,  upPressed
	b	.L9
.L40:
	.align	2
.L39:
	.word	ham_Init
	.word	ham_InitText
	.word	.LC0
	.word	ham_DrawText
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	drawBorders
	.word	total
	.word	reset
	.word	.LC8
	.word	ordi
	.word	.LC7
	.word	.LC6
	.size	main, .-main
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	" \000"
	.text
	.align	2
	.global	reset
	.type	reset, %function
reset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r6, .L56
	sub	fp, ip, #4
	mov	r8, r0	@  line
	mov	r9, r1	@  ptsOrdi
	mov	sl, r2	@  ptsPlayer
	mov	r7, #9	@  i
.L51:
	mov	r4, #1	@  j
	and	r5, r7, #255	@  ptsOrdi,  i
.L50:
	and	r0, r4, #255	@  line,  j
	mov	r1, r5	@  ptsOrdi
	ldr	r2, .L56+4
	add	r4, r4, #1	@  j,  j
	mov	lr, pc
	bx	r6
	cmp	r4, #28	@  j
	ble	.L50
	add	r7, r7, #1	@  i,  i
	cmp	r7, #18	@  i
	ble	.L51
	ldr	r3, .L56+8
	mov	r0, #14
	mov	r1, #0
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r3, #9
	str	r3, [r8, #0]	@ * line
	str	r2, [sl, #0]	@ * ptsPlayer
	str	r2, [r9, #0]	@ * ptsOrdi
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	ham_DrawText
	.word	.LC9
	.word	drawBorders
	.size	reset, .-reset
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"%d\000"
	.align	2
.LC11:
	.ascii	"GAGNE\000"
	.align	2
.LC12:
	.ascii	"PERDU\000"
	.text
	.align	2
	.global	total
	.type	total, %function
total:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	sub	r6, fp, #36	@  ptsOrdi
	ldr	r2, [r0, #0]	@  ptsOrdi, * ptsOrdi
	mov	r7, r1	@  ptsPlayer
	sub	r4, fp, #40	@  ptsOrdi
	mov	r8, r0	@  ptsOrdi
	ldr	r5, .L63
	ldr	r1, .L63+4
	mov	r0, r6	@  ptsOrdi
	mov	lr, pc
	bx	r5
	ldr	r2, [r7, #0]	@  ptsOrdi, * ptsPlayer
	mov	r0, r4	@  ptsOrdi
	ldr	r1, .L63+4
	mov	lr, pc
	bx	r5
	mov	r2, r4	@  ptsOrdi
	mov	r0, #2
	ldr	r4, .L63+8
	mov	r1, #18
	mov	lr, pc
	bx	r4
	mov	r2, r6	@  ptsOrdi
	mov	r0, #16
	mov	r1, #18
	mov	lr, pc
	bx	r4
	ldr	ip, [r7, #0]	@ * ptsPlayer
	ldr	r3, [r8, #0]	@ * ptsOrdi
	cmp	ip, r3
	mov	r0, #4
	mov	r1, #18
	ldr	r2, .L63+12
	ble	.L59
	mov	lr, pc
	bx	r4
	mov	r0, #18
	ldr	r2, .L63+16
.L62:
	mov	r1, #18
	mov	lr, pc
	bx	r4
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L59:
	mov	r0, #18
	mov	r1, r0
	ldr	r2, .L63+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L63+16
	mov	r0, #4
	b	.L62
.L64:
	.align	2
.L63:
	.word	sprintf
	.word	.LC10
	.word	ham_DrawText
	.word	.LC11
	.word	.LC12
	.size	total, .-total
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"%s\000"
	.text
	.align	2
	.global	ordi
	.type	ordi, %function
ordi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	mov	r5, r0	@  line
	ldr	r0, .L71
	mov	r6, r1	@  player
	mov	r7, r2	@  ptsOrdi
	mov	r8, r3	@  ptsPlayer
	mov	lr, pc
	bx	r0
	mov	r4, r0	@  number
	sub	sl, fp, #44	@  line
	cmp	r4, #0	@  number
	mov	r0, sl	@  line
	ldr	r1, .L71+4
	ldr	r2, .L71+8
	beq	.L70
	cmp	r4, #1	@  number
	sub	sl, fp, #44	@  line
	mov	r0, sl	@  line
	ldr	r1, .L71+4
	ldr	r2, .L71+12
	subne	sl, fp, #44	@  line
	ldrne	r1, .L71+4
	ldrne	r2, .L71+16
	movne	r0, sl	@  line
.L70:
	ldr	r3, .L71+20
	mov	lr, pc
	bx	r3
	and	r1, r5, #255	@  player,  line
	mov	r2, sl	@  line
	mov	r0, #18
	ldr	r3, .L71+24
	mov	lr, pc
	bx	r3
	mov	r0, r5	@  line
	mov	r1, r6	@  player
	mov	r2, r4	@  number
	mov	r3, r7	@  ptsOrdi
	ldr	ip, .L71+28
	str	r8, [sp, #0]	@  ptsPlayer
	mov	lr, pc
	bx	ip
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	random
	.word	.LC13
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	sprintf
	.word	ham_DrawText
	.word	score
	.size	ordi, .-ordi
	.align	2
	.global	random
	.type	random, %function
random:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r0, .L74
	sub	fp, ip, #4
	mov	lr, pc
	bx	r0
	ldr	r3, .L74+4
	smull	r1, r2, r3, r0
	sub	r2, r2, r0, asr #31
	add	r3, r2, r2, asl #1
	rsb	r2, r3, r0
	mov	r0, r2
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	rand
	.word	1431655766
	.size	random, .-random
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"X\000"
	.text
	.align	2
	.global	score
	.type	score, %function
score:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	cmp	r1, #0	@  player
	sub	fp, ip, #4
	mov	r5, r1	@  player
	mov	r7, r0	@  line
	mov	r4, r2	@  ordi
	mov	r6, r3	@  ptsOrdi
	ldr	r8, [fp, #4]	@  ptsPlayer,  ptsPlayer
	bne	.L77
	cmp	r2, #1	@  ordi
	beq	.L86
.L78:
	cmp	r4, #2	@  ordi
	beq	.L87
.L77:
	cmp	r5, #1	@  player
	beq	.L88
.L80:
	cmp	r5, #2	@  player
	beq	.L89
.L76:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L89:
	cmp	r4, #0	@  ordi
	beq	.L90
.L84:
	cmp	r4, #1	@  ordi
	bne	.L76
	and	r1, r7, #255	@  player,  line
	mov	r0, r5	@  player
	ldr	r2, .L92
	ldr	ip, .L92+4
	mov	lr, pc
	bx	ip
	ldr	r3, [r8, #0]	@ * ptsPlayer
	add	r3, r3, #1
	str	r3, [r8, #0]	@ * ptsPlayer
	b	.L76
.L90:
	and	r1, r7, #255	@  player,  line
	mov	r0, #16
	ldr	r2, .L92
	ldr	ip, .L92+4
	mov	lr, pc
	bx	ip
	ldr	r3, [r6, #0]	@ * ptsOrdi
	add	r3, r3, #1
	str	r3, [r6, #0]	@ * ptsOrdi
	b	.L84
.L88:
	cmp	r4, #0	@  ordi
	beq	.L91
.L81:
	cmp	r4, #2	@  ordi
	bne	.L80
	and	r1, r7, #255	@  player,  line
	mov	r0, #16
	ldr	r2, .L92
	ldr	ip, .L92+4
	mov	lr, pc
	bx	ip
	ldr	r3, [r6, #0]	@ * ptsOrdi
	add	r3, r3, #1
	str	r3, [r6, #0]	@ * ptsOrdi
	b	.L80
.L91:
	and	r1, r7, #255	@  player,  line
	mov	r0, #2
	ldr	r2, .L92
	ldr	ip, .L92+4
	mov	lr, pc
	bx	ip
	ldr	r3, [r8, #0]	@ * ptsPlayer
	add	r3, r3, #1
	str	r3, [r8, #0]	@ * ptsPlayer
	b	.L81
.L87:
	and	r1, r7, #255	@  player,  line
	mov	r0, r4	@  ordi
	ldr	r2, .L92
	ldr	ip, .L92+4
	mov	lr, pc
	bx	ip
	ldr	r3, [r8, #0]	@ * ptsPlayer
	add	r3, r3, #1
	str	r3, [r8, #0]	@ * ptsPlayer
	b	.L77
.L86:
	and	r1, r0, #255	@  player,  line
	ldr	r2, .L92
	mov	r0, #16
	ldr	ip, .L92+4
	mov	lr, pc
	bx	ip
	ldr	r3, [r6, #0]	@ * ptsOrdi
	add	r3, r3, #1
	str	r3, [r6, #0]	@ * ptsOrdi
	b	.L78
.L93:
	.align	2
.L92:
	.word	.LC14
	.word	ham_DrawText
	.size	score, .-score
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"/\000"
	.text
	.align	2
	.global	drawBorders
	.type	drawBorders, %function
drawBorders:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	cmp	r1, #0	@  sens
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	ldreq	r6, .L110
	andeq	r5, r0, #255	@  sens,  start
	moveq	r4, #6	@  i
	beq	.L106
	ldr	r6, .L110
	and	r5, r0, #255	@  sens,  start
	mov	r4, #0	@  i
.L100:
	and	r0, r4, #255	@  start,  i
	mov	r1, r5	@  sens
	ldr	r2, .L110+4
	add	r4, r4, #1	@  i,  i
	mov	lr, pc
	bx	r6
	cmp	r4, #28	@  i
	ble	.L100
.L94:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L106:
	and	r1, r4, #255	@  sens,  i
	mov	r0, r5	@  sens
	ldr	r2, .L110+4
	add	r4, r4, #1	@  i,  i
	mov	lr, pc
	bx	r6
	cmp	r4, #19	@  i
	ble	.L106
	b	.L94
.L111:
	.align	2
.L110:
	.word	ham_DrawText
	.word	.LC15
	.size	drawBorders, .-drawBorders
	.ident	"GCC: (GNU) 3.3.2"
