                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer0
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _init_timer0_PARM_2
                                     12 	.globl _BREG_F7
                                     13 	.globl _BREG_F6
                                     14 	.globl _BREG_F5
                                     15 	.globl _BREG_F4
                                     16 	.globl _BREG_F3
                                     17 	.globl _BREG_F2
                                     18 	.globl _BREG_F1
                                     19 	.globl _BREG_F0
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _FL
                                     27 	.globl _P
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ET2
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _SCK
                                     90 	.globl _MISO
                                     91 	.globl _MOSI
                                     92 	.globl _SS
                                     93 	.globl _T2EX
                                     94 	.globl _T2
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _ALE
                                    120 	.globl _B
                                    121 	.globl _A
                                    122 	.globl _ACC
                                    123 	.globl _SPCR
                                    124 	.globl _PSW
                                    125 	.globl _TH2
                                    126 	.globl _TL2
                                    127 	.globl _RCAP2H
                                    128 	.globl _RCAP2L
                                    129 	.globl _T2MOD
                                    130 	.globl _T2CON
                                    131 	.globl _SADEN
                                    132 	.globl _IP
                                    133 	.globl _IPH
                                    134 	.globl _P3
                                    135 	.globl _SPSR
                                    136 	.globl _SADDR
                                    137 	.globl _IE
                                    138 	.globl _WDTCON
                                    139 	.globl _WDTRST
                                    140 	.globl _P2
                                    141 	.globl _SBUF
                                    142 	.globl _SCON
                                    143 	.globl _EECON
                                    144 	.globl _P1
                                    145 	.globl _CLKREG
                                    146 	.globl _AUXR
                                    147 	.globl _TH1
                                    148 	.globl _TH0
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TMOD
                                    152 	.globl _TCON
                                    153 	.globl _PCON
                                    154 	.globl _SPDR
                                    155 	.globl _DP1H
                                    156 	.globl _DP1L
                                    157 	.globl _DP0H
                                    158 	.globl _DPH
                                    159 	.globl _DP0L
                                    160 	.globl _DPL
                                    161 	.globl _SP
                                    162 	.globl _P0
                                    163 	.globl _prima
                                    164 	.globl _millisx
                                    165 	.globl _init_timer0
                                    166 	.globl _millis
                                    167 	.globl _it_timer0
                                    168 ;--------------------------------------------------------
                                    169 ; special function registers
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 _P0	=	0x0080
                           000081   174 _SP	=	0x0081
                           000082   175 _DPL	=	0x0082
                           000082   176 _DP0L	=	0x0082
                           000083   177 _DPH	=	0x0083
                           000083   178 _DP0H	=	0x0083
                           000084   179 _DP1L	=	0x0084
                           000085   180 _DP1H	=	0x0085
                           000086   181 _SPDR	=	0x0086
                           000087   182 _PCON	=	0x0087
                           000088   183 _TCON	=	0x0088
                           000089   184 _TMOD	=	0x0089
                           00008A   185 _TL0	=	0x008a
                           00008B   186 _TL1	=	0x008b
                           00008C   187 _TH0	=	0x008c
                           00008D   188 _TH1	=	0x008d
                           00008E   189 _AUXR	=	0x008e
                           00008F   190 _CLKREG	=	0x008f
                           000090   191 _P1	=	0x0090
                           000096   192 _EECON	=	0x0096
                           000098   193 _SCON	=	0x0098
                           000099   194 _SBUF	=	0x0099
                           0000A0   195 _P2	=	0x00a0
                           0000A6   196 _WDTRST	=	0x00a6
                           0000A7   197 _WDTCON	=	0x00a7
                           0000A8   198 _IE	=	0x00a8
                           0000A9   199 _SADDR	=	0x00a9
                           0000AA   200 _SPSR	=	0x00aa
                           0000B0   201 _P3	=	0x00b0
                           0000B7   202 _IPH	=	0x00b7
                           0000B8   203 _IP	=	0x00b8
                           0000B9   204 _SADEN	=	0x00b9
                           0000C8   205 _T2CON	=	0x00c8
                           0000C9   206 _T2MOD	=	0x00c9
                           0000CA   207 _RCAP2L	=	0x00ca
                           0000CB   208 _RCAP2H	=	0x00cb
                           0000CC   209 _TL2	=	0x00cc
                           0000CD   210 _TH2	=	0x00cd
                           0000D0   211 _PSW	=	0x00d0
                           0000D5   212 _SPCR	=	0x00d5
                           0000E0   213 _ACC	=	0x00e0
                           0000E0   214 _A	=	0x00e0
                           0000F0   215 _B	=	0x00f0
                           00008E   216 _ALE	=	0x008e
                                    217 ;--------------------------------------------------------
                                    218 ; special function bits
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0_0	=	0x0080
                           000081   223 _P0_1	=	0x0081
                           000082   224 _P0_2	=	0x0082
                           000083   225 _P0_3	=	0x0083
                           000084   226 _P0_4	=	0x0084
                           000085   227 _P0_5	=	0x0085
                           000086   228 _P0_6	=	0x0086
                           000087   229 _P0_7	=	0x0087
                           000088   230 _IT0	=	0x0088
                           000089   231 _IE0	=	0x0089
                           00008A   232 _IT1	=	0x008a
                           00008B   233 _IE1	=	0x008b
                           00008C   234 _TR0	=	0x008c
                           00008D   235 _TF0	=	0x008d
                           00008E   236 _TR1	=	0x008e
                           00008F   237 _TF1	=	0x008f
                           000090   238 _P1_0	=	0x0090
                           000091   239 _P1_1	=	0x0091
                           000092   240 _P1_2	=	0x0092
                           000093   241 _P1_3	=	0x0093
                           000094   242 _P1_4	=	0x0094
                           000095   243 _P1_5	=	0x0095
                           000096   244 _P1_6	=	0x0096
                           000097   245 _P1_7	=	0x0097
                           000090   246 _T2	=	0x0090
                           000091   247 _T2EX	=	0x0091
                           000094   248 _SS	=	0x0094
                           000095   249 _MOSI	=	0x0095
                           000096   250 _MISO	=	0x0096
                           000097   251 _SCK	=	0x0097
                           000098   252 _RI	=	0x0098
                           000099   253 _TI	=	0x0099
                           00009A   254 _RB8	=	0x009a
                           00009B   255 _TB8	=	0x009b
                           00009C   256 _REN	=	0x009c
                           00009D   257 _SM2	=	0x009d
                           00009E   258 _SM1	=	0x009e
                           00009F   259 _SM0	=	0x009f
                           0000A0   260 _P2_0	=	0x00a0
                           0000A1   261 _P2_1	=	0x00a1
                           0000A2   262 _P2_2	=	0x00a2
                           0000A3   263 _P2_3	=	0x00a3
                           0000A4   264 _P2_4	=	0x00a4
                           0000A5   265 _P2_5	=	0x00a5
                           0000A6   266 _P2_6	=	0x00a6
                           0000A7   267 _P2_7	=	0x00a7
                           0000A8   268 _EX0	=	0x00a8
                           0000A9   269 _ET0	=	0x00a9
                           0000AA   270 _EX1	=	0x00aa
                           0000AB   271 _ET1	=	0x00ab
                           0000AC   272 _ES	=	0x00ac
                           0000AD   273 _ET2	=	0x00ad
                           0000AF   274 _EA	=	0x00af
                           0000B0   275 _P3_0	=	0x00b0
                           0000B1   276 _P3_1	=	0x00b1
                           0000B2   277 _P3_2	=	0x00b2
                           0000B3   278 _P3_3	=	0x00b3
                           0000B4   279 _P3_4	=	0x00b4
                           0000B5   280 _P3_5	=	0x00b5
                           0000B6   281 _P3_6	=	0x00b6
                           0000B7   282 _P3_7	=	0x00b7
                           0000B0   283 _RXD	=	0x00b0
                           0000B1   284 _TXD	=	0x00b1
                           0000B2   285 _INT0	=	0x00b2
                           0000B3   286 _INT1	=	0x00b3
                           0000B4   287 _T0	=	0x00b4
                           0000B5   288 _T1	=	0x00b5
                           0000B6   289 _WR	=	0x00b6
                           0000B7   290 _RD	=	0x00b7
                           0000B8   291 _PX0	=	0x00b8
                           0000B9   292 _PT0	=	0x00b9
                           0000BA   293 _PX1	=	0x00ba
                           0000BB   294 _PT1	=	0x00bb
                           0000BC   295 _PS	=	0x00bc
                           0000BD   296 _PT2	=	0x00bd
                           0000C8   297 _T2CON_0	=	0x00c8
                           0000C9   298 _T2CON_1	=	0x00c9
                           0000CA   299 _T2CON_2	=	0x00ca
                           0000CB   300 _T2CON_3	=	0x00cb
                           0000CC   301 _T2CON_4	=	0x00cc
                           0000CD   302 _T2CON_5	=	0x00cd
                           0000CE   303 _T2CON_6	=	0x00ce
                           0000CF   304 _T2CON_7	=	0x00cf
                           0000C8   305 _CP_RL2	=	0x00c8
                           0000C9   306 _C_T2	=	0x00c9
                           0000CA   307 _TR2	=	0x00ca
                           0000CB   308 _EXEN2	=	0x00cb
                           0000CC   309 _TCLK	=	0x00cc
                           0000CD   310 _RCLK	=	0x00cd
                           0000CE   311 _EXF2	=	0x00ce
                           0000CF   312 _TF2	=	0x00cf
                           0000D0   313 _P	=	0x00d0
                           0000D1   314 _FL	=	0x00d1
                           0000D2   315 _OV	=	0x00d2
                           0000D3   316 _RS0	=	0x00d3
                           0000D4   317 _RS1	=	0x00d4
                           0000D5   318 _F0	=	0x00d5
                           0000D6   319 _AC	=	0x00d6
                           0000D7   320 _CY	=	0x00d7
                           0000F0   321 _BREG_F0	=	0x00f0
                           0000F1   322 _BREG_F1	=	0x00f1
                           0000F2   323 _BREG_F2	=	0x00f2
                           0000F3   324 _BREG_F3	=	0x00f3
                           0000F4   325 _BREG_F4	=	0x00f4
                           0000F5   326 _BREG_F5	=	0x00f5
                           0000F6   327 _BREG_F6	=	0x00f6
                           0000F7   328 _BREG_F7	=	0x00f7
                                    329 ;--------------------------------------------------------
                                    330 ; overlayable register banks
                                    331 ;--------------------------------------------------------
                                    332 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        333 	.ds 8
                                    334 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        335 	.ds 8
                                    336 ;--------------------------------------------------------
                                    337 ; overlayable bit register bank
                                    338 ;--------------------------------------------------------
                                    339 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        340 bits:
      000021                        341 	.ds 1
                           008000   342 	b0 = bits[0]
                           008100   343 	b1 = bits[1]
                           008200   344 	b2 = bits[2]
                           008300   345 	b3 = bits[3]
                           008400   346 	b4 = bits[4]
                           008500   347 	b5 = bits[5]
                           008600   348 	b6 = bits[6]
                           008700   349 	b7 = bits[7]
                                    350 ;--------------------------------------------------------
                                    351 ; internal ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area DSEG    (DATA)
      000056                        354 _millisx::
      000056                        355 	.ds 2
      000058                        356 _prima::
      000058                        357 	.ds 2
                                    358 ;--------------------------------------------------------
                                    359 ; overlayable items in internal ram
                                    360 ;--------------------------------------------------------
                                    361 	.area	OSEG    (OVR,DATA)
      00000E                        362 _init_timer0_PARM_2:
      00000E                        363 	.ds 1
                                    364 ;--------------------------------------------------------
                                    365 ; indirectly addressable internal ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area ISEG    (DATA)
                                    368 ;--------------------------------------------------------
                                    369 ; absolute internal ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area IABS    (ABS,DATA)
                                    372 	.area IABS    (ABS,DATA)
                                    373 ;--------------------------------------------------------
                                    374 ; bit data
                                    375 ;--------------------------------------------------------
                                    376 	.area BSEG    (BIT)
                                    377 ;--------------------------------------------------------
                                    378 ; paged external ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area PSEG    (PAG,XDATA)
                                    381 ;--------------------------------------------------------
                                    382 ; external ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area XSEG    (XDATA)
                                    385 ;--------------------------------------------------------
                                    386 ; absolute external ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area XABS    (ABS,XDATA)
                                    389 ;--------------------------------------------------------
                                    390 ; external initialized ram data
                                    391 ;--------------------------------------------------------
                                    392 	.area XISEG   (XDATA)
                                    393 	.area HOME    (CODE)
                                    394 	.area GSINIT0 (CODE)
                                    395 	.area GSINIT1 (CODE)
                                    396 	.area GSINIT2 (CODE)
                                    397 	.area GSINIT3 (CODE)
                                    398 	.area GSINIT4 (CODE)
                                    399 	.area GSINIT5 (CODE)
                                    400 	.area GSINIT  (CODE)
                                    401 	.area GSFINAL (CODE)
                                    402 	.area CSEG    (CODE)
                                    403 ;--------------------------------------------------------
                                    404 ; global & static initialisations
                                    405 ;--------------------------------------------------------
                                    406 	.area HOME    (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.area GSFINAL (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 ;--------------------------------------------------------
                                    411 ; Home
                                    412 ;--------------------------------------------------------
                                    413 	.area HOME    (CODE)
                                    414 	.area HOME    (CODE)
                                    415 ;--------------------------------------------------------
                                    416 ; code
                                    417 ;--------------------------------------------------------
                                    418 	.area CSEG    (CODE)
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'init_timer0'
                                    421 ;------------------------------------------------------------
                                    422 ;tl                        Allocated with name '_init_timer0_PARM_2'
                                    423 ;th                        Allocated to registers r7 
                                    424 ;------------------------------------------------------------
                                    425 ;	library/timer0.c:6: void init_timer0(unsigned char th, unsigned char tl) {
                                    426 ;	-----------------------------------------
                                    427 ;	 function init_timer0
                                    428 ;	-----------------------------------------
      001010                        429 _init_timer0:
                           000007   430 	ar7 = 0x07
                           000006   431 	ar6 = 0x06
                           000005   432 	ar5 = 0x05
                           000004   433 	ar4 = 0x04
                           000003   434 	ar3 = 0x03
                           000002   435 	ar2 = 0x02
                           000001   436 	ar1 = 0x01
                           000000   437 	ar0 = 0x00
      001010 AF 82            [24]  438 	mov	r7,dpl
                                    439 ;	library/timer0.c:7: TMOD &= 0xF0; /* Timer 0 mode 0 with software gate */
      001012 53 89 F0         [24]  440 	anl	_TMOD,#0xf0
                                    441 ;	library/timer0.c:12: TH0 = th; /* init values */
      001015 8F 8C            [24]  442 	mov	_TH0,r7
                                    443 ;	library/timer0.c:13: TL0 = tl;
      001017 85 0E 8A         [24]  444 	mov	_TL0,_init_timer0_PARM_2
                                    445 ;	library/timer0.c:17: ET0 = 1; /* enable timer0 interrupt */
                                    446 ;	assignBit
      00101A D2 A9            [12]  447 	setb	_ET0
                                    448 ;	library/timer0.c:18: EA = 1; /* enable interrupts */
                                    449 ;	assignBit
      00101C D2 AF            [12]  450 	setb	_EA
                                    451 ;	library/timer0.c:19: TR0 = 1; /* timer0 run */
                                    452 ;	assignBit
      00101E D2 8C            [12]  453 	setb	_TR0
                                    454 ;	library/timer0.c:20: }
      001020 22               [24]  455 	ret
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'millis'
                                    458 ;------------------------------------------------------------
                                    459 ;	library/timer0.c:22: unsigned int millis(void) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function millis
                                    462 ;	-----------------------------------------
      001021                        463 _millis:
                                    464 ;	library/timer0.c:23: return millisx;
      001021 85 56 82         [24]  465 	mov	dpl,_millisx
      001024 85 57 83         [24]  466 	mov	dph,(_millisx + 1)
                                    467 ;	library/timer0.c:24: }
      001027 22               [24]  468 	ret
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'it_timer0'
                                    471 ;------------------------------------------------------------
                                    472 ;	library/timer0.c:26: void it_timer0(void) __interrupt 1 __using 3 /* interrupt address is 0x000b */
                                    473 ;	-----------------------------------------
                                    474 ;	 function it_timer0
                                    475 ;	-----------------------------------------
      001028                        476 _it_timer0:
                           00001F   477 	ar7 = 0x1f
                           00001E   478 	ar6 = 0x1e
                           00001D   479 	ar5 = 0x1d
                           00001C   480 	ar4 = 0x1c
                           00001B   481 	ar3 = 0x1b
                           00001A   482 	ar2 = 0x1a
                           000019   483 	ar1 = 0x19
                           000018   484 	ar0 = 0x18
      001028 C0 21            [24]  485 	push	bits
      00102A C0 E0            [24]  486 	push	acc
      00102C C0 F0            [24]  487 	push	b
      00102E C0 82            [24]  488 	push	dpl
      001030 C0 83            [24]  489 	push	dph
      001032 C0 07            [24]  490 	push	(0+7)
      001034 C0 06            [24]  491 	push	(0+6)
      001036 C0 05            [24]  492 	push	(0+5)
      001038 C0 04            [24]  493 	push	(0+4)
      00103A C0 03            [24]  494 	push	(0+3)
      00103C C0 02            [24]  495 	push	(0+2)
      00103E C0 01            [24]  496 	push	(0+1)
      001040 C0 00            [24]  497 	push	(0+0)
      001042 C0 D0            [24]  498 	push	psw
      001044 75 D0 18         [24]  499 	mov	psw,#0x18
                                    500 ;	library/timer0.c:33: millisx++;
      001047 AE 56            [24]  501 	mov	r6,_millisx
      001049 AF 57            [24]  502 	mov	r7,(_millisx + 1)
      00104B 74 01            [12]  503 	mov	a,#0x01
      00104D 2E               [12]  504 	add	a,r6
      00104E F5 56            [12]  505 	mov	_millisx,a
      001050 E4               [12]  506 	clr	a
      001051 3F               [12]  507 	addc	a,r7
      001052 F5 57            [12]  508 	mov	(_millisx + 1),a
                                    509 ;	library/timer0.c:35: if ( millisx < prima ) {
      001054 C3               [12]  510 	clr	c
      001055 E5 56            [12]  511 	mov	a,_millisx
      001057 95 58            [12]  512 	subb	a,_prima
      001059 E5 57            [12]  513 	mov	a,(_millisx + 1)
      00105B 95 59            [12]  514 	subb	a,(_prima + 1)
      00105D 50 06            [24]  515 	jnc	00102$
                                    516 ;	library/timer0.c:36: prima = millisx;
      00105F 85 56 58         [24]  517 	mov	_prima,_millisx
      001062 85 57 59         [24]  518 	mov	(_prima + 1),(_millisx + 1)
      001065                        519 00102$:
                                    520 ;	library/timer0.c:38: if (millisx % ONE_SECOND_DIVISOR == 0 && millisx > prima) {
      001065 75 0E 97         [24]  521 	mov	__moduint_PARM_2,#0x97
      001068 75 0F 01         [24]  522 	mov	(__moduint_PARM_2 + 1),#0x01
      00106B 85 56 82         [24]  523 	mov	dpl,_millisx
      00106E 85 57 83         [24]  524 	mov	dph,(_millisx + 1)
      001071 75 D0 00         [24]  525 	mov	psw,#0x00
      001074 12 11 BC         [24]  526 	lcall	__moduint
      001077 75 D0 18         [24]  527 	mov	psw,#0x18
      00107A E5 82            [12]  528 	mov	a,dpl
      00107C 85 83 F0         [24]  529 	mov	b,dph
      00107F 45 F0            [12]  530 	orl	a,b
      001081 70 13            [24]  531 	jnz	00106$
      001083 C3               [12]  532 	clr	c
      001084 E5 58            [12]  533 	mov	a,_prima
      001086 95 56            [12]  534 	subb	a,_millisx
      001088 E5 59            [12]  535 	mov	a,(_prima + 1)
      00108A 95 57            [12]  536 	subb	a,(_millisx + 1)
      00108C 50 08            [24]  537 	jnc	00106$
                                    538 ;	library/timer0.c:39: prima = millisx;
      00108E 85 56 58         [24]  539 	mov	_prima,_millisx
      001091 85 57 59         [24]  540 	mov	(_prima + 1),(_millisx + 1)
                                    541 ;	library/timer0.c:40: P2_0 = !P2_0;
      001094 B2 A0            [12]  542 	cpl	_P2_0
      001096                        543 00106$:
                                    544 ;	library/timer0.c:43: }
      001096 D0 D0            [24]  545 	pop	psw
      001098 D0 00            [24]  546 	pop	(0+0)
      00109A D0 01            [24]  547 	pop	(0+1)
      00109C D0 02            [24]  548 	pop	(0+2)
      00109E D0 03            [24]  549 	pop	(0+3)
      0010A0 D0 04            [24]  550 	pop	(0+4)
      0010A2 D0 05            [24]  551 	pop	(0+5)
      0010A4 D0 06            [24]  552 	pop	(0+6)
      0010A6 D0 07            [24]  553 	pop	(0+7)
      0010A8 D0 83            [24]  554 	pop	dph
      0010AA D0 82            [24]  555 	pop	dpl
      0010AC D0 F0            [24]  556 	pop	b
      0010AE D0 E0            [24]  557 	pop	acc
      0010B0 D0 21            [24]  558 	pop	bits
      0010B2 32               [24]  559 	reti
                                    560 	.area CSEG    (CODE)
                                    561 	.area CONST   (CODE)
                                    562 	.area XINIT   (CODE)
                                    563 	.area CABS    (ABS,CODE)
