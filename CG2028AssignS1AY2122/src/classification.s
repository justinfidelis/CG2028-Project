 	.syntax unified
 	.cpu cortex-m3
 	.thumb
 	.align 2
 	.global	classification
 	.thumb_func

@ CG2028 Assignment, Sem 2, AY 2021/21
@ (c) CG2028 Teaching Team, ECE NUS, 2021

@ student 1: Name: Hoang Trong Tan, Matriculation No.: A0219767M
@ student 2: Name: Justin Fidelis Wong Jun Wen, Matriculation No.: A0219668M
@ eg: student 1: Name: John Doe , Matriculation No.: A021234N

@Register map
@R0 - points, returns class
@R1 - centroids
@R2 - loop counter
@R3 - point x-position
@R4 - point y-position
@R5 - centroid x-position, x difference, squares x difference
@R6 - centroid y-position, y difference, squares y difference , squared distance to centroid 1
@R7 - squared distance to centroid 0
@R8 - count of classification 0
@R9 - count of classification 1
@....

classification:
@ PUSH / save (only those) registers which are modified by your function
		PUSH {R2-R9,R14}
@ parameter registers need not be saved.
		MOV R2, #8 @ 0x03A02008 init loop counter to 8
		MOV R8, #0 @ init count of points classified as 0
		MOV R9, #0 @ init count of points classified as 1

@ write asm function body here
loop:
		@ load point and centroid positions from memory
		LDR R3, [R0], #4 @ 0x04903004 load point x-pos into R3
		LDR R4, [R0], #4 @ 0x04904004 load point y-pos into R4

		@calculate squared Euclidean distance between point and centroid 0
		LDR R5, [R1] @ load centroid 0 x-pos into R5
		LDR R6, [R1, #4] @ load centroid 0 y-pos into R6

		@ calculate square of difference in x-pos and y-pos
		SUB R5, R3 @ 0x00455003 difference in x-pos
		SUB R6, R4 @ difference in y-pos
		MUL	R5, R5 @ squared x distance
		MUL	R6, R6 @ squared y distance

		ADD R7, R5, R6 @ 0x00857006 place squared Euclidean distance in R7

		@ calculate squared Euclidean distance between point and centroid 1
		LDR R5, [R1, #8] @ 0x05915008 load centroid 1 x-pos into R5
		LDR R6, [R1, #12] @ 0x0591600C load centroid 1 x-pos into R6

		@ calculate square of difference in x-pos and y-pos
		SUB R5, R3 @ difference in x-pos
		SUB R6, R4 @ difference in y-pos
		MUL	R5, R5 @ squared x distance
		MUL	R6, R6 @ squared y distance

		ADD R6, R5 @ place squared Euclidean distance in R6

		@ compare distance to the 2 centroids
		CMP R7, R6 @ 0x01570006 R7 - R6, d0 - d1
		ITE PL
			ADDPL R9, #1 @ d0 >= d1, increment centroid 1 count
			ADDMI R8, #1 @ d0 < d1, increment centroid 0 count

		SUBS R2, #1 @ 0x02522001 decrement loop counter
		BGT loop @ loop 8 times

		CMP R8, R9 @ 0x01580009 R8 - R9 c0 - c1
		ITE PL
			MOVPL R0, #0 @ c0 >= c1, return 0
			MOVMI R0, #1 @ c0 < c1, return 1

@ POP / restore original register values. DO NOT save or restore R0. Why?
		POP {R2-R9,R14}
@ return to C program
		BX	LR

@label: .word value

@.lcomm label num_bytes
