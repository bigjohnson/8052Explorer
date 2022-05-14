                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module 8052Explorer
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _codice
                                     12 	.globl _acTestString
                                     13 	.globl _main
                                     14 	.globl _HELP
                                     15 	.globl _p
                                     16 	.globl _start
                                     17 	.globl _reset
                                     18 	.globl _hexCODE
                                     19 	.globl _dumpRAM
                                     20 	.globl _dumpCODE
                                     21 	.globl _hexEEPROM
                                     22 	.globl _dumpEEPROM
                                     23 	.globl _felix
                                     24 	.globl _watchdogRESET
                                     25 	.globl _printf_tiny
                                     26 	.globl _putchar
                                     27 	.globl _getchar
                                     28 	.globl _puts
                                     29 	.globl _init_timer0
                                     30 	.globl _ser_byte_avail
                                     31 	.globl _init_ser
                                     32 	.globl _writeEeprom
                                     33 	.globl _readEeprom
                                     34 	.globl _BREG_F7
                                     35 	.globl _BREG_F6
                                     36 	.globl _BREG_F5
                                     37 	.globl _BREG_F4
                                     38 	.globl _BREG_F3
                                     39 	.globl _BREG_F2
                                     40 	.globl _BREG_F1
                                     41 	.globl _BREG_F0
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _FL
                                     49 	.globl _P
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _PS
                                     68 	.globl _PT1
                                     69 	.globl _PX1
                                     70 	.globl _PT0
                                     71 	.globl _PX0
                                     72 	.globl _RD
                                     73 	.globl _WR
                                     74 	.globl _T1
                                     75 	.globl _T0
                                     76 	.globl _INT1
                                     77 	.globl _INT0
                                     78 	.globl _TXD
                                     79 	.globl _RXD
                                     80 	.globl _P3_7
                                     81 	.globl _P3_6
                                     82 	.globl _P3_5
                                     83 	.globl _P3_4
                                     84 	.globl _P3_3
                                     85 	.globl _P3_2
                                     86 	.globl _P3_1
                                     87 	.globl _P3_0
                                     88 	.globl _EA
                                     89 	.globl _ET2
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _SCK
                                    112 	.globl _MISO
                                    113 	.globl _MOSI
                                    114 	.globl _SS
                                    115 	.globl _T2EX
                                    116 	.globl _T2
                                    117 	.globl _P1_7
                                    118 	.globl _P1_6
                                    119 	.globl _P1_5
                                    120 	.globl _P1_4
                                    121 	.globl _P1_3
                                    122 	.globl _P1_2
                                    123 	.globl _P1_1
                                    124 	.globl _P1_0
                                    125 	.globl _TF1
                                    126 	.globl _TR1
                                    127 	.globl _TF0
                                    128 	.globl _TR0
                                    129 	.globl _IE1
                                    130 	.globl _IT1
                                    131 	.globl _IE0
                                    132 	.globl _IT0
                                    133 	.globl _P0_7
                                    134 	.globl _P0_6
                                    135 	.globl _P0_5
                                    136 	.globl _P0_4
                                    137 	.globl _P0_3
                                    138 	.globl _P0_2
                                    139 	.globl _P0_1
                                    140 	.globl _P0_0
                                    141 	.globl _ALE
                                    142 	.globl _B
                                    143 	.globl _A
                                    144 	.globl _ACC
                                    145 	.globl _SPCR
                                    146 	.globl _PSW
                                    147 	.globl _TH2
                                    148 	.globl _TL2
                                    149 	.globl _RCAP2H
                                    150 	.globl _RCAP2L
                                    151 	.globl _T2MOD
                                    152 	.globl _T2CON
                                    153 	.globl _SADEN
                                    154 	.globl _IP
                                    155 	.globl _IPH
                                    156 	.globl _P3
                                    157 	.globl _SPSR
                                    158 	.globl _SADDR
                                    159 	.globl _IE
                                    160 	.globl _WDTCON
                                    161 	.globl _WDTRST
                                    162 	.globl _P2
                                    163 	.globl _SBUF
                                    164 	.globl _SCON
                                    165 	.globl _EECON
                                    166 	.globl _P1
                                    167 	.globl _CLKREG
                                    168 	.globl _AUXR
                                    169 	.globl _TH1
                                    170 	.globl _TH0
                                    171 	.globl _TL1
                                    172 	.globl _TL0
                                    173 	.globl _TMOD
                                    174 	.globl _TCON
                                    175 	.globl _PCON
                                    176 	.globl _SPDR
                                    177 	.globl _DP1H
                                    178 	.globl _DP1L
                                    179 	.globl _DP0H
                                    180 	.globl _DPH
                                    181 	.globl _DP0L
                                    182 	.globl _DPL
                                    183 	.globl _SP
                                    184 	.globl _P0
                                    185 	.globl _dati
                                    186 ;--------------------------------------------------------
                                    187 ; special function registers
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           000080   191 _P0	=	0x0080
                           000081   192 _SP	=	0x0081
                           000082   193 _DPL	=	0x0082
                           000082   194 _DP0L	=	0x0082
                           000083   195 _DPH	=	0x0083
                           000083   196 _DP0H	=	0x0083
                           000084   197 _DP1L	=	0x0084
                           000085   198 _DP1H	=	0x0085
                           000086   199 _SPDR	=	0x0086
                           000087   200 _PCON	=	0x0087
                           000088   201 _TCON	=	0x0088
                           000089   202 _TMOD	=	0x0089
                           00008A   203 _TL0	=	0x008a
                           00008B   204 _TL1	=	0x008b
                           00008C   205 _TH0	=	0x008c
                           00008D   206 _TH1	=	0x008d
                           00008E   207 _AUXR	=	0x008e
                           00008F   208 _CLKREG	=	0x008f
                           000090   209 _P1	=	0x0090
                           000096   210 _EECON	=	0x0096
                           000098   211 _SCON	=	0x0098
                           000099   212 _SBUF	=	0x0099
                           0000A0   213 _P2	=	0x00a0
                           0000A6   214 _WDTRST	=	0x00a6
                           0000A7   215 _WDTCON	=	0x00a7
                           0000A8   216 _IE	=	0x00a8
                           0000A9   217 _SADDR	=	0x00a9
                           0000AA   218 _SPSR	=	0x00aa
                           0000B0   219 _P3	=	0x00b0
                           0000B7   220 _IPH	=	0x00b7
                           0000B8   221 _IP	=	0x00b8
                           0000B9   222 _SADEN	=	0x00b9
                           0000C8   223 _T2CON	=	0x00c8
                           0000C9   224 _T2MOD	=	0x00c9
                           0000CA   225 _RCAP2L	=	0x00ca
                           0000CB   226 _RCAP2H	=	0x00cb
                           0000CC   227 _TL2	=	0x00cc
                           0000CD   228 _TH2	=	0x00cd
                           0000D0   229 _PSW	=	0x00d0
                           0000D5   230 _SPCR	=	0x00d5
                           0000E0   231 _ACC	=	0x00e0
                           0000E0   232 _A	=	0x00e0
                           0000F0   233 _B	=	0x00f0
                           00008E   234 _ALE	=	0x008e
                                    235 ;--------------------------------------------------------
                                    236 ; special function bits
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           000080   240 _P0_0	=	0x0080
                           000081   241 _P0_1	=	0x0081
                           000082   242 _P0_2	=	0x0082
                           000083   243 _P0_3	=	0x0083
                           000084   244 _P0_4	=	0x0084
                           000085   245 _P0_5	=	0x0085
                           000086   246 _P0_6	=	0x0086
                           000087   247 _P0_7	=	0x0087
                           000088   248 _IT0	=	0x0088
                           000089   249 _IE0	=	0x0089
                           00008A   250 _IT1	=	0x008a
                           00008B   251 _IE1	=	0x008b
                           00008C   252 _TR0	=	0x008c
                           00008D   253 _TF0	=	0x008d
                           00008E   254 _TR1	=	0x008e
                           00008F   255 _TF1	=	0x008f
                           000090   256 _P1_0	=	0x0090
                           000091   257 _P1_1	=	0x0091
                           000092   258 _P1_2	=	0x0092
                           000093   259 _P1_3	=	0x0093
                           000094   260 _P1_4	=	0x0094
                           000095   261 _P1_5	=	0x0095
                           000096   262 _P1_6	=	0x0096
                           000097   263 _P1_7	=	0x0097
                           000090   264 _T2	=	0x0090
                           000091   265 _T2EX	=	0x0091
                           000094   266 _SS	=	0x0094
                           000095   267 _MOSI	=	0x0095
                           000096   268 _MISO	=	0x0096
                           000097   269 _SCK	=	0x0097
                           000098   270 _RI	=	0x0098
                           000099   271 _TI	=	0x0099
                           00009A   272 _RB8	=	0x009a
                           00009B   273 _TB8	=	0x009b
                           00009C   274 _REN	=	0x009c
                           00009D   275 _SM2	=	0x009d
                           00009E   276 _SM1	=	0x009e
                           00009F   277 _SM0	=	0x009f
                           0000A0   278 _P2_0	=	0x00a0
                           0000A1   279 _P2_1	=	0x00a1
                           0000A2   280 _P2_2	=	0x00a2
                           0000A3   281 _P2_3	=	0x00a3
                           0000A4   282 _P2_4	=	0x00a4
                           0000A5   283 _P2_5	=	0x00a5
                           0000A6   284 _P2_6	=	0x00a6
                           0000A7   285 _P2_7	=	0x00a7
                           0000A8   286 _EX0	=	0x00a8
                           0000A9   287 _ET0	=	0x00a9
                           0000AA   288 _EX1	=	0x00aa
                           0000AB   289 _ET1	=	0x00ab
                           0000AC   290 _ES	=	0x00ac
                           0000AD   291 _ET2	=	0x00ad
                           0000AF   292 _EA	=	0x00af
                           0000B0   293 _P3_0	=	0x00b0
                           0000B1   294 _P3_1	=	0x00b1
                           0000B2   295 _P3_2	=	0x00b2
                           0000B3   296 _P3_3	=	0x00b3
                           0000B4   297 _P3_4	=	0x00b4
                           0000B5   298 _P3_5	=	0x00b5
                           0000B6   299 _P3_6	=	0x00b6
                           0000B7   300 _P3_7	=	0x00b7
                           0000B0   301 _RXD	=	0x00b0
                           0000B1   302 _TXD	=	0x00b1
                           0000B2   303 _INT0	=	0x00b2
                           0000B3   304 _INT1	=	0x00b3
                           0000B4   305 _T0	=	0x00b4
                           0000B5   306 _T1	=	0x00b5
                           0000B6   307 _WR	=	0x00b6
                           0000B7   308 _RD	=	0x00b7
                           0000B8   309 _PX0	=	0x00b8
                           0000B9   310 _PT0	=	0x00b9
                           0000BA   311 _PX1	=	0x00ba
                           0000BB   312 _PT1	=	0x00bb
                           0000BC   313 _PS	=	0x00bc
                           0000BD   314 _PT2	=	0x00bd
                           0000C8   315 _T2CON_0	=	0x00c8
                           0000C9   316 _T2CON_1	=	0x00c9
                           0000CA   317 _T2CON_2	=	0x00ca
                           0000CB   318 _T2CON_3	=	0x00cb
                           0000CC   319 _T2CON_4	=	0x00cc
                           0000CD   320 _T2CON_5	=	0x00cd
                           0000CE   321 _T2CON_6	=	0x00ce
                           0000CF   322 _T2CON_7	=	0x00cf
                           0000C8   323 _CP_RL2	=	0x00c8
                           0000C9   324 _C_T2	=	0x00c9
                           0000CA   325 _TR2	=	0x00ca
                           0000CB   326 _EXEN2	=	0x00cb
                           0000CC   327 _TCLK	=	0x00cc
                           0000CD   328 _RCLK	=	0x00cd
                           0000CE   329 _EXF2	=	0x00ce
                           0000CF   330 _TF2	=	0x00cf
                           0000D0   331 _P	=	0x00d0
                           0000D1   332 _FL	=	0x00d1
                           0000D2   333 _OV	=	0x00d2
                           0000D3   334 _RS0	=	0x00d3
                           0000D4   335 _RS1	=	0x00d4
                           0000D5   336 _F0	=	0x00d5
                           0000D6   337 _AC	=	0x00d6
                           0000D7   338 _CY	=	0x00d7
                           0000F0   339 _BREG_F0	=	0x00f0
                           0000F1   340 _BREG_F1	=	0x00f1
                           0000F2   341 _BREG_F2	=	0x00f2
                           0000F3   342 _BREG_F3	=	0x00f3
                           0000F4   343 _BREG_F4	=	0x00f4
                           0000F5   344 _BREG_F5	=	0x00f5
                           0000F6   345 _BREG_F6	=	0x00f6
                           0000F7   346 _BREG_F7	=	0x00f7
                                    347 ;--------------------------------------------------------
                                    348 ; overlayable register banks
                                    349 ;--------------------------------------------------------
                                    350 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        351 	.ds 8
                                    352 ;--------------------------------------------------------
                                    353 ; internal ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area DSEG    (DATA)
                           000000   356 _dati	=	0x0000
      000022                        357 _dumpCODE_indirizzo_131072_58:
      000022                        358 	.ds 2
      000024                        359 _dumpCODE_posto_262144_64:
      000024                        360 	.ds 2
      000026                        361 _dumpCODE_posto_262144_67:
      000026                        362 	.ds 1
      000027                        363 _dumpRAM_indirizzo_131072_72:
      000027                        364 	.ds 2
      000029                        365 _dumpRAM_posto_262144_78:
      000029                        366 	.ds 2
      00002B                        367 _dumpRAM_posto_262144_81:
      00002B                        368 	.ds 1
      00002C                        369 _hexCODE_puntatore_65536_85:
      00002C                        370 	.ds 3
      00002F                        371 _hexCODE_checksum_65537_86:
      00002F                        372 	.ds 2
      000031                        373 _p_pin_65537_110:
      000031                        374 	.ds 1
                                    375 ;--------------------------------------------------------
                                    376 ; overlayable items in internal ram
                                    377 ;--------------------------------------------------------
                                    378 ;--------------------------------------------------------
                                    379 ; Stack segment in internal ram
                                    380 ;--------------------------------------------------------
                                    381 	.area	SSEG
      00005A                        382 __start__stack:
      00005A                        383 	.ds	1
                                    384 
                                    385 ;--------------------------------------------------------
                                    386 ; indirectly addressable internal ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area ISEG    (DATA)
                                    389 ;--------------------------------------------------------
                                    390 ; absolute internal ram data
                                    391 ;--------------------------------------------------------
                                    392 	.area IABS    (ABS,DATA)
                                    393 	.area IABS    (ABS,DATA)
                                    394 ;--------------------------------------------------------
                                    395 ; bit data
                                    396 ;--------------------------------------------------------
                                    397 	.area BSEG    (BIT)
      000000                        398 _main_sloc0_1_0:
      000000                        399 	.ds 1
                                    400 ;--------------------------------------------------------
                                    401 ; paged external ram data
                                    402 ;--------------------------------------------------------
                                    403 	.area PSEG    (PAG,XDATA)
                                    404 ;--------------------------------------------------------
                                    405 ; external ram data
                                    406 ;--------------------------------------------------------
                                    407 	.area XSEG    (XDATA)
                                    408 ;--------------------------------------------------------
                                    409 ; absolute external ram data
                                    410 ;--------------------------------------------------------
                                    411 	.area XABS    (ABS,XDATA)
                                    412 ;--------------------------------------------------------
                                    413 ; external initialized ram data
                                    414 ;--------------------------------------------------------
                                    415 	.area XISEG   (XDATA)
                                    416 	.area HOME    (CODE)
                                    417 	.area GSINIT0 (CODE)
                                    418 	.area GSINIT1 (CODE)
                                    419 	.area GSINIT2 (CODE)
                                    420 	.area GSINIT3 (CODE)
                                    421 	.area GSINIT4 (CODE)
                                    422 	.area GSINIT5 (CODE)
                                    423 	.area GSINIT  (CODE)
                                    424 	.area GSFINAL (CODE)
                                    425 	.area CSEG    (CODE)
                                    426 ;--------------------------------------------------------
                                    427 ; interrupt vector
                                    428 ;--------------------------------------------------------
                                    429 	.area HOME    (CODE)
      000000                        430 __interrupt_vect:
      000000 02 00 29         [24]  431 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  432 	reti
      000004                        433 	.ds	7
      00000B 02 10 8F         [24]  434 	ljmp	_it_timer0
      00000E                        435 	.ds	5
      000013 32               [24]  436 	reti
      000014                        437 	.ds	7
      00001B 32               [24]  438 	reti
      00001C                        439 	.ds	7
      000023 02 0F B4         [24]  440 	ljmp	_SerInt
                                    441 ;--------------------------------------------------------
                                    442 ; global & static initialisations
                                    443 ;--------------------------------------------------------
                                    444 	.area HOME    (CODE)
                                    445 	.area GSINIT  (CODE)
                                    446 	.area GSFINAL (CODE)
                                    447 	.area GSINIT  (CODE)
                                    448 	.globl __sdcc_gsinit_startup
                                    449 	.globl __sdcc_program_startup
                                    450 	.globl __start__stack
                                    451 	.globl __mcs51_genXINIT
                                    452 	.globl __mcs51_genXRAMCLEAR
                                    453 	.globl __mcs51_genRAMCLEAR
                                    454 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  455 	ljmp	__sdcc_program_startup
                                    456 ;--------------------------------------------------------
                                    457 ; Home
                                    458 ;--------------------------------------------------------
                                    459 	.area HOME    (CODE)
                                    460 	.area HOME    (CODE)
      000026                        461 __sdcc_program_startup:
      000026 02 0E 0B         [24]  462 	ljmp	_main
                                    463 ;	return from main will return to caller
                                    464 ;--------------------------------------------------------
                                    465 ; code
                                    466 ;--------------------------------------------------------
                                    467 	.area CSEG    (CODE)
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'watchdogRESET'
                                    470 ;------------------------------------------------------------
                                    471 ;	8052Explorer.c:120: void watchdogRESET ( void ) {
                                    472 ;	-----------------------------------------
                                    473 ;	 function watchdogRESET
                                    474 ;	-----------------------------------------
      000085                        475 _watchdogRESET:
                           000007   476 	ar7 = 0x07
                           000006   477 	ar6 = 0x06
                           000005   478 	ar5 = 0x05
                           000004   479 	ar4 = 0x04
                           000003   480 	ar3 = 0x03
                           000002   481 	ar2 = 0x02
                           000001   482 	ar1 = 0x01
                           000000   483 	ar0 = 0x00
                                    484 ;	8052Explorer.c:121: WDTRST = 0x1E;
      000085 75 A6 1E         [24]  485 	mov	_WDTRST,#0x1e
                                    486 ;	8052Explorer.c:122: WDTRST = 0xE1;
      000088 75 A6 E1         [24]  487 	mov	_WDTRST,#0xe1
                                    488 ;	8052Explorer.c:123: }
      00008B 22               [24]  489 	ret
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'felix'
                                    492 ;------------------------------------------------------------
                                    493 ;	8052Explorer.c:126: void felix (void) {
                                    494 ;	-----------------------------------------
                                    495 ;	 function felix
                                    496 ;	-----------------------------------------
      00008C                        497 _felix:
                                    498 ;	8052Explorer.c:127: putchar('\r');
      00008C 90 00 0D         [24]  499 	mov	dptr,#0x000d
      00008F 12 10 5B         [24]  500 	lcall	_putchar
                                    501 ;	8052Explorer.c:160: puts("                         '~~~*==Y*f~~~ ");
      000092 90 12 F7         [24]  502 	mov	dptr,#___str_64
      000095 75 F0 80         [24]  503 	mov	b,#0x80
      000098 12 12 70         [24]  504 	lcall	_puts
                                    505 ;	8052Explorer.c:161: putchar('\r');
      00009B 90 00 0D         [24]  506 	mov	dptr,#0x000d
                                    507 ;	8052Explorer.c:162: }
      00009E 02 10 5B         [24]  508 	ljmp	_putchar
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'dumpEEPROM'
                                    511 ;------------------------------------------------------------
                                    512 ;eepromchar                Allocated to registers r7 
                                    513 ;indirizzo                 Allocated to registers r6 r7 
                                    514 ;posto                     Allocated to registers r5 
                                    515 ;lettura                   Allocated to registers r4 
                                    516 ;lettura                   Allocated to registers r4 
                                    517 ;posto                     Allocated to registers r5 
                                    518 ;------------------------------------------------------------
                                    519 ;	8052Explorer.c:165: void dumpEEPROM () {
                                    520 ;	-----------------------------------------
                                    521 ;	 function dumpEEPROM
                                    522 ;	-----------------------------------------
      0000A1                        523 _dumpEEPROM:
                                    524 ;	8052Explorer.c:166: puts("Dumping eeprom content and changing first character:");
      0000A1 90 1A 48         [24]  525 	mov	dptr,#___str_65
      0000A4 75 F0 80         [24]  526 	mov	b,#0x80
      0000A7 12 12 70         [24]  527 	lcall	_puts
                                    528 ;	8052Explorer.c:168: unsigned char eepromchar = readEeprom(0);
      0000AA 90 00 00         [24]  529 	mov	dptr,#0x0000
      0000AD 12 0F 28         [24]  530 	lcall	_readEeprom
      0000B0 E5 82            [12]  531 	mov	a,dpl
                                    532 ;	8052Explorer.c:169: eepromchar++;
      0000B2 04               [12]  533 	inc	a
      0000B3 FF               [12]  534 	mov	r7,a
                                    535 ;	8052Explorer.c:170: if (0x5B == eepromchar) {
      0000B4 BF 5B 02         [24]  536 	cjne	r7,#0x5b,00102$
                                    537 ;	8052Explorer.c:171: eepromchar = 0x41;
      0000B7 7F 41            [12]  538 	mov	r7,#0x41
      0000B9                        539 00102$:
                                    540 ;	8052Explorer.c:173: writeEeprom (eepromchar, 0);
      0000B9 E4               [12]  541 	clr	a
      0000BA F5 0B            [12]  542 	mov	_writeEeprom_PARM_2,a
      0000BC F5 0C            [12]  543 	mov	(_writeEeprom_PARM_2 + 1),a
      0000BE 8F 82            [24]  544 	mov	dpl,r7
      0000C0 12 0F 57         [24]  545 	lcall	_writeEeprom
                                    546 ;	8052Explorer.c:175: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
      0000C3 7E 00            [12]  547 	mov	r6,#0x00
      0000C5 7F 00            [12]  548 	mov	r7,#0x00
      0000C7                        549 00127$:
      0000C7 8E 04            [24]  550 	mov	ar4,r6
      0000C9 8F 05            [24]  551 	mov	ar5,r7
      0000CB C3               [12]  552 	clr	c
      0000CC 74 FF            [12]  553 	mov	a,#0xff
      0000CE 9C               [12]  554 	subb	a,r4
      0000CF 74 07            [12]  555 	mov	a,#0x07
      0000D1 9D               [12]  556 	subb	a,r5
      0000D2 50 03            [24]  557 	jnc	00195$
      0000D4 02 02 62         [24]  558 	ljmp	00119$
      0000D7                        559 00195$:
                                    560 ;	8052Explorer.c:176: if (indirizzo < 0x10) {
      0000D7 C3               [12]  561 	clr	c
      0000D8 EC               [12]  562 	mov	a,r4
      0000D9 94 10            [12]  563 	subb	a,#0x10
      0000DB ED               [12]  564 	mov	a,r5
      0000DC 94 00            [12]  565 	subb	a,#0x00
      0000DE 50 1F            [24]  566 	jnc	00110$
                                    567 ;	8052Explorer.c:177: printf_tiny("000%x  ", indirizzo);
      0000E0 C0 07            [24]  568 	push	ar7
      0000E2 C0 06            [24]  569 	push	ar6
      0000E4 C0 06            [24]  570 	push	ar6
      0000E6 C0 07            [24]  571 	push	ar7
      0000E8 74 7D            [12]  572 	mov	a,#___str_66
      0000EA C0 E0            [24]  573 	push	acc
      0000EC 74 1A            [12]  574 	mov	a,#(___str_66 >> 8)
      0000EE C0 E0            [24]  575 	push	acc
      0000F0 12 11 1A         [24]  576 	lcall	_printf_tiny
      0000F3 E5 81            [12]  577 	mov	a,sp
      0000F5 24 FC            [12]  578 	add	a,#0xfc
      0000F7 F5 81            [12]  579 	mov	sp,a
      0000F9 D0 06            [24]  580 	pop	ar6
      0000FB D0 07            [24]  581 	pop	ar7
      0000FD 80 65            [24]  582 	sjmp	00138$
      0000FF                        583 00110$:
                                    584 ;	8052Explorer.c:178: } else if (indirizzo < 0x100) {
      0000FF 74 FF            [12]  585 	mov	a,#0x100 - 0x01
      000101 2D               [12]  586 	add	a,r5
      000102 40 1F            [24]  587 	jc	00107$
                                    588 ;	8052Explorer.c:179: printf_tiny("00%x  ", indirizzo);
      000104 C0 07            [24]  589 	push	ar7
      000106 C0 06            [24]  590 	push	ar6
      000108 C0 06            [24]  591 	push	ar6
      00010A C0 07            [24]  592 	push	ar7
      00010C 74 85            [12]  593 	mov	a,#___str_67
      00010E C0 E0            [24]  594 	push	acc
      000110 74 1A            [12]  595 	mov	a,#(___str_67 >> 8)
      000112 C0 E0            [24]  596 	push	acc
      000114 12 11 1A         [24]  597 	lcall	_printf_tiny
      000117 E5 81            [12]  598 	mov	a,sp
      000119 24 FC            [12]  599 	add	a,#0xfc
      00011B F5 81            [12]  600 	mov	sp,a
      00011D D0 06            [24]  601 	pop	ar6
      00011F D0 07            [24]  602 	pop	ar7
      000121 80 41            [24]  603 	sjmp	00138$
      000123                        604 00107$:
                                    605 ;	8052Explorer.c:180: } else if (indirizzo < 0x1000) {
      000123 74 F0            [12]  606 	mov	a,#0x100 - 0x10
      000125 2D               [12]  607 	add	a,r5
      000126 40 1F            [24]  608 	jc	00104$
                                    609 ;	8052Explorer.c:181: printf_tiny("0%x  ", indirizzo);
      000128 C0 07            [24]  610 	push	ar7
      00012A C0 06            [24]  611 	push	ar6
      00012C C0 06            [24]  612 	push	ar6
      00012E C0 07            [24]  613 	push	ar7
      000130 74 8C            [12]  614 	mov	a,#___str_68
      000132 C0 E0            [24]  615 	push	acc
      000134 74 1A            [12]  616 	mov	a,#(___str_68 >> 8)
      000136 C0 E0            [24]  617 	push	acc
      000138 12 11 1A         [24]  618 	lcall	_printf_tiny
      00013B E5 81            [12]  619 	mov	a,sp
      00013D 24 FC            [12]  620 	add	a,#0xfc
      00013F F5 81            [12]  621 	mov	sp,a
      000141 D0 06            [24]  622 	pop	ar6
      000143 D0 07            [24]  623 	pop	ar7
      000145 80 1D            [24]  624 	sjmp	00138$
      000147                        625 00104$:
                                    626 ;	8052Explorer.c:183: printf_tiny("%x  ", indirizzo);
      000147 C0 07            [24]  627 	push	ar7
      000149 C0 06            [24]  628 	push	ar6
      00014B C0 06            [24]  629 	push	ar6
      00014D C0 07            [24]  630 	push	ar7
      00014F 74 92            [12]  631 	mov	a,#___str_69
      000151 C0 E0            [24]  632 	push	acc
      000153 74 1A            [12]  633 	mov	a,#(___str_69 >> 8)
      000155 C0 E0            [24]  634 	push	acc
      000157 12 11 1A         [24]  635 	lcall	_printf_tiny
      00015A E5 81            [12]  636 	mov	a,sp
      00015C 24 FC            [12]  637 	add	a,#0xfc
      00015E F5 81            [12]  638 	mov	sp,a
      000160 D0 06            [24]  639 	pop	ar6
      000162 D0 07            [24]  640 	pop	ar7
                                    641 ;	8052Explorer.c:185: for (unsigned char posto = 0; posto < 16; posto++) {
      000164                        642 00138$:
      000164 7D 00            [12]  643 	mov	r5,#0x00
      000166                        644 00121$:
      000166 BD 10 00         [24]  645 	cjne	r5,#0x10,00199$
      000169                        646 00199$:
      000169 50 64            [24]  647 	jnc	00114$
                                    648 ;	8052Explorer.c:186: unsigned char lettura = readEeprom(indirizzo + (unsigned int)posto);
      00016B 8D 03            [24]  649 	mov	ar3,r5
      00016D 7C 00            [12]  650 	mov	r4,#0x00
      00016F 8E 01            [24]  651 	mov	ar1,r6
      000171 8F 02            [24]  652 	mov	ar2,r7
      000173 EB               [12]  653 	mov	a,r3
      000174 29               [12]  654 	add	a,r1
      000175 FB               [12]  655 	mov	r3,a
      000176 EC               [12]  656 	mov	a,r4
      000177 3A               [12]  657 	addc	a,r2
      000178 FC               [12]  658 	mov	r4,a
      000179 8B 82            [24]  659 	mov	dpl,r3
      00017B 8C 83            [24]  660 	mov	dph,r4
      00017D C0 07            [24]  661 	push	ar7
      00017F C0 06            [24]  662 	push	ar6
      000181 C0 05            [24]  663 	push	ar5
      000183 12 0F 28         [24]  664 	lcall	_readEeprom
      000186 AC 82            [24]  665 	mov	r4,dpl
      000188 D0 05            [24]  666 	pop	ar5
      00018A D0 06            [24]  667 	pop	ar6
      00018C D0 07            [24]  668 	pop	ar7
                                    669 ;	8052Explorer.c:187: if ( lettura < 0x10 ) {
      00018E BC 10 00         [24]  670 	cjne	r4,#0x10,00201$
      000191                        671 00201$:
      000191 50 16            [24]  672 	jnc	00113$
                                    673 ;	8052Explorer.c:188: putchar('0');
      000193 90 00 30         [24]  674 	mov	dptr,#0x0030
      000196 C0 07            [24]  675 	push	ar7
      000198 C0 06            [24]  676 	push	ar6
      00019A C0 05            [24]  677 	push	ar5
      00019C C0 04            [24]  678 	push	ar4
      00019E 12 10 5B         [24]  679 	lcall	_putchar
      0001A1 D0 04            [24]  680 	pop	ar4
      0001A3 D0 05            [24]  681 	pop	ar5
      0001A5 D0 06            [24]  682 	pop	ar6
      0001A7 D0 07            [24]  683 	pop	ar7
      0001A9                        684 00113$:
                                    685 ;	8052Explorer.c:190: printf_tiny("%x ", lettura);
      0001A9 7B 00            [12]  686 	mov	r3,#0x00
      0001AB C0 07            [24]  687 	push	ar7
      0001AD C0 06            [24]  688 	push	ar6
      0001AF C0 05            [24]  689 	push	ar5
      0001B1 C0 04            [24]  690 	push	ar4
      0001B3 C0 03            [24]  691 	push	ar3
      0001B5 74 97            [12]  692 	mov	a,#___str_70
      0001B7 C0 E0            [24]  693 	push	acc
      0001B9 74 1A            [12]  694 	mov	a,#(___str_70 >> 8)
      0001BB C0 E0            [24]  695 	push	acc
      0001BD 12 11 1A         [24]  696 	lcall	_printf_tiny
      0001C0 E5 81            [12]  697 	mov	a,sp
      0001C2 24 FC            [12]  698 	add	a,#0xfc
      0001C4 F5 81            [12]  699 	mov	sp,a
      0001C6 D0 05            [24]  700 	pop	ar5
      0001C8 D0 06            [24]  701 	pop	ar6
      0001CA D0 07            [24]  702 	pop	ar7
                                    703 ;	8052Explorer.c:185: for (unsigned char posto = 0; posto < 16; posto++) {
      0001CC 0D               [12]  704 	inc	r5
      0001CD 80 97            [24]  705 	sjmp	00121$
      0001CF                        706 00114$:
                                    707 ;	8052Explorer.c:193: printf_tiny(" |");
      0001CF C0 07            [24]  708 	push	ar7
      0001D1 C0 06            [24]  709 	push	ar6
      0001D3 74 9B            [12]  710 	mov	a,#___str_71
      0001D5 C0 E0            [24]  711 	push	acc
      0001D7 74 1A            [12]  712 	mov	a,#(___str_71 >> 8)
      0001D9 C0 E0            [24]  713 	push	acc
      0001DB 12 11 1A         [24]  714 	lcall	_printf_tiny
      0001DE 15 81            [12]  715 	dec	sp
      0001E0 15 81            [12]  716 	dec	sp
      0001E2 D0 06            [24]  717 	pop	ar6
      0001E4 D0 07            [24]  718 	pop	ar7
                                    719 ;	8052Explorer.c:195: for (unsigned char posto=0; posto < 16; posto++) {
      0001E6 7D 00            [12]  720 	mov	r5,#0x00
      0001E8                        721 00124$:
      0001E8 BD 10 00         [24]  722 	cjne	r5,#0x10,00203$
      0001EB                        723 00203$:
      0001EB 50 4F            [24]  724 	jnc	00118$
                                    725 ;	8052Explorer.c:196: lettura = readEeprom(indirizzo+(short)posto);
      0001ED 8D 03            [24]  726 	mov	ar3,r5
      0001EF 7C 00            [12]  727 	mov	r4,#0x00
      0001F1 EB               [12]  728 	mov	a,r3
      0001F2 2E               [12]  729 	add	a,r6
      0001F3 F5 82            [12]  730 	mov	dpl,a
      0001F5 EC               [12]  731 	mov	a,r4
      0001F6 3F               [12]  732 	addc	a,r7
      0001F7 F5 83            [12]  733 	mov	dph,a
      0001F9 C0 07            [24]  734 	push	ar7
      0001FB C0 06            [24]  735 	push	ar6
      0001FD C0 05            [24]  736 	push	ar5
      0001FF 12 0F 28         [24]  737 	lcall	_readEeprom
      000202 AC 82            [24]  738 	mov	r4,dpl
      000204 D0 05            [24]  739 	pop	ar5
      000206 D0 06            [24]  740 	pop	ar6
      000208 D0 07            [24]  741 	pop	ar7
                                    742 ;	8052Explorer.c:197: if ( lettura < 0x20 || lettura > 0x7E ) {
      00020A BC 20 00         [24]  743 	cjne	r4,#0x20,00205$
      00020D                        744 00205$:
      00020D 40 05            [24]  745 	jc	00115$
      00020F EC               [12]  746 	mov	a,r4
      000210 24 81            [12]  747 	add	a,#0xff - 0x7e
      000212 50 02            [24]  748 	jnc	00116$
      000214                        749 00115$:
                                    750 ;	8052Explorer.c:198: lettura = '.';
      000214 7C 2E            [12]  751 	mov	r4,#0x2e
      000216                        752 00116$:
                                    753 ;	8052Explorer.c:200: printf_tiny("%c", lettura);
      000216 7B 00            [12]  754 	mov	r3,#0x00
      000218 C0 07            [24]  755 	push	ar7
      00021A C0 06            [24]  756 	push	ar6
      00021C C0 05            [24]  757 	push	ar5
      00021E C0 04            [24]  758 	push	ar4
      000220 C0 03            [24]  759 	push	ar3
      000222 74 9E            [12]  760 	mov	a,#___str_72
      000224 C0 E0            [24]  761 	push	acc
      000226 74 1A            [12]  762 	mov	a,#(___str_72 >> 8)
      000228 C0 E0            [24]  763 	push	acc
      00022A 12 11 1A         [24]  764 	lcall	_printf_tiny
      00022D E5 81            [12]  765 	mov	a,sp
      00022F 24 FC            [12]  766 	add	a,#0xfc
      000231 F5 81            [12]  767 	mov	sp,a
      000233 D0 05            [24]  768 	pop	ar5
      000235 D0 06            [24]  769 	pop	ar6
      000237 D0 07            [24]  770 	pop	ar7
                                    771 ;	8052Explorer.c:195: for (unsigned char posto=0; posto < 16; posto++) {
      000239 0D               [12]  772 	inc	r5
      00023A 80 AC            [24]  773 	sjmp	00124$
      00023C                        774 00118$:
                                    775 ;	8052Explorer.c:203: putchar('|');
      00023C 90 00 7C         [24]  776 	mov	dptr,#0x007c
      00023F C0 07            [24]  777 	push	ar7
      000241 C0 06            [24]  778 	push	ar6
      000243 12 10 5B         [24]  779 	lcall	_putchar
                                    780 ;	8052Explorer.c:204: putchar('\r');
      000246 90 00 0D         [24]  781 	mov	dptr,#0x000d
      000249 12 10 5B         [24]  782 	lcall	_putchar
      00024C D0 06            [24]  783 	pop	ar6
      00024E D0 07            [24]  784 	pop	ar7
                                    785 ;	8052Explorer.c:175: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
      000250 8E 04            [24]  786 	mov	ar4,r6
      000252 8F 05            [24]  787 	mov	ar5,r7
      000254 74 10            [12]  788 	mov	a,#0x10
      000256 2C               [12]  789 	add	a,r4
      000257 FC               [12]  790 	mov	r4,a
      000258 E4               [12]  791 	clr	a
      000259 3D               [12]  792 	addc	a,r5
      00025A FD               [12]  793 	mov	r5,a
      00025B 8C 06            [24]  794 	mov	ar6,r4
      00025D 8D 07            [24]  795 	mov	ar7,r5
      00025F 02 00 C7         [24]  796 	ljmp	00127$
      000262                        797 00119$:
                                    798 ;	8052Explorer.c:207: putchar('\r');
      000262 90 00 0D         [24]  799 	mov	dptr,#0x000d
      000265 12 10 5B         [24]  800 	lcall	_putchar
                                    801 ;	8052Explorer.c:208: putchar('\r');
      000268 90 00 0D         [24]  802 	mov	dptr,#0x000d
                                    803 ;	8052Explorer.c:210: }
      00026B 02 10 5B         [24]  804 	ljmp	_putchar
                                    805 ;------------------------------------------------------------
                                    806 ;Allocation info for local variables in function 'hexEEPROM'
                                    807 ;------------------------------------------------------------
                                    808 ;checksum                  Allocated to registers r5 r4 
                                    809 ;indirizzo                 Allocated to registers r6 r7 
                                    810 ;posto                     Allocated to registers r3 
                                    811 ;lettura                   Allocated to registers r2 
                                    812 ;------------------------------------------------------------
                                    813 ;	8052Explorer.c:212: void hexEEPROM () {
                                    814 ;	-----------------------------------------
                                    815 ;	 function hexEEPROM
                                    816 ;	-----------------------------------------
      00026E                        817 _hexEEPROM:
                                    818 ;	8052Explorer.c:214: puts("Dumping eeprom content in hex format:");
      00026E 90 1A A1         [24]  819 	mov	dptr,#___str_73
      000271 75 F0 80         [24]  820 	mov	b,#0x80
      000274 12 12 70         [24]  821 	lcall	_puts
                                    822 ;	8052Explorer.c:215: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      000277 7E 00            [12]  823 	mov	r6,#0x00
      000279 7F 00            [12]  824 	mov	r7,#0x00
      00027B                        825 00120$:
      00027B 8E 04            [24]  826 	mov	ar4,r6
      00027D 8F 05            [24]  827 	mov	ar5,r7
      00027F C3               [12]  828 	clr	c
      000280 74 FF            [12]  829 	mov	a,#0xff
      000282 9C               [12]  830 	subb	a,r4
      000283 74 07            [12]  831 	mov	a,#0x07
      000285 9D               [12]  832 	subb	a,r5
      000286 50 03            [24]  833 	jnc	00170$
      000288 02 04 80         [24]  834 	ljmp	00115$
      00028B                        835 00170$:
                                    836 ;	8052Explorer.c:216: printf_tiny(":10");
      00028B C0 07            [24]  837 	push	ar7
      00028D C0 06            [24]  838 	push	ar6
      00028F C0 05            [24]  839 	push	ar5
      000291 C0 04            [24]  840 	push	ar4
      000293 74 C7            [12]  841 	mov	a,#___str_74
      000295 C0 E0            [24]  842 	push	acc
      000297 74 1A            [12]  843 	mov	a,#(___str_74 >> 8)
      000299 C0 E0            [24]  844 	push	acc
      00029B 12 11 1A         [24]  845 	lcall	_printf_tiny
      00029E 15 81            [12]  846 	dec	sp
      0002A0 15 81            [12]  847 	dec	sp
      0002A2 D0 04            [24]  848 	pop	ar4
      0002A4 D0 05            [24]  849 	pop	ar5
      0002A6 D0 06            [24]  850 	pop	ar6
      0002A8 D0 07            [24]  851 	pop	ar7
                                    852 ;	8052Explorer.c:217: checksum = 0x10;
      0002AA 7A 10            [12]  853 	mov	r2,#0x10
      0002AC 7B 00            [12]  854 	mov	r3,#0x00
                                    855 ;	8052Explorer.c:218: if (indirizzo < 0x10) {
      0002AE C3               [12]  856 	clr	c
      0002AF EC               [12]  857 	mov	a,r4
      0002B0 94 10            [12]  858 	subb	a,#0x10
      0002B2 ED               [12]  859 	mov	a,r5
      0002B3 94 00            [12]  860 	subb	a,#0x00
      0002B5 50 28            [24]  861 	jnc	00108$
                                    862 ;	8052Explorer.c:219: printf_tiny("000%x", indirizzo);
      0002B7 C0 07            [24]  863 	push	ar7
      0002B9 C0 06            [24]  864 	push	ar6
      0002BB C0 03            [24]  865 	push	ar3
      0002BD C0 02            [24]  866 	push	ar2
      0002BF C0 06            [24]  867 	push	ar6
      0002C1 C0 07            [24]  868 	push	ar7
      0002C3 74 CB            [12]  869 	mov	a,#___str_75
      0002C5 C0 E0            [24]  870 	push	acc
      0002C7 74 1A            [12]  871 	mov	a,#(___str_75 >> 8)
      0002C9 C0 E0            [24]  872 	push	acc
      0002CB 12 11 1A         [24]  873 	lcall	_printf_tiny
      0002CE E5 81            [12]  874 	mov	a,sp
      0002D0 24 FC            [12]  875 	add	a,#0xfc
      0002D2 F5 81            [12]  876 	mov	sp,a
      0002D4 D0 02            [24]  877 	pop	ar2
      0002D6 D0 03            [24]  878 	pop	ar3
      0002D8 D0 06            [24]  879 	pop	ar6
      0002DA D0 07            [24]  880 	pop	ar7
      0002DC 02 03 5C         [24]  881 	ljmp	00109$
      0002DF                        882 00108$:
                                    883 ;	8052Explorer.c:220: } else if (indirizzo < 0x100) {
      0002DF 74 FF            [12]  884 	mov	a,#0x100 - 0x01
      0002E1 2D               [12]  885 	add	a,r5
      0002E2 40 27            [24]  886 	jc	00105$
                                    887 ;	8052Explorer.c:221: printf_tiny("00%x", indirizzo);
      0002E4 C0 07            [24]  888 	push	ar7
      0002E6 C0 06            [24]  889 	push	ar6
      0002E8 C0 03            [24]  890 	push	ar3
      0002EA C0 02            [24]  891 	push	ar2
      0002EC C0 06            [24]  892 	push	ar6
      0002EE C0 07            [24]  893 	push	ar7
      0002F0 74 D1            [12]  894 	mov	a,#___str_76
      0002F2 C0 E0            [24]  895 	push	acc
      0002F4 74 1A            [12]  896 	mov	a,#(___str_76 >> 8)
      0002F6 C0 E0            [24]  897 	push	acc
      0002F8 12 11 1A         [24]  898 	lcall	_printf_tiny
      0002FB E5 81            [12]  899 	mov	a,sp
      0002FD 24 FC            [12]  900 	add	a,#0xfc
      0002FF F5 81            [12]  901 	mov	sp,a
      000301 D0 02            [24]  902 	pop	ar2
      000303 D0 03            [24]  903 	pop	ar3
      000305 D0 06            [24]  904 	pop	ar6
      000307 D0 07            [24]  905 	pop	ar7
      000309 80 51            [24]  906 	sjmp	00109$
      00030B                        907 00105$:
                                    908 ;	8052Explorer.c:222: } else if (indirizzo < 0x1000) {
      00030B 74 F0            [12]  909 	mov	a,#0x100 - 0x10
      00030D 2D               [12]  910 	add	a,r5
      00030E 40 27            [24]  911 	jc	00102$
                                    912 ;	8052Explorer.c:223: printf_tiny("0%x", indirizzo);
      000310 C0 07            [24]  913 	push	ar7
      000312 C0 06            [24]  914 	push	ar6
      000314 C0 03            [24]  915 	push	ar3
      000316 C0 02            [24]  916 	push	ar2
      000318 C0 06            [24]  917 	push	ar6
      00031A C0 07            [24]  918 	push	ar7
      00031C 74 D6            [12]  919 	mov	a,#___str_77
      00031E C0 E0            [24]  920 	push	acc
      000320 74 1A            [12]  921 	mov	a,#(___str_77 >> 8)
      000322 C0 E0            [24]  922 	push	acc
      000324 12 11 1A         [24]  923 	lcall	_printf_tiny
      000327 E5 81            [12]  924 	mov	a,sp
      000329 24 FC            [12]  925 	add	a,#0xfc
      00032B F5 81            [12]  926 	mov	sp,a
      00032D D0 02            [24]  927 	pop	ar2
      00032F D0 03            [24]  928 	pop	ar3
      000331 D0 06            [24]  929 	pop	ar6
      000333 D0 07            [24]  930 	pop	ar7
      000335 80 25            [24]  931 	sjmp	00109$
      000337                        932 00102$:
                                    933 ;	8052Explorer.c:225: printf_tiny("%x", indirizzo);
      000337 C0 07            [24]  934 	push	ar7
      000339 C0 06            [24]  935 	push	ar6
      00033B C0 03            [24]  936 	push	ar3
      00033D C0 02            [24]  937 	push	ar2
      00033F C0 06            [24]  938 	push	ar6
      000341 C0 07            [24]  939 	push	ar7
      000343 74 DA            [12]  940 	mov	a,#___str_78
      000345 C0 E0            [24]  941 	push	acc
      000347 74 1A            [12]  942 	mov	a,#(___str_78 >> 8)
      000349 C0 E0            [24]  943 	push	acc
      00034B 12 11 1A         [24]  944 	lcall	_printf_tiny
      00034E E5 81            [12]  945 	mov	a,sp
      000350 24 FC            [12]  946 	add	a,#0xfc
      000352 F5 81            [12]  947 	mov	sp,a
      000354 D0 02            [24]  948 	pop	ar2
      000356 D0 03            [24]  949 	pop	ar3
      000358 D0 06            [24]  950 	pop	ar6
      00035A D0 07            [24]  951 	pop	ar7
      00035C                        952 00109$:
                                    953 ;	8052Explorer.c:227: checksum += (indirizzo >> 8 ) & 0xFF ;
      00035C 8F 05            [24]  954 	mov	ar5,r7
      00035E 7C 00            [12]  955 	mov	r4,#0x00
      000360 ED               [12]  956 	mov	a,r5
      000361 2A               [12]  957 	add	a,r2
      000362 FD               [12]  958 	mov	r5,a
      000363 EC               [12]  959 	mov	a,r4
      000364 3B               [12]  960 	addc	a,r3
      000365 FC               [12]  961 	mov	r4,a
                                    962 ;	8052Explorer.c:228: checksum += (indirizzo & 0xFF);
      000366 8E 02            [24]  963 	mov	ar2,r6
      000368 7B 00            [12]  964 	mov	r3,#0x00
      00036A EA               [12]  965 	mov	a,r2
      00036B 2D               [12]  966 	add	a,r5
      00036C FD               [12]  967 	mov	r5,a
      00036D EB               [12]  968 	mov	a,r3
      00036E 3C               [12]  969 	addc	a,r4
      00036F FC               [12]  970 	mov	r4,a
                                    971 ;	8052Explorer.c:229: printf_tiny("00");
      000370 C0 07            [24]  972 	push	ar7
      000372 C0 06            [24]  973 	push	ar6
      000374 C0 05            [24]  974 	push	ar5
      000376 C0 04            [24]  975 	push	ar4
      000378 74 DD            [12]  976 	mov	a,#___str_79
      00037A C0 E0            [24]  977 	push	acc
      00037C 74 1A            [12]  978 	mov	a,#(___str_79 >> 8)
      00037E C0 E0            [24]  979 	push	acc
      000380 12 11 1A         [24]  980 	lcall	_printf_tiny
      000383 15 81            [12]  981 	dec	sp
      000385 15 81            [12]  982 	dec	sp
      000387 D0 04            [24]  983 	pop	ar4
      000389 D0 05            [24]  984 	pop	ar5
      00038B D0 06            [24]  985 	pop	ar6
      00038D D0 07            [24]  986 	pop	ar7
                                    987 ;	8052Explorer.c:232: for (unsigned char posto = 0; posto < 16; posto++) {
      00038F 7B 00            [12]  988 	mov	r3,#0x00
      000391                        989 00117$:
      000391 BB 10 00         [24]  990 	cjne	r3,#0x10,00174$
      000394                        991 00174$:
      000394 40 03            [24]  992 	jc	00175$
      000396 02 04 20         [24]  993 	ljmp	00112$
      000399                        994 00175$:
                                    995 ;	8052Explorer.c:233: unsigned char lettura = readEeprom(indirizzo+(unsigned short)posto);
      000399 8B 01            [24]  996 	mov	ar1,r3
      00039B 7A 00            [12]  997 	mov	r2,#0x00
      00039D E9               [12]  998 	mov	a,r1
      00039E 2E               [12]  999 	add	a,r6
      00039F F5 82            [12] 1000 	mov	dpl,a
      0003A1 EA               [12] 1001 	mov	a,r2
      0003A2 3F               [12] 1002 	addc	a,r7
      0003A3 F5 83            [12] 1003 	mov	dph,a
      0003A5 C0 07            [24] 1004 	push	ar7
      0003A7 C0 06            [24] 1005 	push	ar6
      0003A9 C0 05            [24] 1006 	push	ar5
      0003AB C0 04            [24] 1007 	push	ar4
      0003AD C0 03            [24] 1008 	push	ar3
      0003AF 12 0F 28         [24] 1009 	lcall	_readEeprom
      0003B2 AA 82            [24] 1010 	mov	r2,dpl
      0003B4 D0 03            [24] 1011 	pop	ar3
      0003B6 D0 04            [24] 1012 	pop	ar4
      0003B8 D0 05            [24] 1013 	pop	ar5
      0003BA D0 06            [24] 1014 	pop	ar6
      0003BC D0 07            [24] 1015 	pop	ar7
                                   1016 ;	8052Explorer.c:234: if ( lettura < 0x10 ) {
      0003BE BA 10 00         [24] 1017 	cjne	r2,#0x10,00176$
      0003C1                       1018 00176$:
      0003C1 50 1E            [24] 1019 	jnc	00111$
                                   1020 ;	8052Explorer.c:235: putchar('0');
      0003C3 90 00 30         [24] 1021 	mov	dptr,#0x0030
      0003C6 C0 07            [24] 1022 	push	ar7
      0003C8 C0 06            [24] 1023 	push	ar6
      0003CA C0 05            [24] 1024 	push	ar5
      0003CC C0 04            [24] 1025 	push	ar4
      0003CE C0 03            [24] 1026 	push	ar3
      0003D0 C0 02            [24] 1027 	push	ar2
      0003D2 12 10 5B         [24] 1028 	lcall	_putchar
      0003D5 D0 02            [24] 1029 	pop	ar2
      0003D7 D0 03            [24] 1030 	pop	ar3
      0003D9 D0 04            [24] 1031 	pop	ar4
      0003DB D0 05            [24] 1032 	pop	ar5
      0003DD D0 06            [24] 1033 	pop	ar6
      0003DF D0 07            [24] 1034 	pop	ar7
      0003E1                       1035 00111$:
                                   1036 ;	8052Explorer.c:237: printf_tiny("%x", lettura);
      0003E1 8A 01            [24] 1037 	mov	ar1,r2
      0003E3 7A 00            [12] 1038 	mov	r2,#0x00
      0003E5 C0 07            [24] 1039 	push	ar7
      0003E7 C0 06            [24] 1040 	push	ar6
      0003E9 C0 05            [24] 1041 	push	ar5
      0003EB C0 04            [24] 1042 	push	ar4
      0003ED C0 03            [24] 1043 	push	ar3
      0003EF C0 02            [24] 1044 	push	ar2
      0003F1 C0 01            [24] 1045 	push	ar1
      0003F3 C0 01            [24] 1046 	push	ar1
      0003F5 C0 02            [24] 1047 	push	ar2
      0003F7 74 DA            [12] 1048 	mov	a,#___str_78
      0003F9 C0 E0            [24] 1049 	push	acc
      0003FB 74 1A            [12] 1050 	mov	a,#(___str_78 >> 8)
      0003FD C0 E0            [24] 1051 	push	acc
      0003FF 12 11 1A         [24] 1052 	lcall	_printf_tiny
      000402 E5 81            [12] 1053 	mov	a,sp
      000404 24 FC            [12] 1054 	add	a,#0xfc
      000406 F5 81            [12] 1055 	mov	sp,a
      000408 D0 01            [24] 1056 	pop	ar1
      00040A D0 02            [24] 1057 	pop	ar2
      00040C D0 03            [24] 1058 	pop	ar3
      00040E D0 04            [24] 1059 	pop	ar4
      000410 D0 05            [24] 1060 	pop	ar5
      000412 D0 06            [24] 1061 	pop	ar6
      000414 D0 07            [24] 1062 	pop	ar7
                                   1063 ;	8052Explorer.c:238: checksum += lettura;
      000416 E9               [12] 1064 	mov	a,r1
      000417 2D               [12] 1065 	add	a,r5
      000418 FD               [12] 1066 	mov	r5,a
      000419 EA               [12] 1067 	mov	a,r2
      00041A 3C               [12] 1068 	addc	a,r4
      00041B FC               [12] 1069 	mov	r4,a
                                   1070 ;	8052Explorer.c:232: for (unsigned char posto = 0; posto < 16; posto++) {
      00041C 0B               [12] 1071 	inc	r3
      00041D 02 03 91         [24] 1072 	ljmp	00117$
      000420                       1073 00112$:
                                   1074 ;	8052Explorer.c:241: checksum = ((~checksum) & 0xFF);
      000420 ED               [12] 1075 	mov	a,r5
      000421 F4               [12] 1076 	cpl	a
      000422 FD               [12] 1077 	mov	r5,a
      000423 EC               [12] 1078 	mov	a,r4
      000424 F4               [12] 1079 	cpl	a
      000425 7C 00            [12] 1080 	mov	r4,#0x00
                                   1081 ;	8052Explorer.c:242: checksum++;
      000427 0D               [12] 1082 	inc	r5
      000428 BD 00 01         [24] 1083 	cjne	r5,#0x00,00178$
      00042B 0C               [12] 1084 	inc	r4
      00042C                       1085 00178$:
                                   1086 ;	8052Explorer.c:243: if ( (checksum & 0xFF) < 16 ) {
      00042C 8D 02            [24] 1087 	mov	ar2,r5
      00042E 7B 00            [12] 1088 	mov	r3,#0x00
      000430 C3               [12] 1089 	clr	c
      000431 EA               [12] 1090 	mov	a,r2
      000432 94 10            [12] 1091 	subb	a,#0x10
      000434 EB               [12] 1092 	mov	a,r3
      000435 94 00            [12] 1093 	subb	a,#0x00
      000437 50 16            [24] 1094 	jnc	00114$
                                   1095 ;	8052Explorer.c:244: putchar('0');
      000439 90 00 30         [24] 1096 	mov	dptr,#0x0030
      00043C C0 07            [24] 1097 	push	ar7
      00043E C0 06            [24] 1098 	push	ar6
      000440 C0 05            [24] 1099 	push	ar5
      000442 C0 04            [24] 1100 	push	ar4
      000444 12 10 5B         [24] 1101 	lcall	_putchar
      000447 D0 04            [24] 1102 	pop	ar4
      000449 D0 05            [24] 1103 	pop	ar5
      00044B D0 06            [24] 1104 	pop	ar6
      00044D D0 07            [24] 1105 	pop	ar7
      00044F                       1106 00114$:
                                   1107 ;	8052Explorer.c:246: printf_tiny("%x\r", checksum & 0xFF);
      00044F 7C 00            [12] 1108 	mov	r4,#0x00
      000451 C0 07            [24] 1109 	push	ar7
      000453 C0 06            [24] 1110 	push	ar6
      000455 C0 05            [24] 1111 	push	ar5
      000457 C0 04            [24] 1112 	push	ar4
      000459 74 E0            [12] 1113 	mov	a,#___str_80
      00045B C0 E0            [24] 1114 	push	acc
      00045D 74 1A            [12] 1115 	mov	a,#(___str_80 >> 8)
      00045F C0 E0            [24] 1116 	push	acc
      000461 12 11 1A         [24] 1117 	lcall	_printf_tiny
      000464 E5 81            [12] 1118 	mov	a,sp
      000466 24 FC            [12] 1119 	add	a,#0xfc
      000468 F5 81            [12] 1120 	mov	sp,a
      00046A D0 06            [24] 1121 	pop	ar6
      00046C D0 07            [24] 1122 	pop	ar7
                                   1123 ;	8052Explorer.c:215: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      00046E 8E 04            [24] 1124 	mov	ar4,r6
      000470 8F 05            [24] 1125 	mov	ar5,r7
      000472 74 10            [12] 1126 	mov	a,#0x10
      000474 2C               [12] 1127 	add	a,r4
      000475 FC               [12] 1128 	mov	r4,a
      000476 E4               [12] 1129 	clr	a
      000477 3D               [12] 1130 	addc	a,r5
      000478 FD               [12] 1131 	mov	r5,a
      000479 8C 06            [24] 1132 	mov	ar6,r4
      00047B 8D 07            [24] 1133 	mov	ar7,r5
      00047D 02 02 7B         [24] 1134 	ljmp	00120$
      000480                       1135 00115$:
                                   1136 ;	8052Explorer.c:248: printf_tiny("%s", ":00000001FF");
      000480 74 E7            [12] 1137 	mov	a,#___str_82
      000482 C0 E0            [24] 1138 	push	acc
      000484 74 1A            [12] 1139 	mov	a,#(___str_82 >> 8)
      000486 C0 E0            [24] 1140 	push	acc
      000488 74 80            [12] 1141 	mov	a,#0x80
      00048A C0 E0            [24] 1142 	push	acc
      00048C 74 E4            [12] 1143 	mov	a,#___str_81
      00048E C0 E0            [24] 1144 	push	acc
      000490 74 1A            [12] 1145 	mov	a,#(___str_81 >> 8)
      000492 C0 E0            [24] 1146 	push	acc
      000494 12 11 1A         [24] 1147 	lcall	_printf_tiny
      000497 E5 81            [12] 1148 	mov	a,sp
      000499 24 FB            [12] 1149 	add	a,#0xfb
      00049B F5 81            [12] 1150 	mov	sp,a
                                   1151 ;	8052Explorer.c:249: putchar('\r');
      00049D 90 00 0D         [24] 1152 	mov	dptr,#0x000d
      0004A0 12 10 5B         [24] 1153 	lcall	_putchar
                                   1154 ;	8052Explorer.c:250: putchar('\r');
      0004A3 90 00 0D         [24] 1155 	mov	dptr,#0x000d
                                   1156 ;	8052Explorer.c:252: }
      0004A6 02 10 5B         [24] 1157 	ljmp	_putchar
                                   1158 ;------------------------------------------------------------
                                   1159 ;Allocation info for local variables in function 'dumpCODE'
                                   1160 ;------------------------------------------------------------
                                   1161 ;puntatore                 Allocated to registers 
                                   1162 ;indirizzo                 Allocated with name '_dumpCODE_indirizzo_131072_58'
                                   1163 ;posto                     Allocated with name '_dumpCODE_posto_262144_64'
                                   1164 ;posto                     Allocated with name '_dumpCODE_posto_262144_67'
                                   1165 ;------------------------------------------------------------
                                   1166 ;	8052Explorer.c:255: void dumpCODE () {
                                   1167 ;	-----------------------------------------
                                   1168 ;	 function dumpCODE
                                   1169 ;	-----------------------------------------
      0004A9                       1170 _dumpCODE:
                                   1171 ;	8052Explorer.c:256: unsigned char *puntatore = codice;
      0004A9 7D 00            [12] 1172 	mov	r5,#_codice
      0004AB 7E 00            [12] 1173 	mov	r6,#(_codice >> 8)
      0004AD 7F 80            [12] 1174 	mov	r7,#0x80
                                   1175 ;	8052Explorer.c:258: puts("Dumping code:");
      0004AF 90 1A F3         [24] 1176 	mov	dptr,#___str_83
      0004B2 75 F0 80         [24] 1177 	mov	b,#0x80
      0004B5 C0 07            [24] 1178 	push	ar7
      0004B7 C0 06            [24] 1179 	push	ar6
      0004B9 C0 05            [24] 1180 	push	ar5
      0004BB 12 12 70         [24] 1181 	lcall	_puts
      0004BE D0 05            [24] 1182 	pop	ar5
      0004C0 D0 06            [24] 1183 	pop	ar6
      0004C2 D0 07            [24] 1184 	pop	ar7
                                   1185 ;	8052Explorer.c:259: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0004C4 E4               [12] 1186 	clr	a
      0004C5 F5 22            [12] 1187 	mov	_dumpCODE_indirizzo_131072_58,a
      0004C7 F5 23            [12] 1188 	mov	(_dumpCODE_indirizzo_131072_58 + 1),a
      0004C9                       1189 00126$:
      0004C9 C3               [12] 1190 	clr	c
      0004CA 74 FF            [12] 1191 	mov	a,#0xff
      0004CC 95 22            [12] 1192 	subb	a,_dumpCODE_indirizzo_131072_58
      0004CE 74 2F            [12] 1193 	mov	a,#0x2f
      0004D0 95 23            [12] 1194 	subb	a,(_dumpCODE_indirizzo_131072_58 + 1)
      0004D2 50 03            [24] 1195 	jnc	00188$
      0004D4 02 06 97         [24] 1196 	ljmp	00118$
      0004D7                       1197 00188$:
                                   1198 ;	8052Explorer.c:260: if (indirizzo < 0x10) {
      0004D7 C3               [12] 1199 	clr	c
      0004D8 E5 22            [12] 1200 	mov	a,_dumpCODE_indirizzo_131072_58
      0004DA 94 10            [12] 1201 	subb	a,#0x10
      0004DC E5 23            [12] 1202 	mov	a,(_dumpCODE_indirizzo_131072_58 + 1)
      0004DE 94 00            [12] 1203 	subb	a,#0x00
      0004E0 50 23            [24] 1204 	jnc	00108$
                                   1205 ;	8052Explorer.c:261: printf_tiny("000%x  ", indirizzo);
      0004E2 C0 07            [24] 1206 	push	ar7
      0004E4 C0 06            [24] 1207 	push	ar6
      0004E6 C0 05            [24] 1208 	push	ar5
      0004E8 C0 22            [24] 1209 	push	_dumpCODE_indirizzo_131072_58
      0004EA C0 23            [24] 1210 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      0004EC 74 7D            [12] 1211 	mov	a,#___str_66
      0004EE C0 E0            [24] 1212 	push	acc
      0004F0 74 1A            [12] 1213 	mov	a,#(___str_66 >> 8)
      0004F2 C0 E0            [24] 1214 	push	acc
      0004F4 12 11 1A         [24] 1215 	lcall	_printf_tiny
      0004F7 E5 81            [12] 1216 	mov	a,sp
      0004F9 24 FC            [12] 1217 	add	a,#0xfc
      0004FB F5 81            [12] 1218 	mov	sp,a
      0004FD D0 05            [24] 1219 	pop	ar5
      0004FF D0 06            [24] 1220 	pop	ar6
      000501 D0 07            [24] 1221 	pop	ar7
      000503 80 73            [24] 1222 	sjmp	00136$
      000505                       1223 00108$:
                                   1224 ;	8052Explorer.c:262: } else if (indirizzo < 0x100) {
      000505 74 FF            [12] 1225 	mov	a,#0x100 - 0x01
      000507 25 23            [12] 1226 	add	a,(_dumpCODE_indirizzo_131072_58 + 1)
      000509 40 23            [24] 1227 	jc	00105$
                                   1228 ;	8052Explorer.c:263: printf_tiny("00%x  ", indirizzo);
      00050B C0 07            [24] 1229 	push	ar7
      00050D C0 06            [24] 1230 	push	ar6
      00050F C0 05            [24] 1231 	push	ar5
      000511 C0 22            [24] 1232 	push	_dumpCODE_indirizzo_131072_58
      000513 C0 23            [24] 1233 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      000515 74 85            [12] 1234 	mov	a,#___str_67
      000517 C0 E0            [24] 1235 	push	acc
      000519 74 1A            [12] 1236 	mov	a,#(___str_67 >> 8)
      00051B C0 E0            [24] 1237 	push	acc
      00051D 12 11 1A         [24] 1238 	lcall	_printf_tiny
      000520 E5 81            [12] 1239 	mov	a,sp
      000522 24 FC            [12] 1240 	add	a,#0xfc
      000524 F5 81            [12] 1241 	mov	sp,a
      000526 D0 05            [24] 1242 	pop	ar5
      000528 D0 06            [24] 1243 	pop	ar6
      00052A D0 07            [24] 1244 	pop	ar7
      00052C 80 4A            [24] 1245 	sjmp	00136$
      00052E                       1246 00105$:
                                   1247 ;	8052Explorer.c:264: } else if (indirizzo < 0x1000) {
      00052E 74 F0            [12] 1248 	mov	a,#0x100 - 0x10
      000530 25 23            [12] 1249 	add	a,(_dumpCODE_indirizzo_131072_58 + 1)
      000532 40 23            [24] 1250 	jc	00102$
                                   1251 ;	8052Explorer.c:265: printf_tiny("0%x  ", indirizzo);
      000534 C0 07            [24] 1252 	push	ar7
      000536 C0 06            [24] 1253 	push	ar6
      000538 C0 05            [24] 1254 	push	ar5
      00053A C0 22            [24] 1255 	push	_dumpCODE_indirizzo_131072_58
      00053C C0 23            [24] 1256 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      00053E 74 8C            [12] 1257 	mov	a,#___str_68
      000540 C0 E0            [24] 1258 	push	acc
      000542 74 1A            [12] 1259 	mov	a,#(___str_68 >> 8)
      000544 C0 E0            [24] 1260 	push	acc
      000546 12 11 1A         [24] 1261 	lcall	_printf_tiny
      000549 E5 81            [12] 1262 	mov	a,sp
      00054B 24 FC            [12] 1263 	add	a,#0xfc
      00054D F5 81            [12] 1264 	mov	sp,a
      00054F D0 05            [24] 1265 	pop	ar5
      000551 D0 06            [24] 1266 	pop	ar6
      000553 D0 07            [24] 1267 	pop	ar7
      000555 80 21            [24] 1268 	sjmp	00136$
      000557                       1269 00102$:
                                   1270 ;	8052Explorer.c:267: printf_tiny("%x  ", indirizzo);
      000557 C0 07            [24] 1271 	push	ar7
      000559 C0 06            [24] 1272 	push	ar6
      00055B C0 05            [24] 1273 	push	ar5
      00055D C0 22            [24] 1274 	push	_dumpCODE_indirizzo_131072_58
      00055F C0 23            [24] 1275 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      000561 74 92            [12] 1276 	mov	a,#___str_69
      000563 C0 E0            [24] 1277 	push	acc
      000565 74 1A            [12] 1278 	mov	a,#(___str_69 >> 8)
      000567 C0 E0            [24] 1279 	push	acc
      000569 12 11 1A         [24] 1280 	lcall	_printf_tiny
      00056C E5 81            [12] 1281 	mov	a,sp
      00056E 24 FC            [12] 1282 	add	a,#0xfc
      000570 F5 81            [12] 1283 	mov	sp,a
      000572 D0 05            [24] 1284 	pop	ar5
      000574 D0 06            [24] 1285 	pop	ar6
      000576 D0 07            [24] 1286 	pop	ar7
                                   1287 ;	8052Explorer.c:269: for (unsigned int posto = 0; posto < 16; posto++ ) {
      000578                       1288 00136$:
      000578 8D 00            [24] 1289 	mov	ar0,r5
      00057A 8E 01            [24] 1290 	mov	ar1,r6
      00057C 8F 02            [24] 1291 	mov	ar2,r7
      00057E E4               [12] 1292 	clr	a
      00057F F5 24            [12] 1293 	mov	_dumpCODE_posto_262144_64,a
      000581 F5 25            [12] 1294 	mov	(_dumpCODE_posto_262144_64 + 1),a
      000583                       1295 00120$:
      000583 C3               [12] 1296 	clr	c
      000584 E5 24            [12] 1297 	mov	a,_dumpCODE_posto_262144_64
      000586 94 10            [12] 1298 	subb	a,#0x10
      000588 E5 25            [12] 1299 	mov	a,(_dumpCODE_posto_262144_64 + 1)
      00058A 94 00            [12] 1300 	subb	a,#0x00
      00058C 50 5D            [24] 1301 	jnc	00112$
                                   1302 ;	8052Explorer.c:270: if ( *puntatore < 16 ) {
      00058E 88 82            [24] 1303 	mov	dpl,r0
      000590 89 83            [24] 1304 	mov	dph,r1
      000592 8A F0            [24] 1305 	mov	b,r2
      000594 12 12 B0         [24] 1306 	lcall	__gptrget
      000597 FC               [12] 1307 	mov	r4,a
      000598 BC 10 00         [24] 1308 	cjne	r4,#0x10,00193$
      00059B                       1309 00193$:
      00059B 50 12            [24] 1310 	jnc	00111$
                                   1311 ;	8052Explorer.c:271: putchar('0');
      00059D 90 00 30         [24] 1312 	mov	dptr,#0x0030
      0005A0 C0 02            [24] 1313 	push	ar2
      0005A2 C0 01            [24] 1314 	push	ar1
      0005A4 C0 00            [24] 1315 	push	ar0
      0005A6 12 10 5B         [24] 1316 	lcall	_putchar
      0005A9 D0 00            [24] 1317 	pop	ar0
      0005AB D0 01            [24] 1318 	pop	ar1
      0005AD D0 02            [24] 1319 	pop	ar2
      0005AF                       1320 00111$:
                                   1321 ;	8052Explorer.c:273: printf_tiny("%x ", *puntatore);
      0005AF 88 82            [24] 1322 	mov	dpl,r0
      0005B1 89 83            [24] 1323 	mov	dph,r1
      0005B3 8A F0            [24] 1324 	mov	b,r2
      0005B5 12 12 B0         [24] 1325 	lcall	__gptrget
      0005B8 FC               [12] 1326 	mov	r4,a
      0005B9 A3               [24] 1327 	inc	dptr
      0005BA A8 82            [24] 1328 	mov	r0,dpl
      0005BC A9 83            [24] 1329 	mov	r1,dph
      0005BE 7B 00            [12] 1330 	mov	r3,#0x00
      0005C0 C0 02            [24] 1331 	push	ar2
      0005C2 C0 01            [24] 1332 	push	ar1
      0005C4 C0 00            [24] 1333 	push	ar0
      0005C6 C0 04            [24] 1334 	push	ar4
      0005C8 C0 03            [24] 1335 	push	ar3
      0005CA 74 97            [12] 1336 	mov	a,#___str_70
      0005CC C0 E0            [24] 1337 	push	acc
      0005CE 74 1A            [12] 1338 	mov	a,#(___str_70 >> 8)
      0005D0 C0 E0            [24] 1339 	push	acc
      0005D2 12 11 1A         [24] 1340 	lcall	_printf_tiny
      0005D5 E5 81            [12] 1341 	mov	a,sp
      0005D7 24 FC            [12] 1342 	add	a,#0xfc
      0005D9 F5 81            [12] 1343 	mov	sp,a
      0005DB D0 00            [24] 1344 	pop	ar0
      0005DD D0 01            [24] 1345 	pop	ar1
      0005DF D0 02            [24] 1346 	pop	ar2
                                   1347 ;	8052Explorer.c:274: puntatore++;
                                   1348 ;	8052Explorer.c:269: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0005E1 05 24            [12] 1349 	inc	_dumpCODE_posto_262144_64
      0005E3 E4               [12] 1350 	clr	a
      0005E4 B5 24 9C         [24] 1351 	cjne	a,_dumpCODE_posto_262144_64,00120$
      0005E7 05 25            [12] 1352 	inc	(_dumpCODE_posto_262144_64 + 1)
      0005E9 80 98            [24] 1353 	sjmp	00120$
      0005EB                       1354 00112$:
                                   1355 ;	8052Explorer.c:276: printf_tiny(" |");
      0005EB C0 02            [24] 1356 	push	ar2
      0005ED C0 01            [24] 1357 	push	ar1
      0005EF C0 00            [24] 1358 	push	ar0
      0005F1 74 9B            [12] 1359 	mov	a,#___str_71
      0005F3 C0 E0            [24] 1360 	push	acc
      0005F5 74 1A            [12] 1361 	mov	a,#(___str_71 >> 8)
      0005F7 C0 E0            [24] 1362 	push	acc
      0005F9 12 11 1A         [24] 1363 	lcall	_printf_tiny
      0005FC 15 81            [12] 1364 	dec	sp
      0005FE 15 81            [12] 1365 	dec	sp
      000600 D0 00            [24] 1366 	pop	ar0
      000602 D0 01            [24] 1367 	pop	ar1
      000604 D0 02            [24] 1368 	pop	ar2
                                   1369 ;	8052Explorer.c:277: puntatore -= 16;
      000606 E8               [12] 1370 	mov	a,r0
      000607 24 F0            [12] 1371 	add	a,#0xf0
      000609 FC               [12] 1372 	mov	r4,a
      00060A E9               [12] 1373 	mov	a,r1
      00060B 34 FF            [12] 1374 	addc	a,#0xff
      00060D FB               [12] 1375 	mov	r3,a
                                   1376 ;	8052Explorer.c:278: for (unsigned char posto = 0; posto < 16; posto++ ) {
      00060E 75 26 00         [24] 1377 	mov	_dumpCODE_posto_262144_67,#0x00
      000611                       1378 00123$:
      000611 74 F0            [12] 1379 	mov	a,#0x100 - 0x10
      000613 25 26            [12] 1380 	add	a,_dumpCODE_posto_262144_67
      000615 40 54            [24] 1381 	jc	00142$
                                   1382 ;	8052Explorer.c:279: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      000617 8C 82            [24] 1383 	mov	dpl,r4
      000619 8B 83            [24] 1384 	mov	dph,r3
      00061B 8A F0            [24] 1385 	mov	b,r2
      00061D 12 12 B0         [24] 1386 	lcall	__gptrget
      000620 F8               [12] 1387 	mov	r0,a
      000621 B8 20 00         [24] 1388 	cjne	r0,#0x20,00197$
      000624                       1389 00197$:
      000624 40 05            [24] 1390 	jc	00113$
      000626 E8               [12] 1391 	mov	a,r0
      000627 24 81            [12] 1392 	add	a,#0xff - 0x7e
      000629 50 14            [24] 1393 	jnc	00114$
      00062B                       1394 00113$:
                                   1395 ;	8052Explorer.c:280: putchar('.');
      00062B 90 00 2E         [24] 1396 	mov	dptr,#0x002e
      00062E C0 04            [24] 1397 	push	ar4
      000630 C0 03            [24] 1398 	push	ar3
      000632 C0 02            [24] 1399 	push	ar2
      000634 12 10 5B         [24] 1400 	lcall	_putchar
      000637 D0 02            [24] 1401 	pop	ar2
      000639 D0 03            [24] 1402 	pop	ar3
      00063B D0 04            [24] 1403 	pop	ar4
      00063D 80 23            [24] 1404 	sjmp	00115$
      00063F                       1405 00114$:
                                   1406 ;	8052Explorer.c:282: printf_tiny("%c", *puntatore);
      00063F 79 00            [12] 1407 	mov	r1,#0x00
      000641 C0 04            [24] 1408 	push	ar4
      000643 C0 03            [24] 1409 	push	ar3
      000645 C0 02            [24] 1410 	push	ar2
      000647 C0 00            [24] 1411 	push	ar0
      000649 C0 01            [24] 1412 	push	ar1
      00064B 74 9E            [12] 1413 	mov	a,#___str_72
      00064D C0 E0            [24] 1414 	push	acc
      00064F 74 1A            [12] 1415 	mov	a,#(___str_72 >> 8)
      000651 C0 E0            [24] 1416 	push	acc
      000653 12 11 1A         [24] 1417 	lcall	_printf_tiny
      000656 E5 81            [12] 1418 	mov	a,sp
      000658 24 FC            [12] 1419 	add	a,#0xfc
      00065A F5 81            [12] 1420 	mov	sp,a
      00065C D0 02            [24] 1421 	pop	ar2
      00065E D0 03            [24] 1422 	pop	ar3
      000660 D0 04            [24] 1423 	pop	ar4
      000662                       1424 00115$:
                                   1425 ;	8052Explorer.c:284: puntatore++;
      000662 0C               [12] 1426 	inc	r4
      000663 BC 00 01         [24] 1427 	cjne	r4,#0x00,00200$
      000666 0B               [12] 1428 	inc	r3
      000667                       1429 00200$:
                                   1430 ;	8052Explorer.c:278: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000667 05 26            [12] 1431 	inc	_dumpCODE_posto_262144_67
      000669 80 A6            [24] 1432 	sjmp	00123$
      00066B                       1433 00142$:
      00066B 8C 05            [24] 1434 	mov	ar5,r4
      00066D 8B 06            [24] 1435 	mov	ar6,r3
      00066F 8A 07            [24] 1436 	mov	ar7,r2
                                   1437 ;	8052Explorer.c:286: putchar('|');
      000671 90 00 7C         [24] 1438 	mov	dptr,#0x007c
      000674 C0 07            [24] 1439 	push	ar7
      000676 C0 06            [24] 1440 	push	ar6
      000678 C0 05            [24] 1441 	push	ar5
      00067A 12 10 5B         [24] 1442 	lcall	_putchar
                                   1443 ;	8052Explorer.c:287: putchar('\r');
      00067D 90 00 0D         [24] 1444 	mov	dptr,#0x000d
      000680 12 10 5B         [24] 1445 	lcall	_putchar
      000683 D0 05            [24] 1446 	pop	ar5
      000685 D0 06            [24] 1447 	pop	ar6
      000687 D0 07            [24] 1448 	pop	ar7
                                   1449 ;	8052Explorer.c:259: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      000689 74 10            [12] 1450 	mov	a,#0x10
      00068B 25 22            [12] 1451 	add	a,_dumpCODE_indirizzo_131072_58
      00068D F5 22            [12] 1452 	mov	_dumpCODE_indirizzo_131072_58,a
      00068F E4               [12] 1453 	clr	a
      000690 35 23            [12] 1454 	addc	a,(_dumpCODE_indirizzo_131072_58 + 1)
      000692 F5 23            [12] 1455 	mov	(_dumpCODE_indirizzo_131072_58 + 1),a
      000694 02 04 C9         [24] 1456 	ljmp	00126$
      000697                       1457 00118$:
                                   1458 ;	8052Explorer.c:289: putchar('\r');
      000697 90 00 0D         [24] 1459 	mov	dptr,#0x000d
                                   1460 ;	8052Explorer.c:291: }
      00069A 02 10 5B         [24] 1461 	ljmp	_putchar
                                   1462 ;------------------------------------------------------------
                                   1463 ;Allocation info for local variables in function 'dumpRAM'
                                   1464 ;------------------------------------------------------------
                                   1465 ;puntatore                 Allocated to registers 
                                   1466 ;indirizzo                 Allocated with name '_dumpRAM_indirizzo_131072_72'
                                   1467 ;posto                     Allocated with name '_dumpRAM_posto_262144_78'
                                   1468 ;posto                     Allocated with name '_dumpRAM_posto_262144_81'
                                   1469 ;------------------------------------------------------------
                                   1470 ;	8052Explorer.c:293: void dumpRAM () {
                                   1471 ;	-----------------------------------------
                                   1472 ;	 function dumpRAM
                                   1473 ;	-----------------------------------------
      00069D                       1474 _dumpRAM:
                                   1475 ;	8052Explorer.c:294: unsigned char *puntatore = dati;
      00069D 7D 00            [12] 1476 	mov	r5,#_dati
      00069F 7E 00            [12] 1477 	mov	r6,#0x00
      0006A1 7F 40            [12] 1478 	mov	r7,#0x40
                                   1479 ;	8052Explorer.c:296: puts("Dumping ram memory:");
      0006A3 90 1B 01         [24] 1480 	mov	dptr,#___str_84
      0006A6 75 F0 80         [24] 1481 	mov	b,#0x80
      0006A9 C0 07            [24] 1482 	push	ar7
      0006AB C0 06            [24] 1483 	push	ar6
      0006AD C0 05            [24] 1484 	push	ar5
      0006AF 12 12 70         [24] 1485 	lcall	_puts
      0006B2 D0 05            [24] 1486 	pop	ar5
      0006B4 D0 06            [24] 1487 	pop	ar6
      0006B6 D0 07            [24] 1488 	pop	ar7
                                   1489 ;	8052Explorer.c:297: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
      0006B8 E4               [12] 1490 	clr	a
      0006B9 F5 27            [12] 1491 	mov	_dumpRAM_indirizzo_131072_72,a
      0006BB F5 28            [12] 1492 	mov	(_dumpRAM_indirizzo_131072_72 + 1),a
      0006BD                       1493 00126$:
      0006BD C3               [12] 1494 	clr	c
      0006BE 74 FF            [12] 1495 	mov	a,#0xff
      0006C0 95 27            [12] 1496 	subb	a,_dumpRAM_indirizzo_131072_72
      0006C2 E4               [12] 1497 	clr	a
      0006C3 95 28            [12] 1498 	subb	a,(_dumpRAM_indirizzo_131072_72 + 1)
      0006C5 50 03            [24] 1499 	jnc	00188$
      0006C7 02 08 8A         [24] 1500 	ljmp	00118$
      0006CA                       1501 00188$:
                                   1502 ;	8052Explorer.c:298: if (indirizzo < 0x10) {
      0006CA C3               [12] 1503 	clr	c
      0006CB E5 27            [12] 1504 	mov	a,_dumpRAM_indirizzo_131072_72
      0006CD 94 10            [12] 1505 	subb	a,#0x10
      0006CF E5 28            [12] 1506 	mov	a,(_dumpRAM_indirizzo_131072_72 + 1)
      0006D1 94 00            [12] 1507 	subb	a,#0x00
      0006D3 50 23            [24] 1508 	jnc	00108$
                                   1509 ;	8052Explorer.c:299: printf_tiny("000%x  ", indirizzo);
      0006D5 C0 07            [24] 1510 	push	ar7
      0006D7 C0 06            [24] 1511 	push	ar6
      0006D9 C0 05            [24] 1512 	push	ar5
      0006DB C0 27            [24] 1513 	push	_dumpRAM_indirizzo_131072_72
      0006DD C0 28            [24] 1514 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      0006DF 74 7D            [12] 1515 	mov	a,#___str_66
      0006E1 C0 E0            [24] 1516 	push	acc
      0006E3 74 1A            [12] 1517 	mov	a,#(___str_66 >> 8)
      0006E5 C0 E0            [24] 1518 	push	acc
      0006E7 12 11 1A         [24] 1519 	lcall	_printf_tiny
      0006EA E5 81            [12] 1520 	mov	a,sp
      0006EC 24 FC            [12] 1521 	add	a,#0xfc
      0006EE F5 81            [12] 1522 	mov	sp,a
      0006F0 D0 05            [24] 1523 	pop	ar5
      0006F2 D0 06            [24] 1524 	pop	ar6
      0006F4 D0 07            [24] 1525 	pop	ar7
      0006F6 80 73            [24] 1526 	sjmp	00136$
      0006F8                       1527 00108$:
                                   1528 ;	8052Explorer.c:300: } else if (indirizzo < 0x100) {
      0006F8 74 FF            [12] 1529 	mov	a,#0x100 - 0x01
      0006FA 25 28            [12] 1530 	add	a,(_dumpRAM_indirizzo_131072_72 + 1)
      0006FC 40 23            [24] 1531 	jc	00105$
                                   1532 ;	8052Explorer.c:301: printf_tiny("00%x  ", indirizzo);
      0006FE C0 07            [24] 1533 	push	ar7
      000700 C0 06            [24] 1534 	push	ar6
      000702 C0 05            [24] 1535 	push	ar5
      000704 C0 27            [24] 1536 	push	_dumpRAM_indirizzo_131072_72
      000706 C0 28            [24] 1537 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      000708 74 85            [12] 1538 	mov	a,#___str_67
      00070A C0 E0            [24] 1539 	push	acc
      00070C 74 1A            [12] 1540 	mov	a,#(___str_67 >> 8)
      00070E C0 E0            [24] 1541 	push	acc
      000710 12 11 1A         [24] 1542 	lcall	_printf_tiny
      000713 E5 81            [12] 1543 	mov	a,sp
      000715 24 FC            [12] 1544 	add	a,#0xfc
      000717 F5 81            [12] 1545 	mov	sp,a
      000719 D0 05            [24] 1546 	pop	ar5
      00071B D0 06            [24] 1547 	pop	ar6
      00071D D0 07            [24] 1548 	pop	ar7
      00071F 80 4A            [24] 1549 	sjmp	00136$
      000721                       1550 00105$:
                                   1551 ;	8052Explorer.c:302: } else if (indirizzo < 0x1000) {
      000721 74 F0            [12] 1552 	mov	a,#0x100 - 0x10
      000723 25 28            [12] 1553 	add	a,(_dumpRAM_indirizzo_131072_72 + 1)
      000725 40 23            [24] 1554 	jc	00102$
                                   1555 ;	8052Explorer.c:303: printf_tiny("0%x  ", indirizzo);
      000727 C0 07            [24] 1556 	push	ar7
      000729 C0 06            [24] 1557 	push	ar6
      00072B C0 05            [24] 1558 	push	ar5
      00072D C0 27            [24] 1559 	push	_dumpRAM_indirizzo_131072_72
      00072F C0 28            [24] 1560 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      000731 74 8C            [12] 1561 	mov	a,#___str_68
      000733 C0 E0            [24] 1562 	push	acc
      000735 74 1A            [12] 1563 	mov	a,#(___str_68 >> 8)
      000737 C0 E0            [24] 1564 	push	acc
      000739 12 11 1A         [24] 1565 	lcall	_printf_tiny
      00073C E5 81            [12] 1566 	mov	a,sp
      00073E 24 FC            [12] 1567 	add	a,#0xfc
      000740 F5 81            [12] 1568 	mov	sp,a
      000742 D0 05            [24] 1569 	pop	ar5
      000744 D0 06            [24] 1570 	pop	ar6
      000746 D0 07            [24] 1571 	pop	ar7
      000748 80 21            [24] 1572 	sjmp	00136$
      00074A                       1573 00102$:
                                   1574 ;	8052Explorer.c:305: printf_tiny("%x  ", indirizzo);
      00074A C0 07            [24] 1575 	push	ar7
      00074C C0 06            [24] 1576 	push	ar6
      00074E C0 05            [24] 1577 	push	ar5
      000750 C0 27            [24] 1578 	push	_dumpRAM_indirizzo_131072_72
      000752 C0 28            [24] 1579 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      000754 74 92            [12] 1580 	mov	a,#___str_69
      000756 C0 E0            [24] 1581 	push	acc
      000758 74 1A            [12] 1582 	mov	a,#(___str_69 >> 8)
      00075A C0 E0            [24] 1583 	push	acc
      00075C 12 11 1A         [24] 1584 	lcall	_printf_tiny
      00075F E5 81            [12] 1585 	mov	a,sp
      000761 24 FC            [12] 1586 	add	a,#0xfc
      000763 F5 81            [12] 1587 	mov	sp,a
      000765 D0 05            [24] 1588 	pop	ar5
      000767 D0 06            [24] 1589 	pop	ar6
      000769 D0 07            [24] 1590 	pop	ar7
                                   1591 ;	8052Explorer.c:307: for (unsigned int posto = 0; posto < 16; posto++ ) {
      00076B                       1592 00136$:
      00076B 8D 00            [24] 1593 	mov	ar0,r5
      00076D 8E 01            [24] 1594 	mov	ar1,r6
      00076F 8F 02            [24] 1595 	mov	ar2,r7
      000771 E4               [12] 1596 	clr	a
      000772 F5 29            [12] 1597 	mov	_dumpRAM_posto_262144_78,a
      000774 F5 2A            [12] 1598 	mov	(_dumpRAM_posto_262144_78 + 1),a
      000776                       1599 00120$:
      000776 C3               [12] 1600 	clr	c
      000777 E5 29            [12] 1601 	mov	a,_dumpRAM_posto_262144_78
      000779 94 10            [12] 1602 	subb	a,#0x10
      00077B E5 2A            [12] 1603 	mov	a,(_dumpRAM_posto_262144_78 + 1)
      00077D 94 00            [12] 1604 	subb	a,#0x00
      00077F 50 5D            [24] 1605 	jnc	00112$
                                   1606 ;	8052Explorer.c:308: if ( *puntatore < 16 ) {
      000781 88 82            [24] 1607 	mov	dpl,r0
      000783 89 83            [24] 1608 	mov	dph,r1
      000785 8A F0            [24] 1609 	mov	b,r2
      000787 12 12 B0         [24] 1610 	lcall	__gptrget
      00078A FC               [12] 1611 	mov	r4,a
      00078B BC 10 00         [24] 1612 	cjne	r4,#0x10,00193$
      00078E                       1613 00193$:
      00078E 50 12            [24] 1614 	jnc	00111$
                                   1615 ;	8052Explorer.c:309: putchar('0');
      000790 90 00 30         [24] 1616 	mov	dptr,#0x0030
      000793 C0 02            [24] 1617 	push	ar2
      000795 C0 01            [24] 1618 	push	ar1
      000797 C0 00            [24] 1619 	push	ar0
      000799 12 10 5B         [24] 1620 	lcall	_putchar
      00079C D0 00            [24] 1621 	pop	ar0
      00079E D0 01            [24] 1622 	pop	ar1
      0007A0 D0 02            [24] 1623 	pop	ar2
      0007A2                       1624 00111$:
                                   1625 ;	8052Explorer.c:311: printf_tiny("%x ", *puntatore);
      0007A2 88 82            [24] 1626 	mov	dpl,r0
      0007A4 89 83            [24] 1627 	mov	dph,r1
      0007A6 8A F0            [24] 1628 	mov	b,r2
      0007A8 12 12 B0         [24] 1629 	lcall	__gptrget
      0007AB FC               [12] 1630 	mov	r4,a
      0007AC A3               [24] 1631 	inc	dptr
      0007AD A8 82            [24] 1632 	mov	r0,dpl
      0007AF A9 83            [24] 1633 	mov	r1,dph
      0007B1 7B 00            [12] 1634 	mov	r3,#0x00
      0007B3 C0 02            [24] 1635 	push	ar2
      0007B5 C0 01            [24] 1636 	push	ar1
      0007B7 C0 00            [24] 1637 	push	ar0
      0007B9 C0 04            [24] 1638 	push	ar4
      0007BB C0 03            [24] 1639 	push	ar3
      0007BD 74 97            [12] 1640 	mov	a,#___str_70
      0007BF C0 E0            [24] 1641 	push	acc
      0007C1 74 1A            [12] 1642 	mov	a,#(___str_70 >> 8)
      0007C3 C0 E0            [24] 1643 	push	acc
      0007C5 12 11 1A         [24] 1644 	lcall	_printf_tiny
      0007C8 E5 81            [12] 1645 	mov	a,sp
      0007CA 24 FC            [12] 1646 	add	a,#0xfc
      0007CC F5 81            [12] 1647 	mov	sp,a
      0007CE D0 00            [24] 1648 	pop	ar0
      0007D0 D0 01            [24] 1649 	pop	ar1
      0007D2 D0 02            [24] 1650 	pop	ar2
                                   1651 ;	8052Explorer.c:312: puntatore++;
                                   1652 ;	8052Explorer.c:307: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0007D4 05 29            [12] 1653 	inc	_dumpRAM_posto_262144_78
      0007D6 E4               [12] 1654 	clr	a
      0007D7 B5 29 9C         [24] 1655 	cjne	a,_dumpRAM_posto_262144_78,00120$
      0007DA 05 2A            [12] 1656 	inc	(_dumpRAM_posto_262144_78 + 1)
      0007DC 80 98            [24] 1657 	sjmp	00120$
      0007DE                       1658 00112$:
                                   1659 ;	8052Explorer.c:314: printf_tiny(" |");
      0007DE C0 02            [24] 1660 	push	ar2
      0007E0 C0 01            [24] 1661 	push	ar1
      0007E2 C0 00            [24] 1662 	push	ar0
      0007E4 74 9B            [12] 1663 	mov	a,#___str_71
      0007E6 C0 E0            [24] 1664 	push	acc
      0007E8 74 1A            [12] 1665 	mov	a,#(___str_71 >> 8)
      0007EA C0 E0            [24] 1666 	push	acc
      0007EC 12 11 1A         [24] 1667 	lcall	_printf_tiny
      0007EF 15 81            [12] 1668 	dec	sp
      0007F1 15 81            [12] 1669 	dec	sp
      0007F3 D0 00            [24] 1670 	pop	ar0
      0007F5 D0 01            [24] 1671 	pop	ar1
      0007F7 D0 02            [24] 1672 	pop	ar2
                                   1673 ;	8052Explorer.c:315: puntatore -= 16;
      0007F9 E8               [12] 1674 	mov	a,r0
      0007FA 24 F0            [12] 1675 	add	a,#0xf0
      0007FC FC               [12] 1676 	mov	r4,a
      0007FD E9               [12] 1677 	mov	a,r1
      0007FE 34 FF            [12] 1678 	addc	a,#0xff
      000800 FB               [12] 1679 	mov	r3,a
                                   1680 ;	8052Explorer.c:316: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000801 75 2B 00         [24] 1681 	mov	_dumpRAM_posto_262144_81,#0x00
      000804                       1682 00123$:
      000804 74 F0            [12] 1683 	mov	a,#0x100 - 0x10
      000806 25 2B            [12] 1684 	add	a,_dumpRAM_posto_262144_81
      000808 40 54            [24] 1685 	jc	00142$
                                   1686 ;	8052Explorer.c:317: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      00080A 8C 82            [24] 1687 	mov	dpl,r4
      00080C 8B 83            [24] 1688 	mov	dph,r3
      00080E 8A F0            [24] 1689 	mov	b,r2
      000810 12 12 B0         [24] 1690 	lcall	__gptrget
      000813 F8               [12] 1691 	mov	r0,a
      000814 B8 20 00         [24] 1692 	cjne	r0,#0x20,00197$
      000817                       1693 00197$:
      000817 40 05            [24] 1694 	jc	00113$
      000819 E8               [12] 1695 	mov	a,r0
      00081A 24 81            [12] 1696 	add	a,#0xff - 0x7e
      00081C 50 14            [24] 1697 	jnc	00114$
      00081E                       1698 00113$:
                                   1699 ;	8052Explorer.c:318: putchar('.');
      00081E 90 00 2E         [24] 1700 	mov	dptr,#0x002e
      000821 C0 04            [24] 1701 	push	ar4
      000823 C0 03            [24] 1702 	push	ar3
      000825 C0 02            [24] 1703 	push	ar2
      000827 12 10 5B         [24] 1704 	lcall	_putchar
      00082A D0 02            [24] 1705 	pop	ar2
      00082C D0 03            [24] 1706 	pop	ar3
      00082E D0 04            [24] 1707 	pop	ar4
      000830 80 23            [24] 1708 	sjmp	00115$
      000832                       1709 00114$:
                                   1710 ;	8052Explorer.c:320: printf_tiny("%c", *puntatore);
      000832 79 00            [12] 1711 	mov	r1,#0x00
      000834 C0 04            [24] 1712 	push	ar4
      000836 C0 03            [24] 1713 	push	ar3
      000838 C0 02            [24] 1714 	push	ar2
      00083A C0 00            [24] 1715 	push	ar0
      00083C C0 01            [24] 1716 	push	ar1
      00083E 74 9E            [12] 1717 	mov	a,#___str_72
      000840 C0 E0            [24] 1718 	push	acc
      000842 74 1A            [12] 1719 	mov	a,#(___str_72 >> 8)
      000844 C0 E0            [24] 1720 	push	acc
      000846 12 11 1A         [24] 1721 	lcall	_printf_tiny
      000849 E5 81            [12] 1722 	mov	a,sp
      00084B 24 FC            [12] 1723 	add	a,#0xfc
      00084D F5 81            [12] 1724 	mov	sp,a
      00084F D0 02            [24] 1725 	pop	ar2
      000851 D0 03            [24] 1726 	pop	ar3
      000853 D0 04            [24] 1727 	pop	ar4
      000855                       1728 00115$:
                                   1729 ;	8052Explorer.c:322: puntatore++;
      000855 0C               [12] 1730 	inc	r4
      000856 BC 00 01         [24] 1731 	cjne	r4,#0x00,00200$
      000859 0B               [12] 1732 	inc	r3
      00085A                       1733 00200$:
                                   1734 ;	8052Explorer.c:316: for (unsigned char posto = 0; posto < 16; posto++ ) {
      00085A 05 2B            [12] 1735 	inc	_dumpRAM_posto_262144_81
      00085C 80 A6            [24] 1736 	sjmp	00123$
      00085E                       1737 00142$:
      00085E 8C 05            [24] 1738 	mov	ar5,r4
      000860 8B 06            [24] 1739 	mov	ar6,r3
      000862 8A 07            [24] 1740 	mov	ar7,r2
                                   1741 ;	8052Explorer.c:324: putchar('|');
      000864 90 00 7C         [24] 1742 	mov	dptr,#0x007c
      000867 C0 07            [24] 1743 	push	ar7
      000869 C0 06            [24] 1744 	push	ar6
      00086B C0 05            [24] 1745 	push	ar5
      00086D 12 10 5B         [24] 1746 	lcall	_putchar
                                   1747 ;	8052Explorer.c:325: putchar('\r');
      000870 90 00 0D         [24] 1748 	mov	dptr,#0x000d
      000873 12 10 5B         [24] 1749 	lcall	_putchar
      000876 D0 05            [24] 1750 	pop	ar5
      000878 D0 06            [24] 1751 	pop	ar6
      00087A D0 07            [24] 1752 	pop	ar7
                                   1753 ;	8052Explorer.c:297: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
      00087C 74 10            [12] 1754 	mov	a,#0x10
      00087E 25 27            [12] 1755 	add	a,_dumpRAM_indirizzo_131072_72
      000880 F5 27            [12] 1756 	mov	_dumpRAM_indirizzo_131072_72,a
      000882 E4               [12] 1757 	clr	a
      000883 35 28            [12] 1758 	addc	a,(_dumpRAM_indirizzo_131072_72 + 1)
      000885 F5 28            [12] 1759 	mov	(_dumpRAM_indirizzo_131072_72 + 1),a
      000887 02 06 BD         [24] 1760 	ljmp	00126$
      00088A                       1761 00118$:
                                   1762 ;	8052Explorer.c:327: putchar('\r');
      00088A 90 00 0D         [24] 1763 	mov	dptr,#0x000d
                                   1764 ;	8052Explorer.c:329: }
      00088D 02 10 5B         [24] 1765 	ljmp	_putchar
                                   1766 ;------------------------------------------------------------
                                   1767 ;Allocation info for local variables in function 'hexCODE'
                                   1768 ;------------------------------------------------------------
                                   1769 ;puntatore                 Allocated with name '_hexCODE_puntatore_65536_85'
                                   1770 ;checksum                  Allocated with name '_hexCODE_checksum_65537_86'
                                   1771 ;indirizzo                 Allocated to registers r3 r4 
                                   1772 ;posto                     Allocated to registers r0 
                                   1773 ;------------------------------------------------------------
                                   1774 ;	8052Explorer.c:331: void hexCODE(){
                                   1775 ;	-----------------------------------------
                                   1776 ;	 function hexCODE
                                   1777 ;	-----------------------------------------
      000890                       1778 _hexCODE:
                                   1779 ;	8052Explorer.c:332: unsigned char *puntatore = codice;
      000890 75 2C 00         [24] 1780 	mov	_hexCODE_puntatore_65536_85,#_codice
      000893 75 2D 00         [24] 1781 	mov	(_hexCODE_puntatore_65536_85 + 1),#(_codice >> 8)
      000896 75 2E 80         [24] 1782 	mov	(_hexCODE_puntatore_65536_85 + 2),#0x80
                                   1783 ;	8052Explorer.c:336: puts("Dumping code in hex file format:");
      000899 90 1B 15         [24] 1784 	mov	dptr,#___str_85
      00089C 75 F0 80         [24] 1785 	mov	b,#0x80
      00089F 12 12 70         [24] 1786 	lcall	_puts
                                   1787 ;	8052Explorer.c:339: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0008A2 7B 00            [12] 1788 	mov	r3,#0x00
      0008A4 7C 00            [12] 1789 	mov	r4,#0x00
      0008A6                       1790 00120$:
      0008A6 C3               [12] 1791 	clr	c
      0008A7 74 FF            [12] 1792 	mov	a,#0xff
      0008A9 9B               [12] 1793 	subb	a,r3
      0008AA 74 2F            [12] 1794 	mov	a,#0x2f
      0008AC 9C               [12] 1795 	subb	a,r4
      0008AD 50 03            [24] 1796 	jnc	00171$
      0008AF 02 0A 9F         [24] 1797 	ljmp	00115$
      0008B2                       1798 00171$:
                                   1799 ;	8052Explorer.c:340: printf_tiny(":10");
      0008B2 C0 04            [24] 1800 	push	ar4
      0008B4 C0 03            [24] 1801 	push	ar3
      0008B6 74 C7            [12] 1802 	mov	a,#___str_74
      0008B8 C0 E0            [24] 1803 	push	acc
      0008BA 74 1A            [12] 1804 	mov	a,#(___str_74 >> 8)
      0008BC C0 E0            [24] 1805 	push	acc
      0008BE 12 11 1A         [24] 1806 	lcall	_printf_tiny
      0008C1 15 81            [12] 1807 	dec	sp
      0008C3 15 81            [12] 1808 	dec	sp
      0008C5 D0 03            [24] 1809 	pop	ar3
      0008C7 D0 04            [24] 1810 	pop	ar4
                                   1811 ;	8052Explorer.c:341: checksum = 0x10;
      0008C9 79 10            [12] 1812 	mov	r1,#0x10
      0008CB 7A 00            [12] 1813 	mov	r2,#0x00
                                   1814 ;	8052Explorer.c:342: if (indirizzo < 0x10) {
      0008CD C3               [12] 1815 	clr	c
      0008CE EB               [12] 1816 	mov	a,r3
      0008CF 94 10            [12] 1817 	subb	a,#0x10
      0008D1 EC               [12] 1818 	mov	a,r4
      0008D2 94 00            [12] 1819 	subb	a,#0x00
      0008D4 50 28            [24] 1820 	jnc	00108$
                                   1821 ;	8052Explorer.c:343: printf_tiny("000%x", indirizzo);
      0008D6 C0 04            [24] 1822 	push	ar4
      0008D8 C0 03            [24] 1823 	push	ar3
      0008DA C0 02            [24] 1824 	push	ar2
      0008DC C0 01            [24] 1825 	push	ar1
      0008DE C0 03            [24] 1826 	push	ar3
      0008E0 C0 04            [24] 1827 	push	ar4
      0008E2 74 CB            [12] 1828 	mov	a,#___str_75
      0008E4 C0 E0            [24] 1829 	push	acc
      0008E6 74 1A            [12] 1830 	mov	a,#(___str_75 >> 8)
      0008E8 C0 E0            [24] 1831 	push	acc
      0008EA 12 11 1A         [24] 1832 	lcall	_printf_tiny
      0008ED E5 81            [12] 1833 	mov	a,sp
      0008EF 24 FC            [12] 1834 	add	a,#0xfc
      0008F1 F5 81            [12] 1835 	mov	sp,a
      0008F3 D0 01            [24] 1836 	pop	ar1
      0008F5 D0 02            [24] 1837 	pop	ar2
      0008F7 D0 03            [24] 1838 	pop	ar3
      0008F9 D0 04            [24] 1839 	pop	ar4
      0008FB 02 09 7B         [24] 1840 	ljmp	00109$
      0008FE                       1841 00108$:
                                   1842 ;	8052Explorer.c:344: } else if (indirizzo < 0x100) {
      0008FE 74 FF            [12] 1843 	mov	a,#0x100 - 0x01
      000900 2C               [12] 1844 	add	a,r4
      000901 40 27            [24] 1845 	jc	00105$
                                   1846 ;	8052Explorer.c:345: printf_tiny("00%x", indirizzo);
      000903 C0 04            [24] 1847 	push	ar4
      000905 C0 03            [24] 1848 	push	ar3
      000907 C0 02            [24] 1849 	push	ar2
      000909 C0 01            [24] 1850 	push	ar1
      00090B C0 03            [24] 1851 	push	ar3
      00090D C0 04            [24] 1852 	push	ar4
      00090F 74 D1            [12] 1853 	mov	a,#___str_76
      000911 C0 E0            [24] 1854 	push	acc
      000913 74 1A            [12] 1855 	mov	a,#(___str_76 >> 8)
      000915 C0 E0            [24] 1856 	push	acc
      000917 12 11 1A         [24] 1857 	lcall	_printf_tiny
      00091A E5 81            [12] 1858 	mov	a,sp
      00091C 24 FC            [12] 1859 	add	a,#0xfc
      00091E F5 81            [12] 1860 	mov	sp,a
      000920 D0 01            [24] 1861 	pop	ar1
      000922 D0 02            [24] 1862 	pop	ar2
      000924 D0 03            [24] 1863 	pop	ar3
      000926 D0 04            [24] 1864 	pop	ar4
      000928 80 51            [24] 1865 	sjmp	00109$
      00092A                       1866 00105$:
                                   1867 ;	8052Explorer.c:346: } else if (indirizzo < 0x1000) {
      00092A 74 F0            [12] 1868 	mov	a,#0x100 - 0x10
      00092C 2C               [12] 1869 	add	a,r4
      00092D 40 27            [24] 1870 	jc	00102$
                                   1871 ;	8052Explorer.c:347: printf_tiny("0%x", indirizzo);
      00092F C0 04            [24] 1872 	push	ar4
      000931 C0 03            [24] 1873 	push	ar3
      000933 C0 02            [24] 1874 	push	ar2
      000935 C0 01            [24] 1875 	push	ar1
      000937 C0 03            [24] 1876 	push	ar3
      000939 C0 04            [24] 1877 	push	ar4
      00093B 74 D6            [12] 1878 	mov	a,#___str_77
      00093D C0 E0            [24] 1879 	push	acc
      00093F 74 1A            [12] 1880 	mov	a,#(___str_77 >> 8)
      000941 C0 E0            [24] 1881 	push	acc
      000943 12 11 1A         [24] 1882 	lcall	_printf_tiny
      000946 E5 81            [12] 1883 	mov	a,sp
      000948 24 FC            [12] 1884 	add	a,#0xfc
      00094A F5 81            [12] 1885 	mov	sp,a
      00094C D0 01            [24] 1886 	pop	ar1
      00094E D0 02            [24] 1887 	pop	ar2
      000950 D0 03            [24] 1888 	pop	ar3
      000952 D0 04            [24] 1889 	pop	ar4
      000954 80 25            [24] 1890 	sjmp	00109$
      000956                       1891 00102$:
                                   1892 ;	8052Explorer.c:349: printf_tiny("%x", indirizzo);
      000956 C0 04            [24] 1893 	push	ar4
      000958 C0 03            [24] 1894 	push	ar3
      00095A C0 02            [24] 1895 	push	ar2
      00095C C0 01            [24] 1896 	push	ar1
      00095E C0 03            [24] 1897 	push	ar3
      000960 C0 04            [24] 1898 	push	ar4
      000962 74 DA            [12] 1899 	mov	a,#___str_78
      000964 C0 E0            [24] 1900 	push	acc
      000966 74 1A            [12] 1901 	mov	a,#(___str_78 >> 8)
      000968 C0 E0            [24] 1902 	push	acc
      00096A 12 11 1A         [24] 1903 	lcall	_printf_tiny
      00096D E5 81            [12] 1904 	mov	a,sp
      00096F 24 FC            [12] 1905 	add	a,#0xfc
      000971 F5 81            [12] 1906 	mov	sp,a
      000973 D0 01            [24] 1907 	pop	ar1
      000975 D0 02            [24] 1908 	pop	ar2
      000977 D0 03            [24] 1909 	pop	ar3
      000979 D0 04            [24] 1910 	pop	ar4
      00097B                       1911 00109$:
                                   1912 ;	8052Explorer.c:351: checksum += (indirizzo >> 8 ) & 0xFF ;
      00097B 8C 00            [24] 1913 	mov	ar0,r4
      00097D 88 07            [24] 1914 	mov	ar7,r0
      00097F 78 00            [12] 1915 	mov	r0,#0x00
      000981 EF               [12] 1916 	mov	a,r7
      000982 29               [12] 1917 	add	a,r1
      000983 FF               [12] 1918 	mov	r7,a
      000984 E8               [12] 1919 	mov	a,r0
      000985 3A               [12] 1920 	addc	a,r2
      000986 F8               [12] 1921 	mov	r0,a
                                   1922 ;	8052Explorer.c:352: checksum += (indirizzo & 0xFF);
      000987 8B 05            [24] 1923 	mov	ar5,r3
      000989 7E 00            [12] 1924 	mov	r6,#0x00
      00098B ED               [12] 1925 	mov	a,r5
      00098C 2F               [12] 1926 	add	a,r7
      00098D F5 2F            [12] 1927 	mov	_hexCODE_checksum_65537_86,a
      00098F EE               [12] 1928 	mov	a,r6
      000990 38               [12] 1929 	addc	a,r0
      000991 F5 30            [12] 1930 	mov	(_hexCODE_checksum_65537_86 + 1),a
                                   1931 ;	8052Explorer.c:353: printf_tiny("00");
      000993 C0 04            [24] 1932 	push	ar4
      000995 C0 03            [24] 1933 	push	ar3
      000997 74 DD            [12] 1934 	mov	a,#___str_79
      000999 C0 E0            [24] 1935 	push	acc
      00099B 74 1A            [12] 1936 	mov	a,#(___str_79 >> 8)
      00099D C0 E0            [24] 1937 	push	acc
      00099F 12 11 1A         [24] 1938 	lcall	_printf_tiny
      0009A2 15 81            [12] 1939 	dec	sp
      0009A4 15 81            [12] 1940 	dec	sp
      0009A6 D0 03            [24] 1941 	pop	ar3
      0009A8 D0 04            [24] 1942 	pop	ar4
                                   1943 ;	8052Explorer.c:355: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0009AA AD 2C            [24] 1944 	mov	r5,_hexCODE_puntatore_65536_85
      0009AC AA 2D            [24] 1945 	mov	r2,(_hexCODE_puntatore_65536_85 + 1)
      0009AE A9 2E            [24] 1946 	mov	r1,(_hexCODE_puntatore_65536_85 + 2)
      0009B0 78 00            [12] 1947 	mov	r0,#0x00
      0009B2                       1948 00117$:
      0009B2 B8 10 00         [24] 1949 	cjne	r0,#0x10,00175$
      0009B5                       1950 00175$:
      0009B5 40 03            [24] 1951 	jc	00176$
      0009B7 02 0A 3F         [24] 1952 	ljmp	00133$
      0009BA                       1953 00176$:
                                   1954 ;	8052Explorer.c:356: if ( *puntatore < 16 ) {
      0009BA 8D 82            [24] 1955 	mov	dpl,r5
      0009BC 8A 83            [24] 1956 	mov	dph,r2
      0009BE 89 F0            [24] 1957 	mov	b,r1
      0009C0 12 12 B0         [24] 1958 	lcall	__gptrget
      0009C3 FF               [12] 1959 	mov	r7,a
      0009C4 BF 10 00         [24] 1960 	cjne	r7,#0x10,00177$
      0009C7                       1961 00177$:
      0009C7 50 1E            [24] 1962 	jnc	00111$
                                   1963 ;	8052Explorer.c:357: putchar('0');
      0009C9 90 00 30         [24] 1964 	mov	dptr,#0x0030
      0009CC C0 05            [24] 1965 	push	ar5
      0009CE C0 04            [24] 1966 	push	ar4
      0009D0 C0 03            [24] 1967 	push	ar3
      0009D2 C0 02            [24] 1968 	push	ar2
      0009D4 C0 01            [24] 1969 	push	ar1
      0009D6 C0 00            [24] 1970 	push	ar0
      0009D8 12 10 5B         [24] 1971 	lcall	_putchar
      0009DB D0 00            [24] 1972 	pop	ar0
      0009DD D0 01            [24] 1973 	pop	ar1
      0009DF D0 02            [24] 1974 	pop	ar2
      0009E1 D0 03            [24] 1975 	pop	ar3
      0009E3 D0 04            [24] 1976 	pop	ar4
      0009E5 D0 05            [24] 1977 	pop	ar5
      0009E7                       1978 00111$:
                                   1979 ;	8052Explorer.c:359: printf_tiny("%x", *puntatore);
      0009E7 8D 82            [24] 1980 	mov	dpl,r5
      0009E9 8A 83            [24] 1981 	mov	dph,r2
      0009EB 89 F0            [24] 1982 	mov	b,r1
      0009ED 12 12 B0         [24] 1983 	lcall	__gptrget
      0009F0 FF               [12] 1984 	mov	r7,a
      0009F1 7E 00            [12] 1985 	mov	r6,#0x00
      0009F3 C0 05            [24] 1986 	push	ar5
      0009F5 C0 04            [24] 1987 	push	ar4
      0009F7 C0 03            [24] 1988 	push	ar3
      0009F9 C0 02            [24] 1989 	push	ar2
      0009FB C0 01            [24] 1990 	push	ar1
      0009FD C0 00            [24] 1991 	push	ar0
      0009FF C0 07            [24] 1992 	push	ar7
      000A01 C0 06            [24] 1993 	push	ar6
      000A03 74 DA            [12] 1994 	mov	a,#___str_78
      000A05 C0 E0            [24] 1995 	push	acc
      000A07 74 1A            [12] 1996 	mov	a,#(___str_78 >> 8)
      000A09 C0 E0            [24] 1997 	push	acc
      000A0B 12 11 1A         [24] 1998 	lcall	_printf_tiny
      000A0E E5 81            [12] 1999 	mov	a,sp
      000A10 24 FC            [12] 2000 	add	a,#0xfc
      000A12 F5 81            [12] 2001 	mov	sp,a
      000A14 D0 00            [24] 2002 	pop	ar0
      000A16 D0 01            [24] 2003 	pop	ar1
      000A18 D0 02            [24] 2004 	pop	ar2
      000A1A D0 03            [24] 2005 	pop	ar3
      000A1C D0 04            [24] 2006 	pop	ar4
      000A1E D0 05            [24] 2007 	pop	ar5
                                   2008 ;	8052Explorer.c:360: checksum += *puntatore;
      000A20 8D 82            [24] 2009 	mov	dpl,r5
      000A22 8A 83            [24] 2010 	mov	dph,r2
      000A24 89 F0            [24] 2011 	mov	b,r1
      000A26 12 12 B0         [24] 2012 	lcall	__gptrget
      000A29 FF               [12] 2013 	mov	r7,a
      000A2A A3               [24] 2014 	inc	dptr
      000A2B AD 82            [24] 2015 	mov	r5,dpl
      000A2D AA 83            [24] 2016 	mov	r2,dph
      000A2F 7E 00            [12] 2017 	mov	r6,#0x00
      000A31 EF               [12] 2018 	mov	a,r7
      000A32 25 2F            [12] 2019 	add	a,_hexCODE_checksum_65537_86
      000A34 F5 2F            [12] 2020 	mov	_hexCODE_checksum_65537_86,a
      000A36 EE               [12] 2021 	mov	a,r6
      000A37 35 30            [12] 2022 	addc	a,(_hexCODE_checksum_65537_86 + 1)
      000A39 F5 30            [12] 2023 	mov	(_hexCODE_checksum_65537_86 + 1),a
                                   2024 ;	8052Explorer.c:361: puntatore++;
                                   2025 ;	8052Explorer.c:355: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000A3B 08               [12] 2026 	inc	r0
      000A3C 02 09 B2         [24] 2027 	ljmp	00117$
      000A3F                       2028 00133$:
      000A3F 8D 2C            [24] 2029 	mov	_hexCODE_puntatore_65536_85,r5
      000A41 8A 2D            [24] 2030 	mov	(_hexCODE_puntatore_65536_85 + 1),r2
      000A43 89 2E            [24] 2031 	mov	(_hexCODE_puntatore_65536_85 + 2),r1
                                   2032 ;	8052Explorer.c:363: checksum = ((~checksum) & 0xFF);
      000A45 E5 2F            [12] 2033 	mov	a,_hexCODE_checksum_65537_86
      000A47 F4               [12] 2034 	cpl	a
      000A48 FE               [12] 2035 	mov	r6,a
      000A49 E5 30            [12] 2036 	mov	a,(_hexCODE_checksum_65537_86 + 1)
      000A4B F4               [12] 2037 	cpl	a
      000A4C 7F 00            [12] 2038 	mov	r7,#0x00
                                   2039 ;	8052Explorer.c:364: checksum++;
      000A4E 0E               [12] 2040 	inc	r6
      000A4F BE 00 01         [24] 2041 	cjne	r6,#0x00,00179$
      000A52 0F               [12] 2042 	inc	r7
      000A53                       2043 00179$:
                                   2044 ;	8052Explorer.c:365: if ( (checksum & 0xFF) < 16 ) {
      000A53 8E 02            [24] 2045 	mov	ar2,r6
      000A55 7D 00            [12] 2046 	mov	r5,#0x00
      000A57 C3               [12] 2047 	clr	c
      000A58 EA               [12] 2048 	mov	a,r2
      000A59 94 10            [12] 2049 	subb	a,#0x10
      000A5B ED               [12] 2050 	mov	a,r5
      000A5C 94 00            [12] 2051 	subb	a,#0x00
      000A5E 50 16            [24] 2052 	jnc	00114$
                                   2053 ;	8052Explorer.c:366: putchar('0');
      000A60 90 00 30         [24] 2054 	mov	dptr,#0x0030
      000A63 C0 07            [24] 2055 	push	ar7
      000A65 C0 06            [24] 2056 	push	ar6
      000A67 C0 04            [24] 2057 	push	ar4
      000A69 C0 03            [24] 2058 	push	ar3
      000A6B 12 10 5B         [24] 2059 	lcall	_putchar
      000A6E D0 03            [24] 2060 	pop	ar3
      000A70 D0 04            [24] 2061 	pop	ar4
      000A72 D0 06            [24] 2062 	pop	ar6
      000A74 D0 07            [24] 2063 	pop	ar7
      000A76                       2064 00114$:
                                   2065 ;	8052Explorer.c:368: printf_tiny("%x\r", checksum & 0xFF);
      000A76 7F 00            [12] 2066 	mov	r7,#0x00
      000A78 C0 04            [24] 2067 	push	ar4
      000A7A C0 03            [24] 2068 	push	ar3
      000A7C C0 06            [24] 2069 	push	ar6
      000A7E C0 07            [24] 2070 	push	ar7
      000A80 74 E0            [12] 2071 	mov	a,#___str_80
      000A82 C0 E0            [24] 2072 	push	acc
      000A84 74 1A            [12] 2073 	mov	a,#(___str_80 >> 8)
      000A86 C0 E0            [24] 2074 	push	acc
      000A88 12 11 1A         [24] 2075 	lcall	_printf_tiny
      000A8B E5 81            [12] 2076 	mov	a,sp
      000A8D 24 FC            [12] 2077 	add	a,#0xfc
      000A8F F5 81            [12] 2078 	mov	sp,a
      000A91 D0 03            [24] 2079 	pop	ar3
      000A93 D0 04            [24] 2080 	pop	ar4
                                   2081 ;	8052Explorer.c:339: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      000A95 74 10            [12] 2082 	mov	a,#0x10
      000A97 2B               [12] 2083 	add	a,r3
      000A98 FB               [12] 2084 	mov	r3,a
      000A99 E4               [12] 2085 	clr	a
      000A9A 3C               [12] 2086 	addc	a,r4
      000A9B FC               [12] 2087 	mov	r4,a
      000A9C 02 08 A6         [24] 2088 	ljmp	00120$
      000A9F                       2089 00115$:
                                   2090 ;	8052Explorer.c:370: printf_tiny("%s", ":00000001FF");
      000A9F 74 E7            [12] 2091 	mov	a,#___str_82
      000AA1 C0 E0            [24] 2092 	push	acc
      000AA3 74 1A            [12] 2093 	mov	a,#(___str_82 >> 8)
      000AA5 C0 E0            [24] 2094 	push	acc
      000AA7 74 80            [12] 2095 	mov	a,#0x80
      000AA9 C0 E0            [24] 2096 	push	acc
      000AAB 74 E4            [12] 2097 	mov	a,#___str_81
      000AAD C0 E0            [24] 2098 	push	acc
      000AAF 74 1A            [12] 2099 	mov	a,#(___str_81 >> 8)
      000AB1 C0 E0            [24] 2100 	push	acc
      000AB3 12 11 1A         [24] 2101 	lcall	_printf_tiny
      000AB6 E5 81            [12] 2102 	mov	a,sp
      000AB8 24 FB            [12] 2103 	add	a,#0xfb
      000ABA F5 81            [12] 2104 	mov	sp,a
                                   2105 ;	8052Explorer.c:372: putchar('\r');
      000ABC 90 00 0D         [24] 2106 	mov	dptr,#0x000d
      000ABF 12 10 5B         [24] 2107 	lcall	_putchar
                                   2108 ;	8052Explorer.c:373: putchar('\r');
      000AC2 90 00 0D         [24] 2109 	mov	dptr,#0x000d
                                   2110 ;	8052Explorer.c:374: }
      000AC5 02 10 5B         [24] 2111 	ljmp	_putchar
                                   2112 ;------------------------------------------------------------
                                   2113 ;Allocation info for local variables in function 'reset'
                                   2114 ;------------------------------------------------------------
                                   2115 ;	8052Explorer.c:376: void reset( void ) {
                                   2116 ;	-----------------------------------------
                                   2117 ;	 function reset
                                   2118 ;	-----------------------------------------
      000AC8                       2119 _reset:
                                   2120 ;	8052Explorer.c:377: puts("Resetting the micro.");
      000AC8 90 1B 36         [24] 2121 	mov	dptr,#___str_86
      000ACB 75 F0 80         [24] 2122 	mov	b,#0x80
      000ACE 12 12 70         [24] 2123 	lcall	_puts
                                   2124 ;	8052Explorer.c:383: while ( 1 );
      000AD1                       2125 00102$:
                                   2126 ;	8052Explorer.c:384: }
      000AD1 80 FE            [24] 2127 	sjmp	00102$
                                   2128 ;------------------------------------------------------------
                                   2129 ;Allocation info for local variables in function 'start'
                                   2130 ;------------------------------------------------------------
                                   2131 ;	8052Explorer.c:386: void start( void )
                                   2132 ;	-----------------------------------------
                                   2133 ;	 function start
                                   2134 ;	-----------------------------------------
      000AD3                       2135 _start:
                                   2136 ;	8052Explorer.c:389: WDTCON |= 0xE0; // 2048 ms at 12MHz
      000AD3 43 A7 E0         [24] 2137 	orl	_WDTCON,#0xe0
                                   2138 ;	8052Explorer.c:390: WDTCON |= 0x8; // no hardware pin low on reset
      000AD6 43 A7 08         [24] 2139 	orl	_WDTCON,#0x08
                                   2140 ;	8052Explorer.c:391: WDTCON |= 0x4; // enable Watchdog
      000AD9 43 A7 04         [24] 2141 	orl	_WDTCON,#0x04
                                   2142 ;	8052Explorer.c:392: WDTRST = 0x1E;
      000ADC 75 A6 1E         [24] 2143 	mov	_WDTRST,#0x1e
                                   2144 ;	8052Explorer.c:393: WDTRST = 0xE1;
      000ADF 75 A6 E1         [24] 2145 	mov	_WDTRST,#0xe1
                                   2146 ;	8052Explorer.c:402: CLKREG |= CLKREG_X2;
      000AE2 43 8F 01         [24] 2147 	orl	_CLKREG,#0x01
                                   2148 ;	8052Explorer.c:407: P0=0xFF;
      000AE5 75 80 FF         [24] 2149 	mov	_P0,#0xff
                                   2150 ;	8052Explorer.c:408: P1=0xFF;
      000AE8 75 90 FF         [24] 2151 	mov	_P1,#0xff
                                   2152 ;	8052Explorer.c:409: P2=0xFF;
      000AEB 75 A0 FF         [24] 2153 	mov	_P2,#0xff
                                   2154 ;	8052Explorer.c:410: P3=0xFF;
      000AEE 75 B0 FF         [24] 2155 	mov	_P3,#0xff
                                   2156 ;	8052Explorer.c:411: init_ser(MYTH2, MYTL2);
      000AF1 75 0E FA         [24] 2157 	mov	_init_ser_PARM_2,#0xfa
      000AF4 75 82 FF         [24] 2158 	mov	dpl,#0xff
      000AF7 12 0F 84         [24] 2159 	lcall	_init_ser
                                   2160 ;	8052Explorer.c:412: felix();
      000AFA 12 00 8C         [24] 2161 	lcall	_felix
                                   2162 ;	8052Explorer.c:413: printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
      000AFD 74 6C            [12] 2163 	mov	a,#___str_89
      000AFF C0 E0            [24] 2164 	push	acc
      000B01 74 1B            [12] 2165 	mov	a,#(___str_89 >> 8)
      000B03 C0 E0            [24] 2166 	push	acc
      000B05 74 80            [12] 2167 	mov	a,#0x80
      000B07 C0 E0            [24] 2168 	push	acc
      000B09 74 64            [12] 2169 	mov	a,#___str_88
      000B0B C0 E0            [24] 2170 	push	acc
      000B0D 74 1B            [12] 2171 	mov	a,#(___str_88 >> 8)
      000B0F C0 E0            [24] 2172 	push	acc
      000B11 74 80            [12] 2173 	mov	a,#0x80
      000B13 C0 E0            [24] 2174 	push	acc
      000B15 74 4B            [12] 2175 	mov	a,#___str_87
      000B17 C0 E0            [24] 2176 	push	acc
      000B19 74 1B            [12] 2177 	mov	a,#(___str_87 >> 8)
      000B1B C0 E0            [24] 2178 	push	acc
      000B1D 12 11 1A         [24] 2179 	lcall	_printf_tiny
      000B20 E5 81            [12] 2180 	mov	a,sp
      000B22 24 F8            [12] 2181 	add	a,#0xf8
      000B24 F5 81            [12] 2182 	mov	sp,a
                                   2183 ;	8052Explorer.c:415: if (CLKREG & CLKREG_X2) {
      000B26 E5 8F            [12] 2184 	mov	a,_CLKREG
      000B28 30 E0 09         [24] 2185 	jnb	acc.0,00102$
                                   2186 ;	8052Explorer.c:416: puts("Double system clock");
      000B2B 90 1B 74         [24] 2187 	mov	dptr,#___str_90
      000B2E 75 F0 80         [24] 2188 	mov	b,#0x80
      000B31 12 12 70         [24] 2189 	lcall	_puts
      000B34                       2190 00102$:
                                   2191 ;	8052Explorer.c:420: if (PCON & 0x10) {
      000B34 E5 87            [12] 2192 	mov	a,_PCON
      000B36 30 E4 0E         [24] 2193 	jnb	acc.4,00104$
                                   2194 ;	8052Explorer.c:421: puts("Cold reset");
      000B39 90 1B 88         [24] 2195 	mov	dptr,#___str_91
      000B3C 75 F0 80         [24] 2196 	mov	b,#0x80
      000B3F 12 12 70         [24] 2197 	lcall	_puts
                                   2198 ;	8052Explorer.c:422: PCON &= ~0x10;
      000B42 53 87 EF         [24] 2199 	anl	_PCON,#0xef
      000B45 80 09            [24] 2200 	sjmp	00105$
      000B47                       2201 00104$:
                                   2202 ;	8052Explorer.c:424: puts("Warm reset");
      000B47 90 1B 93         [24] 2203 	mov	dptr,#___str_92
      000B4A 75 F0 80         [24] 2204 	mov	b,#0x80
      000B4D 12 12 70         [24] 2205 	lcall	_puts
      000B50                       2206 00105$:
                                   2207 ;	8052Explorer.c:428: puts("Enabled watchdog");
      000B50 90 1B 9E         [24] 2208 	mov	dptr,#___str_93
      000B53 75 F0 80         [24] 2209 	mov	b,#0x80
      000B56 12 12 70         [24] 2210 	lcall	_puts
                                   2211 ;	8052Explorer.c:430: printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
      000B59 74 FA            [12] 2212 	mov	a,#0xfa
      000B5B C0 E0            [24] 2213 	push	acc
      000B5D E4               [12] 2214 	clr	a
      000B5E C0 E0            [24] 2215 	push	acc
      000B60 14               [12] 2216 	dec	a
      000B61 C0 E0            [24] 2217 	push	acc
      000B63 E4               [12] 2218 	clr	a
      000B64 C0 E0            [24] 2219 	push	acc
      000B66 74 AF            [12] 2220 	mov	a,#___str_94
      000B68 C0 E0            [24] 2221 	push	acc
      000B6A 74 1B            [12] 2222 	mov	a,#(___str_94 >> 8)
      000B6C C0 E0            [24] 2223 	push	acc
      000B6E 12 11 1A         [24] 2224 	lcall	_printf_tiny
      000B71 E5 81            [12] 2225 	mov	a,sp
      000B73 24 FA            [12] 2226 	add	a,#0xfa
      000B75 F5 81            [12] 2227 	mov	sp,a
                                   2228 ;	8052Explorer.c:431: printf_tiny("Started serial at %s bps\r", BPS);
      000B77 74 F3            [12] 2229 	mov	a,#___str_96
      000B79 C0 E0            [24] 2230 	push	acc
      000B7B 74 1B            [12] 2231 	mov	a,#(___str_96 >> 8)
      000B7D C0 E0            [24] 2232 	push	acc
      000B7F 74 80            [12] 2233 	mov	a,#0x80
      000B81 C0 E0            [24] 2234 	push	acc
      000B83 74 D9            [12] 2235 	mov	a,#___str_95
      000B85 C0 E0            [24] 2236 	push	acc
      000B87 74 1B            [12] 2237 	mov	a,#(___str_95 >> 8)
      000B89 C0 E0            [24] 2238 	push	acc
      000B8B 12 11 1A         [24] 2239 	lcall	_printf_tiny
      000B8E E5 81            [12] 2240 	mov	a,sp
      000B90 24 FB            [12] 2241 	add	a,#0xfb
      000B92 F5 81            [12] 2242 	mov	sp,a
                                   2243 ;	8052Explorer.c:432: init_timer0(0xDE, 0xED);
      000B94 75 0E ED         [24] 2244 	mov	_init_timer0_PARM_2,#0xed
      000B97 75 82 DE         [24] 2245 	mov	dpl,#0xde
      000B9A 12 10 77         [24] 2246 	lcall	_init_timer0
                                   2247 ;	8052Explorer.c:433: printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
      000B9D 74 ED            [12] 2248 	mov	a,#0xed
      000B9F C0 E0            [24] 2249 	push	acc
      000BA1 E4               [12] 2250 	clr	a
      000BA2 C0 E0            [24] 2251 	push	acc
      000BA4 74 DE            [12] 2252 	mov	a,#0xde
      000BA6 C0 E0            [24] 2253 	push	acc
      000BA8 E4               [12] 2254 	clr	a
      000BA9 C0 E0            [24] 2255 	push	acc
      000BAB 74 FA            [12] 2256 	mov	a,#___str_97
      000BAD C0 E0            [24] 2257 	push	acc
      000BAF 74 1B            [12] 2258 	mov	a,#(___str_97 >> 8)
      000BB1 C0 E0            [24] 2259 	push	acc
      000BB3 12 11 1A         [24] 2260 	lcall	_printf_tiny
      000BB6 E5 81            [12] 2261 	mov	a,sp
      000BB8 24 FA            [12] 2262 	add	a,#0xfa
      000BBA F5 81            [12] 2263 	mov	sp,a
                                   2264 ;	8052Explorer.c:435: puts("Print a string from code memory:");
      000BBC 90 1C 24         [24] 2265 	mov	dptr,#___str_100
      000BBF 75 F0 80         [24] 2266 	mov	b,#0x80
      000BC2 12 12 70         [24] 2267 	lcall	_puts
                                   2268 ;	8052Explorer.c:436: puts(acTestString); 
      000BC5 90 12 D0         [24] 2269 	mov	dptr,#_acTestString
      000BC8 75 F0 80         [24] 2270 	mov	b,#0x80
                                   2271 ;	8052Explorer.c:437: }
      000BCB 02 12 70         [24] 2272 	ljmp	_puts
                                   2273 ;------------------------------------------------------------
                                   2274 ;Allocation info for local variables in function 'p'
                                   2275 ;------------------------------------------------------------
                                   2276 ;porta                     Allocated to registers r7 
                                   2277 ;pin                       Allocated with name '_p_pin_65537_110'
                                   2278 ;action                    Allocated to registers r5 
                                   2279 ;------------------------------------------------------------
                                   2280 ;	8052Explorer.c:439: void p( unsigned char porta ) {
                                   2281 ;	-----------------------------------------
                                   2282 ;	 function p
                                   2283 ;	-----------------------------------------
      000BCE                       2284 _p:
      000BCE AF 82            [24] 2285 	mov	r7,dpl
                                   2286 ;	8052Explorer.c:440: if (porta == 3 ) {
      000BD0 E4               [12] 2287 	clr	a
      000BD1 BF 03 01         [24] 2288 	cjne	r7,#0x03,00255$
      000BD4 04               [12] 2289 	inc	a
      000BD5                       2290 00255$:
      000BD5 FE               [12] 2291 	mov	r6,a
      000BD6 60 23            [24] 2292 	jz	00105$
                                   2293 ;	8052Explorer.c:441: printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
      000BD8 8F 04            [24] 2294 	mov	ar4,r7
      000BDA 7D 00            [12] 2295 	mov	r5,#0x00
      000BDC C0 07            [24] 2296 	push	ar7
      000BDE C0 06            [24] 2297 	push	ar6
      000BE0 C0 04            [24] 2298 	push	ar4
      000BE2 C0 05            [24] 2299 	push	ar5
      000BE4 74 6B            [12] 2300 	mov	a,#___str_101
      000BE6 C0 E0            [24] 2301 	push	acc
      000BE8 74 1C            [12] 2302 	mov	a,#(___str_101 >> 8)
      000BEA C0 E0            [24] 2303 	push	acc
      000BEC 12 11 1A         [24] 2304 	lcall	_printf_tiny
      000BEF E5 81            [12] 2305 	mov	a,sp
      000BF1 24 FC            [12] 2306 	add	a,#0xfc
      000BF3 F5 81            [12] 2307 	mov	sp,a
      000BF5 D0 06            [24] 2308 	pop	ar6
      000BF7 D0 07            [24] 2309 	pop	ar7
      000BF9 80 47            [24] 2310 	sjmp	00107$
      000BFB                       2311 00105$:
                                   2312 ;	8052Explorer.c:442: } else if (porta == 2 ) {
      000BFB BF 02 23         [24] 2313 	cjne	r7,#0x02,00102$
                                   2314 ;	8052Explorer.c:443: printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
      000BFE 8F 04            [24] 2315 	mov	ar4,r7
      000C00 7D 00            [12] 2316 	mov	r5,#0x00
      000C02 C0 07            [24] 2317 	push	ar7
      000C04 C0 06            [24] 2318 	push	ar6
      000C06 C0 04            [24] 2319 	push	ar4
      000C08 C0 05            [24] 2320 	push	ar5
      000C0A 74 8E            [12] 2321 	mov	a,#___str_102
      000C0C C0 E0            [24] 2322 	push	acc
      000C0E 74 1C            [12] 2323 	mov	a,#(___str_102 >> 8)
      000C10 C0 E0            [24] 2324 	push	acc
      000C12 12 11 1A         [24] 2325 	lcall	_printf_tiny
      000C15 E5 81            [12] 2326 	mov	a,sp
      000C17 24 FC            [12] 2327 	add	a,#0xfc
      000C19 F5 81            [12] 2328 	mov	sp,a
      000C1B D0 06            [24] 2329 	pop	ar6
      000C1D D0 07            [24] 2330 	pop	ar7
      000C1F 80 21            [24] 2331 	sjmp	00107$
      000C21                       2332 00102$:
                                   2333 ;	8052Explorer.c:445: printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
      000C21 8F 04            [24] 2334 	mov	ar4,r7
      000C23 7D 00            [12] 2335 	mov	r5,#0x00
      000C25 C0 07            [24] 2336 	push	ar7
      000C27 C0 06            [24] 2337 	push	ar6
      000C29 C0 04            [24] 2338 	push	ar4
      000C2B C0 05            [24] 2339 	push	ar5
      000C2D 74 B1            [12] 2340 	mov	a,#___str_103
      000C2F C0 E0            [24] 2341 	push	acc
      000C31 74 1C            [12] 2342 	mov	a,#(___str_103 >> 8)
      000C33 C0 E0            [24] 2343 	push	acc
      000C35 12 11 1A         [24] 2344 	lcall	_printf_tiny
      000C38 E5 81            [12] 2345 	mov	a,sp
      000C3A 24 FC            [12] 2346 	add	a,#0xfc
      000C3C F5 81            [12] 2347 	mov	sp,a
      000C3E D0 06            [24] 2348 	pop	ar6
      000C40 D0 07            [24] 2349 	pop	ar7
                                   2350 ;	8052Explorer.c:447: while (!ser_byte_avail()){
      000C42                       2351 00107$:
      000C42 C0 07            [24] 2352 	push	ar7
      000C44 C0 06            [24] 2353 	push	ar6
      000C46 12 10 2A         [24] 2354 	lcall	_ser_byte_avail
      000C49 E5 82            [12] 2355 	mov	a,dpl
      000C4B D0 06            [24] 2356 	pop	ar6
      000C4D D0 07            [24] 2357 	pop	ar7
      000C4F 60 F1            [24] 2358 	jz	00107$
                                   2359 ;	8052Explorer.c:450: unsigned char pin = getchar();
      000C51 C0 07            [24] 2360 	push	ar7
      000C53 C0 06            [24] 2361 	push	ar6
      000C55 12 10 6F         [24] 2362 	lcall	_getchar
      000C58 AC 82            [24] 2363 	mov	r4,dpl
      000C5A D0 06            [24] 2364 	pop	ar6
      000C5C D0 07            [24] 2365 	pop	ar7
                                   2366 ;	8052Explorer.c:451: pin = pin - 48;
      000C5E EC               [12] 2367 	mov	a,r4
      000C5F 24 D0            [12] 2368 	add	a,#0xd0
      000C61 F5 31            [12] 2369 	mov	_p_pin_65537_110,a
                                   2370 ;	8052Explorer.c:452: printf_tiny("Pin %u of port %u: ", pin, porta );
      000C63 8F 03            [24] 2371 	mov	ar3,r7
      000C65 7C 00            [12] 2372 	mov	r4,#0x00
      000C67 A9 31            [24] 2373 	mov	r1,_p_pin_65537_110
      000C69 7A 00            [12] 2374 	mov	r2,#0x00
      000C6B C0 07            [24] 2375 	push	ar7
      000C6D C0 06            [24] 2376 	push	ar6
      000C6F C0 04            [24] 2377 	push	ar4
      000C71 C0 03            [24] 2378 	push	ar3
      000C73 C0 02            [24] 2379 	push	ar2
      000C75 C0 01            [24] 2380 	push	ar1
      000C77 C0 03            [24] 2381 	push	ar3
      000C79 C0 04            [24] 2382 	push	ar4
      000C7B C0 01            [24] 2383 	push	ar1
      000C7D C0 02            [24] 2384 	push	ar2
      000C7F 74 D4            [12] 2385 	mov	a,#___str_104
      000C81 C0 E0            [24] 2386 	push	acc
      000C83 74 1C            [12] 2387 	mov	a,#(___str_104 >> 8)
      000C85 C0 E0            [24] 2388 	push	acc
      000C87 12 11 1A         [24] 2389 	lcall	_printf_tiny
      000C8A E5 81            [12] 2390 	mov	a,sp
      000C8C 24 FA            [12] 2391 	add	a,#0xfa
      000C8E F5 81            [12] 2392 	mov	sp,a
      000C90 D0 01            [24] 2393 	pop	ar1
      000C92 D0 02            [24] 2394 	pop	ar2
      000C94 D0 03            [24] 2395 	pop	ar3
      000C96 D0 04            [24] 2396 	pop	ar4
      000C98 D0 06            [24] 2397 	pop	ar6
      000C9A D0 07            [24] 2398 	pop	ar7
                                   2399 ;	8052Explorer.c:453: if ( pin >= 0 && pin <= 8 ) {
      000C9C E5 31            [12] 2400 	mov	a,_p_pin_65537_110
      000C9E 24 F7            [12] 2401 	add	a,#0xff - 0x08
      000CA0 50 03            [24] 2402 	jnc	00261$
      000CA2 02 0D F9         [24] 2403 	ljmp	00150$
      000CA5                       2404 00261$:
                                   2405 ;	8052Explorer.c:454: if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
      000CA5 EE               [12] 2406 	mov	a,r6
      000CA6 60 0F            [24] 2407 	jz	00144$
      000CA8 E5 31            [12] 2408 	mov	a,_p_pin_65537_110
      000CAA 70 03            [24] 2409 	jnz	00263$
      000CAC 02 0D F0         [24] 2410 	ljmp	00145$
      000CAF                       2411 00263$:
      000CAF 74 01            [12] 2412 	mov	a,#0x01
      000CB1 B5 31 03         [24] 2413 	cjne	a,_p_pin_65537_110,00264$
      000CB4 02 0D F0         [24] 2414 	ljmp	00145$
      000CB7                       2415 00264$:
      000CB7                       2416 00144$:
                                   2417 ;	8052Explorer.c:455: if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
      000CB7 E4               [12] 2418 	clr	a
      000CB8 BF 02 01         [24] 2419 	cjne	r7,#0x02,00265$
      000CBB 04               [12] 2420 	inc	a
      000CBC                       2421 00265$:
      000CBC FE               [12] 2422 	mov	r6,a
      000CBD 60 17            [24] 2423 	jz	00138$
      000CBF E5 31            [12] 2424 	mov	a,_p_pin_65537_110
      000CC1 70 03            [24] 2425 	jnz	00268$
      000CC3 02 0D E7         [24] 2426 	ljmp	00139$
      000CC6                       2427 00268$:
      000CC6 74 01            [12] 2428 	mov	a,#0x01
      000CC8 B5 31 03         [24] 2429 	cjne	a,_p_pin_65537_110,00269$
      000CCB 02 0D E7         [24] 2430 	ljmp	00139$
      000CCE                       2431 00269$:
      000CCE 74 02            [12] 2432 	mov	a,#0x02
      000CD0 B5 31 03         [24] 2433 	cjne	a,_p_pin_65537_110,00270$
      000CD3 02 0D E7         [24] 2434 	ljmp	00139$
      000CD6                       2435 00270$:
      000CD6                       2436 00138$:
                                   2437 ;	8052Explorer.c:456: puts("0 off, 1 on.");
      000CD6 90 1C E8         [24] 2438 	mov	dptr,#___str_105
      000CD9 75 F0 80         [24] 2439 	mov	b,#0x80
      000CDC C0 07            [24] 2440 	push	ar7
      000CDE C0 06            [24] 2441 	push	ar6
      000CE0 C0 04            [24] 2442 	push	ar4
      000CE2 C0 03            [24] 2443 	push	ar3
      000CE4 C0 02            [24] 2444 	push	ar2
      000CE6 C0 01            [24] 2445 	push	ar1
      000CE8 12 12 70         [24] 2446 	lcall	_puts
      000CEB D0 01            [24] 2447 	pop	ar1
      000CED D0 02            [24] 2448 	pop	ar2
      000CEF D0 03            [24] 2449 	pop	ar3
      000CF1 D0 04            [24] 2450 	pop	ar4
      000CF3 D0 06            [24] 2451 	pop	ar6
      000CF5 D0 07            [24] 2452 	pop	ar7
                                   2453 ;	8052Explorer.c:457: while (!ser_byte_avail()){
      000CF7                       2454 00110$:
      000CF7 C0 07            [24] 2455 	push	ar7
      000CF9 C0 06            [24] 2456 	push	ar6
      000CFB C0 04            [24] 2457 	push	ar4
      000CFD C0 03            [24] 2458 	push	ar3
      000CFF C0 02            [24] 2459 	push	ar2
      000D01 C0 01            [24] 2460 	push	ar1
      000D03 12 10 2A         [24] 2461 	lcall	_ser_byte_avail
      000D06 E5 82            [12] 2462 	mov	a,dpl
      000D08 D0 01            [24] 2463 	pop	ar1
      000D0A D0 02            [24] 2464 	pop	ar2
      000D0C D0 03            [24] 2465 	pop	ar3
      000D0E D0 04            [24] 2466 	pop	ar4
      000D10 D0 06            [24] 2467 	pop	ar6
      000D12 D0 07            [24] 2468 	pop	ar7
      000D14 60 E1            [24] 2469 	jz	00110$
                                   2470 ;	8052Explorer.c:460: unsigned char action = getchar();
      000D16 C0 07            [24] 2471 	push	ar7
      000D18 C0 06            [24] 2472 	push	ar6
      000D1A C0 04            [24] 2473 	push	ar4
      000D1C C0 03            [24] 2474 	push	ar3
      000D1E C0 02            [24] 2475 	push	ar2
      000D20 C0 01            [24] 2476 	push	ar1
      000D22 12 10 6F         [24] 2477 	lcall	_getchar
      000D25 A8 82            [24] 2478 	mov	r0,dpl
      000D27 D0 01            [24] 2479 	pop	ar1
      000D29 D0 02            [24] 2480 	pop	ar2
      000D2B D0 03            [24] 2481 	pop	ar3
      000D2D D0 04            [24] 2482 	pop	ar4
      000D2F D0 06            [24] 2483 	pop	ar6
      000D31 D0 07            [24] 2484 	pop	ar7
                                   2485 ;	8052Explorer.c:461: action = action -48;
      000D33 E8               [12] 2486 	mov	a,r0
      000D34 24 D0            [12] 2487 	add	a,#0xd0
                                   2488 ;	8052Explorer.c:462: if (action == 0 || action == 1) {
      000D36 FD               [12] 2489 	mov	r5,a
      000D37 60 08            [24] 2490 	jz	00134$
      000D39 BD 01 02         [24] 2491 	cjne	r5,#0x01,00273$
      000D3C 80 03            [24] 2492 	sjmp	00274$
      000D3E                       2493 00273$:
      000D3E 02 0D DE         [24] 2494 	ljmp	00135$
      000D41                       2495 00274$:
      000D41                       2496 00134$:
                                   2497 ;	8052Explorer.c:463: if (action == 1) {
      000D41 BD 01 4D         [24] 2498 	cjne	r5,#0x01,00132$
                                   2499 ;	8052Explorer.c:464: action = action << pin;
      000D44 85 31 F0         [24] 2500 	mov	b,_p_pin_65537_110
      000D47 05 F0            [12] 2501 	inc	b
      000D49 ED               [12] 2502 	mov	a,r5
      000D4A 80 02            [24] 2503 	sjmp	00279$
      000D4C                       2504 00277$:
      000D4C 25 E0            [12] 2505 	add	a,acc
      000D4E                       2506 00279$:
      000D4E D5 F0 FB         [24] 2507 	djnz	b,00277$
                                   2508 ;	8052Explorer.c:465: action = ~action;
      000D51 F4               [12] 2509 	cpl	a
      000D52 FD               [12] 2510 	mov	r5,a
                                   2511 ;	8052Explorer.c:467: printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
      000D53 C0 07            [24] 2512 	push	ar7
      000D55 C0 06            [24] 2513 	push	ar6
      000D57 C0 05            [24] 2514 	push	ar5
      000D59 C0 03            [24] 2515 	push	ar3
      000D5B C0 04            [24] 2516 	push	ar4
      000D5D C0 01            [24] 2517 	push	ar1
      000D5F C0 02            [24] 2518 	push	ar2
      000D61 74 F5            [12] 2519 	mov	a,#___str_106
      000D63 C0 E0            [24] 2520 	push	acc
      000D65 74 1C            [12] 2521 	mov	a,#(___str_106 >> 8)
      000D67 C0 E0            [24] 2522 	push	acc
      000D69 12 11 1A         [24] 2523 	lcall	_printf_tiny
      000D6C E5 81            [12] 2524 	mov	a,sp
      000D6E 24 FA            [12] 2525 	add	a,#0xfa
      000D70 F5 81            [12] 2526 	mov	sp,a
      000D72 D0 05            [24] 2527 	pop	ar5
      000D74 D0 06            [24] 2528 	pop	ar6
      000D76 D0 07            [24] 2529 	pop	ar7
                                   2530 ;	8052Explorer.c:468: if (0 == porta) {
      000D78 EF               [12] 2531 	mov	a,r7
      000D79 70 04            [24] 2532 	jnz	00120$
                                   2533 ;	8052Explorer.c:469: P0 &= action;
      000D7B ED               [12] 2534 	mov	a,r5
      000D7C 52 80            [12] 2535 	anl	_P0,a
      000D7E 22               [24] 2536 	ret
      000D7F                       2537 00120$:
                                   2538 ;	8052Explorer.c:470: } else if (1 == porta) {
      000D7F BF 01 04         [24] 2539 	cjne	r7,#0x01,00117$
                                   2540 ;	8052Explorer.c:471: P1 &= action;
      000D82 ED               [12] 2541 	mov	a,r5
      000D83 52 90            [12] 2542 	anl	_P1,a
      000D85 22               [24] 2543 	ret
      000D86                       2544 00117$:
                                   2545 ;	8052Explorer.c:472: } else if (2 == porta) {
      000D86 EE               [12] 2546 	mov	a,r6
      000D87 60 04            [24] 2547 	jz	00114$
                                   2548 ;	8052Explorer.c:473: P2 &= action;
      000D89 ED               [12] 2549 	mov	a,r5
      000D8A 52 A0            [12] 2550 	anl	_P2,a
      000D8C 22               [24] 2551 	ret
      000D8D                       2552 00114$:
                                   2553 ;	8052Explorer.c:475: P3 &= action;
      000D8D ED               [12] 2554 	mov	a,r5
      000D8E 52 B0            [12] 2555 	anl	_P3,a
      000D90 22               [24] 2556 	ret
      000D91                       2557 00132$:
                                   2558 ;	8052Explorer.c:480: action = action << pin;
      000D91 85 31 F0         [24] 2559 	mov	b,_p_pin_65537_110
      000D94 05 F0            [12] 2560 	inc	b
      000D96 74 01            [12] 2561 	mov	a,#0x01
      000D98 80 02            [24] 2562 	sjmp	00286$
      000D9A                       2563 00284$:
      000D9A 25 E0            [12] 2564 	add	a,acc
      000D9C                       2565 00286$:
      000D9C D5 F0 FB         [24] 2566 	djnz	b,00284$
      000D9F FD               [12] 2567 	mov	r5,a
                                   2568 ;	8052Explorer.c:482: printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
      000DA0 C0 07            [24] 2569 	push	ar7
      000DA2 C0 06            [24] 2570 	push	ar6
      000DA4 C0 05            [24] 2571 	push	ar5
      000DA6 C0 03            [24] 2572 	push	ar3
      000DA8 C0 04            [24] 2573 	push	ar4
      000DAA C0 01            [24] 2574 	push	ar1
      000DAC C0 02            [24] 2575 	push	ar2
      000DAE 74 14            [12] 2576 	mov	a,#___str_107
      000DB0 C0 E0            [24] 2577 	push	acc
      000DB2 74 1D            [12] 2578 	mov	a,#(___str_107 >> 8)
      000DB4 C0 E0            [24] 2579 	push	acc
      000DB6 12 11 1A         [24] 2580 	lcall	_printf_tiny
      000DB9 E5 81            [12] 2581 	mov	a,sp
      000DBB 24 FA            [12] 2582 	add	a,#0xfa
      000DBD F5 81            [12] 2583 	mov	sp,a
      000DBF D0 05            [24] 2584 	pop	ar5
      000DC1 D0 06            [24] 2585 	pop	ar6
      000DC3 D0 07            [24] 2586 	pop	ar7
                                   2587 ;	8052Explorer.c:483: if (0 == porta) {
      000DC5 EF               [12] 2588 	mov	a,r7
      000DC6 70 04            [24] 2589 	jnz	00129$
                                   2590 ;	8052Explorer.c:484: P0 |= action;
      000DC8 ED               [12] 2591 	mov	a,r5
      000DC9 42 80            [12] 2592 	orl	_P0,a
      000DCB 22               [24] 2593 	ret
      000DCC                       2594 00129$:
                                   2595 ;	8052Explorer.c:485: } else if (1 == porta) {
      000DCC BF 01 04         [24] 2596 	cjne	r7,#0x01,00126$
                                   2597 ;	8052Explorer.c:486: P1 |= action;
      000DCF ED               [12] 2598 	mov	a,r5
      000DD0 42 90            [12] 2599 	orl	_P1,a
      000DD2 22               [24] 2600 	ret
      000DD3                       2601 00126$:
                                   2602 ;	8052Explorer.c:487: } else if (2 == porta) {
      000DD3 EE               [12] 2603 	mov	a,r6
      000DD4 60 04            [24] 2604 	jz	00123$
                                   2605 ;	8052Explorer.c:488: P2 |= action;
      000DD6 ED               [12] 2606 	mov	a,r5
      000DD7 42 A0            [12] 2607 	orl	_P2,a
      000DD9 22               [24] 2608 	ret
      000DDA                       2609 00123$:
                                   2610 ;	8052Explorer.c:490: P3 |= action;
      000DDA ED               [12] 2611 	mov	a,r5
      000DDB 42 B0            [12] 2612 	orl	_P3,a
      000DDD 22               [24] 2613 	ret
      000DDE                       2614 00135$:
                                   2615 ;	8052Explorer.c:495: puts("Invalid action!");
      000DDE 90 1D 34         [24] 2616 	mov	dptr,#___str_108
      000DE1 75 F0 80         [24] 2617 	mov	b,#0x80
      000DE4 02 12 70         [24] 2618 	ljmp	_puts
      000DE7                       2619 00139$:
                                   2620 ;	8052Explorer.c:500: puts("the pin 2 is the serial character receive blink.");
      000DE7 90 1D 8B         [24] 2621 	mov	dptr,#___str_115
      000DEA 75 F0 80         [24] 2622 	mov	b,#0x80
      000DED 02 12 70         [24] 2623 	ljmp	_puts
      000DF0                       2624 00145$:
                                   2625 ;	8052Explorer.c:503: puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
      000DF0 90 1D 44         [24] 2626 	mov	dptr,#___str_112
      000DF3 75 F0 80         [24] 2627 	mov	b,#0x80
      000DF6 02 12 70         [24] 2628 	ljmp	_puts
      000DF9                       2629 00150$:
                                   2630 ;	8052Explorer.c:506: puts("Invalid pin!");
      000DF9 90 1D 7E         [24] 2631 	mov	dptr,#___str_113
      000DFC 75 F0 80         [24] 2632 	mov	b,#0x80
                                   2633 ;	8052Explorer.c:508: }
      000DFF 02 12 70         [24] 2634 	ljmp	_puts
                                   2635 ;------------------------------------------------------------
                                   2636 ;Allocation info for local variables in function 'HELP'
                                   2637 ;------------------------------------------------------------
                                   2638 ;	8052Explorer.c:510: void HELP ( void ) {
                                   2639 ;	-----------------------------------------
                                   2640 ;	 function HELP
                                   2641 ;	-----------------------------------------
      000E02                       2642 _HELP:
                                   2643 ;	8052Explorer.c:524: puts("H print this help.");
      000E02 90 1E 1D         [24] 2644 	mov	dptr,#___str_134
      000E05 75 F0 80         [24] 2645 	mov	b,#0x80
                                   2646 ;	8052Explorer.c:525: }
      000E08 02 12 70         [24] 2647 	ljmp	_puts
                                   2648 ;------------------------------------------------------------
                                   2649 ;Allocation info for local variables in function 'main'
                                   2650 ;------------------------------------------------------------
                                   2651 ;carattere                 Allocated to registers r6 
                                   2652 ;------------------------------------------------------------
                                   2653 ;	8052Explorer.c:527: void main( void ) {
                                   2654 ;	-----------------------------------------
                                   2655 ;	 function main
                                   2656 ;	-----------------------------------------
      000E0B                       2657 _main:
                                   2658 ;	8052Explorer.c:528: start();
      000E0B 12 0A D3         [24] 2659 	lcall	_start
                                   2660 ;	8052Explorer.c:529: puts("Insert command, h for help.");
      000E0E 90 1F 1F         [24] 2661 	mov	dptr,#___str_135
      000E11 75 F0 80         [24] 2662 	mov	b,#0x80
      000E14 12 12 70         [24] 2663 	lcall	_puts
                                   2664 ;	8052Explorer.c:531: while( 1 )							// forever.
      000E17                       2665 00128$:
                                   2666 ;	8052Explorer.c:534: watchdogRESET();
      000E17 12 00 85         [24] 2667 	lcall	_watchdogRESET
                                   2668 ;	8052Explorer.c:537: if ( ser_byte_avail() )	{				// if data coming in...
      000E1A 12 10 2A         [24] 2669 	lcall	_ser_byte_avail
      000E1D E5 82            [12] 2670 	mov	a,dpl
      000E1F 60 F6            [24] 2671 	jz	00128$
                                   2672 ;	8052Explorer.c:538: carattere = getchar();
      000E21 12 10 6F         [24] 2673 	lcall	_getchar
      000E24 AE 82            [24] 2674 	mov	r6,dpl
                                   2675 ;	8052Explorer.c:544: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000E26 BE 30 00         [24] 2676 	cjne	r6,#0x30,00217$
      000E29                       2677 00217$:
      000E29 92 00            [24] 2678 	mov	_main_sloc0_1_0,c
      000E2B 40 14            [24] 2679 	jc	00102$
      000E2D EE               [12] 2680 	mov	a,r6
      000E2E 24 85            [12] 2681 	add	a,#0xff - 0x7a
      000E30 40 0F            [24] 2682 	jc	00102$
                                   2683 ;	8052Explorer.c:545: putchar(carattere);
      000E32 8E 05            [24] 2684 	mov	ar5,r6
      000E34 7F 00            [12] 2685 	mov	r7,#0x00
      000E36 8D 82            [24] 2686 	mov	dpl,r5
      000E38 8F 83            [24] 2687 	mov	dph,r7
      000E3A C0 06            [24] 2688 	push	ar6
      000E3C 12 10 5B         [24] 2689 	lcall	_putchar
      000E3F D0 06            [24] 2690 	pop	ar6
      000E41                       2691 00102$:
                                   2692 ;	8052Explorer.c:547: putchar('\r');
      000E41 90 00 0D         [24] 2693 	mov	dptr,#0x000d
      000E44 C0 06            [24] 2694 	push	ar6
      000E46 12 10 5B         [24] 2695 	lcall	_putchar
      000E49 D0 06            [24] 2696 	pop	ar6
                                   2697 ;	8052Explorer.c:548: switch (carattere)
      000E4B BE 30 02         [24] 2698 	cjne	r6,#0x30,00220$
      000E4E 80 67            [24] 2699 	sjmp	00113$
      000E50                       2700 00220$:
      000E50 BE 31 03         [24] 2701 	cjne	r6,#0x31,00221$
      000E53 02 0E BF         [24] 2702 	ljmp	00114$
      000E56                       2703 00221$:
      000E56 BE 32 03         [24] 2704 	cjne	r6,#0x32,00222$
      000E59 02 0E C7         [24] 2705 	ljmp	00115$
      000E5C                       2706 00222$:
      000E5C BE 33 03         [24] 2707 	cjne	r6,#0x33,00223$
      000E5F 02 0E CF         [24] 2708 	ljmp	00116$
      000E62                       2709 00223$:
      000E62 BE 43 02         [24] 2710 	cjne	r6,#0x43,00224$
      000E65 80 2D            [24] 2711 	sjmp	00105$
      000E67                       2712 00224$:
      000E67 BE 45 02         [24] 2713 	cjne	r6,#0x45,00225$
      000E6A 80 32            [24] 2714 	sjmp	00107$
      000E6C                       2715 00225$:
      000E6C BE 48 02         [24] 2716 	cjne	r6,#0x48,00226$
      000E6F 80 41            [24] 2717 	sjmp	00112$
      000E71                       2718 00226$:
      000E71 BE 63 02         [24] 2719 	cjne	r6,#0x63,00227$
      000E74 80 19            [24] 2720 	sjmp	00104$
      000E76                       2721 00227$:
      000E76 BE 65 02         [24] 2722 	cjne	r6,#0x65,00228$
      000E79 80 1E            [24] 2723 	sjmp	00106$
      000E7B                       2724 00228$:
      000E7B BE 66 02         [24] 2725 	cjne	r6,#0x66,00229$
      000E7E 80 23            [24] 2726 	sjmp	00108$
      000E80                       2727 00229$:
      000E80 BE 68 02         [24] 2728 	cjne	r6,#0x68,00230$
      000E83 80 2D            [24] 2729 	sjmp	00112$
      000E85                       2730 00230$:
      000E85 BE 6D 02         [24] 2731 	cjne	r6,#0x6d,00231$
      000E88 80 1E            [24] 2732 	sjmp	00109$
      000E8A                       2733 00231$:
                                   2734 ;	8052Explorer.c:550: case 'c':
      000E8A BE 72 4A         [24] 2735 	cjne	r6,#0x72,00117$
      000E8D 80 1E            [24] 2736 	sjmp	00110$
      000E8F                       2737 00104$:
                                   2738 ;	8052Explorer.c:551: dumpCODE();
      000E8F 12 04 A9         [24] 2739 	lcall	_dumpCODE
                                   2740 ;	8052Explorer.c:552: break;
                                   2741 ;	8052Explorer.c:553: case 'C':
      000E92 80 62            [24] 2742 	sjmp	00122$
      000E94                       2743 00105$:
                                   2744 ;	8052Explorer.c:554: hexCODE();
      000E94 12 08 90         [24] 2745 	lcall	_hexCODE
                                   2746 ;	8052Explorer.c:555: break;
                                   2747 ;	8052Explorer.c:557: case 'e':
      000E97 80 5D            [24] 2748 	sjmp	00122$
      000E99                       2749 00106$:
                                   2750 ;	8052Explorer.c:558: dumpEEPROM();
      000E99 12 00 A1         [24] 2751 	lcall	_dumpEEPROM
                                   2752 ;	8052Explorer.c:559: break;
                                   2753 ;	8052Explorer.c:560: case 'E':
      000E9C 80 58            [24] 2754 	sjmp	00122$
      000E9E                       2755 00107$:
                                   2756 ;	8052Explorer.c:561: hexEEPROM();
      000E9E 12 02 6E         [24] 2757 	lcall	_hexEEPROM
                                   2758 ;	8052Explorer.c:562: break;
                                   2759 ;	8052Explorer.c:564: case 'f':
      000EA1 80 53            [24] 2760 	sjmp	00122$
      000EA3                       2761 00108$:
                                   2762 ;	8052Explorer.c:565: felix();
      000EA3 12 00 8C         [24] 2763 	lcall	_felix
                                   2764 ;	8052Explorer.c:566: break;
                                   2765 ;	8052Explorer.c:567: case 'm':
      000EA6 80 4E            [24] 2766 	sjmp	00122$
      000EA8                       2767 00109$:
                                   2768 ;	8052Explorer.c:568: dumpRAM();
      000EA8 12 06 9D         [24] 2769 	lcall	_dumpRAM
                                   2770 ;	8052Explorer.c:569: break;
                                   2771 ;	8052Explorer.c:570: case 'r':
      000EAB 80 49            [24] 2772 	sjmp	00122$
      000EAD                       2773 00110$:
                                   2774 ;	8052Explorer.c:571: reset();
      000EAD 12 0A C8         [24] 2775 	lcall	_reset
                                   2776 ;	8052Explorer.c:572: break;
                                   2777 ;	8052Explorer.c:574: case 'H':
      000EB0 80 44            [24] 2778 	sjmp	00122$
      000EB2                       2779 00112$:
                                   2780 ;	8052Explorer.c:575: HELP();
      000EB2 12 0E 02         [24] 2781 	lcall	_HELP
                                   2782 ;	8052Explorer.c:576: break;
                                   2783 ;	8052Explorer.c:577: case '0':
      000EB5 80 3F            [24] 2784 	sjmp	00122$
      000EB7                       2785 00113$:
                                   2786 ;	8052Explorer.c:578: p(0);
      000EB7 75 82 00         [24] 2787 	mov	dpl,#0x00
      000EBA 12 0B CE         [24] 2788 	lcall	_p
                                   2789 ;	8052Explorer.c:579: break;
                                   2790 ;	8052Explorer.c:580: case '1':
      000EBD 80 37            [24] 2791 	sjmp	00122$
      000EBF                       2792 00114$:
                                   2793 ;	8052Explorer.c:581: p(1);
      000EBF 75 82 01         [24] 2794 	mov	dpl,#0x01
      000EC2 12 0B CE         [24] 2795 	lcall	_p
                                   2796 ;	8052Explorer.c:582: break;
                                   2797 ;	8052Explorer.c:583: case '2':
      000EC5 80 2F            [24] 2798 	sjmp	00122$
      000EC7                       2799 00115$:
                                   2800 ;	8052Explorer.c:584: p(2);
      000EC7 75 82 02         [24] 2801 	mov	dpl,#0x02
      000ECA 12 0B CE         [24] 2802 	lcall	_p
                                   2803 ;	8052Explorer.c:585: break;
                                   2804 ;	8052Explorer.c:586: case '3':
      000ECD 80 27            [24] 2805 	sjmp	00122$
      000ECF                       2806 00116$:
                                   2807 ;	8052Explorer.c:587: p(3);
      000ECF 75 82 03         [24] 2808 	mov	dpl,#0x03
      000ED2 12 0B CE         [24] 2809 	lcall	_p
                                   2810 ;	8052Explorer.c:588: break;
                                   2811 ;	8052Explorer.c:589: default:
      000ED5 80 1F            [24] 2812 	sjmp	00122$
      000ED7                       2813 00117$:
                                   2814 ;	8052Explorer.c:590: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000ED7 20 00 1C         [24] 2815 	jb	_main_sloc0_1_0,00122$
      000EDA EE               [12] 2816 	mov	a,r6
      000EDB 24 85            [12] 2817 	add	a,#0xff - 0x7a
      000EDD 40 17            [24] 2818 	jc	00122$
                                   2819 ;	8052Explorer.c:591: printf_tiny("Invalid command %c.\r", carattere );
      000EDF 7F 00            [12] 2820 	mov	r7,#0x00
      000EE1 C0 06            [24] 2821 	push	ar6
      000EE3 C0 07            [24] 2822 	push	ar7
      000EE5 74 3B            [12] 2823 	mov	a,#___str_136
      000EE7 C0 E0            [24] 2824 	push	acc
      000EE9 74 1F            [12] 2825 	mov	a,#(___str_136 >> 8)
      000EEB C0 E0            [24] 2826 	push	acc
      000EED 12 11 1A         [24] 2827 	lcall	_printf_tiny
      000EF0 E5 81            [12] 2828 	mov	a,sp
      000EF2 24 FC            [12] 2829 	add	a,#0xfc
      000EF4 F5 81            [12] 2830 	mov	sp,a
                                   2831 ;	8052Explorer.c:594: while ( ser_byte_avail() )	{				// if data coming in...
      000EF6                       2832 00122$:
      000EF6 12 10 2A         [24] 2833 	lcall	_ser_byte_avail
      000EF9 E5 82            [12] 2834 	mov	a,dpl
      000EFB 60 05            [24] 2835 	jz	00124$
                                   2836 ;	8052Explorer.c:595: carattere = getchar();
      000EFD 12 10 6F         [24] 2837 	lcall	_getchar
      000F00 80 F4            [24] 2838 	sjmp	00122$
      000F02                       2839 00124$:
                                   2840 ;	8052Explorer.c:597: puts("Insert command, h for help:");
      000F02 90 1F 50         [24] 2841 	mov	dptr,#___str_137
      000F05 75 F0 80         [24] 2842 	mov	b,#0x80
      000F08 12 12 70         [24] 2843 	lcall	_puts
                                   2844 ;	8052Explorer.c:601: }
      000F0B 02 0E 17         [24] 2845 	ljmp	00128$
                                   2846 	.area CSEG    (CODE)
                                   2847 	.area CONST   (CODE)
      0012D0                       2848 _acTestString:
      0012D0 48 65 6C 6C 6F 20 57  2849 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      0012DE 0D                    2850 	.db 0x0d
      0012DF 54 68 69 73 20 69 73  2851 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      0012F5 0D                    2852 	.db 0x0d
      0012F6 00                    2853 	.db 0x00
                           000000  2854 _codice	=	0x0000
                                   2855 	.area CONST   (CODE)
      0012F7                       2856 ___str_64:
      0012F7 20 20 20 20 20 20 20  2857 	.ascii "              iWs                                 ,W["
             20 20 20 20 20 20 20
             69 57 73 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 2C 57 5B
      00132C 0A                    2858 	.db 0x0a
      00132D 20 20 20 20 20 20 20  2859 	.ascii "              W@@W.                              g@@["
             20 20 20 20 20 20 20
             57 40 40 57 2E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             67 40 40 5B
      001362 0A                    2860 	.db 0x0a
      001363 20 20 20 20 20 20 20  2861 	.ascii "             i@@@@@s                           g@@@@W"
             20 20 20 20 20 20 69
             40 40 40 40 40 73 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 57
      001398 0A                    2862 	.db 0x0a
      001399 20 20 20 20 20 20 20  2863 	.ascii "             @@@@@@@W.                       ,W@@@@@@"
             20 20 20 20 20 20 40
             40 40 40 40 40 40 57
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      0013CE 0A                    2864 	.db 0x0a
      0013CF 20 20 20 20 20 20 20  2865 	.ascii "            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i"
             20 20 20 20 20 5D 40
             40 40 40 40 40 40 40
             40 57 2E 20 20 20 2C
             5F 5F 5F 5F 5F 5F 5F
             2E 20 20 20 20 20 20
             20 2C 6D 40 40 40 40
             40 40 40 40 69
      001405 0A                    2866 	.db 0x0a
      001406 20 20 20 20 20 20 20  2867 	.ascii "           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@["
             20 20 20 20 2C 40 40
             40 40 40 40 40 40 40
             40 40 40 57 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 6D 6D 5F
             67 40 40 40 40 40 40
             40 40 40 40 5B
      00143C 0A                    2868 	.db 0x0a
      00143D 20 20 20 20 20 20 20  2869 	.ascii "           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
             20 20 20 20 64 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40
      001473 0A                    2870 	.db 0x0a
      001474 20 20 20 20 20 20 20  2871 	.ascii "          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i"
             20 20 20 69 40 40 40
             40 40 40 40 41 2A 7E
             7E 7E 7E 7E 56 4D 40
             40 40 40 40 40 40 40
             40 40 41 66 7E 7E 7E
             7E 56 2A 40 40 40 40
             40 40 40 40 40 69
      0014AB 0A                    2872 	.db 0x0a
      0014AC 20 20 20 20 20 20 20  2873 	.ascii "          @@@@@A~          'M@@@@@@A`         'V@@@@@@b"
             20 20 20 40 40 40 40
             40 41 7E 20 20 20 20
             20 20 20 20 20 20 27
             4D 40 40 40 40 40 40
             41 60 20 20 20 20 20
             20 20 20 20 27 56 40
             40 40 40 40 40 62
      0014E3 0A                    2874 	.db 0x0a
      0014E4 20 20 20 20 20 20 20  2875 	.ascii "         d@@@*`              Y@@@@f              V@@@@@."
             20 20 64 40 40 40 2A
             60 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 59 40 40 40 40 66
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             56 40 40 40 40 40 2E
      00151C 0A                    2876 	.db 0x0a
      00151D 20 20 20 20 20 20 20  2877 	.ascii "        i@@A`                 M@@P                 V@@@b"
             20 69 40 40 41 60 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 4D 40 40 50 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 56 40 40 40 62
      001555 0A                    2878 	.db 0x0a
      001556 20 20 20 20 20 20 20  2879 	.ascii "       ,@@A                   '@@                   !@@@."
             2C 40 40 41 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 27 40 40 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 21 40 40 40
             2E
      00158F 0A                    2880 	.db 0x0a
      001590 20 20 20 20 20 20 20  2881 	.ascii "       W@P                     @[                    '@@W"
             57 40 50 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 40 40
             57
      0015C9 0A                    2882 	.db 0x0a
      0015CA 20 20 20 20 20 20 64  2883 	.ascii "      d@@            ,         ]!                     ]@@b"
             40 40 20 20 20 20 20
             20 20 20 20 20 20 20
             2C 20 20 20 20 20 20
             20 20 20 5D 21 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 62
      001604 0A                    2884 	.db 0x0a
      001605 20 20 20 20 20 67 40  2885 	.ascii "     g@@[          ,W@@s       ]       ,W@@s           @@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 2C 57
             40 40 73 20 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 2C 57 40
             40 73 20 20 20 20 20
             20 20 20 20 20 20 40
             40 40 69
      001640 0A                    2886 	.db 0x0a
      001641 20 20 20 20 69 40 40  2887 	.ascii "    i@@@[          W@@@@i      ]       W@@@@i          @@@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 57 40
             40 40 40 69 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 57 40 40
             40 40 69 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 69
      00167D 0A                    2888 	.db 0x0a
      00167E 20 20 20 69 40 40 40  2889 	.ascii "   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 5B 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      0016BA 69                    2890 	.ascii "i"
      0016BB 0A                    2891 	.db 0x0a
      0016BC 20 20 67 40 40 40 40  2892 	.ascii "  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 21 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      0016F8 40 69                 2893 	.ascii "@i"
      0016FA 0A                    2894 	.db 0x0a
      0016FB 20 64 40 40 40 40 40  2895 	.ascii " d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@"
             40 40 20 20 20 20 20
             20 20 20 20 20 21 40
             40 40 50 20 20 20 20
             20 20 69 41 57 20 20
             20 20 20 20 21 40 40
             40 41 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 40 40 40
      001737 40 40 69              2896 	.ascii "@@i"
      00173A 0A                    2897 	.db 0x0a
      00173B 57 40 40 40 40 40 40  2898 	.ascii "W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@"
             40 40 62 20 20 20 20
             20 20 20 20 20 20 27
             7E 7E 20 20 20 20 20
             20 2C 5A 20 59 69 20
             20 20 20 20 20 27 7E
             7E 20 20 20 20 20 20
             20 20 20 20 2C 40 40
             40 40 40 40
      001777 40 40 40              2899 	.ascii "@@@"
      00177A 0A                    2900 	.db 0x0a
      00177B 27 2A 40 40 40 40 40  2901 	.ascii "'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@"
             40 40 40 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 5A 60 20 20 59 2E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      0017B7 40 40 41              2902 	.ascii "@@A"
      0017BA 0A                    2903 	.db 0x0a
      0017BB 20 20 27 4D 40 40 40  2904 	.ascii "  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@"
             2A 66 2A 2A 57 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 2C
             5A 20 20 20 20 20 56
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 57 2A 7E 7E
             7E 4D 40 40
      0017F7 40 66                 2905 	.ascii "@f"
      0017F9 0A                    2906 	.db 0x0a
      0017FA 20 20 20 20 27 4D 40  2907 	.ascii "    'M@    'Vs.          ,z~       'N_           ,Z~     d@P"
             20 20 20 20 27 56 73
             2E 20 20 20 20 20 20
             20 20 20 20 2C 7A 7E
             20 20 20 20 20 20 20
             27 4E 5F 20 20 20 20
             20 20 20 20 20 20 20
             2C 5A 7E 20 20 20 20
             20 64 40 50
      001836 0A                    2908 	.db 0x0a
      001837 20 20 20 4D 40 40 40  2909 	.ascii "   M@@@       ~-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@"
             20 20 20 20 20 20 20
             7E 2D 5F 5F 20 20 5F
             5F 7A 2F 60 20 2C 67
             6D 57 40 40 6D 6D 5F
             20 27 2B 65 5F 2E 20
             20 20 5F 5F 3D 2F 60
             20 20 20 20 20 20 2C
             40 40 40 40
      001873 0A                    2910 	.db 0x0a
      001874 20 20 20 20 27 56 4D  2911 	.ascii "    'VMW                  g@@@@@@@@@W     ~~~          ,WAf"
             57 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 40 40 40 40
             40 57 20 20 20 20 20
             7E 7E 7E 20 20 20 20
             20 20 20 20 20 20 2C
             57 41 66
      0018AF 0A                    2912 	.db 0x0a
      0018B0 20 20 20 20 20 20 20  2913 	.ascii "       ~N.                @@@@@@@@@@@!                ,Z`"
             7E 4E 2E 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 40 40 40 40
             40 40 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 2C 5A
             60
      0018E9 0A                    2914 	.db 0x0a
      0018EA 20 20 20 20 20 20 20  2915 	.ascii "         V.               !M@@@@@@@@f                gf-"
             20 20 56 2E 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 21 4D
             40 40 40 40 40 40 40
             40 66 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 67 66 2D
      001922 0A                    2916 	.db 0x0a
      001923 20 20 20 20 20 20 20  2917 	.ascii "          'N.               '~***f~                ,Z`"
             20 20 20 27 4E 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             27 7E 2A 2A 2A 66 7E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 5A 60
      001959 0A                    2918 	.db 0x0a
      00195A 20 20 20 20 20 20 20  2919 	.ascii "            Vc.                                  _Zf"
             20 20 20 20 20 56 63
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             5F 5A 66
      00198E 0A                    2920 	.db 0x0a
      00198F 20 20 20 20 20 20 20  2921 	.ascii "              ~e_                             ,gY~"
             20 20 20 20 20 20 20
             7E 65 5F 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 2C 67 59
             7E
      0019C1 0A                    2922 	.db 0x0a
      0019C2 20 20 20 20 20 20 20  2923 	.ascii "                'V=_          -@@D         ,gY~ '"
             20 20 20 20 20 20 20
             20 20 27 56 3D 5F 20
             20 20 20 20 20 20 20
             20 20 2D 40 40 44 20
             20 20 20 20 20 20 20
             20 2C 67 59 7E 20 27
      0019F3 0A                    2924 	.db 0x0a
      0019F4 20 20 20 20 20 20 20  2925 	.ascii "                    ~=__.           ,__z=~`"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7E
             3D 5F 5F 2E 20 20 20
             20 20 20 20 20 20 20
             20 2C 5F 5F 7A 3D 7E
             60
      001A1F 0A                    2926 	.db 0x0a
      001A20 20 20 20 20 20 20 20  2927 	.ascii "                         '~~~*==Y*f~~~ "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 7E 7E
             7E 2A 3D 3D 59 2A 66
             7E 7E 7E 20
      001A47 00                    2928 	.db 0x00
                                   2929 	.area CSEG    (CODE)
                                   2930 	.area CONST   (CODE)
      001A48                       2931 ___str_65:
      001A48 44 75 6D 70 69 6E 67  2932 	.ascii "Dumping eeprom content and changing first character:"
             20 65 65 70 72 6F 6D
             20 63 6F 6E 74 65 6E
             74 20 61 6E 64 20 63
             68 61 6E 67 69 6E 67
             20 66 69 72 73 74 20
             63 68 61 72 61 63 74
             65 72 3A
      001A7C 00                    2933 	.db 0x00
                                   2934 	.area CSEG    (CODE)
                                   2935 	.area CONST   (CODE)
      001A7D                       2936 ___str_66:
      001A7D 30 30 30 25 78 20 20  2937 	.ascii "000%x  "
      001A84 00                    2938 	.db 0x00
                                   2939 	.area CSEG    (CODE)
                                   2940 	.area CONST   (CODE)
      001A85                       2941 ___str_67:
      001A85 30 30 25 78 20 20     2942 	.ascii "00%x  "
      001A8B 00                    2943 	.db 0x00
                                   2944 	.area CSEG    (CODE)
                                   2945 	.area CONST   (CODE)
      001A8C                       2946 ___str_68:
      001A8C 30 25 78 20 20        2947 	.ascii "0%x  "
      001A91 00                    2948 	.db 0x00
                                   2949 	.area CSEG    (CODE)
                                   2950 	.area CONST   (CODE)
      001A92                       2951 ___str_69:
      001A92 25 78 20 20           2952 	.ascii "%x  "
      001A96 00                    2953 	.db 0x00
                                   2954 	.area CSEG    (CODE)
                                   2955 	.area CONST   (CODE)
      001A97                       2956 ___str_70:
      001A97 25 78 20              2957 	.ascii "%x "
      001A9A 00                    2958 	.db 0x00
                                   2959 	.area CSEG    (CODE)
                                   2960 	.area CONST   (CODE)
      001A9B                       2961 ___str_71:
      001A9B 20 7C                 2962 	.ascii " |"
      001A9D 00                    2963 	.db 0x00
                                   2964 	.area CSEG    (CODE)
                                   2965 	.area CONST   (CODE)
      001A9E                       2966 ___str_72:
      001A9E 25 63                 2967 	.ascii "%c"
      001AA0 00                    2968 	.db 0x00
                                   2969 	.area CSEG    (CODE)
                                   2970 	.area CONST   (CODE)
      001AA1                       2971 ___str_73:
      001AA1 44 75 6D 70 69 6E 67  2972 	.ascii "Dumping eeprom content in hex format:"
             20 65 65 70 72 6F 6D
             20 63 6F 6E 74 65 6E
             74 20 69 6E 20 68 65
             78 20 66 6F 72 6D 61
             74 3A
      001AC6 00                    2973 	.db 0x00
                                   2974 	.area CSEG    (CODE)
                                   2975 	.area CONST   (CODE)
      001AC7                       2976 ___str_74:
      001AC7 3A 31 30              2977 	.ascii ":10"
      001ACA 00                    2978 	.db 0x00
                                   2979 	.area CSEG    (CODE)
                                   2980 	.area CONST   (CODE)
      001ACB                       2981 ___str_75:
      001ACB 30 30 30 25 78        2982 	.ascii "000%x"
      001AD0 00                    2983 	.db 0x00
                                   2984 	.area CSEG    (CODE)
                                   2985 	.area CONST   (CODE)
      001AD1                       2986 ___str_76:
      001AD1 30 30 25 78           2987 	.ascii "00%x"
      001AD5 00                    2988 	.db 0x00
                                   2989 	.area CSEG    (CODE)
                                   2990 	.area CONST   (CODE)
      001AD6                       2991 ___str_77:
      001AD6 30 25 78              2992 	.ascii "0%x"
      001AD9 00                    2993 	.db 0x00
                                   2994 	.area CSEG    (CODE)
                                   2995 	.area CONST   (CODE)
      001ADA                       2996 ___str_78:
      001ADA 25 78                 2997 	.ascii "%x"
      001ADC 00                    2998 	.db 0x00
                                   2999 	.area CSEG    (CODE)
                                   3000 	.area CONST   (CODE)
      001ADD                       3001 ___str_79:
      001ADD 30 30                 3002 	.ascii "00"
      001ADF 00                    3003 	.db 0x00
                                   3004 	.area CSEG    (CODE)
                                   3005 	.area CONST   (CODE)
      001AE0                       3006 ___str_80:
      001AE0 25 78                 3007 	.ascii "%x"
      001AE2 0D                    3008 	.db 0x0d
      001AE3 00                    3009 	.db 0x00
                                   3010 	.area CSEG    (CODE)
                                   3011 	.area CONST   (CODE)
      001AE4                       3012 ___str_81:
      001AE4 25 73                 3013 	.ascii "%s"
      001AE6 00                    3014 	.db 0x00
                                   3015 	.area CSEG    (CODE)
                                   3016 	.area CONST   (CODE)
      001AE7                       3017 ___str_82:
      001AE7 3A 30 30 30 30 30 30  3018 	.ascii ":00000001FF"
             30 31 46 46
      001AF2 00                    3019 	.db 0x00
                                   3020 	.area CSEG    (CODE)
                                   3021 	.area CONST   (CODE)
      001AF3                       3022 ___str_83:
      001AF3 44 75 6D 70 69 6E 67  3023 	.ascii "Dumping code:"
             20 63 6F 64 65 3A
      001B00 00                    3024 	.db 0x00
                                   3025 	.area CSEG    (CODE)
                                   3026 	.area CONST   (CODE)
      001B01                       3027 ___str_84:
      001B01 44 75 6D 70 69 6E 67  3028 	.ascii "Dumping ram memory:"
             20 72 61 6D 20 6D 65
             6D 6F 72 79 3A
      001B14 00                    3029 	.db 0x00
                                   3030 	.area CSEG    (CODE)
                                   3031 	.area CONST   (CODE)
      001B15                       3032 ___str_85:
      001B15 44 75 6D 70 69 6E 67  3033 	.ascii "Dumping code in hex file format:"
             20 63 6F 64 65 20 69
             6E 20 68 65 78 20 66
             69 6C 65 20 66 6F 72
             6D 61 74 3A
      001B35 00                    3034 	.db 0x00
                                   3035 	.area CSEG    (CODE)
                                   3036 	.area CONST   (CODE)
      001B36                       3037 ___str_86:
      001B36 52 65 73 65 74 74 69  3038 	.ascii "Resetting the micro."
             6E 67 20 74 68 65 20
             6D 69 63 72 6F 2E
      001B4A 00                    3039 	.db 0x00
                                   3040 	.area CSEG    (CODE)
                                   3041 	.area CONST   (CODE)
      001B4B                       3042 ___str_87:
      001B4B 43 70 75 20 25 73 20  3043 	.ascii "Cpu %s running at %sMHz"
             72 75 6E 6E 69 6E 67
             20 61 74 20 25 73 4D
             48 7A
      001B62 0D                    3044 	.db 0x0d
      001B63 00                    3045 	.db 0x00
                                   3046 	.area CSEG    (CODE)
                                   3047 	.area CONST   (CODE)
      001B64                       3048 ___str_88:
      001B64 38 39 53 38 32 35 33  3049 	.ascii "89S8253"
      001B6B 00                    3050 	.db 0x00
                                   3051 	.area CSEG    (CODE)
                                   3052 	.area CONST   (CODE)
      001B6C                       3053 ___str_89:
      001B6C 31 31 2E 30 35 39 32  3054 	.ascii "11.0592"
      001B73 00                    3055 	.db 0x00
                                   3056 	.area CSEG    (CODE)
                                   3057 	.area CONST   (CODE)
      001B74                       3058 ___str_90:
      001B74 44 6F 75 62 6C 65 20  3059 	.ascii "Double system clock"
             73 79 73 74 65 6D 20
             63 6C 6F 63 6B
      001B87 00                    3060 	.db 0x00
                                   3061 	.area CSEG    (CODE)
                                   3062 	.area CONST   (CODE)
      001B88                       3063 ___str_91:
      001B88 43 6F 6C 64 20 72 65  3064 	.ascii "Cold reset"
             73 65 74
      001B92 00                    3065 	.db 0x00
                                   3066 	.area CSEG    (CODE)
                                   3067 	.area CONST   (CODE)
      001B93                       3068 ___str_92:
      001B93 57 61 72 6D 20 72 65  3069 	.ascii "Warm reset"
             73 65 74
      001B9D 00                    3070 	.db 0x00
                                   3071 	.area CSEG    (CODE)
                                   3072 	.area CONST   (CODE)
      001B9E                       3073 ___str_93:
      001B9E 45 6E 61 62 6C 65 64  3074 	.ascii "Enabled watchdog"
             20 77 61 74 63 68 64
             6F 67
      001BAE 00                    3075 	.db 0x00
                                   3076 	.area CSEG    (CODE)
                                   3077 	.area CONST   (CODE)
      001BAF                       3078 ___str_94:
      001BAF 53 74 61 72 74 65 64  3079 	.ascii "Started timer 2 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             32 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001BD7 0D                    3080 	.db 0x0d
      001BD8 00                    3081 	.db 0x00
                                   3082 	.area CSEG    (CODE)
                                   3083 	.area CONST   (CODE)
      001BD9                       3084 ___str_95:
      001BD9 53 74 61 72 74 65 64  3085 	.ascii "Started serial at %s bps"
             20 73 65 72 69 61 6C
             20 61 74 20 25 73 20
             62 70 73
      001BF1 0D                    3086 	.db 0x0d
      001BF2 00                    3087 	.db 0x00
                                   3088 	.area CSEG    (CODE)
                                   3089 	.area CONST   (CODE)
      001BF3                       3090 ___str_96:
      001BF3 31 31 35 32 30 30     3091 	.ascii "115200"
      001BF9 00                    3092 	.db 0x00
                                   3093 	.area CSEG    (CODE)
                                   3094 	.area CONST   (CODE)
      001BFA                       3095 ___str_97:
      001BFA 53 74 61 72 74 65 64  3096 	.ascii "Started timer 0 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             30 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001C22 0D                    3097 	.db 0x0d
      001C23 00                    3098 	.db 0x00
                                   3099 	.area CSEG    (CODE)
                                   3100 	.area CONST   (CODE)
      001C24                       3101 ___str_100:
      001C24 48 65 6C 6C 6F 20 57  3102 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      001C32 0D                    3103 	.db 0x0d
      001C33 54 68 69 73 20 69 73  3104 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      001C49 0A                    3105 	.db 0x0a
      001C4A 50 72 69 6E 74 20 61  3106 	.ascii "Print a string from code memory:"
             20 73 74 72 69 6E 67
             20 66 72 6F 6D 20 63
             6F 64 65 20 6D 65 6D
             6F 72 79 3A
      001C6A 00                    3107 	.db 0x00
                                   3108 	.area CSEG    (CODE)
                                   3109 	.area CONST   (CODE)
      001C6B                       3110 ___str_101:
      001C6B 57 68 69 63 68 20 70  3111 	.ascii "Which pin from 2 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 32 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001C8C 0D                    3112 	.db 0x0d
      001C8D 00                    3113 	.db 0x00
                                   3114 	.area CSEG    (CODE)
                                   3115 	.area CONST   (CODE)
      001C8E                       3116 ___str_102:
      001C8E 57 68 69 63 68 20 70  3117 	.ascii "Which pin from 3 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 33 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001CAF 0D                    3118 	.db 0x0d
      001CB0 00                    3119 	.db 0x00
                                   3120 	.area CSEG    (CODE)
                                   3121 	.area CONST   (CODE)
      001CB1                       3122 ___str_103:
      001CB1 57 68 69 63 68 20 70  3123 	.ascii "Which pin from 0 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 30 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001CD2 0D                    3124 	.db 0x0d
      001CD3 00                    3125 	.db 0x00
                                   3126 	.area CSEG    (CODE)
                                   3127 	.area CONST   (CODE)
      001CD4                       3128 ___str_104:
      001CD4 50 69 6E 20 25 75 20  3129 	.ascii "Pin %u of port %u: "
             6F 66 20 70 6F 72 74
             20 25 75 3A 20
      001CE7 00                    3130 	.db 0x00
                                   3131 	.area CSEG    (CODE)
                                   3132 	.area CONST   (CODE)
      001CE8                       3133 ___str_105:
      001CE8 30 20 6F 66 66 2C 20  3134 	.ascii "0 off, 1 on."
             31 20 6F 6E 2E
      001CF4 00                    3135 	.db 0x00
                                   3136 	.area CSEG    (CODE)
                                   3137 	.area CONST   (CODE)
      001CF5                       3138 ___str_106:
      001CF5 53 65 74 74 69 6E 67  3139 	.ascii "Setting pin %u of port %u on."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 6E
             2E
      001D12 0D                    3140 	.db 0x0d
      001D13 00                    3141 	.db 0x00
                                   3142 	.area CSEG    (CODE)
                                   3143 	.area CONST   (CODE)
      001D14                       3144 ___str_107:
      001D14 53 65 74 74 69 6E 67  3145 	.ascii "Setting pin %u of port %u off."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 66
             66 2E
      001D32 0D                    3146 	.db 0x0d
      001D33 00                    3147 	.db 0x00
                                   3148 	.area CSEG    (CODE)
                                   3149 	.area CONST   (CODE)
      001D34                       3150 ___str_108:
      001D34 49 6E 76 61 6C 69 64  3151 	.ascii "Invalid action!"
             20 61 63 74 69 6F 6E
             21
      001D43 00                    3152 	.db 0x00
                                   3153 	.area CSEG    (CODE)
                                   3154 	.area CONST   (CODE)
      001D44                       3155 ___str_112:
      001D44 53 6F 72 72 79 20 74  3156 	.ascii "Sorry the pins 0 and 1 of port 3 are used by serial port."
             68 65 20 70 69 6E 73
             20 30 20 61 6E 64 20
             31 20 6F 66 20 70 6F
             72 74 20 33 20 61 72
             65 20 75 73 65 64 20
             62 79 20 73 65 72 69
             61 6C 20 70 6F 72 74
             2E
      001D7D 00                    3157 	.db 0x00
                                   3158 	.area CSEG    (CODE)
                                   3159 	.area CONST   (CODE)
      001D7E                       3160 ___str_113:
      001D7E 49 6E 76 61 6C 69 64  3161 	.ascii "Invalid pin!"
             20 70 69 6E 21
      001D8A 00                    3162 	.db 0x00
                                   3163 	.area CSEG    (CODE)
                                   3164 	.area CONST   (CODE)
      001D8B                       3165 ___str_115:
      001D8B 53 6F 72 72 79 20 74  3166 	.ascii "Sorry the pin 0 on port 2 is the blinking led,"
             68 65 20 70 69 6E 20
             30 20 6F 6E 20 70 6F
             72 74 20 32 20 69 73
             20 74 68 65 20 62 6C
             69 6E 6B 69 6E 67 20
             6C 65 64 2C
      001DB9 0A                    3167 	.db 0x0a
      001DBA 74 68 65 20 70 69 6E  3168 	.ascii "the pin 1 is the serial character transmit blink,"
             20 31 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 74
             72 61 6E 73 6D 69 74
             20 62 6C 69 6E 6B 2C
      001DEB 0A                    3169 	.db 0x0a
      001DEC 74 68 65 20 70 69 6E  3170 	.ascii "the pin 2 is the serial character receive blink."
             20 32 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 72
             65 63 65 69 76 65 20
             62 6C 69 6E 6B 2E
      001E1C 00                    3171 	.db 0x00
                                   3172 	.area CSEG    (CODE)
                                   3173 	.area CONST   (CODE)
      001E1D                       3174 ___str_134:
      001E1D 41 76 61 69 6C 61 62  3175 	.ascii "Available comamnds are:"
             6C 65 20 63 6F 6D 61
             6D 6E 64 73 20 61 72
             65 3A
      001E34 0A                    3176 	.db 0x0a
      001E35 30 2C 20 31 2C 20 32  3177 	.ascii "0, 1, 2 or 3 to change pin ports status."
             20 6F 72 20 33 20 74
             6F 20 63 68 61 6E 67
             65 20 70 69 6E 20 70
             6F 72 74 73 20 73 74
             61 74 75 73 2E
      001E5D 0A                    3178 	.db 0x0a
      001E5E 63 20 64 75 6D 70 20  3179 	.ascii "c dump code memory."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 2E
      001E71 0A                    3180 	.db 0x0a
      001E72 43 20 64 75 6D 70 20  3181 	.ascii "C dump code memory in hex format."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 20 69 6E
             20 68 65 78 20 66 6F
             72 6D 61 74 2E
      001E93 0A                    3182 	.db 0x0a
      001E94 65 20 64 75 6D 70 20  3183 	.ascii "e dump eeprom memory."
             65 65 70 72 6F 6D 20
             6D 65 6D 6F 72 79 2E
      001EA9 0A                    3184 	.db 0x0a
      001EAA 45 20 64 75 6D 70 20  3185 	.ascii "E dump eeprom memory in hex format."
             65 65 70 72 6F 6D 20
             6D 65 6D 6F 72 79 20
             69 6E 20 68 65 78 20
             66 6F 72 6D 61 74 2E
      001ECD 0A                    3186 	.db 0x0a
      001ECE 6D 20 64 75 6D 70 20  3187 	.ascii "m dump ram memory."
             72 61 6D 20 6D 65 6D
             6F 72 79 2E
      001EE0 0A                    3188 	.db 0x0a
      001EE1 66 20 70 72 69 6E 74  3189 	.ascii "f print felix"
             20 66 65 6C 69 78
      001EEE 0A                    3190 	.db 0x0a
      001EEF 72 20 72 65 73 65 74  3191 	.ascii "r reset the microcontroller."
             20 74 68 65 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 2E
      001F0B 0A                    3192 	.db 0x0a
      001F0C 48 20 70 72 69 6E 74  3193 	.ascii "H print this help."
             20 74 68 69 73 20 68
             65 6C 70 2E
      001F1E 00                    3194 	.db 0x00
                                   3195 	.area CSEG    (CODE)
                                   3196 	.area CONST   (CODE)
      001F1F                       3197 ___str_135:
      001F1F 49 6E 73 65 72 74 20  3198 	.ascii "Insert command, h for help."
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 2E
      001F3A 00                    3199 	.db 0x00
                                   3200 	.area CSEG    (CODE)
                                   3201 	.area CONST   (CODE)
      001F3B                       3202 ___str_136:
      001F3B 49 6E 76 61 6C 69 64  3203 	.ascii "Invalid command %c."
             20 63 6F 6D 6D 61 6E
             64 20 25 63 2E
      001F4E 0D                    3204 	.db 0x0d
      001F4F 00                    3205 	.db 0x00
                                   3206 	.area CSEG    (CODE)
                                   3207 	.area CONST   (CODE)
      001F50                       3208 ___str_137:
      001F50 49 6E 73 65 72 74 20  3209 	.ascii "Insert command, h for help:"
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 3A
      001F6B 00                    3210 	.db 0x00
                                   3211 	.area CSEG    (CODE)
                                   3212 	.area XINIT   (CODE)
                                   3213 	.area CABS    (ABS,CODE)
