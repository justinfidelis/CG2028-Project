   1              		.syntax unified
   2              		.cpu cortex-m3
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.file	"main.c"
  15              		.text
  16              	.Ltext0:
  17              		.cfi_sections	.debug_frame
  18              		.global	__aeabi_dmul
  19              		.global	__aeabi_d2iz
  20              		.section	.rodata
  21              		.align	2
  22              	.LC2:
  23 0000 706F696E 		.ascii	"point %d: (x:%d, y:%d) \012\000"
  23      74202564 
  23      3A202878 
  23      3A25642C 
  23      20793A25 
  24 0019 000000   		.align	2
  25              	.LC3:
  26 001c 4320203A 		.ascii	"C  : class %d contains more datapoint \012\000"
  26      20636C61 
  26      73732025 
  26      6420636F 
  26      6E746169 
  27              		.align	2
  28              	.LC4:
  29 0044 61736D3A 		.ascii	"asm: class %d contains more datapoint \012\000"
  29      20636C61 
  29      73732025 
  29      6420636F 
  29      6E746169 
  30 006c 00000000 		.align	3
  31              	.LC0:
  32 0070 00000000 		.word	0
  33 0074 00002040 		.word	1075838976
  34 0078 00000000 		.word	0
  35 007c 00000440 		.word	1074003968
  36 0080 00000000 		.word	0
  37 0084 00002440 		.word	1076101120
  38 0088 00000000 		.word	0
  39 008c 00000040 		.word	1073741824
  40 0090 00000000 		.word	0
  41 0094 00002240 		.word	1075970048
  42 0098 00000000 		.word	0
  43 009c 00001440 		.word	1075052544
  44 00a0 00000000 		.word	0
  45 00a4 00001040 		.word	1074790400
  46 00a8 00000000 		.word	0
  47 00ac 0000E03F 		.word	1071644672
  48 00b0 00000000 		.word	0
  49 00b4 00000040 		.word	1073741824
  50 00b8 00000000 		.word	0
  51 00bc 00002040 		.word	1075838976
  52 00c0 00000000 		.word	0
  53 00c4 00001440 		.word	1075052544
  54 00c8 00000000 		.word	0
  55 00cc 00002240 		.word	1075970048
  56 00d0 00000000 		.word	0
  57 00d4 00001840 		.word	1075314688
  58 00d8 00000000 		.word	0
  59 00dc 0000F83F 		.word	1073217536
  60 00e0 00000000 		.word	0
  61 00e4 00001040 		.word	1074790400
  62 00e8 00000000 		.word	0
  63 00ec 0000E03F 		.word	1071644672
  64              		.align	3
  65              	.LC1:
  66 00f0 00000000 		.word	0
  67 00f4 00001040 		.word	1074790400
  68 00f8 00000000 		.word	0
  69 00fc 0000E03F 		.word	1071644672
  70 0100 00000000 		.word	0
  71 0104 00002040 		.word	1075838976
  72 0108 00000000 		.word	0
  73 010c 00000440 		.word	1074003968
  74              		.section	.text.main,"ax",%progbits
  75              		.align	2
  76              		.global	main
  77              		.thumb
  78              		.thumb_func
  80              	main:
  81              	.LFB0:
  82              		.file 1 "../src/main.c"
   1:../src/main.c **** #include "stdio.h"
   2:../src/main.c **** #define DATAPOINT 8
   3:../src/main.c **** #define CENTROID 2
   4:../src/main.c **** // CG2028 Assignment, Sem 2, AY 2021/22
   5:../src/main.c **** // (c) CG2028 Teaching Team, ECE NUS, 2021
   6:../src/main.c **** 
   7:../src/main.c **** 
   8:../src/main.c **** int classification_cCode(int* arg1, int* arg2, int* arg3);
   9:../src/main.c **** extern int classification(int* arg1, int* arg2, int* arg3);// reference C implementation
  10:../src/main.c **** int main(void)
  11:../src/main.c **** {
  83              		.loc 1 11 0
  84              		.cfi_startproc
  85              		@ args = 0, pretend = 0, frame = 280
  86              		@ frame_needed = 1, uses_anonymous_args = 0
  87 0000 B0B5     		push	{r4, r5, r7, lr}
  88              	.LCFI0:
  89              		.cfi_def_cfa_offset 16
  90              		.cfi_offset 14, -4
  91              		.cfi_offset 7, -8
  92              		.cfi_offset 5, -12
  93              		.cfi_offset 4, -16
  94 0002 C6B0     		sub	sp, sp, #280
  95              	.LCFI1:
  96              		.cfi_def_cfa_offset 296
  97 0004 00AF     		add	r7, sp, #0
  98              	.LCFI2:
  99              		.cfi_def_cfa_register 7
  12:../src/main.c **** 	int i,j;
  13:../src/main.c **** 
  14:../src/main.c **** 	double points[DATAPOINT][2] = {{8.0, 2.5},
 100              		.loc 1 14 0
 101 0006 40F20003 		movw	r3, #:lower16:.LC0
 102 000a C0F20003 		movt	r3, #:upper16:.LC0
 103 000e 07F19001 		add	r1, r7, #144
 104 0012 1A46     		mov	r2, r3
 105 0014 4FF08003 		mov	r3, #128
 106 0018 0846     		mov	r0, r1
 107 001a 1146     		mov	r1, r2
 108 001c 1A46     		mov	r2, r3
 109 001e FFF7FEFF 		bl	memcpy
  15:../src/main.c ****             {10.0, 2.0},
  16:../src/main.c ****             {9.0, 5.0},
  17:../src/main.c ****             {4.0, 0.5},
  18:../src/main.c ****             {2.0, 8.0},
  19:../src/main.c ****             {5.0, 9.0},
  20:../src/main.c ****             {6.0, 1.5},
  21:../src/main.c ****             {4.0, 0.5}};
  22:../src/main.c **** 
  23:../src/main.c **** 
  24:../src/main.c **** 	double centroids[CENTROID][2] ={ {4.0, 0.5},
 110              		.loc 1 24 0
 111 0022 40F20003 		movw	r3, #:lower16:.LC1
 112 0026 C0F20003 		movt	r3, #:upper16:.LC1
 113 002a 07F17004 		add	r4, r7, #112
 114 002e 1D46     		mov	r5, r3
 115 0030 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 116 0032 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 117 0034 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 118 0038 84E80F00 		stmia	r4, {r0, r1, r2, r3}
  25:../src/main.c ****             {8.0, 2.5} };
  26:../src/main.c **** 
  27:../src/main.c **** 
  28:../src/main.c **** 	int points10[DATAPOINT][2];
  29:../src/main.c **** 	int centroids10[CENTROID][2];
  30:../src/main.c **** 	int class[DATAPOINT] = {0,0,0,0,0,0,0,0};
 119              		.loc 1 30 0
 120 003c 3B46     		mov	r3, r7
 121 003e 4FF00002 		mov	r2, #0
 122 0042 1A60     		str	r2, [r3, #0]
 123 0044 3B46     		mov	r3, r7
 124 0046 4FF00002 		mov	r2, #0
 125 004a 5A60     		str	r2, [r3, #4]
 126 004c 3B46     		mov	r3, r7
 127 004e 4FF00002 		mov	r2, #0
 128 0052 9A60     		str	r2, [r3, #8]
 129 0054 3B46     		mov	r3, r7
 130 0056 4FF00002 		mov	r2, #0
 131 005a DA60     		str	r2, [r3, #12]
 132 005c 3B46     		mov	r3, r7
 133 005e 4FF00002 		mov	r2, #0
 134 0062 1A61     		str	r2, [r3, #16]
 135 0064 3B46     		mov	r3, r7
 136 0066 4FF00002 		mov	r2, #0
 137 006a 5A61     		str	r2, [r3, #20]
 138 006c 3B46     		mov	r3, r7
 139 006e 4FF00002 		mov	r2, #0
 140 0072 9A61     		str	r2, [r3, #24]
 141 0074 3B46     		mov	r3, r7
 142 0076 4FF00002 		mov	r2, #0
 143 007a DA61     		str	r2, [r3, #28]
  31:../src/main.c **** 
  32:../src/main.c **** 	// Multiply the coordinates by 10 so that the final answers have 1 decimal point
  33:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 144              		.loc 1 33 0
 145 007c 4FF00003 		mov	r3, #0
 146 0080 C7F81431 		str	r3, [r7, #276]
 147 0084 60E0     		b	.L2
 148              	.L5:
  34:../src/main.c **** 	{
  35:../src/main.c **** 		for (j=0; j<2; j++)
 149              		.loc 1 35 0
 150 0086 4FF00003 		mov	r3, #0
 151 008a C7F81031 		str	r3, [r7, #272]
 152 008e 34E0     		b	.L3
 153              	.L4:
  36:../src/main.c **** 			points10[i][j] = points[i][j]*10;
 154              		.loc 1 36 0 discriminator 2
 155 0090 D7F81431 		ldr	r3, [r7, #276]
 156 0094 4FEA4302 		lsl	r2, r3, #1
 157 0098 D7F81031 		ldr	r3, [r7, #272]
 158 009c D318     		adds	r3, r2, r3
 159 009e 4FEAC303 		lsl	r3, r3, #3
 160 00a2 07F58C71 		add	r1, r7, #280
 161 00a6 CB18     		adds	r3, r1, r3
 162 00a8 A3F18803 		sub	r3, r3, #136
 163 00ac D3E90023 		ldrd	r2, [r3]
 164 00b0 1046     		mov	r0, r2
 165 00b2 1946     		mov	r1, r3
 166 00b4 4FF00002 		mov	r2, #0
 167 00b8 4FF08043 		mov	r3, #1073741824
 168 00bc 03F51013 		add	r3, r3, #2359296
 169 00c0 FFF7FEFF 		bl	__aeabi_dmul
 170 00c4 0246     		mov	r2, r0
 171 00c6 0B46     		mov	r3, r1
 172 00c8 1046     		mov	r0, r2
 173 00ca 1946     		mov	r1, r3
 174 00cc FFF7FEFF 		bl	__aeabi_d2iz
 175 00d0 0246     		mov	r2, r0
 176 00d2 D7F81431 		ldr	r3, [r7, #276]
 177 00d6 4FEA4301 		lsl	r1, r3, #1
 178 00da D7F81031 		ldr	r3, [r7, #272]
 179 00de CB18     		adds	r3, r1, r3
 180 00e0 4FEA8303 		lsl	r3, r3, #2
 181 00e4 07F58C71 		add	r1, r7, #280
 182 00e8 CB18     		adds	r3, r1, r3
 183 00ea 43F8E82C 		str	r2, [r3, #-232]
  35:../src/main.c **** 		for (j=0; j<2; j++)
 184              		.loc 1 35 0 discriminator 2
 185 00ee D7F81031 		ldr	r3, [r7, #272]
 186 00f2 03F10103 		add	r3, r3, #1
 187 00f6 C7F81031 		str	r3, [r7, #272]
 188              	.L3:
  35:../src/main.c **** 		for (j=0; j<2; j++)
 189              		.loc 1 35 0 is_stmt 0 discriminator 1
 190 00fa D7F81031 		ldr	r3, [r7, #272]
 191 00fe 012B     		cmp	r3, #1
 192 0100 C6DD     		ble	.L4
  37:../src/main.c **** 		printf("point %d: (x:%d, y:%d) \n", i, points10[i][0],points10[i][1]);
 193              		.loc 1 37 0 is_stmt 1
 194 0102 40F20003 		movw	r3, #:lower16:.LC2
 195 0106 C0F20003 		movt	r3, #:upper16:.LC2
 196 010a D7F81421 		ldr	r2, [r7, #276]
 197 010e 4FEAC202 		lsl	r2, r2, #3
 198 0112 07F58C71 		add	r1, r7, #280
 199 0116 8A18     		adds	r2, r1, r2
 200 0118 52F8E85C 		ldr	r5, [r2, #-232]
 201 011c D7F81421 		ldr	r2, [r7, #276]
 202 0120 4FEAC202 		lsl	r2, r2, #3
 203 0124 07F58C71 		add	r1, r7, #280
 204 0128 8A18     		adds	r2, r1, r2
 205 012a 52F8E44C 		ldr	r4, [r2, #-228]
 206 012e 1846     		mov	r0, r3
 207 0130 D7F81411 		ldr	r1, [r7, #276]
 208 0134 2A46     		mov	r2, r5
 209 0136 2346     		mov	r3, r4
 210 0138 FFF7FEFF 		bl	printf
  33:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 211              		.loc 1 33 0
 212 013c D7F81431 		ldr	r3, [r7, #276]
 213 0140 03F10103 		add	r3, r3, #1
 214 0144 C7F81431 		str	r3, [r7, #276]
 215              	.L2:
  33:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 216              		.loc 1 33 0 is_stmt 0 discriminator 1
 217 0148 D7F81431 		ldr	r3, [r7, #276]
 218 014c 072B     		cmp	r3, #7
 219 014e 9ADD     		ble	.L5
  38:../src/main.c **** 	}
  39:../src/main.c **** 
  40:../src/main.c **** 	for (i=0; i<CENTROID; i++)
 220              		.loc 1 40 0 is_stmt 1
 221 0150 4FF00003 		mov	r3, #0
 222 0154 C7F81431 		str	r3, [r7, #276]
 223 0158 43E0     		b	.L6
 224              	.L9:
  41:../src/main.c **** 		for (j=0; j<2; j++)
 225              		.loc 1 41 0
 226 015a 4FF00003 		mov	r3, #0
 227 015e C7F81031 		str	r3, [r7, #272]
 228 0162 34E0     		b	.L7
 229              	.L8:
  42:../src/main.c **** 			centroids10[i][j] = centroids[i][j]*10;
 230              		.loc 1 42 0 discriminator 2
 231 0164 D7F81431 		ldr	r3, [r7, #276]
 232 0168 4FEA4302 		lsl	r2, r3, #1
 233 016c D7F81031 		ldr	r3, [r7, #272]
 234 0170 D318     		adds	r3, r2, r3
 235 0172 4FEAC303 		lsl	r3, r3, #3
 236 0176 07F58C72 		add	r2, r7, #280
 237 017a D318     		adds	r3, r2, r3
 238 017c A3F1A803 		sub	r3, r3, #168
 239 0180 D3E90023 		ldrd	r2, [r3]
 240 0184 1046     		mov	r0, r2
 241 0186 1946     		mov	r1, r3
 242 0188 4FF00002 		mov	r2, #0
 243 018c 4FF08043 		mov	r3, #1073741824
 244 0190 03F51013 		add	r3, r3, #2359296
 245 0194 FFF7FEFF 		bl	__aeabi_dmul
 246 0198 0246     		mov	r2, r0
 247 019a 0B46     		mov	r3, r1
 248 019c 1046     		mov	r0, r2
 249 019e 1946     		mov	r1, r3
 250 01a0 FFF7FEFF 		bl	__aeabi_d2iz
 251 01a4 0246     		mov	r2, r0
 252 01a6 D7F81431 		ldr	r3, [r7, #276]
 253 01aa 4FEA4301 		lsl	r1, r3, #1
 254 01ae D7F81031 		ldr	r3, [r7, #272]
 255 01b2 CB18     		adds	r3, r1, r3
 256 01b4 4FEA8303 		lsl	r3, r3, #2
 257 01b8 07F58C71 		add	r1, r7, #280
 258 01bc CB18     		adds	r3, r1, r3
 259 01be 43F8F82C 		str	r2, [r3, #-248]
  41:../src/main.c **** 		for (j=0; j<2; j++)
 260              		.loc 1 41 0 discriminator 2
 261 01c2 D7F81031 		ldr	r3, [r7, #272]
 262 01c6 03F10103 		add	r3, r3, #1
 263 01ca C7F81031 		str	r3, [r7, #272]
 264              	.L7:
  41:../src/main.c **** 		for (j=0; j<2; j++)
 265              		.loc 1 41 0 is_stmt 0 discriminator 1
 266 01ce D7F81031 		ldr	r3, [r7, #272]
 267 01d2 012B     		cmp	r3, #1
 268 01d4 C6DD     		ble	.L8
  40:../src/main.c **** 	for (i=0; i<CENTROID; i++)
 269              		.loc 1 40 0 is_stmt 1
 270 01d6 D7F81431 		ldr	r3, [r7, #276]
 271 01da 03F10103 		add	r3, r3, #1
 272 01de C7F81431 		str	r3, [r7, #276]
 273              	.L6:
  40:../src/main.c **** 	for (i=0; i<CENTROID; i++)
 274              		.loc 1 40 0 is_stmt 0 discriminator 1
 275 01e2 D7F81431 		ldr	r3, [r7, #276]
 276 01e6 012B     		cmp	r3, #1
 277 01e8 B7DD     		ble	.L9
  43:../src/main.c **** 
  44:../src/main.c **** 	// Call assembly language function to perform classification
  45:../src/main.c **** 	printf( "C  : class %d contains more datapoint \n", classification_cCode(points10,centroids10,clas
 278              		.loc 1 45 0 is_stmt 1
 279 01ea 40F20004 		movw	r4, #:lower16:.LC3
 280 01ee C0F20004 		movt	r4, #:upper16:.LC3
 281 01f2 07F13001 		add	r1, r7, #48
 282 01f6 07F12002 		add	r2, r7, #32
 283 01fa 3B46     		mov	r3, r7
 284 01fc 0846     		mov	r0, r1
 285 01fe 1146     		mov	r1, r2
 286 0200 1A46     		mov	r2, r3
 287 0202 FFF7FEFF 		bl	classification_cCode
 288 0206 0346     		mov	r3, r0
 289 0208 2046     		mov	r0, r4
 290 020a 1946     		mov	r1, r3
 291 020c FFF7FEFF 		bl	printf
  46:../src/main.c **** 	printf( "asm: class %d contains more datapoint \n", classification(points10,centroids10,class)) ;
 292              		.loc 1 46 0
 293 0210 40F20004 		movw	r4, #:lower16:.LC4
 294 0214 C0F20004 		movt	r4, #:upper16:.LC4
 295 0218 07F13001 		add	r1, r7, #48
 296 021c 07F12002 		add	r2, r7, #32
 297 0220 3B46     		mov	r3, r7
 298 0222 0846     		mov	r0, r1
 299 0224 1146     		mov	r1, r2
 300 0226 1A46     		mov	r2, r3
 301 0228 FFF7FEFF 		bl	classification
 302 022c 0346     		mov	r3, r0
 303 022e 2046     		mov	r0, r4
 304 0230 1946     		mov	r1, r3
 305 0232 FFF7FEFF 		bl	printf
 306              	.L10:
  47:../src/main.c **** 
  48:../src/main.c **** 	while (1); //halt
 307              		.loc 1 48 0 discriminator 1
 308 0236 FEE7     		b	.L10
 309              		.cfi_endproc
 310              	.LFE0:
 312              		.section	.rodata
 313              		.align	2
 314              	.LC5:
 315 0110 706F696E 		.ascii	"point %d = centroid 1-->%d centroid 2 -->%d , class"
 315      74202564 
 315      203D2063 
 315      656E7472 
 315      6F696420 
 316 0143 203D2025 		.ascii	" = %d \012\000"
 316      64200A00 
 317 014b 00000000 		.section	.text.classification_cCode,"ax",%progbits
 317      00
 318              		.align	2
 319              		.global	classification_cCode
 320              		.thumb
 321              		.thumb_func
 323              	classification_cCode:
 324              	.LFB1:
  49:../src/main.c **** }
  50:../src/main.c **** int classification_cCode(int*points,int* centroids, int* class)
  51:../src/main.c **** {
 325              		.loc 1 51 0
 326              		.cfi_startproc
 327              		@ args = 0, pretend = 0, frame = 96
 328              		@ frame_needed = 1, uses_anonymous_args = 0
 329 0000 B0B5     		push	{r4, r5, r7, lr}
 330              	.LCFI3:
 331              		.cfi_def_cfa_offset 16
 332              		.cfi_offset 14, -4
 333              		.cfi_offset 7, -8
 334              		.cfi_offset 5, -12
 335              		.cfi_offset 4, -16
 336 0002 9AB0     		sub	sp, sp, #104
 337              	.LCFI4:
 338              		.cfi_def_cfa_offset 120
 339 0004 02AF     		add	r7, sp, #8
 340              	.LCFI5:
 341              		.cfi_def_cfa 7, 112
 342 0006 F860     		str	r0, [r7, #12]
 343 0008 B960     		str	r1, [r7, #8]
 344 000a 7A60     		str	r2, [r7, #4]
  52:../src/main.c **** 	int i,j;
  53:../src/main.c **** 	int d[CENTROID][DATAPOINT]; // squared Euclidean distance
  54:../src/main.c **** 	//int d1[DATAPOINT]; // squared Euclidean distance
  55:../src/main.c **** 	int d0_counter=0,d1_counter=0;
 345              		.loc 1 55 0
 346 000c 4FF00003 		mov	r3, #0
 347 0010 BB65     		str	r3, [r7, #88]
 348 0012 4FF00003 		mov	r3, #0
 349 0016 7B65     		str	r3, [r7, #84]
  56:../src/main.c **** 
  57:../src/main.c **** 
  58:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 350              		.loc 1 58 0
 351 0018 4FF00003 		mov	r3, #0
 352 001c FB65     		str	r3, [r7, #92]
 353 001e A8E0     		b	.L12
 354              	.L15:
  59:../src/main.c **** 	{
  60:../src/main.c **** 		//(*((centroids+i) + j))
  61:../src/main.c **** 		d[0][i] = ((*((points+i*2) + 0))-(*((centroids+0*2) + 0))) * ((*((points+i*2) + 0))-(*((centroids
 355              		.loc 1 61 0
 356 0020 FB6D     		ldr	r3, [r7, #92]
 357 0022 4FEAC303 		lsl	r3, r3, #3
 358 0026 FA68     		ldr	r2, [r7, #12]
 359 0028 D318     		adds	r3, r2, r3
 360 002a 1A68     		ldr	r2, [r3, #0]
 361 002c BB68     		ldr	r3, [r7, #8]
 362 002e 1B68     		ldr	r3, [r3, #0]
 363 0030 D31A     		subs	r3, r2, r3
 364 0032 FA6D     		ldr	r2, [r7, #92]
 365 0034 4FEAC202 		lsl	r2, r2, #3
 366 0038 F968     		ldr	r1, [r7, #12]
 367 003a 8A18     		adds	r2, r1, r2
 368 003c 1168     		ldr	r1, [r2, #0]
 369 003e BA68     		ldr	r2, [r7, #8]
 370 0040 1268     		ldr	r2, [r2, #0]
 371 0042 8A1A     		subs	r2, r1, r2
 372 0044 02FB03F2 		mul	r2, r2, r3
 373 0048 FB6D     		ldr	r3, [r7, #92]
 374 004a 4FEAC303 		lsl	r3, r3, #3
 375 004e 03F10403 		add	r3, r3, #4
 376 0052 F968     		ldr	r1, [r7, #12]
 377 0054 CB18     		adds	r3, r1, r3
 378 0056 1968     		ldr	r1, [r3, #0]
 379 0058 BB68     		ldr	r3, [r7, #8]
 380 005a 03F10403 		add	r3, r3, #4
 381 005e 1B68     		ldr	r3, [r3, #0]
 382 0060 CB1A     		subs	r3, r1, r3
 383 0062 F96D     		ldr	r1, [r7, #92]
 384 0064 4FEAC101 		lsl	r1, r1, #3
 385 0068 01F10401 		add	r1, r1, #4
 386 006c F868     		ldr	r0, [r7, #12]
 387 006e 4118     		adds	r1, r0, r1
 388 0070 0868     		ldr	r0, [r1, #0]
 389 0072 B968     		ldr	r1, [r7, #8]
 390 0074 01F10401 		add	r1, r1, #4
 391 0078 0968     		ldr	r1, [r1, #0]
 392 007a 411A     		subs	r1, r0, r1
 393 007c 01FB03F3 		mul	r3, r1, r3
 394 0080 D218     		adds	r2, r2, r3
 395 0082 FB6D     		ldr	r3, [r7, #92]
 396 0084 4FEA8303 		lsl	r3, r3, #2
 397 0088 07F16000 		add	r0, r7, #96
 398 008c C318     		adds	r3, r0, r3
 399 008e 43F84C2C 		str	r2, [r3, #-76]
  62:../src/main.c **** 		d[1][i] = ((*((points+i*2) + 0))-(*((centroids+1*2) + 0))) * ((*((points+i*2) + 0))-(*((centroids
 400              		.loc 1 62 0
 401 0092 FB6D     		ldr	r3, [r7, #92]
 402 0094 4FEAC303 		lsl	r3, r3, #3
 403 0098 FA68     		ldr	r2, [r7, #12]
 404 009a D318     		adds	r3, r2, r3
 405 009c 1A68     		ldr	r2, [r3, #0]
 406 009e BB68     		ldr	r3, [r7, #8]
 407 00a0 03F10803 		add	r3, r3, #8
 408 00a4 1B68     		ldr	r3, [r3, #0]
 409 00a6 D31A     		subs	r3, r2, r3
 410 00a8 FA6D     		ldr	r2, [r7, #92]
 411 00aa 4FEAC202 		lsl	r2, r2, #3
 412 00ae F968     		ldr	r1, [r7, #12]
 413 00b0 8A18     		adds	r2, r1, r2
 414 00b2 1168     		ldr	r1, [r2, #0]
 415 00b4 BA68     		ldr	r2, [r7, #8]
 416 00b6 02F10802 		add	r2, r2, #8
 417 00ba 1268     		ldr	r2, [r2, #0]
 418 00bc 8A1A     		subs	r2, r1, r2
 419 00be 02FB03F2 		mul	r2, r2, r3
 420 00c2 FB6D     		ldr	r3, [r7, #92]
 421 00c4 4FEAC303 		lsl	r3, r3, #3
 422 00c8 03F10403 		add	r3, r3, #4
 423 00cc F968     		ldr	r1, [r7, #12]
 424 00ce CB18     		adds	r3, r1, r3
 425 00d0 1968     		ldr	r1, [r3, #0]
 426 00d2 BB68     		ldr	r3, [r7, #8]
 427 00d4 03F10C03 		add	r3, r3, #12
 428 00d8 1B68     		ldr	r3, [r3, #0]
 429 00da CB1A     		subs	r3, r1, r3
 430 00dc F96D     		ldr	r1, [r7, #92]
 431 00de 4FEAC101 		lsl	r1, r1, #3
 432 00e2 01F10401 		add	r1, r1, #4
 433 00e6 F868     		ldr	r0, [r7, #12]
 434 00e8 4118     		adds	r1, r0, r1
 435 00ea 0868     		ldr	r0, [r1, #0]
 436 00ec B968     		ldr	r1, [r7, #8]
 437 00ee 01F10C01 		add	r1, r1, #12
 438 00f2 0968     		ldr	r1, [r1, #0]
 439 00f4 411A     		subs	r1, r0, r1
 440 00f6 01FB03F3 		mul	r3, r1, r3
 441 00fa D218     		adds	r2, r2, r3
 442 00fc FB6D     		ldr	r3, [r7, #92]
 443 00fe 03F10803 		add	r3, r3, #8
 444 0102 4FEA8303 		lsl	r3, r3, #2
 445 0106 07F16001 		add	r1, r7, #96
 446 010a CB18     		adds	r3, r1, r3
 447 010c 43F84C2C 		str	r2, [r3, #-76]
  63:../src/main.c **** 
  64:../src/main.c **** 		if(d[0][i]<d[1][i])
 448              		.loc 1 64 0
 449 0110 FB6D     		ldr	r3, [r7, #92]
 450 0112 4FEA8303 		lsl	r3, r3, #2
 451 0116 07F16002 		add	r2, r7, #96
 452 011a D318     		adds	r3, r2, r3
 453 011c 53F84C2C 		ldr	r2, [r3, #-76]
 454 0120 FB6D     		ldr	r3, [r7, #92]
 455 0122 03F10803 		add	r3, r3, #8
 456 0126 4FEA8303 		lsl	r3, r3, #2
 457 012a 07F16000 		add	r0, r7, #96
 458 012e C318     		adds	r3, r0, r3
 459 0130 53F84C3C 		ldr	r3, [r3, #-76]
 460 0134 9A42     		cmp	r2, r3
 461 0136 0CDA     		bge	.L13
  65:../src/main.c **** 		{
  66:../src/main.c **** 			class[i] = 0;
 462              		.loc 1 66 0
 463 0138 FB6D     		ldr	r3, [r7, #92]
 464 013a 4FEA8303 		lsl	r3, r3, #2
 465 013e 7A68     		ldr	r2, [r7, #4]
 466 0140 D318     		adds	r3, r2, r3
 467 0142 4FF00002 		mov	r2, #0
 468 0146 1A60     		str	r2, [r3, #0]
  67:../src/main.c **** 			d0_counter++;
 469              		.loc 1 67 0
 470 0148 BB6D     		ldr	r3, [r7, #88]
 471 014a 03F10103 		add	r3, r3, #1
 472 014e BB65     		str	r3, [r7, #88]
 473 0150 0BE0     		b	.L14
 474              	.L13:
  68:../src/main.c **** 		}
  69:../src/main.c **** 		else
  70:../src/main.c **** 		{
  71:../src/main.c **** 			class[i] = 1;
 475              		.loc 1 71 0
 476 0152 FB6D     		ldr	r3, [r7, #92]
 477 0154 4FEA8303 		lsl	r3, r3, #2
 478 0158 7A68     		ldr	r2, [r7, #4]
 479 015a D318     		adds	r3, r2, r3
 480 015c 4FF00102 		mov	r2, #1
 481 0160 1A60     		str	r2, [r3, #0]
  72:../src/main.c **** 			d1_counter++;
 482              		.loc 1 72 0
 483 0162 7B6D     		ldr	r3, [r7, #84]
 484 0164 03F10103 		add	r3, r3, #1
 485 0168 7B65     		str	r3, [r7, #84]
 486              	.L14:
  58:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 487              		.loc 1 58 0
 488 016a FB6D     		ldr	r3, [r7, #92]
 489 016c 03F10103 		add	r3, r3, #1
 490 0170 FB65     		str	r3, [r7, #92]
 491              	.L12:
  58:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 492              		.loc 1 58 0 is_stmt 0 discriminator 1
 493 0172 FB6D     		ldr	r3, [r7, #92]
 494 0174 072B     		cmp	r3, #7
 495 0176 7FF753AF 		ble	.L15
  73:../src/main.c **** 		}
  74:../src/main.c **** 	}
  75:../src/main.c **** 	// print all distances
  76:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 496              		.loc 1 76 0 is_stmt 1
 497 017a 4FF00003 		mov	r3, #0
 498 017e FB65     		str	r3, [r7, #92]
 499 0180 28E0     		b	.L16
 500              	.L17:
  77:../src/main.c **** 	{
  78:../src/main.c **** 		printf( "point %d = centroid 1-->%d centroid 2 -->%d , class = %d \n",i+1, d[0][i],d[1][i],class[
 501              		.loc 1 78 0 discriminator 2
 502 0182 40F20003 		movw	r3, #:lower16:.LC5
 503 0186 C0F20003 		movt	r3, #:upper16:.LC5
 504 018a FA6D     		ldr	r2, [r7, #92]
 505 018c 02F10101 		add	r1, r2, #1
 506 0190 FA6D     		ldr	r2, [r7, #92]
 507 0192 4FEA8202 		lsl	r2, r2, #2
 508 0196 07F16000 		add	r0, r7, #96
 509 019a 8218     		adds	r2, r0, r2
 510 019c 52F84C5C 		ldr	r5, [r2, #-76]
 511 01a0 FA6D     		ldr	r2, [r7, #92]
 512 01a2 02F10802 		add	r2, r2, #8
 513 01a6 4FEA8202 		lsl	r2, r2, #2
 514 01aa 07F16000 		add	r0, r7, #96
 515 01ae 8218     		adds	r2, r0, r2
 516 01b0 52F84C4C 		ldr	r4, [r2, #-76]
 517 01b4 FA6D     		ldr	r2, [r7, #92]
 518 01b6 4FEA8202 		lsl	r2, r2, #2
 519 01ba 7868     		ldr	r0, [r7, #4]
 520 01bc 8218     		adds	r2, r0, r2
 521 01be 1268     		ldr	r2, [r2, #0]
 522 01c0 0092     		str	r2, [sp, #0]
 523 01c2 1846     		mov	r0, r3
 524 01c4 2A46     		mov	r2, r5
 525 01c6 2346     		mov	r3, r4
 526 01c8 FFF7FEFF 		bl	printf
  76:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 527              		.loc 1 76 0 discriminator 2
 528 01cc FB6D     		ldr	r3, [r7, #92]
 529 01ce 03F10103 		add	r3, r3, #1
 530 01d2 FB65     		str	r3, [r7, #92]
 531              	.L16:
  76:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 532              		.loc 1 76 0 is_stmt 0 discriminator 1
 533 01d4 FB6D     		ldr	r3, [r7, #92]
 534 01d6 072B     		cmp	r3, #7
 535 01d8 D3DD     		ble	.L17
  79:../src/main.c **** 	}
  80:../src/main.c **** 	if(d1_counter>d0_counter)
 536              		.loc 1 80 0 is_stmt 1
 537 01da 7A6D     		ldr	r2, [r7, #84]
 538 01dc BB6D     		ldr	r3, [r7, #88]
 539 01de 9A42     		cmp	r2, r3
 540 01e0 02DD     		ble	.L18
  81:../src/main.c **** 		return 1;
 541              		.loc 1 81 0
 542 01e2 4FF00103 		mov	r3, #1
 543 01e6 01E0     		b	.L19
 544              	.L18:
  82:../src/main.c **** 	else
  83:../src/main.c **** 		return 0;
 545              		.loc 1 83 0
 546 01e8 4FF00003 		mov	r3, #0
 547              	.L19:
  84:../src/main.c **** }
 548              		.loc 1 84 0
 549 01ec 1846     		mov	r0, r3
 550 01ee 07F16007 		add	r7, r7, #96
 551 01f2 BD46     		mov	sp, r7
 552 01f4 B0BD     		pop	{r4, r5, r7, pc}
 553              		.cfi_endproc
 554              	.LFE1:
 556 01f6 00BF     		.text
 557              	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 main.c
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:21     .rodata:00000000 $d
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:22     .rodata:00000000 .LC2
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:25     .rodata:0000001c .LC3
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:28     .rodata:00000044 .LC4
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:31     .rodata:00000070 .LC0
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:65     .rodata:000000f0 .LC1
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:75     .text.main:00000000 $t
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:80     .text.main:00000000 main
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:323    .text.classification_cCode:00000000 classification_cCode
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:314    .rodata:00000110 .LC5
C:\Users\justi\AppData\Local\Temp\cc1GEyYh.s:318    .text.classification_cCode:00000000 $t
                     .debug_frame:00000010 $d

UNDEFINED SYMBOLS
__aeabi_dmul
__aeabi_d2iz
memcpy
printf
classification
