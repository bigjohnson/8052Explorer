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
                                    398 ;--------------------------------------------------------
                                    399 ; paged external ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area PSEG    (PAG,XDATA)
                                    402 ;--------------------------------------------------------
                                    403 ; external ram data
                                    404 ;--------------------------------------------------------
                                    405 	.area XSEG    (XDATA)
                                    406 ;--------------------------------------------------------
                                    407 ; absolute external ram data
                                    408 ;--------------------------------------------------------
                                    409 	.area XABS    (ABS,XDATA)
                                    410 ;--------------------------------------------------------
                                    411 ; external initialized ram data
                                    412 ;--------------------------------------------------------
                                    413 	.area XISEG   (XDATA)
                                    414 	.area HOME    (CODE)
                                    415 	.area GSINIT0 (CODE)
                                    416 	.area GSINIT1 (CODE)
                                    417 	.area GSINIT2 (CODE)
                                    418 	.area GSINIT3 (CODE)
                                    419 	.area GSINIT4 (CODE)
                                    420 	.area GSINIT5 (CODE)
                                    421 	.area GSINIT  (CODE)
                                    422 	.area GSFINAL (CODE)
                                    423 	.area CSEG    (CODE)
                                    424 ;--------------------------------------------------------
                                    425 ; interrupt vector
                                    426 ;--------------------------------------------------------
                                    427 	.area HOME    (CODE)
      000000                        428 __interrupt_vect:
      000000 02 00 29         [24]  429 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  430 	reti
      000004                        431 	.ds	7
      00000B 02 10 71         [24]  432 	ljmp	_it_timer0
      00000E                        433 	.ds	5
      000013 32               [24]  434 	reti
      000014                        435 	.ds	7
      00001B 32               [24]  436 	reti
      00001C                        437 	.ds	7
      000023 02 0F 96         [24]  438 	ljmp	_SerInt
                                    439 ;--------------------------------------------------------
                                    440 ; global & static initialisations
                                    441 ;--------------------------------------------------------
                                    442 	.area HOME    (CODE)
                                    443 	.area GSINIT  (CODE)
                                    444 	.area GSFINAL (CODE)
                                    445 	.area GSINIT  (CODE)
                                    446 	.globl __sdcc_gsinit_startup
                                    447 	.globl __sdcc_program_startup
                                    448 	.globl __start__stack
                                    449 	.globl __mcs51_genXINIT
                                    450 	.globl __mcs51_genXRAMCLEAR
                                    451 	.globl __mcs51_genRAMCLEAR
                                    452 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  453 	ljmp	__sdcc_program_startup
                                    454 ;--------------------------------------------------------
                                    455 ; Home
                                    456 ;--------------------------------------------------------
                                    457 	.area HOME    (CODE)
                                    458 	.area HOME    (CODE)
      000026                        459 __sdcc_program_startup:
      000026 02 0E 0B         [24]  460 	ljmp	_main
                                    461 ;	return from main will return to caller
                                    462 ;--------------------------------------------------------
                                    463 ; code
                                    464 ;--------------------------------------------------------
                                    465 	.area CSEG    (CODE)
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'watchdogRESET'
                                    468 ;------------------------------------------------------------
                                    469 ;	8052Explorer.c:121: void watchdogRESET ( void ) {
                                    470 ;	-----------------------------------------
                                    471 ;	 function watchdogRESET
                                    472 ;	-----------------------------------------
      000085                        473 _watchdogRESET:
                           000007   474 	ar7 = 0x07
                           000006   475 	ar6 = 0x06
                           000005   476 	ar5 = 0x05
                           000004   477 	ar4 = 0x04
                           000003   478 	ar3 = 0x03
                           000002   479 	ar2 = 0x02
                           000001   480 	ar1 = 0x01
                           000000   481 	ar0 = 0x00
                                    482 ;	8052Explorer.c:122: WDTRST = 0x1E;
      000085 75 A6 1E         [24]  483 	mov	_WDTRST,#0x1e
                                    484 ;	8052Explorer.c:123: WDTRST = 0xE1;
      000088 75 A6 E1         [24]  485 	mov	_WDTRST,#0xe1
                                    486 ;	8052Explorer.c:124: }
      00008B 22               [24]  487 	ret
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'felix'
                                    490 ;------------------------------------------------------------
                                    491 ;	8052Explorer.c:126: void felix (void) {
                                    492 ;	-----------------------------------------
                                    493 ;	 function felix
                                    494 ;	-----------------------------------------
      00008C                        495 _felix:
                                    496 ;	8052Explorer.c:127: putchar('\r');
      00008C 90 00 0D         [24]  497 	mov	dptr,#0x000d
      00008F 12 10 3D         [24]  498 	lcall	_putchar
                                    499 ;	8052Explorer.c:160: puts("                         '~~~*==Y*f~~~ ");
      000092 90 12 DF         [24]  500 	mov	dptr,#___str_64
      000095 75 F0 80         [24]  501 	mov	b,#0x80
      000098 12 12 58         [24]  502 	lcall	_puts
                                    503 ;	8052Explorer.c:161: putchar('\r');
      00009B 90 00 0D         [24]  504 	mov	dptr,#0x000d
                                    505 ;	8052Explorer.c:162: }
      00009E 02 10 3D         [24]  506 	ljmp	_putchar
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'dumpEEPROM'
                                    509 ;------------------------------------------------------------
                                    510 ;eepromchar                Allocated to registers r7 
                                    511 ;indirizzo                 Allocated to registers r6 r7 
                                    512 ;posto                     Allocated to registers r5 
                                    513 ;lettura                   Allocated to registers r4 
                                    514 ;lettura                   Allocated to registers r4 
                                    515 ;posto                     Allocated to registers r5 
                                    516 ;------------------------------------------------------------
                                    517 ;	8052Explorer.c:164: void dumpEEPROM () {
                                    518 ;	-----------------------------------------
                                    519 ;	 function dumpEEPROM
                                    520 ;	-----------------------------------------
      0000A1                        521 _dumpEEPROM:
                                    522 ;	8052Explorer.c:165: puts("Dumping eeprom content and changing first character:");
      0000A1 90 1A 30         [24]  523 	mov	dptr,#___str_65
      0000A4 75 F0 80         [24]  524 	mov	b,#0x80
      0000A7 12 12 58         [24]  525 	lcall	_puts
                                    526 ;	8052Explorer.c:167: unsigned char eepromchar = readEeprom(0);
      0000AA 90 00 00         [24]  527 	mov	dptr,#0x0000
      0000AD 12 0F 07         [24]  528 	lcall	_readEeprom
      0000B0 E5 82            [12]  529 	mov	a,dpl
                                    530 ;	8052Explorer.c:168: eepromchar++;
      0000B2 04               [12]  531 	inc	a
      0000B3 FF               [12]  532 	mov	r7,a
                                    533 ;	8052Explorer.c:169: if (0x5B == eepromchar) {
      0000B4 BF 5B 02         [24]  534 	cjne	r7,#0x5b,00102$
                                    535 ;	8052Explorer.c:170: eepromchar = 0x41;
      0000B7 7F 41            [12]  536 	mov	r7,#0x41
      0000B9                        537 00102$:
                                    538 ;	8052Explorer.c:172: writeEeprom (eepromchar, 0);
      0000B9 E4               [12]  539 	clr	a
      0000BA F5 0B            [12]  540 	mov	_writeEeprom_PARM_2,a
      0000BC F5 0C            [12]  541 	mov	(_writeEeprom_PARM_2 + 1),a
      0000BE 8F 82            [24]  542 	mov	dpl,r7
      0000C0 12 0F 36         [24]  543 	lcall	_writeEeprom
                                    544 ;	8052Explorer.c:174: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
      0000C3 7E 00            [12]  545 	mov	r6,#0x00
      0000C5 7F 00            [12]  546 	mov	r7,#0x00
      0000C7                        547 00127$:
      0000C7 8E 04            [24]  548 	mov	ar4,r6
      0000C9 8F 05            [24]  549 	mov	ar5,r7
      0000CB C3               [12]  550 	clr	c
      0000CC 74 FF            [12]  551 	mov	a,#0xff
      0000CE 9C               [12]  552 	subb	a,r4
      0000CF 74 07            [12]  553 	mov	a,#0x07
      0000D1 9D               [12]  554 	subb	a,r5
      0000D2 50 03            [24]  555 	jnc	00195$
      0000D4 02 02 62         [24]  556 	ljmp	00119$
      0000D7                        557 00195$:
                                    558 ;	8052Explorer.c:175: if (indirizzo < 0x10) {
      0000D7 C3               [12]  559 	clr	c
      0000D8 EC               [12]  560 	mov	a,r4
      0000D9 94 10            [12]  561 	subb	a,#0x10
      0000DB ED               [12]  562 	mov	a,r5
      0000DC 94 00            [12]  563 	subb	a,#0x00
      0000DE 50 1F            [24]  564 	jnc	00110$
                                    565 ;	8052Explorer.c:176: printf_tiny("000%x  ", indirizzo);
      0000E0 C0 07            [24]  566 	push	ar7
      0000E2 C0 06            [24]  567 	push	ar6
      0000E4 C0 06            [24]  568 	push	ar6
      0000E6 C0 07            [24]  569 	push	ar7
      0000E8 74 65            [12]  570 	mov	a,#___str_66
      0000EA C0 E0            [24]  571 	push	acc
      0000EC 74 1A            [12]  572 	mov	a,#(___str_66 >> 8)
      0000EE C0 E0            [24]  573 	push	acc
      0000F0 12 11 02         [24]  574 	lcall	_printf_tiny
      0000F3 E5 81            [12]  575 	mov	a,sp
      0000F5 24 FC            [12]  576 	add	a,#0xfc
      0000F7 F5 81            [12]  577 	mov	sp,a
      0000F9 D0 06            [24]  578 	pop	ar6
      0000FB D0 07            [24]  579 	pop	ar7
      0000FD 80 65            [24]  580 	sjmp	00138$
      0000FF                        581 00110$:
                                    582 ;	8052Explorer.c:177: } else if (indirizzo < 0x100) {
      0000FF 74 FF            [12]  583 	mov	a,#0x100 - 0x01
      000101 2D               [12]  584 	add	a,r5
      000102 40 1F            [24]  585 	jc	00107$
                                    586 ;	8052Explorer.c:178: printf_tiny("00%x  ", indirizzo);
      000104 C0 07            [24]  587 	push	ar7
      000106 C0 06            [24]  588 	push	ar6
      000108 C0 06            [24]  589 	push	ar6
      00010A C0 07            [24]  590 	push	ar7
      00010C 74 6D            [12]  591 	mov	a,#___str_67
      00010E C0 E0            [24]  592 	push	acc
      000110 74 1A            [12]  593 	mov	a,#(___str_67 >> 8)
      000112 C0 E0            [24]  594 	push	acc
      000114 12 11 02         [24]  595 	lcall	_printf_tiny
      000117 E5 81            [12]  596 	mov	a,sp
      000119 24 FC            [12]  597 	add	a,#0xfc
      00011B F5 81            [12]  598 	mov	sp,a
      00011D D0 06            [24]  599 	pop	ar6
      00011F D0 07            [24]  600 	pop	ar7
      000121 80 41            [24]  601 	sjmp	00138$
      000123                        602 00107$:
                                    603 ;	8052Explorer.c:179: } else if (indirizzo < 0x1000) {
      000123 74 F0            [12]  604 	mov	a,#0x100 - 0x10
      000125 2D               [12]  605 	add	a,r5
      000126 40 1F            [24]  606 	jc	00104$
                                    607 ;	8052Explorer.c:180: printf_tiny("0%x  ", indirizzo);
      000128 C0 07            [24]  608 	push	ar7
      00012A C0 06            [24]  609 	push	ar6
      00012C C0 06            [24]  610 	push	ar6
      00012E C0 07            [24]  611 	push	ar7
      000130 74 74            [12]  612 	mov	a,#___str_68
      000132 C0 E0            [24]  613 	push	acc
      000134 74 1A            [12]  614 	mov	a,#(___str_68 >> 8)
      000136 C0 E0            [24]  615 	push	acc
      000138 12 11 02         [24]  616 	lcall	_printf_tiny
      00013B E5 81            [12]  617 	mov	a,sp
      00013D 24 FC            [12]  618 	add	a,#0xfc
      00013F F5 81            [12]  619 	mov	sp,a
      000141 D0 06            [24]  620 	pop	ar6
      000143 D0 07            [24]  621 	pop	ar7
      000145 80 1D            [24]  622 	sjmp	00138$
      000147                        623 00104$:
                                    624 ;	8052Explorer.c:182: printf_tiny("%x  ", indirizzo);
      000147 C0 07            [24]  625 	push	ar7
      000149 C0 06            [24]  626 	push	ar6
      00014B C0 06            [24]  627 	push	ar6
      00014D C0 07            [24]  628 	push	ar7
      00014F 74 7A            [12]  629 	mov	a,#___str_69
      000151 C0 E0            [24]  630 	push	acc
      000153 74 1A            [12]  631 	mov	a,#(___str_69 >> 8)
      000155 C0 E0            [24]  632 	push	acc
      000157 12 11 02         [24]  633 	lcall	_printf_tiny
      00015A E5 81            [12]  634 	mov	a,sp
      00015C 24 FC            [12]  635 	add	a,#0xfc
      00015E F5 81            [12]  636 	mov	sp,a
      000160 D0 06            [24]  637 	pop	ar6
      000162 D0 07            [24]  638 	pop	ar7
                                    639 ;	8052Explorer.c:184: for (unsigned char posto = 0; posto < 16; posto++) {
      000164                        640 00138$:
      000164 7D 00            [12]  641 	mov	r5,#0x00
      000166                        642 00121$:
      000166 BD 10 00         [24]  643 	cjne	r5,#0x10,00199$
      000169                        644 00199$:
      000169 50 64            [24]  645 	jnc	00114$
                                    646 ;	8052Explorer.c:185: unsigned char lettura = readEeprom(indirizzo + (unsigned int)posto);
      00016B 8D 03            [24]  647 	mov	ar3,r5
      00016D 7C 00            [12]  648 	mov	r4,#0x00
      00016F 8E 01            [24]  649 	mov	ar1,r6
      000171 8F 02            [24]  650 	mov	ar2,r7
      000173 EB               [12]  651 	mov	a,r3
      000174 29               [12]  652 	add	a,r1
      000175 FB               [12]  653 	mov	r3,a
      000176 EC               [12]  654 	mov	a,r4
      000177 3A               [12]  655 	addc	a,r2
      000178 FC               [12]  656 	mov	r4,a
      000179 8B 82            [24]  657 	mov	dpl,r3
      00017B 8C 83            [24]  658 	mov	dph,r4
      00017D C0 07            [24]  659 	push	ar7
      00017F C0 06            [24]  660 	push	ar6
      000181 C0 05            [24]  661 	push	ar5
      000183 12 0F 07         [24]  662 	lcall	_readEeprom
      000186 AC 82            [24]  663 	mov	r4,dpl
      000188 D0 05            [24]  664 	pop	ar5
      00018A D0 06            [24]  665 	pop	ar6
      00018C D0 07            [24]  666 	pop	ar7
                                    667 ;	8052Explorer.c:186: if ( lettura < 0x10 ) {
      00018E BC 10 00         [24]  668 	cjne	r4,#0x10,00201$
      000191                        669 00201$:
      000191 50 16            [24]  670 	jnc	00113$
                                    671 ;	8052Explorer.c:187: putchar('0');
      000193 90 00 30         [24]  672 	mov	dptr,#0x0030
      000196 C0 07            [24]  673 	push	ar7
      000198 C0 06            [24]  674 	push	ar6
      00019A C0 05            [24]  675 	push	ar5
      00019C C0 04            [24]  676 	push	ar4
      00019E 12 10 3D         [24]  677 	lcall	_putchar
      0001A1 D0 04            [24]  678 	pop	ar4
      0001A3 D0 05            [24]  679 	pop	ar5
      0001A5 D0 06            [24]  680 	pop	ar6
      0001A7 D0 07            [24]  681 	pop	ar7
      0001A9                        682 00113$:
                                    683 ;	8052Explorer.c:189: printf_tiny("%x ", lettura);
      0001A9 7B 00            [12]  684 	mov	r3,#0x00
      0001AB C0 07            [24]  685 	push	ar7
      0001AD C0 06            [24]  686 	push	ar6
      0001AF C0 05            [24]  687 	push	ar5
      0001B1 C0 04            [24]  688 	push	ar4
      0001B3 C0 03            [24]  689 	push	ar3
      0001B5 74 7F            [12]  690 	mov	a,#___str_70
      0001B7 C0 E0            [24]  691 	push	acc
      0001B9 74 1A            [12]  692 	mov	a,#(___str_70 >> 8)
      0001BB C0 E0            [24]  693 	push	acc
      0001BD 12 11 02         [24]  694 	lcall	_printf_tiny
      0001C0 E5 81            [12]  695 	mov	a,sp
      0001C2 24 FC            [12]  696 	add	a,#0xfc
      0001C4 F5 81            [12]  697 	mov	sp,a
      0001C6 D0 05            [24]  698 	pop	ar5
      0001C8 D0 06            [24]  699 	pop	ar6
      0001CA D0 07            [24]  700 	pop	ar7
                                    701 ;	8052Explorer.c:184: for (unsigned char posto = 0; posto < 16; posto++) {
      0001CC 0D               [12]  702 	inc	r5
      0001CD 80 97            [24]  703 	sjmp	00121$
      0001CF                        704 00114$:
                                    705 ;	8052Explorer.c:192: printf_tiny(" |");
      0001CF C0 07            [24]  706 	push	ar7
      0001D1 C0 06            [24]  707 	push	ar6
      0001D3 74 83            [12]  708 	mov	a,#___str_71
      0001D5 C0 E0            [24]  709 	push	acc
      0001D7 74 1A            [12]  710 	mov	a,#(___str_71 >> 8)
      0001D9 C0 E0            [24]  711 	push	acc
      0001DB 12 11 02         [24]  712 	lcall	_printf_tiny
      0001DE 15 81            [12]  713 	dec	sp
      0001E0 15 81            [12]  714 	dec	sp
      0001E2 D0 06            [24]  715 	pop	ar6
      0001E4 D0 07            [24]  716 	pop	ar7
                                    717 ;	8052Explorer.c:194: for (unsigned char posto=0; posto < 16; posto++) {
      0001E6 7D 00            [12]  718 	mov	r5,#0x00
      0001E8                        719 00124$:
      0001E8 BD 10 00         [24]  720 	cjne	r5,#0x10,00203$
      0001EB                        721 00203$:
      0001EB 50 4F            [24]  722 	jnc	00118$
                                    723 ;	8052Explorer.c:195: lettura = readEeprom(indirizzo+(short)posto);
      0001ED 8D 03            [24]  724 	mov	ar3,r5
      0001EF 7C 00            [12]  725 	mov	r4,#0x00
      0001F1 EB               [12]  726 	mov	a,r3
      0001F2 2E               [12]  727 	add	a,r6
      0001F3 F5 82            [12]  728 	mov	dpl,a
      0001F5 EC               [12]  729 	mov	a,r4
      0001F6 3F               [12]  730 	addc	a,r7
      0001F7 F5 83            [12]  731 	mov	dph,a
      0001F9 C0 07            [24]  732 	push	ar7
      0001FB C0 06            [24]  733 	push	ar6
      0001FD C0 05            [24]  734 	push	ar5
      0001FF 12 0F 07         [24]  735 	lcall	_readEeprom
      000202 AC 82            [24]  736 	mov	r4,dpl
      000204 D0 05            [24]  737 	pop	ar5
      000206 D0 06            [24]  738 	pop	ar6
      000208 D0 07            [24]  739 	pop	ar7
                                    740 ;	8052Explorer.c:196: if ( lettura < 0x20 || lettura > 0x7E ) {
      00020A BC 20 00         [24]  741 	cjne	r4,#0x20,00205$
      00020D                        742 00205$:
      00020D 40 05            [24]  743 	jc	00115$
      00020F EC               [12]  744 	mov	a,r4
      000210 24 81            [12]  745 	add	a,#0xff - 0x7e
      000212 50 02            [24]  746 	jnc	00116$
      000214                        747 00115$:
                                    748 ;	8052Explorer.c:197: lettura = '.';
      000214 7C 2E            [12]  749 	mov	r4,#0x2e
      000216                        750 00116$:
                                    751 ;	8052Explorer.c:199: printf_tiny("%c", lettura);
      000216 7B 00            [12]  752 	mov	r3,#0x00
      000218 C0 07            [24]  753 	push	ar7
      00021A C0 06            [24]  754 	push	ar6
      00021C C0 05            [24]  755 	push	ar5
      00021E C0 04            [24]  756 	push	ar4
      000220 C0 03            [24]  757 	push	ar3
      000222 74 86            [12]  758 	mov	a,#___str_72
      000224 C0 E0            [24]  759 	push	acc
      000226 74 1A            [12]  760 	mov	a,#(___str_72 >> 8)
      000228 C0 E0            [24]  761 	push	acc
      00022A 12 11 02         [24]  762 	lcall	_printf_tiny
      00022D E5 81            [12]  763 	mov	a,sp
      00022F 24 FC            [12]  764 	add	a,#0xfc
      000231 F5 81            [12]  765 	mov	sp,a
      000233 D0 05            [24]  766 	pop	ar5
      000235 D0 06            [24]  767 	pop	ar6
      000237 D0 07            [24]  768 	pop	ar7
                                    769 ;	8052Explorer.c:194: for (unsigned char posto=0; posto < 16; posto++) {
      000239 0D               [12]  770 	inc	r5
      00023A 80 AC            [24]  771 	sjmp	00124$
      00023C                        772 00118$:
                                    773 ;	8052Explorer.c:202: putchar('|');
      00023C 90 00 7C         [24]  774 	mov	dptr,#0x007c
      00023F C0 07            [24]  775 	push	ar7
      000241 C0 06            [24]  776 	push	ar6
      000243 12 10 3D         [24]  777 	lcall	_putchar
                                    778 ;	8052Explorer.c:203: putchar('\r');
      000246 90 00 0D         [24]  779 	mov	dptr,#0x000d
      000249 12 10 3D         [24]  780 	lcall	_putchar
      00024C D0 06            [24]  781 	pop	ar6
      00024E D0 07            [24]  782 	pop	ar7
                                    783 ;	8052Explorer.c:174: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
      000250 8E 04            [24]  784 	mov	ar4,r6
      000252 8F 05            [24]  785 	mov	ar5,r7
      000254 74 10            [12]  786 	mov	a,#0x10
      000256 2C               [12]  787 	add	a,r4
      000257 FC               [12]  788 	mov	r4,a
      000258 E4               [12]  789 	clr	a
      000259 3D               [12]  790 	addc	a,r5
      00025A FD               [12]  791 	mov	r5,a
      00025B 8C 06            [24]  792 	mov	ar6,r4
      00025D 8D 07            [24]  793 	mov	ar7,r5
      00025F 02 00 C7         [24]  794 	ljmp	00127$
      000262                        795 00119$:
                                    796 ;	8052Explorer.c:206: putchar('\r');
      000262 90 00 0D         [24]  797 	mov	dptr,#0x000d
      000265 12 10 3D         [24]  798 	lcall	_putchar
                                    799 ;	8052Explorer.c:207: putchar('\r');
      000268 90 00 0D         [24]  800 	mov	dptr,#0x000d
                                    801 ;	8052Explorer.c:209: }
      00026B 02 10 3D         [24]  802 	ljmp	_putchar
                                    803 ;------------------------------------------------------------
                                    804 ;Allocation info for local variables in function 'hexEEPROM'
                                    805 ;------------------------------------------------------------
                                    806 ;checksum                  Allocated to registers r5 r4 
                                    807 ;indirizzo                 Allocated to registers r6 r7 
                                    808 ;posto                     Allocated to registers r3 
                                    809 ;lettura                   Allocated to registers r2 
                                    810 ;------------------------------------------------------------
                                    811 ;	8052Explorer.c:211: void hexEEPROM () {
                                    812 ;	-----------------------------------------
                                    813 ;	 function hexEEPROM
                                    814 ;	-----------------------------------------
      00026E                        815 _hexEEPROM:
                                    816 ;	8052Explorer.c:213: puts("Dumping eeprom content in hex format:");
      00026E 90 1A 89         [24]  817 	mov	dptr,#___str_73
      000271 75 F0 80         [24]  818 	mov	b,#0x80
      000274 12 12 58         [24]  819 	lcall	_puts
                                    820 ;	8052Explorer.c:214: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      000277 7E 00            [12]  821 	mov	r6,#0x00
      000279 7F 00            [12]  822 	mov	r7,#0x00
      00027B                        823 00120$:
      00027B 8E 04            [24]  824 	mov	ar4,r6
      00027D 8F 05            [24]  825 	mov	ar5,r7
      00027F C3               [12]  826 	clr	c
      000280 74 FF            [12]  827 	mov	a,#0xff
      000282 9C               [12]  828 	subb	a,r4
      000283 74 07            [12]  829 	mov	a,#0x07
      000285 9D               [12]  830 	subb	a,r5
      000286 50 03            [24]  831 	jnc	00170$
      000288 02 04 80         [24]  832 	ljmp	00115$
      00028B                        833 00170$:
                                    834 ;	8052Explorer.c:215: printf_tiny(":10");
      00028B C0 07            [24]  835 	push	ar7
      00028D C0 06            [24]  836 	push	ar6
      00028F C0 05            [24]  837 	push	ar5
      000291 C0 04            [24]  838 	push	ar4
      000293 74 AF            [12]  839 	mov	a,#___str_74
      000295 C0 E0            [24]  840 	push	acc
      000297 74 1A            [12]  841 	mov	a,#(___str_74 >> 8)
      000299 C0 E0            [24]  842 	push	acc
      00029B 12 11 02         [24]  843 	lcall	_printf_tiny
      00029E 15 81            [12]  844 	dec	sp
      0002A0 15 81            [12]  845 	dec	sp
      0002A2 D0 04            [24]  846 	pop	ar4
      0002A4 D0 05            [24]  847 	pop	ar5
      0002A6 D0 06            [24]  848 	pop	ar6
      0002A8 D0 07            [24]  849 	pop	ar7
                                    850 ;	8052Explorer.c:216: checksum = 0x10;
      0002AA 7A 10            [12]  851 	mov	r2,#0x10
      0002AC 7B 00            [12]  852 	mov	r3,#0x00
                                    853 ;	8052Explorer.c:217: if (indirizzo < 0x10) {
      0002AE C3               [12]  854 	clr	c
      0002AF EC               [12]  855 	mov	a,r4
      0002B0 94 10            [12]  856 	subb	a,#0x10
      0002B2 ED               [12]  857 	mov	a,r5
      0002B3 94 00            [12]  858 	subb	a,#0x00
      0002B5 50 28            [24]  859 	jnc	00108$
                                    860 ;	8052Explorer.c:218: printf_tiny("000%x", indirizzo);
      0002B7 C0 07            [24]  861 	push	ar7
      0002B9 C0 06            [24]  862 	push	ar6
      0002BB C0 03            [24]  863 	push	ar3
      0002BD C0 02            [24]  864 	push	ar2
      0002BF C0 06            [24]  865 	push	ar6
      0002C1 C0 07            [24]  866 	push	ar7
      0002C3 74 B3            [12]  867 	mov	a,#___str_75
      0002C5 C0 E0            [24]  868 	push	acc
      0002C7 74 1A            [12]  869 	mov	a,#(___str_75 >> 8)
      0002C9 C0 E0            [24]  870 	push	acc
      0002CB 12 11 02         [24]  871 	lcall	_printf_tiny
      0002CE E5 81            [12]  872 	mov	a,sp
      0002D0 24 FC            [12]  873 	add	a,#0xfc
      0002D2 F5 81            [12]  874 	mov	sp,a
      0002D4 D0 02            [24]  875 	pop	ar2
      0002D6 D0 03            [24]  876 	pop	ar3
      0002D8 D0 06            [24]  877 	pop	ar6
      0002DA D0 07            [24]  878 	pop	ar7
      0002DC 02 03 5C         [24]  879 	ljmp	00109$
      0002DF                        880 00108$:
                                    881 ;	8052Explorer.c:219: } else if (indirizzo < 0x100) {
      0002DF 74 FF            [12]  882 	mov	a,#0x100 - 0x01
      0002E1 2D               [12]  883 	add	a,r5
      0002E2 40 27            [24]  884 	jc	00105$
                                    885 ;	8052Explorer.c:220: printf_tiny("00%x", indirizzo);
      0002E4 C0 07            [24]  886 	push	ar7
      0002E6 C0 06            [24]  887 	push	ar6
      0002E8 C0 03            [24]  888 	push	ar3
      0002EA C0 02            [24]  889 	push	ar2
      0002EC C0 06            [24]  890 	push	ar6
      0002EE C0 07            [24]  891 	push	ar7
      0002F0 74 B9            [12]  892 	mov	a,#___str_76
      0002F2 C0 E0            [24]  893 	push	acc
      0002F4 74 1A            [12]  894 	mov	a,#(___str_76 >> 8)
      0002F6 C0 E0            [24]  895 	push	acc
      0002F8 12 11 02         [24]  896 	lcall	_printf_tiny
      0002FB E5 81            [12]  897 	mov	a,sp
      0002FD 24 FC            [12]  898 	add	a,#0xfc
      0002FF F5 81            [12]  899 	mov	sp,a
      000301 D0 02            [24]  900 	pop	ar2
      000303 D0 03            [24]  901 	pop	ar3
      000305 D0 06            [24]  902 	pop	ar6
      000307 D0 07            [24]  903 	pop	ar7
      000309 80 51            [24]  904 	sjmp	00109$
      00030B                        905 00105$:
                                    906 ;	8052Explorer.c:221: } else if (indirizzo < 0x1000) {
      00030B 74 F0            [12]  907 	mov	a,#0x100 - 0x10
      00030D 2D               [12]  908 	add	a,r5
      00030E 40 27            [24]  909 	jc	00102$
                                    910 ;	8052Explorer.c:222: printf_tiny("0%x", indirizzo);
      000310 C0 07            [24]  911 	push	ar7
      000312 C0 06            [24]  912 	push	ar6
      000314 C0 03            [24]  913 	push	ar3
      000316 C0 02            [24]  914 	push	ar2
      000318 C0 06            [24]  915 	push	ar6
      00031A C0 07            [24]  916 	push	ar7
      00031C 74 BE            [12]  917 	mov	a,#___str_77
      00031E C0 E0            [24]  918 	push	acc
      000320 74 1A            [12]  919 	mov	a,#(___str_77 >> 8)
      000322 C0 E0            [24]  920 	push	acc
      000324 12 11 02         [24]  921 	lcall	_printf_tiny
      000327 E5 81            [12]  922 	mov	a,sp
      000329 24 FC            [12]  923 	add	a,#0xfc
      00032B F5 81            [12]  924 	mov	sp,a
      00032D D0 02            [24]  925 	pop	ar2
      00032F D0 03            [24]  926 	pop	ar3
      000331 D0 06            [24]  927 	pop	ar6
      000333 D0 07            [24]  928 	pop	ar7
      000335 80 25            [24]  929 	sjmp	00109$
      000337                        930 00102$:
                                    931 ;	8052Explorer.c:224: printf_tiny("%x", indirizzo);
      000337 C0 07            [24]  932 	push	ar7
      000339 C0 06            [24]  933 	push	ar6
      00033B C0 03            [24]  934 	push	ar3
      00033D C0 02            [24]  935 	push	ar2
      00033F C0 06            [24]  936 	push	ar6
      000341 C0 07            [24]  937 	push	ar7
      000343 74 C2            [12]  938 	mov	a,#___str_78
      000345 C0 E0            [24]  939 	push	acc
      000347 74 1A            [12]  940 	mov	a,#(___str_78 >> 8)
      000349 C0 E0            [24]  941 	push	acc
      00034B 12 11 02         [24]  942 	lcall	_printf_tiny
      00034E E5 81            [12]  943 	mov	a,sp
      000350 24 FC            [12]  944 	add	a,#0xfc
      000352 F5 81            [12]  945 	mov	sp,a
      000354 D0 02            [24]  946 	pop	ar2
      000356 D0 03            [24]  947 	pop	ar3
      000358 D0 06            [24]  948 	pop	ar6
      00035A D0 07            [24]  949 	pop	ar7
      00035C                        950 00109$:
                                    951 ;	8052Explorer.c:226: checksum += (indirizzo >> 8 ) & 0xFF ;
      00035C 8F 05            [24]  952 	mov	ar5,r7
      00035E 7C 00            [12]  953 	mov	r4,#0x00
      000360 ED               [12]  954 	mov	a,r5
      000361 2A               [12]  955 	add	a,r2
      000362 FD               [12]  956 	mov	r5,a
      000363 EC               [12]  957 	mov	a,r4
      000364 3B               [12]  958 	addc	a,r3
      000365 FC               [12]  959 	mov	r4,a
                                    960 ;	8052Explorer.c:227: checksum += (indirizzo & 0xFF);
      000366 8E 02            [24]  961 	mov	ar2,r6
      000368 7B 00            [12]  962 	mov	r3,#0x00
      00036A EA               [12]  963 	mov	a,r2
      00036B 2D               [12]  964 	add	a,r5
      00036C FD               [12]  965 	mov	r5,a
      00036D EB               [12]  966 	mov	a,r3
      00036E 3C               [12]  967 	addc	a,r4
      00036F FC               [12]  968 	mov	r4,a
                                    969 ;	8052Explorer.c:228: printf_tiny("00");
      000370 C0 07            [24]  970 	push	ar7
      000372 C0 06            [24]  971 	push	ar6
      000374 C0 05            [24]  972 	push	ar5
      000376 C0 04            [24]  973 	push	ar4
      000378 74 C5            [12]  974 	mov	a,#___str_79
      00037A C0 E0            [24]  975 	push	acc
      00037C 74 1A            [12]  976 	mov	a,#(___str_79 >> 8)
      00037E C0 E0            [24]  977 	push	acc
      000380 12 11 02         [24]  978 	lcall	_printf_tiny
      000383 15 81            [12]  979 	dec	sp
      000385 15 81            [12]  980 	dec	sp
      000387 D0 04            [24]  981 	pop	ar4
      000389 D0 05            [24]  982 	pop	ar5
      00038B D0 06            [24]  983 	pop	ar6
      00038D D0 07            [24]  984 	pop	ar7
                                    985 ;	8052Explorer.c:231: for (unsigned char posto = 0; posto < 16; posto++) {
      00038F 7B 00            [12]  986 	mov	r3,#0x00
      000391                        987 00117$:
      000391 BB 10 00         [24]  988 	cjne	r3,#0x10,00174$
      000394                        989 00174$:
      000394 40 03            [24]  990 	jc	00175$
      000396 02 04 20         [24]  991 	ljmp	00112$
      000399                        992 00175$:
                                    993 ;	8052Explorer.c:232: unsigned char lettura = readEeprom(indirizzo+(unsigned short)posto);
      000399 8B 01            [24]  994 	mov	ar1,r3
      00039B 7A 00            [12]  995 	mov	r2,#0x00
      00039D E9               [12]  996 	mov	a,r1
      00039E 2E               [12]  997 	add	a,r6
      00039F F5 82            [12]  998 	mov	dpl,a
      0003A1 EA               [12]  999 	mov	a,r2
      0003A2 3F               [12] 1000 	addc	a,r7
      0003A3 F5 83            [12] 1001 	mov	dph,a
      0003A5 C0 07            [24] 1002 	push	ar7
      0003A7 C0 06            [24] 1003 	push	ar6
      0003A9 C0 05            [24] 1004 	push	ar5
      0003AB C0 04            [24] 1005 	push	ar4
      0003AD C0 03            [24] 1006 	push	ar3
      0003AF 12 0F 07         [24] 1007 	lcall	_readEeprom
      0003B2 AA 82            [24] 1008 	mov	r2,dpl
      0003B4 D0 03            [24] 1009 	pop	ar3
      0003B6 D0 04            [24] 1010 	pop	ar4
      0003B8 D0 05            [24] 1011 	pop	ar5
      0003BA D0 06            [24] 1012 	pop	ar6
      0003BC D0 07            [24] 1013 	pop	ar7
                                   1014 ;	8052Explorer.c:233: if ( lettura < 0x10 ) {
      0003BE BA 10 00         [24] 1015 	cjne	r2,#0x10,00176$
      0003C1                       1016 00176$:
      0003C1 50 1E            [24] 1017 	jnc	00111$
                                   1018 ;	8052Explorer.c:234: putchar('0');
      0003C3 90 00 30         [24] 1019 	mov	dptr,#0x0030
      0003C6 C0 07            [24] 1020 	push	ar7
      0003C8 C0 06            [24] 1021 	push	ar6
      0003CA C0 05            [24] 1022 	push	ar5
      0003CC C0 04            [24] 1023 	push	ar4
      0003CE C0 03            [24] 1024 	push	ar3
      0003D0 C0 02            [24] 1025 	push	ar2
      0003D2 12 10 3D         [24] 1026 	lcall	_putchar
      0003D5 D0 02            [24] 1027 	pop	ar2
      0003D7 D0 03            [24] 1028 	pop	ar3
      0003D9 D0 04            [24] 1029 	pop	ar4
      0003DB D0 05            [24] 1030 	pop	ar5
      0003DD D0 06            [24] 1031 	pop	ar6
      0003DF D0 07            [24] 1032 	pop	ar7
      0003E1                       1033 00111$:
                                   1034 ;	8052Explorer.c:236: printf_tiny("%x", lettura);
      0003E1 8A 01            [24] 1035 	mov	ar1,r2
      0003E3 7A 00            [12] 1036 	mov	r2,#0x00
      0003E5 C0 07            [24] 1037 	push	ar7
      0003E7 C0 06            [24] 1038 	push	ar6
      0003E9 C0 05            [24] 1039 	push	ar5
      0003EB C0 04            [24] 1040 	push	ar4
      0003ED C0 03            [24] 1041 	push	ar3
      0003EF C0 02            [24] 1042 	push	ar2
      0003F1 C0 01            [24] 1043 	push	ar1
      0003F3 C0 01            [24] 1044 	push	ar1
      0003F5 C0 02            [24] 1045 	push	ar2
      0003F7 74 C2            [12] 1046 	mov	a,#___str_78
      0003F9 C0 E0            [24] 1047 	push	acc
      0003FB 74 1A            [12] 1048 	mov	a,#(___str_78 >> 8)
      0003FD C0 E0            [24] 1049 	push	acc
      0003FF 12 11 02         [24] 1050 	lcall	_printf_tiny
      000402 E5 81            [12] 1051 	mov	a,sp
      000404 24 FC            [12] 1052 	add	a,#0xfc
      000406 F5 81            [12] 1053 	mov	sp,a
      000408 D0 01            [24] 1054 	pop	ar1
      00040A D0 02            [24] 1055 	pop	ar2
      00040C D0 03            [24] 1056 	pop	ar3
      00040E D0 04            [24] 1057 	pop	ar4
      000410 D0 05            [24] 1058 	pop	ar5
      000412 D0 06            [24] 1059 	pop	ar6
      000414 D0 07            [24] 1060 	pop	ar7
                                   1061 ;	8052Explorer.c:237: checksum += lettura;
      000416 E9               [12] 1062 	mov	a,r1
      000417 2D               [12] 1063 	add	a,r5
      000418 FD               [12] 1064 	mov	r5,a
      000419 EA               [12] 1065 	mov	a,r2
      00041A 3C               [12] 1066 	addc	a,r4
      00041B FC               [12] 1067 	mov	r4,a
                                   1068 ;	8052Explorer.c:231: for (unsigned char posto = 0; posto < 16; posto++) {
      00041C 0B               [12] 1069 	inc	r3
      00041D 02 03 91         [24] 1070 	ljmp	00117$
      000420                       1071 00112$:
                                   1072 ;	8052Explorer.c:240: checksum = ((~checksum) & 0xFF);
      000420 ED               [12] 1073 	mov	a,r5
      000421 F4               [12] 1074 	cpl	a
      000422 FD               [12] 1075 	mov	r5,a
      000423 EC               [12] 1076 	mov	a,r4
      000424 F4               [12] 1077 	cpl	a
      000425 7C 00            [12] 1078 	mov	r4,#0x00
                                   1079 ;	8052Explorer.c:241: checksum++;
      000427 0D               [12] 1080 	inc	r5
      000428 BD 00 01         [24] 1081 	cjne	r5,#0x00,00178$
      00042B 0C               [12] 1082 	inc	r4
      00042C                       1083 00178$:
                                   1084 ;	8052Explorer.c:242: if ( (checksum & 0xFF) < 16 ) {
      00042C 8D 02            [24] 1085 	mov	ar2,r5
      00042E 7B 00            [12] 1086 	mov	r3,#0x00
      000430 C3               [12] 1087 	clr	c
      000431 EA               [12] 1088 	mov	a,r2
      000432 94 10            [12] 1089 	subb	a,#0x10
      000434 EB               [12] 1090 	mov	a,r3
      000435 94 00            [12] 1091 	subb	a,#0x00
      000437 50 16            [24] 1092 	jnc	00114$
                                   1093 ;	8052Explorer.c:243: putchar('0');
      000439 90 00 30         [24] 1094 	mov	dptr,#0x0030
      00043C C0 07            [24] 1095 	push	ar7
      00043E C0 06            [24] 1096 	push	ar6
      000440 C0 05            [24] 1097 	push	ar5
      000442 C0 04            [24] 1098 	push	ar4
      000444 12 10 3D         [24] 1099 	lcall	_putchar
      000447 D0 04            [24] 1100 	pop	ar4
      000449 D0 05            [24] 1101 	pop	ar5
      00044B D0 06            [24] 1102 	pop	ar6
      00044D D0 07            [24] 1103 	pop	ar7
      00044F                       1104 00114$:
                                   1105 ;	8052Explorer.c:245: printf_tiny("%x\r", checksum & 0xFF);
      00044F 7C 00            [12] 1106 	mov	r4,#0x00
      000451 C0 07            [24] 1107 	push	ar7
      000453 C0 06            [24] 1108 	push	ar6
      000455 C0 05            [24] 1109 	push	ar5
      000457 C0 04            [24] 1110 	push	ar4
      000459 74 C8            [12] 1111 	mov	a,#___str_80
      00045B C0 E0            [24] 1112 	push	acc
      00045D 74 1A            [12] 1113 	mov	a,#(___str_80 >> 8)
      00045F C0 E0            [24] 1114 	push	acc
      000461 12 11 02         [24] 1115 	lcall	_printf_tiny
      000464 E5 81            [12] 1116 	mov	a,sp
      000466 24 FC            [12] 1117 	add	a,#0xfc
      000468 F5 81            [12] 1118 	mov	sp,a
      00046A D0 06            [24] 1119 	pop	ar6
      00046C D0 07            [24] 1120 	pop	ar7
                                   1121 ;	8052Explorer.c:214: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      00046E 8E 04            [24] 1122 	mov	ar4,r6
      000470 8F 05            [24] 1123 	mov	ar5,r7
      000472 74 10            [12] 1124 	mov	a,#0x10
      000474 2C               [12] 1125 	add	a,r4
      000475 FC               [12] 1126 	mov	r4,a
      000476 E4               [12] 1127 	clr	a
      000477 3D               [12] 1128 	addc	a,r5
      000478 FD               [12] 1129 	mov	r5,a
      000479 8C 06            [24] 1130 	mov	ar6,r4
      00047B 8D 07            [24] 1131 	mov	ar7,r5
      00047D 02 02 7B         [24] 1132 	ljmp	00120$
      000480                       1133 00115$:
                                   1134 ;	8052Explorer.c:247: printf_tiny("%s", ":00000001FF");
      000480 74 CF            [12] 1135 	mov	a,#___str_82
      000482 C0 E0            [24] 1136 	push	acc
      000484 74 1A            [12] 1137 	mov	a,#(___str_82 >> 8)
      000486 C0 E0            [24] 1138 	push	acc
      000488 74 80            [12] 1139 	mov	a,#0x80
      00048A C0 E0            [24] 1140 	push	acc
      00048C 74 CC            [12] 1141 	mov	a,#___str_81
      00048E C0 E0            [24] 1142 	push	acc
      000490 74 1A            [12] 1143 	mov	a,#(___str_81 >> 8)
      000492 C0 E0            [24] 1144 	push	acc
      000494 12 11 02         [24] 1145 	lcall	_printf_tiny
      000497 E5 81            [12] 1146 	mov	a,sp
      000499 24 FB            [12] 1147 	add	a,#0xfb
      00049B F5 81            [12] 1148 	mov	sp,a
                                   1149 ;	8052Explorer.c:248: putchar('\r');
      00049D 90 00 0D         [24] 1150 	mov	dptr,#0x000d
      0004A0 12 10 3D         [24] 1151 	lcall	_putchar
                                   1152 ;	8052Explorer.c:249: putchar('\r');
      0004A3 90 00 0D         [24] 1153 	mov	dptr,#0x000d
                                   1154 ;	8052Explorer.c:251: }
      0004A6 02 10 3D         [24] 1155 	ljmp	_putchar
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'dumpCODE'
                                   1158 ;------------------------------------------------------------
                                   1159 ;puntatore                 Allocated to registers 
                                   1160 ;indirizzo                 Allocated with name '_dumpCODE_indirizzo_131072_58'
                                   1161 ;posto                     Allocated with name '_dumpCODE_posto_262144_64'
                                   1162 ;posto                     Allocated with name '_dumpCODE_posto_262144_67'
                                   1163 ;------------------------------------------------------------
                                   1164 ;	8052Explorer.c:253: void dumpCODE () {
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function dumpCODE
                                   1167 ;	-----------------------------------------
      0004A9                       1168 _dumpCODE:
                                   1169 ;	8052Explorer.c:254: unsigned char *puntatore = codice;
      0004A9 7D 00            [12] 1170 	mov	r5,#_codice
      0004AB 7E 00            [12] 1171 	mov	r6,#(_codice >> 8)
      0004AD 7F 80            [12] 1172 	mov	r7,#0x80
                                   1173 ;	8052Explorer.c:256: puts("Dumping code:");
      0004AF 90 1A DB         [24] 1174 	mov	dptr,#___str_83
      0004B2 75 F0 80         [24] 1175 	mov	b,#0x80
      0004B5 C0 07            [24] 1176 	push	ar7
      0004B7 C0 06            [24] 1177 	push	ar6
      0004B9 C0 05            [24] 1178 	push	ar5
      0004BB 12 12 58         [24] 1179 	lcall	_puts
      0004BE D0 05            [24] 1180 	pop	ar5
      0004C0 D0 06            [24] 1181 	pop	ar6
      0004C2 D0 07            [24] 1182 	pop	ar7
                                   1183 ;	8052Explorer.c:257: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0004C4 E4               [12] 1184 	clr	a
      0004C5 F5 22            [12] 1185 	mov	_dumpCODE_indirizzo_131072_58,a
      0004C7 F5 23            [12] 1186 	mov	(_dumpCODE_indirizzo_131072_58 + 1),a
      0004C9                       1187 00126$:
      0004C9 C3               [12] 1188 	clr	c
      0004CA 74 FF            [12] 1189 	mov	a,#0xff
      0004CC 95 22            [12] 1190 	subb	a,_dumpCODE_indirizzo_131072_58
      0004CE 74 2F            [12] 1191 	mov	a,#0x2f
      0004D0 95 23            [12] 1192 	subb	a,(_dumpCODE_indirizzo_131072_58 + 1)
      0004D2 50 03            [24] 1193 	jnc	00188$
      0004D4 02 06 97         [24] 1194 	ljmp	00118$
      0004D7                       1195 00188$:
                                   1196 ;	8052Explorer.c:258: if (indirizzo < 0x10) {
      0004D7 C3               [12] 1197 	clr	c
      0004D8 E5 22            [12] 1198 	mov	a,_dumpCODE_indirizzo_131072_58
      0004DA 94 10            [12] 1199 	subb	a,#0x10
      0004DC E5 23            [12] 1200 	mov	a,(_dumpCODE_indirizzo_131072_58 + 1)
      0004DE 94 00            [12] 1201 	subb	a,#0x00
      0004E0 50 23            [24] 1202 	jnc	00108$
                                   1203 ;	8052Explorer.c:259: printf_tiny("000%x  ", indirizzo);
      0004E2 C0 07            [24] 1204 	push	ar7
      0004E4 C0 06            [24] 1205 	push	ar6
      0004E6 C0 05            [24] 1206 	push	ar5
      0004E8 C0 22            [24] 1207 	push	_dumpCODE_indirizzo_131072_58
      0004EA C0 23            [24] 1208 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      0004EC 74 65            [12] 1209 	mov	a,#___str_66
      0004EE C0 E0            [24] 1210 	push	acc
      0004F0 74 1A            [12] 1211 	mov	a,#(___str_66 >> 8)
      0004F2 C0 E0            [24] 1212 	push	acc
      0004F4 12 11 02         [24] 1213 	lcall	_printf_tiny
      0004F7 E5 81            [12] 1214 	mov	a,sp
      0004F9 24 FC            [12] 1215 	add	a,#0xfc
      0004FB F5 81            [12] 1216 	mov	sp,a
      0004FD D0 05            [24] 1217 	pop	ar5
      0004FF D0 06            [24] 1218 	pop	ar6
      000501 D0 07            [24] 1219 	pop	ar7
      000503 80 73            [24] 1220 	sjmp	00136$
      000505                       1221 00108$:
                                   1222 ;	8052Explorer.c:260: } else if (indirizzo < 0x100) {
      000505 74 FF            [12] 1223 	mov	a,#0x100 - 0x01
      000507 25 23            [12] 1224 	add	a,(_dumpCODE_indirizzo_131072_58 + 1)
      000509 40 23            [24] 1225 	jc	00105$
                                   1226 ;	8052Explorer.c:261: printf_tiny("00%x  ", indirizzo);
      00050B C0 07            [24] 1227 	push	ar7
      00050D C0 06            [24] 1228 	push	ar6
      00050F C0 05            [24] 1229 	push	ar5
      000511 C0 22            [24] 1230 	push	_dumpCODE_indirizzo_131072_58
      000513 C0 23            [24] 1231 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      000515 74 6D            [12] 1232 	mov	a,#___str_67
      000517 C0 E0            [24] 1233 	push	acc
      000519 74 1A            [12] 1234 	mov	a,#(___str_67 >> 8)
      00051B C0 E0            [24] 1235 	push	acc
      00051D 12 11 02         [24] 1236 	lcall	_printf_tiny
      000520 E5 81            [12] 1237 	mov	a,sp
      000522 24 FC            [12] 1238 	add	a,#0xfc
      000524 F5 81            [12] 1239 	mov	sp,a
      000526 D0 05            [24] 1240 	pop	ar5
      000528 D0 06            [24] 1241 	pop	ar6
      00052A D0 07            [24] 1242 	pop	ar7
      00052C 80 4A            [24] 1243 	sjmp	00136$
      00052E                       1244 00105$:
                                   1245 ;	8052Explorer.c:262: } else if (indirizzo < 0x1000) {
      00052E 74 F0            [12] 1246 	mov	a,#0x100 - 0x10
      000530 25 23            [12] 1247 	add	a,(_dumpCODE_indirizzo_131072_58 + 1)
      000532 40 23            [24] 1248 	jc	00102$
                                   1249 ;	8052Explorer.c:263: printf_tiny("0%x  ", indirizzo);
      000534 C0 07            [24] 1250 	push	ar7
      000536 C0 06            [24] 1251 	push	ar6
      000538 C0 05            [24] 1252 	push	ar5
      00053A C0 22            [24] 1253 	push	_dumpCODE_indirizzo_131072_58
      00053C C0 23            [24] 1254 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      00053E 74 74            [12] 1255 	mov	a,#___str_68
      000540 C0 E0            [24] 1256 	push	acc
      000542 74 1A            [12] 1257 	mov	a,#(___str_68 >> 8)
      000544 C0 E0            [24] 1258 	push	acc
      000546 12 11 02         [24] 1259 	lcall	_printf_tiny
      000549 E5 81            [12] 1260 	mov	a,sp
      00054B 24 FC            [12] 1261 	add	a,#0xfc
      00054D F5 81            [12] 1262 	mov	sp,a
      00054F D0 05            [24] 1263 	pop	ar5
      000551 D0 06            [24] 1264 	pop	ar6
      000553 D0 07            [24] 1265 	pop	ar7
      000555 80 21            [24] 1266 	sjmp	00136$
      000557                       1267 00102$:
                                   1268 ;	8052Explorer.c:265: printf_tiny("%x  ", indirizzo);
      000557 C0 07            [24] 1269 	push	ar7
      000559 C0 06            [24] 1270 	push	ar6
      00055B C0 05            [24] 1271 	push	ar5
      00055D C0 22            [24] 1272 	push	_dumpCODE_indirizzo_131072_58
      00055F C0 23            [24] 1273 	push	(_dumpCODE_indirizzo_131072_58 + 1)
      000561 74 7A            [12] 1274 	mov	a,#___str_69
      000563 C0 E0            [24] 1275 	push	acc
      000565 74 1A            [12] 1276 	mov	a,#(___str_69 >> 8)
      000567 C0 E0            [24] 1277 	push	acc
      000569 12 11 02         [24] 1278 	lcall	_printf_tiny
      00056C E5 81            [12] 1279 	mov	a,sp
      00056E 24 FC            [12] 1280 	add	a,#0xfc
      000570 F5 81            [12] 1281 	mov	sp,a
      000572 D0 05            [24] 1282 	pop	ar5
      000574 D0 06            [24] 1283 	pop	ar6
      000576 D0 07            [24] 1284 	pop	ar7
                                   1285 ;	8052Explorer.c:267: for (unsigned int posto = 0; posto < 16; posto++ ) {
      000578                       1286 00136$:
      000578 8D 00            [24] 1287 	mov	ar0,r5
      00057A 8E 01            [24] 1288 	mov	ar1,r6
      00057C 8F 02            [24] 1289 	mov	ar2,r7
      00057E E4               [12] 1290 	clr	a
      00057F F5 24            [12] 1291 	mov	_dumpCODE_posto_262144_64,a
      000581 F5 25            [12] 1292 	mov	(_dumpCODE_posto_262144_64 + 1),a
      000583                       1293 00120$:
      000583 C3               [12] 1294 	clr	c
      000584 E5 24            [12] 1295 	mov	a,_dumpCODE_posto_262144_64
      000586 94 10            [12] 1296 	subb	a,#0x10
      000588 E5 25            [12] 1297 	mov	a,(_dumpCODE_posto_262144_64 + 1)
      00058A 94 00            [12] 1298 	subb	a,#0x00
      00058C 50 5D            [24] 1299 	jnc	00112$
                                   1300 ;	8052Explorer.c:268: if ( *puntatore < 16 ) {
      00058E 88 82            [24] 1301 	mov	dpl,r0
      000590 89 83            [24] 1302 	mov	dph,r1
      000592 8A F0            [24] 1303 	mov	b,r2
      000594 12 12 98         [24] 1304 	lcall	__gptrget
      000597 FC               [12] 1305 	mov	r4,a
      000598 BC 10 00         [24] 1306 	cjne	r4,#0x10,00193$
      00059B                       1307 00193$:
      00059B 50 12            [24] 1308 	jnc	00111$
                                   1309 ;	8052Explorer.c:269: putchar('0');
      00059D 90 00 30         [24] 1310 	mov	dptr,#0x0030
      0005A0 C0 02            [24] 1311 	push	ar2
      0005A2 C0 01            [24] 1312 	push	ar1
      0005A4 C0 00            [24] 1313 	push	ar0
      0005A6 12 10 3D         [24] 1314 	lcall	_putchar
      0005A9 D0 00            [24] 1315 	pop	ar0
      0005AB D0 01            [24] 1316 	pop	ar1
      0005AD D0 02            [24] 1317 	pop	ar2
      0005AF                       1318 00111$:
                                   1319 ;	8052Explorer.c:271: printf_tiny("%x ", *puntatore);
      0005AF 88 82            [24] 1320 	mov	dpl,r0
      0005B1 89 83            [24] 1321 	mov	dph,r1
      0005B3 8A F0            [24] 1322 	mov	b,r2
      0005B5 12 12 98         [24] 1323 	lcall	__gptrget
      0005B8 FC               [12] 1324 	mov	r4,a
      0005B9 A3               [24] 1325 	inc	dptr
      0005BA A8 82            [24] 1326 	mov	r0,dpl
      0005BC A9 83            [24] 1327 	mov	r1,dph
      0005BE 7B 00            [12] 1328 	mov	r3,#0x00
      0005C0 C0 02            [24] 1329 	push	ar2
      0005C2 C0 01            [24] 1330 	push	ar1
      0005C4 C0 00            [24] 1331 	push	ar0
      0005C6 C0 04            [24] 1332 	push	ar4
      0005C8 C0 03            [24] 1333 	push	ar3
      0005CA 74 7F            [12] 1334 	mov	a,#___str_70
      0005CC C0 E0            [24] 1335 	push	acc
      0005CE 74 1A            [12] 1336 	mov	a,#(___str_70 >> 8)
      0005D0 C0 E0            [24] 1337 	push	acc
      0005D2 12 11 02         [24] 1338 	lcall	_printf_tiny
      0005D5 E5 81            [12] 1339 	mov	a,sp
      0005D7 24 FC            [12] 1340 	add	a,#0xfc
      0005D9 F5 81            [12] 1341 	mov	sp,a
      0005DB D0 00            [24] 1342 	pop	ar0
      0005DD D0 01            [24] 1343 	pop	ar1
      0005DF D0 02            [24] 1344 	pop	ar2
                                   1345 ;	8052Explorer.c:272: puntatore++;
                                   1346 ;	8052Explorer.c:267: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0005E1 05 24            [12] 1347 	inc	_dumpCODE_posto_262144_64
      0005E3 E4               [12] 1348 	clr	a
      0005E4 B5 24 9C         [24] 1349 	cjne	a,_dumpCODE_posto_262144_64,00120$
      0005E7 05 25            [12] 1350 	inc	(_dumpCODE_posto_262144_64 + 1)
      0005E9 80 98            [24] 1351 	sjmp	00120$
      0005EB                       1352 00112$:
                                   1353 ;	8052Explorer.c:274: printf_tiny(" |");
      0005EB C0 02            [24] 1354 	push	ar2
      0005ED C0 01            [24] 1355 	push	ar1
      0005EF C0 00            [24] 1356 	push	ar0
      0005F1 74 83            [12] 1357 	mov	a,#___str_71
      0005F3 C0 E0            [24] 1358 	push	acc
      0005F5 74 1A            [12] 1359 	mov	a,#(___str_71 >> 8)
      0005F7 C0 E0            [24] 1360 	push	acc
      0005F9 12 11 02         [24] 1361 	lcall	_printf_tiny
      0005FC 15 81            [12] 1362 	dec	sp
      0005FE 15 81            [12] 1363 	dec	sp
      000600 D0 00            [24] 1364 	pop	ar0
      000602 D0 01            [24] 1365 	pop	ar1
      000604 D0 02            [24] 1366 	pop	ar2
                                   1367 ;	8052Explorer.c:275: puntatore -= 16;
      000606 E8               [12] 1368 	mov	a,r0
      000607 24 F0            [12] 1369 	add	a,#0xf0
      000609 FC               [12] 1370 	mov	r4,a
      00060A E9               [12] 1371 	mov	a,r1
      00060B 34 FF            [12] 1372 	addc	a,#0xff
      00060D FB               [12] 1373 	mov	r3,a
                                   1374 ;	8052Explorer.c:276: for (unsigned char posto = 0; posto < 16; posto++ ) {
      00060E 75 26 00         [24] 1375 	mov	_dumpCODE_posto_262144_67,#0x00
      000611                       1376 00123$:
      000611 74 F0            [12] 1377 	mov	a,#0x100 - 0x10
      000613 25 26            [12] 1378 	add	a,_dumpCODE_posto_262144_67
      000615 40 54            [24] 1379 	jc	00142$
                                   1380 ;	8052Explorer.c:277: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      000617 8C 82            [24] 1381 	mov	dpl,r4
      000619 8B 83            [24] 1382 	mov	dph,r3
      00061B 8A F0            [24] 1383 	mov	b,r2
      00061D 12 12 98         [24] 1384 	lcall	__gptrget
      000620 F8               [12] 1385 	mov	r0,a
      000621 B8 20 00         [24] 1386 	cjne	r0,#0x20,00197$
      000624                       1387 00197$:
      000624 40 05            [24] 1388 	jc	00113$
      000626 E8               [12] 1389 	mov	a,r0
      000627 24 81            [12] 1390 	add	a,#0xff - 0x7e
      000629 50 14            [24] 1391 	jnc	00114$
      00062B                       1392 00113$:
                                   1393 ;	8052Explorer.c:278: putchar('.');
      00062B 90 00 2E         [24] 1394 	mov	dptr,#0x002e
      00062E C0 04            [24] 1395 	push	ar4
      000630 C0 03            [24] 1396 	push	ar3
      000632 C0 02            [24] 1397 	push	ar2
      000634 12 10 3D         [24] 1398 	lcall	_putchar
      000637 D0 02            [24] 1399 	pop	ar2
      000639 D0 03            [24] 1400 	pop	ar3
      00063B D0 04            [24] 1401 	pop	ar4
      00063D 80 23            [24] 1402 	sjmp	00115$
      00063F                       1403 00114$:
                                   1404 ;	8052Explorer.c:280: printf_tiny("%c", *puntatore);
      00063F 79 00            [12] 1405 	mov	r1,#0x00
      000641 C0 04            [24] 1406 	push	ar4
      000643 C0 03            [24] 1407 	push	ar3
      000645 C0 02            [24] 1408 	push	ar2
      000647 C0 00            [24] 1409 	push	ar0
      000649 C0 01            [24] 1410 	push	ar1
      00064B 74 86            [12] 1411 	mov	a,#___str_72
      00064D C0 E0            [24] 1412 	push	acc
      00064F 74 1A            [12] 1413 	mov	a,#(___str_72 >> 8)
      000651 C0 E0            [24] 1414 	push	acc
      000653 12 11 02         [24] 1415 	lcall	_printf_tiny
      000656 E5 81            [12] 1416 	mov	a,sp
      000658 24 FC            [12] 1417 	add	a,#0xfc
      00065A F5 81            [12] 1418 	mov	sp,a
      00065C D0 02            [24] 1419 	pop	ar2
      00065E D0 03            [24] 1420 	pop	ar3
      000660 D0 04            [24] 1421 	pop	ar4
      000662                       1422 00115$:
                                   1423 ;	8052Explorer.c:282: puntatore++;
      000662 0C               [12] 1424 	inc	r4
      000663 BC 00 01         [24] 1425 	cjne	r4,#0x00,00200$
      000666 0B               [12] 1426 	inc	r3
      000667                       1427 00200$:
                                   1428 ;	8052Explorer.c:276: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000667 05 26            [12] 1429 	inc	_dumpCODE_posto_262144_67
      000669 80 A6            [24] 1430 	sjmp	00123$
      00066B                       1431 00142$:
      00066B 8C 05            [24] 1432 	mov	ar5,r4
      00066D 8B 06            [24] 1433 	mov	ar6,r3
      00066F 8A 07            [24] 1434 	mov	ar7,r2
                                   1435 ;	8052Explorer.c:284: putchar('|');
      000671 90 00 7C         [24] 1436 	mov	dptr,#0x007c
      000674 C0 07            [24] 1437 	push	ar7
      000676 C0 06            [24] 1438 	push	ar6
      000678 C0 05            [24] 1439 	push	ar5
      00067A 12 10 3D         [24] 1440 	lcall	_putchar
                                   1441 ;	8052Explorer.c:285: putchar('\r');
      00067D 90 00 0D         [24] 1442 	mov	dptr,#0x000d
      000680 12 10 3D         [24] 1443 	lcall	_putchar
      000683 D0 05            [24] 1444 	pop	ar5
      000685 D0 06            [24] 1445 	pop	ar6
      000687 D0 07            [24] 1446 	pop	ar7
                                   1447 ;	8052Explorer.c:257: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      000689 74 10            [12] 1448 	mov	a,#0x10
      00068B 25 22            [12] 1449 	add	a,_dumpCODE_indirizzo_131072_58
      00068D F5 22            [12] 1450 	mov	_dumpCODE_indirizzo_131072_58,a
      00068F E4               [12] 1451 	clr	a
      000690 35 23            [12] 1452 	addc	a,(_dumpCODE_indirizzo_131072_58 + 1)
      000692 F5 23            [12] 1453 	mov	(_dumpCODE_indirizzo_131072_58 + 1),a
      000694 02 04 C9         [24] 1454 	ljmp	00126$
      000697                       1455 00118$:
                                   1456 ;	8052Explorer.c:287: putchar('\r');
      000697 90 00 0D         [24] 1457 	mov	dptr,#0x000d
                                   1458 ;	8052Explorer.c:289: }
      00069A 02 10 3D         [24] 1459 	ljmp	_putchar
                                   1460 ;------------------------------------------------------------
                                   1461 ;Allocation info for local variables in function 'dumpRAM'
                                   1462 ;------------------------------------------------------------
                                   1463 ;puntatore                 Allocated to registers 
                                   1464 ;indirizzo                 Allocated with name '_dumpRAM_indirizzo_131072_72'
                                   1465 ;posto                     Allocated with name '_dumpRAM_posto_262144_78'
                                   1466 ;posto                     Allocated with name '_dumpRAM_posto_262144_81'
                                   1467 ;------------------------------------------------------------
                                   1468 ;	8052Explorer.c:291: void dumpRAM () {
                                   1469 ;	-----------------------------------------
                                   1470 ;	 function dumpRAM
                                   1471 ;	-----------------------------------------
      00069D                       1472 _dumpRAM:
                                   1473 ;	8052Explorer.c:292: unsigned char *puntatore = dati;
      00069D 7D 00            [12] 1474 	mov	r5,#_dati
      00069F 7E 00            [12] 1475 	mov	r6,#0x00
      0006A1 7F 40            [12] 1476 	mov	r7,#0x40
                                   1477 ;	8052Explorer.c:294: puts("Dumping ram memory:");
      0006A3 90 1A E9         [24] 1478 	mov	dptr,#___str_84
      0006A6 75 F0 80         [24] 1479 	mov	b,#0x80
      0006A9 C0 07            [24] 1480 	push	ar7
      0006AB C0 06            [24] 1481 	push	ar6
      0006AD C0 05            [24] 1482 	push	ar5
      0006AF 12 12 58         [24] 1483 	lcall	_puts
      0006B2 D0 05            [24] 1484 	pop	ar5
      0006B4 D0 06            [24] 1485 	pop	ar6
      0006B6 D0 07            [24] 1486 	pop	ar7
                                   1487 ;	8052Explorer.c:295: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
      0006B8 E4               [12] 1488 	clr	a
      0006B9 F5 27            [12] 1489 	mov	_dumpRAM_indirizzo_131072_72,a
      0006BB F5 28            [12] 1490 	mov	(_dumpRAM_indirizzo_131072_72 + 1),a
      0006BD                       1491 00126$:
      0006BD C3               [12] 1492 	clr	c
      0006BE 74 FF            [12] 1493 	mov	a,#0xff
      0006C0 95 27            [12] 1494 	subb	a,_dumpRAM_indirizzo_131072_72
      0006C2 E4               [12] 1495 	clr	a
      0006C3 95 28            [12] 1496 	subb	a,(_dumpRAM_indirizzo_131072_72 + 1)
      0006C5 50 03            [24] 1497 	jnc	00188$
      0006C7 02 08 8A         [24] 1498 	ljmp	00118$
      0006CA                       1499 00188$:
                                   1500 ;	8052Explorer.c:296: if (indirizzo < 0x10) {
      0006CA C3               [12] 1501 	clr	c
      0006CB E5 27            [12] 1502 	mov	a,_dumpRAM_indirizzo_131072_72
      0006CD 94 10            [12] 1503 	subb	a,#0x10
      0006CF E5 28            [12] 1504 	mov	a,(_dumpRAM_indirizzo_131072_72 + 1)
      0006D1 94 00            [12] 1505 	subb	a,#0x00
      0006D3 50 23            [24] 1506 	jnc	00108$
                                   1507 ;	8052Explorer.c:297: printf_tiny("000%x  ", indirizzo);
      0006D5 C0 07            [24] 1508 	push	ar7
      0006D7 C0 06            [24] 1509 	push	ar6
      0006D9 C0 05            [24] 1510 	push	ar5
      0006DB C0 27            [24] 1511 	push	_dumpRAM_indirizzo_131072_72
      0006DD C0 28            [24] 1512 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      0006DF 74 65            [12] 1513 	mov	a,#___str_66
      0006E1 C0 E0            [24] 1514 	push	acc
      0006E3 74 1A            [12] 1515 	mov	a,#(___str_66 >> 8)
      0006E5 C0 E0            [24] 1516 	push	acc
      0006E7 12 11 02         [24] 1517 	lcall	_printf_tiny
      0006EA E5 81            [12] 1518 	mov	a,sp
      0006EC 24 FC            [12] 1519 	add	a,#0xfc
      0006EE F5 81            [12] 1520 	mov	sp,a
      0006F0 D0 05            [24] 1521 	pop	ar5
      0006F2 D0 06            [24] 1522 	pop	ar6
      0006F4 D0 07            [24] 1523 	pop	ar7
      0006F6 80 73            [24] 1524 	sjmp	00136$
      0006F8                       1525 00108$:
                                   1526 ;	8052Explorer.c:298: } else if (indirizzo < 0x100) {
      0006F8 74 FF            [12] 1527 	mov	a,#0x100 - 0x01
      0006FA 25 28            [12] 1528 	add	a,(_dumpRAM_indirizzo_131072_72 + 1)
      0006FC 40 23            [24] 1529 	jc	00105$
                                   1530 ;	8052Explorer.c:299: printf_tiny("00%x  ", indirizzo);
      0006FE C0 07            [24] 1531 	push	ar7
      000700 C0 06            [24] 1532 	push	ar6
      000702 C0 05            [24] 1533 	push	ar5
      000704 C0 27            [24] 1534 	push	_dumpRAM_indirizzo_131072_72
      000706 C0 28            [24] 1535 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      000708 74 6D            [12] 1536 	mov	a,#___str_67
      00070A C0 E0            [24] 1537 	push	acc
      00070C 74 1A            [12] 1538 	mov	a,#(___str_67 >> 8)
      00070E C0 E0            [24] 1539 	push	acc
      000710 12 11 02         [24] 1540 	lcall	_printf_tiny
      000713 E5 81            [12] 1541 	mov	a,sp
      000715 24 FC            [12] 1542 	add	a,#0xfc
      000717 F5 81            [12] 1543 	mov	sp,a
      000719 D0 05            [24] 1544 	pop	ar5
      00071B D0 06            [24] 1545 	pop	ar6
      00071D D0 07            [24] 1546 	pop	ar7
      00071F 80 4A            [24] 1547 	sjmp	00136$
      000721                       1548 00105$:
                                   1549 ;	8052Explorer.c:300: } else if (indirizzo < 0x1000) {
      000721 74 F0            [12] 1550 	mov	a,#0x100 - 0x10
      000723 25 28            [12] 1551 	add	a,(_dumpRAM_indirizzo_131072_72 + 1)
      000725 40 23            [24] 1552 	jc	00102$
                                   1553 ;	8052Explorer.c:301: printf_tiny("0%x  ", indirizzo);
      000727 C0 07            [24] 1554 	push	ar7
      000729 C0 06            [24] 1555 	push	ar6
      00072B C0 05            [24] 1556 	push	ar5
      00072D C0 27            [24] 1557 	push	_dumpRAM_indirizzo_131072_72
      00072F C0 28            [24] 1558 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      000731 74 74            [12] 1559 	mov	a,#___str_68
      000733 C0 E0            [24] 1560 	push	acc
      000735 74 1A            [12] 1561 	mov	a,#(___str_68 >> 8)
      000737 C0 E0            [24] 1562 	push	acc
      000739 12 11 02         [24] 1563 	lcall	_printf_tiny
      00073C E5 81            [12] 1564 	mov	a,sp
      00073E 24 FC            [12] 1565 	add	a,#0xfc
      000740 F5 81            [12] 1566 	mov	sp,a
      000742 D0 05            [24] 1567 	pop	ar5
      000744 D0 06            [24] 1568 	pop	ar6
      000746 D0 07            [24] 1569 	pop	ar7
      000748 80 21            [24] 1570 	sjmp	00136$
      00074A                       1571 00102$:
                                   1572 ;	8052Explorer.c:303: printf_tiny("%x  ", indirizzo);
      00074A C0 07            [24] 1573 	push	ar7
      00074C C0 06            [24] 1574 	push	ar6
      00074E C0 05            [24] 1575 	push	ar5
      000750 C0 27            [24] 1576 	push	_dumpRAM_indirizzo_131072_72
      000752 C0 28            [24] 1577 	push	(_dumpRAM_indirizzo_131072_72 + 1)
      000754 74 7A            [12] 1578 	mov	a,#___str_69
      000756 C0 E0            [24] 1579 	push	acc
      000758 74 1A            [12] 1580 	mov	a,#(___str_69 >> 8)
      00075A C0 E0            [24] 1581 	push	acc
      00075C 12 11 02         [24] 1582 	lcall	_printf_tiny
      00075F E5 81            [12] 1583 	mov	a,sp
      000761 24 FC            [12] 1584 	add	a,#0xfc
      000763 F5 81            [12] 1585 	mov	sp,a
      000765 D0 05            [24] 1586 	pop	ar5
      000767 D0 06            [24] 1587 	pop	ar6
      000769 D0 07            [24] 1588 	pop	ar7
                                   1589 ;	8052Explorer.c:305: for (unsigned int posto = 0; posto < 16; posto++ ) {
      00076B                       1590 00136$:
      00076B 8D 00            [24] 1591 	mov	ar0,r5
      00076D 8E 01            [24] 1592 	mov	ar1,r6
      00076F 8F 02            [24] 1593 	mov	ar2,r7
      000771 E4               [12] 1594 	clr	a
      000772 F5 29            [12] 1595 	mov	_dumpRAM_posto_262144_78,a
      000774 F5 2A            [12] 1596 	mov	(_dumpRAM_posto_262144_78 + 1),a
      000776                       1597 00120$:
      000776 C3               [12] 1598 	clr	c
      000777 E5 29            [12] 1599 	mov	a,_dumpRAM_posto_262144_78
      000779 94 10            [12] 1600 	subb	a,#0x10
      00077B E5 2A            [12] 1601 	mov	a,(_dumpRAM_posto_262144_78 + 1)
      00077D 94 00            [12] 1602 	subb	a,#0x00
      00077F 50 5D            [24] 1603 	jnc	00112$
                                   1604 ;	8052Explorer.c:306: if ( *puntatore < 16 ) {
      000781 88 82            [24] 1605 	mov	dpl,r0
      000783 89 83            [24] 1606 	mov	dph,r1
      000785 8A F0            [24] 1607 	mov	b,r2
      000787 12 12 98         [24] 1608 	lcall	__gptrget
      00078A FC               [12] 1609 	mov	r4,a
      00078B BC 10 00         [24] 1610 	cjne	r4,#0x10,00193$
      00078E                       1611 00193$:
      00078E 50 12            [24] 1612 	jnc	00111$
                                   1613 ;	8052Explorer.c:307: putchar('0');
      000790 90 00 30         [24] 1614 	mov	dptr,#0x0030
      000793 C0 02            [24] 1615 	push	ar2
      000795 C0 01            [24] 1616 	push	ar1
      000797 C0 00            [24] 1617 	push	ar0
      000799 12 10 3D         [24] 1618 	lcall	_putchar
      00079C D0 00            [24] 1619 	pop	ar0
      00079E D0 01            [24] 1620 	pop	ar1
      0007A0 D0 02            [24] 1621 	pop	ar2
      0007A2                       1622 00111$:
                                   1623 ;	8052Explorer.c:309: printf_tiny("%x ", *puntatore);
      0007A2 88 82            [24] 1624 	mov	dpl,r0
      0007A4 89 83            [24] 1625 	mov	dph,r1
      0007A6 8A F0            [24] 1626 	mov	b,r2
      0007A8 12 12 98         [24] 1627 	lcall	__gptrget
      0007AB FC               [12] 1628 	mov	r4,a
      0007AC A3               [24] 1629 	inc	dptr
      0007AD A8 82            [24] 1630 	mov	r0,dpl
      0007AF A9 83            [24] 1631 	mov	r1,dph
      0007B1 7B 00            [12] 1632 	mov	r3,#0x00
      0007B3 C0 02            [24] 1633 	push	ar2
      0007B5 C0 01            [24] 1634 	push	ar1
      0007B7 C0 00            [24] 1635 	push	ar0
      0007B9 C0 04            [24] 1636 	push	ar4
      0007BB C0 03            [24] 1637 	push	ar3
      0007BD 74 7F            [12] 1638 	mov	a,#___str_70
      0007BF C0 E0            [24] 1639 	push	acc
      0007C1 74 1A            [12] 1640 	mov	a,#(___str_70 >> 8)
      0007C3 C0 E0            [24] 1641 	push	acc
      0007C5 12 11 02         [24] 1642 	lcall	_printf_tiny
      0007C8 E5 81            [12] 1643 	mov	a,sp
      0007CA 24 FC            [12] 1644 	add	a,#0xfc
      0007CC F5 81            [12] 1645 	mov	sp,a
      0007CE D0 00            [24] 1646 	pop	ar0
      0007D0 D0 01            [24] 1647 	pop	ar1
      0007D2 D0 02            [24] 1648 	pop	ar2
                                   1649 ;	8052Explorer.c:310: puntatore++;
                                   1650 ;	8052Explorer.c:305: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0007D4 05 29            [12] 1651 	inc	_dumpRAM_posto_262144_78
      0007D6 E4               [12] 1652 	clr	a
      0007D7 B5 29 9C         [24] 1653 	cjne	a,_dumpRAM_posto_262144_78,00120$
      0007DA 05 2A            [12] 1654 	inc	(_dumpRAM_posto_262144_78 + 1)
      0007DC 80 98            [24] 1655 	sjmp	00120$
      0007DE                       1656 00112$:
                                   1657 ;	8052Explorer.c:312: printf_tiny(" |");
      0007DE C0 02            [24] 1658 	push	ar2
      0007E0 C0 01            [24] 1659 	push	ar1
      0007E2 C0 00            [24] 1660 	push	ar0
      0007E4 74 83            [12] 1661 	mov	a,#___str_71
      0007E6 C0 E0            [24] 1662 	push	acc
      0007E8 74 1A            [12] 1663 	mov	a,#(___str_71 >> 8)
      0007EA C0 E0            [24] 1664 	push	acc
      0007EC 12 11 02         [24] 1665 	lcall	_printf_tiny
      0007EF 15 81            [12] 1666 	dec	sp
      0007F1 15 81            [12] 1667 	dec	sp
      0007F3 D0 00            [24] 1668 	pop	ar0
      0007F5 D0 01            [24] 1669 	pop	ar1
      0007F7 D0 02            [24] 1670 	pop	ar2
                                   1671 ;	8052Explorer.c:313: puntatore -= 16;
      0007F9 E8               [12] 1672 	mov	a,r0
      0007FA 24 F0            [12] 1673 	add	a,#0xf0
      0007FC FC               [12] 1674 	mov	r4,a
      0007FD E9               [12] 1675 	mov	a,r1
      0007FE 34 FF            [12] 1676 	addc	a,#0xff
      000800 FB               [12] 1677 	mov	r3,a
                                   1678 ;	8052Explorer.c:314: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000801 75 2B 00         [24] 1679 	mov	_dumpRAM_posto_262144_81,#0x00
      000804                       1680 00123$:
      000804 74 F0            [12] 1681 	mov	a,#0x100 - 0x10
      000806 25 2B            [12] 1682 	add	a,_dumpRAM_posto_262144_81
      000808 40 54            [24] 1683 	jc	00142$
                                   1684 ;	8052Explorer.c:315: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      00080A 8C 82            [24] 1685 	mov	dpl,r4
      00080C 8B 83            [24] 1686 	mov	dph,r3
      00080E 8A F0            [24] 1687 	mov	b,r2
      000810 12 12 98         [24] 1688 	lcall	__gptrget
      000813 F8               [12] 1689 	mov	r0,a
      000814 B8 20 00         [24] 1690 	cjne	r0,#0x20,00197$
      000817                       1691 00197$:
      000817 40 05            [24] 1692 	jc	00113$
      000819 E8               [12] 1693 	mov	a,r0
      00081A 24 81            [12] 1694 	add	a,#0xff - 0x7e
      00081C 50 14            [24] 1695 	jnc	00114$
      00081E                       1696 00113$:
                                   1697 ;	8052Explorer.c:316: putchar('.');
      00081E 90 00 2E         [24] 1698 	mov	dptr,#0x002e
      000821 C0 04            [24] 1699 	push	ar4
      000823 C0 03            [24] 1700 	push	ar3
      000825 C0 02            [24] 1701 	push	ar2
      000827 12 10 3D         [24] 1702 	lcall	_putchar
      00082A D0 02            [24] 1703 	pop	ar2
      00082C D0 03            [24] 1704 	pop	ar3
      00082E D0 04            [24] 1705 	pop	ar4
      000830 80 23            [24] 1706 	sjmp	00115$
      000832                       1707 00114$:
                                   1708 ;	8052Explorer.c:318: printf_tiny("%c", *puntatore);
      000832 79 00            [12] 1709 	mov	r1,#0x00
      000834 C0 04            [24] 1710 	push	ar4
      000836 C0 03            [24] 1711 	push	ar3
      000838 C0 02            [24] 1712 	push	ar2
      00083A C0 00            [24] 1713 	push	ar0
      00083C C0 01            [24] 1714 	push	ar1
      00083E 74 86            [12] 1715 	mov	a,#___str_72
      000840 C0 E0            [24] 1716 	push	acc
      000842 74 1A            [12] 1717 	mov	a,#(___str_72 >> 8)
      000844 C0 E0            [24] 1718 	push	acc
      000846 12 11 02         [24] 1719 	lcall	_printf_tiny
      000849 E5 81            [12] 1720 	mov	a,sp
      00084B 24 FC            [12] 1721 	add	a,#0xfc
      00084D F5 81            [12] 1722 	mov	sp,a
      00084F D0 02            [24] 1723 	pop	ar2
      000851 D0 03            [24] 1724 	pop	ar3
      000853 D0 04            [24] 1725 	pop	ar4
      000855                       1726 00115$:
                                   1727 ;	8052Explorer.c:320: puntatore++;
      000855 0C               [12] 1728 	inc	r4
      000856 BC 00 01         [24] 1729 	cjne	r4,#0x00,00200$
      000859 0B               [12] 1730 	inc	r3
      00085A                       1731 00200$:
                                   1732 ;	8052Explorer.c:314: for (unsigned char posto = 0; posto < 16; posto++ ) {
      00085A 05 2B            [12] 1733 	inc	_dumpRAM_posto_262144_81
      00085C 80 A6            [24] 1734 	sjmp	00123$
      00085E                       1735 00142$:
      00085E 8C 05            [24] 1736 	mov	ar5,r4
      000860 8B 06            [24] 1737 	mov	ar6,r3
      000862 8A 07            [24] 1738 	mov	ar7,r2
                                   1739 ;	8052Explorer.c:322: putchar('|');
      000864 90 00 7C         [24] 1740 	mov	dptr,#0x007c
      000867 C0 07            [24] 1741 	push	ar7
      000869 C0 06            [24] 1742 	push	ar6
      00086B C0 05            [24] 1743 	push	ar5
      00086D 12 10 3D         [24] 1744 	lcall	_putchar
                                   1745 ;	8052Explorer.c:323: putchar('\r');
      000870 90 00 0D         [24] 1746 	mov	dptr,#0x000d
      000873 12 10 3D         [24] 1747 	lcall	_putchar
      000876 D0 05            [24] 1748 	pop	ar5
      000878 D0 06            [24] 1749 	pop	ar6
      00087A D0 07            [24] 1750 	pop	ar7
                                   1751 ;	8052Explorer.c:295: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
      00087C 74 10            [12] 1752 	mov	a,#0x10
      00087E 25 27            [12] 1753 	add	a,_dumpRAM_indirizzo_131072_72
      000880 F5 27            [12] 1754 	mov	_dumpRAM_indirizzo_131072_72,a
      000882 E4               [12] 1755 	clr	a
      000883 35 28            [12] 1756 	addc	a,(_dumpRAM_indirizzo_131072_72 + 1)
      000885 F5 28            [12] 1757 	mov	(_dumpRAM_indirizzo_131072_72 + 1),a
      000887 02 06 BD         [24] 1758 	ljmp	00126$
      00088A                       1759 00118$:
                                   1760 ;	8052Explorer.c:325: putchar('\r');
      00088A 90 00 0D         [24] 1761 	mov	dptr,#0x000d
                                   1762 ;	8052Explorer.c:327: }
      00088D 02 10 3D         [24] 1763 	ljmp	_putchar
                                   1764 ;------------------------------------------------------------
                                   1765 ;Allocation info for local variables in function 'hexCODE'
                                   1766 ;------------------------------------------------------------
                                   1767 ;puntatore                 Allocated with name '_hexCODE_puntatore_65536_85'
                                   1768 ;checksum                  Allocated with name '_hexCODE_checksum_65537_86'
                                   1769 ;indirizzo                 Allocated to registers r3 r4 
                                   1770 ;posto                     Allocated to registers r0 
                                   1771 ;------------------------------------------------------------
                                   1772 ;	8052Explorer.c:329: void hexCODE(){
                                   1773 ;	-----------------------------------------
                                   1774 ;	 function hexCODE
                                   1775 ;	-----------------------------------------
      000890                       1776 _hexCODE:
                                   1777 ;	8052Explorer.c:330: unsigned char *puntatore = codice;
      000890 75 2C 00         [24] 1778 	mov	_hexCODE_puntatore_65536_85,#_codice
      000893 75 2D 00         [24] 1779 	mov	(_hexCODE_puntatore_65536_85 + 1),#(_codice >> 8)
      000896 75 2E 80         [24] 1780 	mov	(_hexCODE_puntatore_65536_85 + 2),#0x80
                                   1781 ;	8052Explorer.c:334: puts("Dumping code in hex file format:");
      000899 90 1A FD         [24] 1782 	mov	dptr,#___str_85
      00089C 75 F0 80         [24] 1783 	mov	b,#0x80
      00089F 12 12 58         [24] 1784 	lcall	_puts
                                   1785 ;	8052Explorer.c:337: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0008A2 7B 00            [12] 1786 	mov	r3,#0x00
      0008A4 7C 00            [12] 1787 	mov	r4,#0x00
      0008A6                       1788 00120$:
      0008A6 C3               [12] 1789 	clr	c
      0008A7 74 FF            [12] 1790 	mov	a,#0xff
      0008A9 9B               [12] 1791 	subb	a,r3
      0008AA 74 2F            [12] 1792 	mov	a,#0x2f
      0008AC 9C               [12] 1793 	subb	a,r4
      0008AD 50 03            [24] 1794 	jnc	00171$
      0008AF 02 0A 9F         [24] 1795 	ljmp	00115$
      0008B2                       1796 00171$:
                                   1797 ;	8052Explorer.c:338: printf_tiny(":10");
      0008B2 C0 04            [24] 1798 	push	ar4
      0008B4 C0 03            [24] 1799 	push	ar3
      0008B6 74 AF            [12] 1800 	mov	a,#___str_74
      0008B8 C0 E0            [24] 1801 	push	acc
      0008BA 74 1A            [12] 1802 	mov	a,#(___str_74 >> 8)
      0008BC C0 E0            [24] 1803 	push	acc
      0008BE 12 11 02         [24] 1804 	lcall	_printf_tiny
      0008C1 15 81            [12] 1805 	dec	sp
      0008C3 15 81            [12] 1806 	dec	sp
      0008C5 D0 03            [24] 1807 	pop	ar3
      0008C7 D0 04            [24] 1808 	pop	ar4
                                   1809 ;	8052Explorer.c:339: checksum = 0x10;
      0008C9 79 10            [12] 1810 	mov	r1,#0x10
      0008CB 7A 00            [12] 1811 	mov	r2,#0x00
                                   1812 ;	8052Explorer.c:340: if (indirizzo < 0x10) {
      0008CD C3               [12] 1813 	clr	c
      0008CE EB               [12] 1814 	mov	a,r3
      0008CF 94 10            [12] 1815 	subb	a,#0x10
      0008D1 EC               [12] 1816 	mov	a,r4
      0008D2 94 00            [12] 1817 	subb	a,#0x00
      0008D4 50 28            [24] 1818 	jnc	00108$
                                   1819 ;	8052Explorer.c:341: printf_tiny("000%x", indirizzo);
      0008D6 C0 04            [24] 1820 	push	ar4
      0008D8 C0 03            [24] 1821 	push	ar3
      0008DA C0 02            [24] 1822 	push	ar2
      0008DC C0 01            [24] 1823 	push	ar1
      0008DE C0 03            [24] 1824 	push	ar3
      0008E0 C0 04            [24] 1825 	push	ar4
      0008E2 74 B3            [12] 1826 	mov	a,#___str_75
      0008E4 C0 E0            [24] 1827 	push	acc
      0008E6 74 1A            [12] 1828 	mov	a,#(___str_75 >> 8)
      0008E8 C0 E0            [24] 1829 	push	acc
      0008EA 12 11 02         [24] 1830 	lcall	_printf_tiny
      0008ED E5 81            [12] 1831 	mov	a,sp
      0008EF 24 FC            [12] 1832 	add	a,#0xfc
      0008F1 F5 81            [12] 1833 	mov	sp,a
      0008F3 D0 01            [24] 1834 	pop	ar1
      0008F5 D0 02            [24] 1835 	pop	ar2
      0008F7 D0 03            [24] 1836 	pop	ar3
      0008F9 D0 04            [24] 1837 	pop	ar4
      0008FB 02 09 7B         [24] 1838 	ljmp	00109$
      0008FE                       1839 00108$:
                                   1840 ;	8052Explorer.c:342: } else if (indirizzo < 0x100) {
      0008FE 74 FF            [12] 1841 	mov	a,#0x100 - 0x01
      000900 2C               [12] 1842 	add	a,r4
      000901 40 27            [24] 1843 	jc	00105$
                                   1844 ;	8052Explorer.c:343: printf_tiny("00%x", indirizzo);
      000903 C0 04            [24] 1845 	push	ar4
      000905 C0 03            [24] 1846 	push	ar3
      000907 C0 02            [24] 1847 	push	ar2
      000909 C0 01            [24] 1848 	push	ar1
      00090B C0 03            [24] 1849 	push	ar3
      00090D C0 04            [24] 1850 	push	ar4
      00090F 74 B9            [12] 1851 	mov	a,#___str_76
      000911 C0 E0            [24] 1852 	push	acc
      000913 74 1A            [12] 1853 	mov	a,#(___str_76 >> 8)
      000915 C0 E0            [24] 1854 	push	acc
      000917 12 11 02         [24] 1855 	lcall	_printf_tiny
      00091A E5 81            [12] 1856 	mov	a,sp
      00091C 24 FC            [12] 1857 	add	a,#0xfc
      00091E F5 81            [12] 1858 	mov	sp,a
      000920 D0 01            [24] 1859 	pop	ar1
      000922 D0 02            [24] 1860 	pop	ar2
      000924 D0 03            [24] 1861 	pop	ar3
      000926 D0 04            [24] 1862 	pop	ar4
      000928 80 51            [24] 1863 	sjmp	00109$
      00092A                       1864 00105$:
                                   1865 ;	8052Explorer.c:344: } else if (indirizzo < 0x1000) {
      00092A 74 F0            [12] 1866 	mov	a,#0x100 - 0x10
      00092C 2C               [12] 1867 	add	a,r4
      00092D 40 27            [24] 1868 	jc	00102$
                                   1869 ;	8052Explorer.c:345: printf_tiny("0%x", indirizzo);
      00092F C0 04            [24] 1870 	push	ar4
      000931 C0 03            [24] 1871 	push	ar3
      000933 C0 02            [24] 1872 	push	ar2
      000935 C0 01            [24] 1873 	push	ar1
      000937 C0 03            [24] 1874 	push	ar3
      000939 C0 04            [24] 1875 	push	ar4
      00093B 74 BE            [12] 1876 	mov	a,#___str_77
      00093D C0 E0            [24] 1877 	push	acc
      00093F 74 1A            [12] 1878 	mov	a,#(___str_77 >> 8)
      000941 C0 E0            [24] 1879 	push	acc
      000943 12 11 02         [24] 1880 	lcall	_printf_tiny
      000946 E5 81            [12] 1881 	mov	a,sp
      000948 24 FC            [12] 1882 	add	a,#0xfc
      00094A F5 81            [12] 1883 	mov	sp,a
      00094C D0 01            [24] 1884 	pop	ar1
      00094E D0 02            [24] 1885 	pop	ar2
      000950 D0 03            [24] 1886 	pop	ar3
      000952 D0 04            [24] 1887 	pop	ar4
      000954 80 25            [24] 1888 	sjmp	00109$
      000956                       1889 00102$:
                                   1890 ;	8052Explorer.c:347: printf_tiny("%x", indirizzo);
      000956 C0 04            [24] 1891 	push	ar4
      000958 C0 03            [24] 1892 	push	ar3
      00095A C0 02            [24] 1893 	push	ar2
      00095C C0 01            [24] 1894 	push	ar1
      00095E C0 03            [24] 1895 	push	ar3
      000960 C0 04            [24] 1896 	push	ar4
      000962 74 C2            [12] 1897 	mov	a,#___str_78
      000964 C0 E0            [24] 1898 	push	acc
      000966 74 1A            [12] 1899 	mov	a,#(___str_78 >> 8)
      000968 C0 E0            [24] 1900 	push	acc
      00096A 12 11 02         [24] 1901 	lcall	_printf_tiny
      00096D E5 81            [12] 1902 	mov	a,sp
      00096F 24 FC            [12] 1903 	add	a,#0xfc
      000971 F5 81            [12] 1904 	mov	sp,a
      000973 D0 01            [24] 1905 	pop	ar1
      000975 D0 02            [24] 1906 	pop	ar2
      000977 D0 03            [24] 1907 	pop	ar3
      000979 D0 04            [24] 1908 	pop	ar4
      00097B                       1909 00109$:
                                   1910 ;	8052Explorer.c:349: checksum += (indirizzo >> 8 ) & 0xFF ;
      00097B 8C 00            [24] 1911 	mov	ar0,r4
      00097D 88 07            [24] 1912 	mov	ar7,r0
      00097F 78 00            [12] 1913 	mov	r0,#0x00
      000981 EF               [12] 1914 	mov	a,r7
      000982 29               [12] 1915 	add	a,r1
      000983 FF               [12] 1916 	mov	r7,a
      000984 E8               [12] 1917 	mov	a,r0
      000985 3A               [12] 1918 	addc	a,r2
      000986 F8               [12] 1919 	mov	r0,a
                                   1920 ;	8052Explorer.c:350: checksum += (indirizzo & 0xFF);
      000987 8B 05            [24] 1921 	mov	ar5,r3
      000989 7E 00            [12] 1922 	mov	r6,#0x00
      00098B ED               [12] 1923 	mov	a,r5
      00098C 2F               [12] 1924 	add	a,r7
      00098D F5 2F            [12] 1925 	mov	_hexCODE_checksum_65537_86,a
      00098F EE               [12] 1926 	mov	a,r6
      000990 38               [12] 1927 	addc	a,r0
      000991 F5 30            [12] 1928 	mov	(_hexCODE_checksum_65537_86 + 1),a
                                   1929 ;	8052Explorer.c:351: printf_tiny("00");
      000993 C0 04            [24] 1930 	push	ar4
      000995 C0 03            [24] 1931 	push	ar3
      000997 74 C5            [12] 1932 	mov	a,#___str_79
      000999 C0 E0            [24] 1933 	push	acc
      00099B 74 1A            [12] 1934 	mov	a,#(___str_79 >> 8)
      00099D C0 E0            [24] 1935 	push	acc
      00099F 12 11 02         [24] 1936 	lcall	_printf_tiny
      0009A2 15 81            [12] 1937 	dec	sp
      0009A4 15 81            [12] 1938 	dec	sp
      0009A6 D0 03            [24] 1939 	pop	ar3
      0009A8 D0 04            [24] 1940 	pop	ar4
                                   1941 ;	8052Explorer.c:353: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0009AA AD 2C            [24] 1942 	mov	r5,_hexCODE_puntatore_65536_85
      0009AC AA 2D            [24] 1943 	mov	r2,(_hexCODE_puntatore_65536_85 + 1)
      0009AE A9 2E            [24] 1944 	mov	r1,(_hexCODE_puntatore_65536_85 + 2)
      0009B0 78 00            [12] 1945 	mov	r0,#0x00
      0009B2                       1946 00117$:
      0009B2 B8 10 00         [24] 1947 	cjne	r0,#0x10,00175$
      0009B5                       1948 00175$:
      0009B5 40 03            [24] 1949 	jc	00176$
      0009B7 02 0A 3F         [24] 1950 	ljmp	00133$
      0009BA                       1951 00176$:
                                   1952 ;	8052Explorer.c:354: if ( *puntatore < 16 ) {
      0009BA 8D 82            [24] 1953 	mov	dpl,r5
      0009BC 8A 83            [24] 1954 	mov	dph,r2
      0009BE 89 F0            [24] 1955 	mov	b,r1
      0009C0 12 12 98         [24] 1956 	lcall	__gptrget
      0009C3 FF               [12] 1957 	mov	r7,a
      0009C4 BF 10 00         [24] 1958 	cjne	r7,#0x10,00177$
      0009C7                       1959 00177$:
      0009C7 50 1E            [24] 1960 	jnc	00111$
                                   1961 ;	8052Explorer.c:355: putchar('0');
      0009C9 90 00 30         [24] 1962 	mov	dptr,#0x0030
      0009CC C0 05            [24] 1963 	push	ar5
      0009CE C0 04            [24] 1964 	push	ar4
      0009D0 C0 03            [24] 1965 	push	ar3
      0009D2 C0 02            [24] 1966 	push	ar2
      0009D4 C0 01            [24] 1967 	push	ar1
      0009D6 C0 00            [24] 1968 	push	ar0
      0009D8 12 10 3D         [24] 1969 	lcall	_putchar
      0009DB D0 00            [24] 1970 	pop	ar0
      0009DD D0 01            [24] 1971 	pop	ar1
      0009DF D0 02            [24] 1972 	pop	ar2
      0009E1 D0 03            [24] 1973 	pop	ar3
      0009E3 D0 04            [24] 1974 	pop	ar4
      0009E5 D0 05            [24] 1975 	pop	ar5
      0009E7                       1976 00111$:
                                   1977 ;	8052Explorer.c:357: printf_tiny("%x", *puntatore);
      0009E7 8D 82            [24] 1978 	mov	dpl,r5
      0009E9 8A 83            [24] 1979 	mov	dph,r2
      0009EB 89 F0            [24] 1980 	mov	b,r1
      0009ED 12 12 98         [24] 1981 	lcall	__gptrget
      0009F0 FF               [12] 1982 	mov	r7,a
      0009F1 7E 00            [12] 1983 	mov	r6,#0x00
      0009F3 C0 05            [24] 1984 	push	ar5
      0009F5 C0 04            [24] 1985 	push	ar4
      0009F7 C0 03            [24] 1986 	push	ar3
      0009F9 C0 02            [24] 1987 	push	ar2
      0009FB C0 01            [24] 1988 	push	ar1
      0009FD C0 00            [24] 1989 	push	ar0
      0009FF C0 07            [24] 1990 	push	ar7
      000A01 C0 06            [24] 1991 	push	ar6
      000A03 74 C2            [12] 1992 	mov	a,#___str_78
      000A05 C0 E0            [24] 1993 	push	acc
      000A07 74 1A            [12] 1994 	mov	a,#(___str_78 >> 8)
      000A09 C0 E0            [24] 1995 	push	acc
      000A0B 12 11 02         [24] 1996 	lcall	_printf_tiny
      000A0E E5 81            [12] 1997 	mov	a,sp
      000A10 24 FC            [12] 1998 	add	a,#0xfc
      000A12 F5 81            [12] 1999 	mov	sp,a
      000A14 D0 00            [24] 2000 	pop	ar0
      000A16 D0 01            [24] 2001 	pop	ar1
      000A18 D0 02            [24] 2002 	pop	ar2
      000A1A D0 03            [24] 2003 	pop	ar3
      000A1C D0 04            [24] 2004 	pop	ar4
      000A1E D0 05            [24] 2005 	pop	ar5
                                   2006 ;	8052Explorer.c:358: checksum += *puntatore;
      000A20 8D 82            [24] 2007 	mov	dpl,r5
      000A22 8A 83            [24] 2008 	mov	dph,r2
      000A24 89 F0            [24] 2009 	mov	b,r1
      000A26 12 12 98         [24] 2010 	lcall	__gptrget
      000A29 FF               [12] 2011 	mov	r7,a
      000A2A A3               [24] 2012 	inc	dptr
      000A2B AD 82            [24] 2013 	mov	r5,dpl
      000A2D AA 83            [24] 2014 	mov	r2,dph
      000A2F 7E 00            [12] 2015 	mov	r6,#0x00
      000A31 EF               [12] 2016 	mov	a,r7
      000A32 25 2F            [12] 2017 	add	a,_hexCODE_checksum_65537_86
      000A34 F5 2F            [12] 2018 	mov	_hexCODE_checksum_65537_86,a
      000A36 EE               [12] 2019 	mov	a,r6
      000A37 35 30            [12] 2020 	addc	a,(_hexCODE_checksum_65537_86 + 1)
      000A39 F5 30            [12] 2021 	mov	(_hexCODE_checksum_65537_86 + 1),a
                                   2022 ;	8052Explorer.c:359: puntatore++;
                                   2023 ;	8052Explorer.c:353: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000A3B 08               [12] 2024 	inc	r0
      000A3C 02 09 B2         [24] 2025 	ljmp	00117$
      000A3F                       2026 00133$:
      000A3F 8D 2C            [24] 2027 	mov	_hexCODE_puntatore_65536_85,r5
      000A41 8A 2D            [24] 2028 	mov	(_hexCODE_puntatore_65536_85 + 1),r2
      000A43 89 2E            [24] 2029 	mov	(_hexCODE_puntatore_65536_85 + 2),r1
                                   2030 ;	8052Explorer.c:361: checksum = ((~checksum) & 0xFF);
      000A45 E5 2F            [12] 2031 	mov	a,_hexCODE_checksum_65537_86
      000A47 F4               [12] 2032 	cpl	a
      000A48 FE               [12] 2033 	mov	r6,a
      000A49 E5 30            [12] 2034 	mov	a,(_hexCODE_checksum_65537_86 + 1)
      000A4B F4               [12] 2035 	cpl	a
      000A4C 7F 00            [12] 2036 	mov	r7,#0x00
                                   2037 ;	8052Explorer.c:362: checksum++;
      000A4E 0E               [12] 2038 	inc	r6
      000A4F BE 00 01         [24] 2039 	cjne	r6,#0x00,00179$
      000A52 0F               [12] 2040 	inc	r7
      000A53                       2041 00179$:
                                   2042 ;	8052Explorer.c:363: if ( (checksum & 0xFF) < 16 ) {
      000A53 8E 02            [24] 2043 	mov	ar2,r6
      000A55 7D 00            [12] 2044 	mov	r5,#0x00
      000A57 C3               [12] 2045 	clr	c
      000A58 EA               [12] 2046 	mov	a,r2
      000A59 94 10            [12] 2047 	subb	a,#0x10
      000A5B ED               [12] 2048 	mov	a,r5
      000A5C 94 00            [12] 2049 	subb	a,#0x00
      000A5E 50 16            [24] 2050 	jnc	00114$
                                   2051 ;	8052Explorer.c:364: putchar('0');
      000A60 90 00 30         [24] 2052 	mov	dptr,#0x0030
      000A63 C0 07            [24] 2053 	push	ar7
      000A65 C0 06            [24] 2054 	push	ar6
      000A67 C0 04            [24] 2055 	push	ar4
      000A69 C0 03            [24] 2056 	push	ar3
      000A6B 12 10 3D         [24] 2057 	lcall	_putchar
      000A6E D0 03            [24] 2058 	pop	ar3
      000A70 D0 04            [24] 2059 	pop	ar4
      000A72 D0 06            [24] 2060 	pop	ar6
      000A74 D0 07            [24] 2061 	pop	ar7
      000A76                       2062 00114$:
                                   2063 ;	8052Explorer.c:366: printf_tiny("%x\r", checksum & 0xFF);
      000A76 7F 00            [12] 2064 	mov	r7,#0x00
      000A78 C0 04            [24] 2065 	push	ar4
      000A7A C0 03            [24] 2066 	push	ar3
      000A7C C0 06            [24] 2067 	push	ar6
      000A7E C0 07            [24] 2068 	push	ar7
      000A80 74 C8            [12] 2069 	mov	a,#___str_80
      000A82 C0 E0            [24] 2070 	push	acc
      000A84 74 1A            [12] 2071 	mov	a,#(___str_80 >> 8)
      000A86 C0 E0            [24] 2072 	push	acc
      000A88 12 11 02         [24] 2073 	lcall	_printf_tiny
      000A8B E5 81            [12] 2074 	mov	a,sp
      000A8D 24 FC            [12] 2075 	add	a,#0xfc
      000A8F F5 81            [12] 2076 	mov	sp,a
      000A91 D0 03            [24] 2077 	pop	ar3
      000A93 D0 04            [24] 2078 	pop	ar4
                                   2079 ;	8052Explorer.c:337: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      000A95 74 10            [12] 2080 	mov	a,#0x10
      000A97 2B               [12] 2081 	add	a,r3
      000A98 FB               [12] 2082 	mov	r3,a
      000A99 E4               [12] 2083 	clr	a
      000A9A 3C               [12] 2084 	addc	a,r4
      000A9B FC               [12] 2085 	mov	r4,a
      000A9C 02 08 A6         [24] 2086 	ljmp	00120$
      000A9F                       2087 00115$:
                                   2088 ;	8052Explorer.c:368: printf_tiny("%s", ":00000001FF");
      000A9F 74 CF            [12] 2089 	mov	a,#___str_82
      000AA1 C0 E0            [24] 2090 	push	acc
      000AA3 74 1A            [12] 2091 	mov	a,#(___str_82 >> 8)
      000AA5 C0 E0            [24] 2092 	push	acc
      000AA7 74 80            [12] 2093 	mov	a,#0x80
      000AA9 C0 E0            [24] 2094 	push	acc
      000AAB 74 CC            [12] 2095 	mov	a,#___str_81
      000AAD C0 E0            [24] 2096 	push	acc
      000AAF 74 1A            [12] 2097 	mov	a,#(___str_81 >> 8)
      000AB1 C0 E0            [24] 2098 	push	acc
      000AB3 12 11 02         [24] 2099 	lcall	_printf_tiny
      000AB6 E5 81            [12] 2100 	mov	a,sp
      000AB8 24 FB            [12] 2101 	add	a,#0xfb
      000ABA F5 81            [12] 2102 	mov	sp,a
                                   2103 ;	8052Explorer.c:370: putchar('\r');
      000ABC 90 00 0D         [24] 2104 	mov	dptr,#0x000d
      000ABF 12 10 3D         [24] 2105 	lcall	_putchar
                                   2106 ;	8052Explorer.c:371: putchar('\r');
      000AC2 90 00 0D         [24] 2107 	mov	dptr,#0x000d
                                   2108 ;	8052Explorer.c:372: }
      000AC5 02 10 3D         [24] 2109 	ljmp	_putchar
                                   2110 ;------------------------------------------------------------
                                   2111 ;Allocation info for local variables in function 'reset'
                                   2112 ;------------------------------------------------------------
                                   2113 ;	8052Explorer.c:374: void reset( void ) {
                                   2114 ;	-----------------------------------------
                                   2115 ;	 function reset
                                   2116 ;	-----------------------------------------
      000AC8                       2117 _reset:
                                   2118 ;	8052Explorer.c:375: puts("Resetting the micro.");
      000AC8 90 1B 1E         [24] 2119 	mov	dptr,#___str_86
      000ACB 75 F0 80         [24] 2120 	mov	b,#0x80
      000ACE 12 12 58         [24] 2121 	lcall	_puts
                                   2122 ;	8052Explorer.c:381: while ( 1 );
      000AD1                       2123 00102$:
                                   2124 ;	8052Explorer.c:382: }
      000AD1 80 FE            [24] 2125 	sjmp	00102$
                                   2126 ;------------------------------------------------------------
                                   2127 ;Allocation info for local variables in function 'start'
                                   2128 ;------------------------------------------------------------
                                   2129 ;	8052Explorer.c:384: void start( void )
                                   2130 ;	-----------------------------------------
                                   2131 ;	 function start
                                   2132 ;	-----------------------------------------
      000AD3                       2133 _start:
                                   2134 ;	8052Explorer.c:386: WDTCON |= 0xE0; // 2048 ms at 12MHz
      000AD3 43 A7 E0         [24] 2135 	orl	_WDTCON,#0xe0
                                   2136 ;	8052Explorer.c:387: WDTCON |= 0x8; // no hardware pin low on reset
      000AD6 43 A7 08         [24] 2137 	orl	_WDTCON,#0x08
                                   2138 ;	8052Explorer.c:388: WDTCON |= 0x4; // enable Watchdog
      000AD9 43 A7 04         [24] 2139 	orl	_WDTCON,#0x04
                                   2140 ;	8052Explorer.c:389: WDTRST = 0x1E;
      000ADC 75 A6 1E         [24] 2141 	mov	_WDTRST,#0x1e
                                   2142 ;	8052Explorer.c:390: WDTRST = 0xE1;
      000ADF 75 A6 E1         [24] 2143 	mov	_WDTRST,#0xe1
                                   2144 ;	8052Explorer.c:392: CLKREG |= MYCLKREG;
      000AE2 43 8F 01         [24] 2145 	orl	_CLKREG,#0x01
                                   2146 ;	8052Explorer.c:394: init_ser(MYTH2, MYTL2);
      000AE5 75 0E CA         [24] 2147 	mov	_init_ser_PARM_2,#0xca
      000AE8 75 82 FF         [24] 2148 	mov	dpl,#0xff
      000AEB 12 0F 63         [24] 2149 	lcall	_init_ser
                                   2150 ;	8052Explorer.c:395: felix();
      000AEE 12 00 8C         [24] 2151 	lcall	_felix
                                   2152 ;	8052Explorer.c:396: printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
      000AF1 74 54            [12] 2153 	mov	a,#___str_89
      000AF3 C0 E0            [24] 2154 	push	acc
      000AF5 74 1B            [12] 2155 	mov	a,#(___str_89 >> 8)
      000AF7 C0 E0            [24] 2156 	push	acc
      000AF9 74 80            [12] 2157 	mov	a,#0x80
      000AFB C0 E0            [24] 2158 	push	acc
      000AFD 74 4C            [12] 2159 	mov	a,#___str_88
      000AFF C0 E0            [24] 2160 	push	acc
      000B01 74 1B            [12] 2161 	mov	a,#(___str_88 >> 8)
      000B03 C0 E0            [24] 2162 	push	acc
      000B05 74 80            [12] 2163 	mov	a,#0x80
      000B07 C0 E0            [24] 2164 	push	acc
      000B09 74 33            [12] 2165 	mov	a,#___str_87
      000B0B C0 E0            [24] 2166 	push	acc
      000B0D 74 1B            [12] 2167 	mov	a,#(___str_87 >> 8)
      000B0F C0 E0            [24] 2168 	push	acc
      000B11 12 11 02         [24] 2169 	lcall	_printf_tiny
      000B14 E5 81            [12] 2170 	mov	a,sp
      000B16 24 F8            [12] 2171 	add	a,#0xf8
      000B18 F5 81            [12] 2172 	mov	sp,a
                                   2173 ;	8052Explorer.c:398: if (CLKREG & CLKREG_X2) {
      000B1A E5 8F            [12] 2174 	mov	a,_CLKREG
      000B1C 30 E0 09         [24] 2175 	jnb	acc.0,00102$
                                   2176 ;	8052Explorer.c:399: puts("Double system clock");
      000B1F 90 1B 57         [24] 2177 	mov	dptr,#___str_90
      000B22 75 F0 80         [24] 2178 	mov	b,#0x80
      000B25 12 12 58         [24] 2179 	lcall	_puts
      000B28                       2180 00102$:
                                   2181 ;	8052Explorer.c:402: if (PCON & 0x10) {
      000B28 E5 87            [12] 2182 	mov	a,_PCON
      000B2A 30 E4 0E         [24] 2183 	jnb	acc.4,00104$
                                   2184 ;	8052Explorer.c:403: puts("Cold reset");
      000B2D 90 1B 6B         [24] 2185 	mov	dptr,#___str_91
      000B30 75 F0 80         [24] 2186 	mov	b,#0x80
      000B33 12 12 58         [24] 2187 	lcall	_puts
                                   2188 ;	8052Explorer.c:404: PCON &= ~0x10;
      000B36 53 87 EF         [24] 2189 	anl	_PCON,#0xef
      000B39 80 09            [24] 2190 	sjmp	00105$
      000B3B                       2191 00104$:
                                   2192 ;	8052Explorer.c:406: puts("Warm reset");
      000B3B 90 1B 76         [24] 2193 	mov	dptr,#___str_92
      000B3E 75 F0 80         [24] 2194 	mov	b,#0x80
      000B41 12 12 58         [24] 2195 	lcall	_puts
      000B44                       2196 00105$:
                                   2197 ;	8052Explorer.c:408: puts("Enabled watchdog");
      000B44 90 1B 81         [24] 2198 	mov	dptr,#___str_93
      000B47 75 F0 80         [24] 2199 	mov	b,#0x80
      000B4A 12 12 58         [24] 2200 	lcall	_puts
                                   2201 ;	8052Explorer.c:409: P0=0xFF;
      000B4D 75 80 FF         [24] 2202 	mov	_P0,#0xff
                                   2203 ;	8052Explorer.c:410: P1=0xFF;
      000B50 75 90 FF         [24] 2204 	mov	_P1,#0xff
                                   2205 ;	8052Explorer.c:411: P2=0xFF;
      000B53 75 A0 FF         [24] 2206 	mov	_P2,#0xff
                                   2207 ;	8052Explorer.c:412: P3=0xFF;
      000B56 75 B0 FF         [24] 2208 	mov	_P3,#0xff
                                   2209 ;	8052Explorer.c:413: printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
      000B59 74 CA            [12] 2210 	mov	a,#0xca
      000B5B C0 E0            [24] 2211 	push	acc
      000B5D E4               [12] 2212 	clr	a
      000B5E C0 E0            [24] 2213 	push	acc
      000B60 14               [12] 2214 	dec	a
      000B61 C0 E0            [24] 2215 	push	acc
      000B63 E4               [12] 2216 	clr	a
      000B64 C0 E0            [24] 2217 	push	acc
      000B66 74 92            [12] 2218 	mov	a,#___str_94
      000B68 C0 E0            [24] 2219 	push	acc
      000B6A 74 1B            [12] 2220 	mov	a,#(___str_94 >> 8)
      000B6C C0 E0            [24] 2221 	push	acc
      000B6E 12 11 02         [24] 2222 	lcall	_printf_tiny
      000B71 E5 81            [12] 2223 	mov	a,sp
      000B73 24 FA            [12] 2224 	add	a,#0xfa
      000B75 F5 81            [12] 2225 	mov	sp,a
                                   2226 ;	8052Explorer.c:414: printf_tiny("Started serial at %s bps\r", BPS);
      000B77 74 D6            [12] 2227 	mov	a,#___str_96
      000B79 C0 E0            [24] 2228 	push	acc
      000B7B 74 1B            [12] 2229 	mov	a,#(___str_96 >> 8)
      000B7D C0 E0            [24] 2230 	push	acc
      000B7F 74 80            [12] 2231 	mov	a,#0x80
      000B81 C0 E0            [24] 2232 	push	acc
      000B83 74 BC            [12] 2233 	mov	a,#___str_95
      000B85 C0 E0            [24] 2234 	push	acc
      000B87 74 1B            [12] 2235 	mov	a,#(___str_95 >> 8)
      000B89 C0 E0            [24] 2236 	push	acc
      000B8B 12 11 02         [24] 2237 	lcall	_printf_tiny
      000B8E E5 81            [12] 2238 	mov	a,sp
      000B90 24 FB            [12] 2239 	add	a,#0xfb
      000B92 F5 81            [12] 2240 	mov	sp,a
                                   2241 ;	8052Explorer.c:415: init_timer0(0xDE, 0xED);
      000B94 75 0E ED         [24] 2242 	mov	_init_timer0_PARM_2,#0xed
      000B97 75 82 DE         [24] 2243 	mov	dpl,#0xde
      000B9A 12 10 59         [24] 2244 	lcall	_init_timer0
                                   2245 ;	8052Explorer.c:416: printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
      000B9D 74 ED            [12] 2246 	mov	a,#0xed
      000B9F C0 E0            [24] 2247 	push	acc
      000BA1 E4               [12] 2248 	clr	a
      000BA2 C0 E0            [24] 2249 	push	acc
      000BA4 74 DE            [12] 2250 	mov	a,#0xde
      000BA6 C0 E0            [24] 2251 	push	acc
      000BA8 E4               [12] 2252 	clr	a
      000BA9 C0 E0            [24] 2253 	push	acc
      000BAB 74 DC            [12] 2254 	mov	a,#___str_97
      000BAD C0 E0            [24] 2255 	push	acc
      000BAF 74 1B            [12] 2256 	mov	a,#(___str_97 >> 8)
      000BB1 C0 E0            [24] 2257 	push	acc
      000BB3 12 11 02         [24] 2258 	lcall	_printf_tiny
      000BB6 E5 81            [12] 2259 	mov	a,sp
      000BB8 24 FA            [12] 2260 	add	a,#0xfa
      000BBA F5 81            [12] 2261 	mov	sp,a
                                   2262 ;	8052Explorer.c:418: puts("Print a string from code memory:");
      000BBC 90 1C 06         [24] 2263 	mov	dptr,#___str_100
      000BBF 75 F0 80         [24] 2264 	mov	b,#0x80
      000BC2 12 12 58         [24] 2265 	lcall	_puts
                                   2266 ;	8052Explorer.c:419: puts(acTestString);
      000BC5 90 12 B8         [24] 2267 	mov	dptr,#_acTestString
      000BC8 75 F0 80         [24] 2268 	mov	b,#0x80
                                   2269 ;	8052Explorer.c:420: }
      000BCB 02 12 58         [24] 2270 	ljmp	_puts
                                   2271 ;------------------------------------------------------------
                                   2272 ;Allocation info for local variables in function 'p'
                                   2273 ;------------------------------------------------------------
                                   2274 ;porta                     Allocated to registers r7 
                                   2275 ;pin                       Allocated with name '_p_pin_65537_110'
                                   2276 ;action                    Allocated to registers r5 
                                   2277 ;------------------------------------------------------------
                                   2278 ;	8052Explorer.c:422: void p( unsigned char porta ) {
                                   2279 ;	-----------------------------------------
                                   2280 ;	 function p
                                   2281 ;	-----------------------------------------
      000BCE                       2282 _p:
      000BCE AF 82            [24] 2283 	mov	r7,dpl
                                   2284 ;	8052Explorer.c:423: if (porta == 3 ) {
      000BD0 E4               [12] 2285 	clr	a
      000BD1 BF 03 01         [24] 2286 	cjne	r7,#0x03,00255$
      000BD4 04               [12] 2287 	inc	a
      000BD5                       2288 00255$:
      000BD5 FE               [12] 2289 	mov	r6,a
      000BD6 60 23            [24] 2290 	jz	00105$
                                   2291 ;	8052Explorer.c:424: printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
      000BD8 8F 04            [24] 2292 	mov	ar4,r7
      000BDA 7D 00            [12] 2293 	mov	r5,#0x00
      000BDC C0 07            [24] 2294 	push	ar7
      000BDE C0 06            [24] 2295 	push	ar6
      000BE0 C0 04            [24] 2296 	push	ar4
      000BE2 C0 05            [24] 2297 	push	ar5
      000BE4 74 4D            [12] 2298 	mov	a,#___str_101
      000BE6 C0 E0            [24] 2299 	push	acc
      000BE8 74 1C            [12] 2300 	mov	a,#(___str_101 >> 8)
      000BEA C0 E0            [24] 2301 	push	acc
      000BEC 12 11 02         [24] 2302 	lcall	_printf_tiny
      000BEF E5 81            [12] 2303 	mov	a,sp
      000BF1 24 FC            [12] 2304 	add	a,#0xfc
      000BF3 F5 81            [12] 2305 	mov	sp,a
      000BF5 D0 06            [24] 2306 	pop	ar6
      000BF7 D0 07            [24] 2307 	pop	ar7
      000BF9 80 47            [24] 2308 	sjmp	00107$
      000BFB                       2309 00105$:
                                   2310 ;	8052Explorer.c:425: } else if (porta == 2 ) {
      000BFB BF 02 23         [24] 2311 	cjne	r7,#0x02,00102$
                                   2312 ;	8052Explorer.c:426: printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
      000BFE 8F 04            [24] 2313 	mov	ar4,r7
      000C00 7D 00            [12] 2314 	mov	r5,#0x00
      000C02 C0 07            [24] 2315 	push	ar7
      000C04 C0 06            [24] 2316 	push	ar6
      000C06 C0 04            [24] 2317 	push	ar4
      000C08 C0 05            [24] 2318 	push	ar5
      000C0A 74 70            [12] 2319 	mov	a,#___str_102
      000C0C C0 E0            [24] 2320 	push	acc
      000C0E 74 1C            [12] 2321 	mov	a,#(___str_102 >> 8)
      000C10 C0 E0            [24] 2322 	push	acc
      000C12 12 11 02         [24] 2323 	lcall	_printf_tiny
      000C15 E5 81            [12] 2324 	mov	a,sp
      000C17 24 FC            [12] 2325 	add	a,#0xfc
      000C19 F5 81            [12] 2326 	mov	sp,a
      000C1B D0 06            [24] 2327 	pop	ar6
      000C1D D0 07            [24] 2328 	pop	ar7
      000C1F 80 21            [24] 2329 	sjmp	00107$
      000C21                       2330 00102$:
                                   2331 ;	8052Explorer.c:428: printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
      000C21 8F 04            [24] 2332 	mov	ar4,r7
      000C23 7D 00            [12] 2333 	mov	r5,#0x00
      000C25 C0 07            [24] 2334 	push	ar7
      000C27 C0 06            [24] 2335 	push	ar6
      000C29 C0 04            [24] 2336 	push	ar4
      000C2B C0 05            [24] 2337 	push	ar5
      000C2D 74 93            [12] 2338 	mov	a,#___str_103
      000C2F C0 E0            [24] 2339 	push	acc
      000C31 74 1C            [12] 2340 	mov	a,#(___str_103 >> 8)
      000C33 C0 E0            [24] 2341 	push	acc
      000C35 12 11 02         [24] 2342 	lcall	_printf_tiny
      000C38 E5 81            [12] 2343 	mov	a,sp
      000C3A 24 FC            [12] 2344 	add	a,#0xfc
      000C3C F5 81            [12] 2345 	mov	sp,a
      000C3E D0 06            [24] 2346 	pop	ar6
      000C40 D0 07            [24] 2347 	pop	ar7
                                   2348 ;	8052Explorer.c:430: while (!ser_byte_avail()){
      000C42                       2349 00107$:
      000C42 C0 07            [24] 2350 	push	ar7
      000C44 C0 06            [24] 2351 	push	ar6
      000C46 12 10 0C         [24] 2352 	lcall	_ser_byte_avail
      000C49 E5 82            [12] 2353 	mov	a,dpl
      000C4B D0 06            [24] 2354 	pop	ar6
      000C4D D0 07            [24] 2355 	pop	ar7
      000C4F 60 F1            [24] 2356 	jz	00107$
                                   2357 ;	8052Explorer.c:433: unsigned char pin = getchar();
      000C51 C0 07            [24] 2358 	push	ar7
      000C53 C0 06            [24] 2359 	push	ar6
      000C55 12 10 51         [24] 2360 	lcall	_getchar
      000C58 AC 82            [24] 2361 	mov	r4,dpl
      000C5A D0 06            [24] 2362 	pop	ar6
      000C5C D0 07            [24] 2363 	pop	ar7
                                   2364 ;	8052Explorer.c:434: pin = pin - 48;
      000C5E EC               [12] 2365 	mov	a,r4
      000C5F 24 D0            [12] 2366 	add	a,#0xd0
      000C61 F5 31            [12] 2367 	mov	_p_pin_65537_110,a
                                   2368 ;	8052Explorer.c:435: printf_tiny("Pin %u of port %u: ", pin, porta );
      000C63 8F 03            [24] 2369 	mov	ar3,r7
      000C65 7C 00            [12] 2370 	mov	r4,#0x00
      000C67 A9 31            [24] 2371 	mov	r1,_p_pin_65537_110
      000C69 7A 00            [12] 2372 	mov	r2,#0x00
      000C6B C0 07            [24] 2373 	push	ar7
      000C6D C0 06            [24] 2374 	push	ar6
      000C6F C0 04            [24] 2375 	push	ar4
      000C71 C0 03            [24] 2376 	push	ar3
      000C73 C0 02            [24] 2377 	push	ar2
      000C75 C0 01            [24] 2378 	push	ar1
      000C77 C0 03            [24] 2379 	push	ar3
      000C79 C0 04            [24] 2380 	push	ar4
      000C7B C0 01            [24] 2381 	push	ar1
      000C7D C0 02            [24] 2382 	push	ar2
      000C7F 74 B6            [12] 2383 	mov	a,#___str_104
      000C81 C0 E0            [24] 2384 	push	acc
      000C83 74 1C            [12] 2385 	mov	a,#(___str_104 >> 8)
      000C85 C0 E0            [24] 2386 	push	acc
      000C87 12 11 02         [24] 2387 	lcall	_printf_tiny
      000C8A E5 81            [12] 2388 	mov	a,sp
      000C8C 24 FA            [12] 2389 	add	a,#0xfa
      000C8E F5 81            [12] 2390 	mov	sp,a
      000C90 D0 01            [24] 2391 	pop	ar1
      000C92 D0 02            [24] 2392 	pop	ar2
      000C94 D0 03            [24] 2393 	pop	ar3
      000C96 D0 04            [24] 2394 	pop	ar4
      000C98 D0 06            [24] 2395 	pop	ar6
      000C9A D0 07            [24] 2396 	pop	ar7
                                   2397 ;	8052Explorer.c:436: if ( pin >= 0 && pin <= 8 ) {
      000C9C E5 31            [12] 2398 	mov	a,_p_pin_65537_110
      000C9E 24 F7            [12] 2399 	add	a,#0xff - 0x08
      000CA0 50 03            [24] 2400 	jnc	00261$
      000CA2 02 0D F9         [24] 2401 	ljmp	00150$
      000CA5                       2402 00261$:
                                   2403 ;	8052Explorer.c:437: if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
      000CA5 EE               [12] 2404 	mov	a,r6
      000CA6 60 0F            [24] 2405 	jz	00144$
      000CA8 E5 31            [12] 2406 	mov	a,_p_pin_65537_110
      000CAA 70 03            [24] 2407 	jnz	00263$
      000CAC 02 0D F0         [24] 2408 	ljmp	00145$
      000CAF                       2409 00263$:
      000CAF 74 01            [12] 2410 	mov	a,#0x01
      000CB1 B5 31 03         [24] 2411 	cjne	a,_p_pin_65537_110,00264$
      000CB4 02 0D F0         [24] 2412 	ljmp	00145$
      000CB7                       2413 00264$:
      000CB7                       2414 00144$:
                                   2415 ;	8052Explorer.c:438: if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
      000CB7 E4               [12] 2416 	clr	a
      000CB8 BF 02 01         [24] 2417 	cjne	r7,#0x02,00265$
      000CBB 04               [12] 2418 	inc	a
      000CBC                       2419 00265$:
      000CBC FE               [12] 2420 	mov	r6,a
      000CBD 60 17            [24] 2421 	jz	00138$
      000CBF E5 31            [12] 2422 	mov	a,_p_pin_65537_110
      000CC1 70 03            [24] 2423 	jnz	00268$
      000CC3 02 0D E7         [24] 2424 	ljmp	00139$
      000CC6                       2425 00268$:
      000CC6 74 01            [12] 2426 	mov	a,#0x01
      000CC8 B5 31 03         [24] 2427 	cjne	a,_p_pin_65537_110,00269$
      000CCB 02 0D E7         [24] 2428 	ljmp	00139$
      000CCE                       2429 00269$:
      000CCE 74 02            [12] 2430 	mov	a,#0x02
      000CD0 B5 31 03         [24] 2431 	cjne	a,_p_pin_65537_110,00270$
      000CD3 02 0D E7         [24] 2432 	ljmp	00139$
      000CD6                       2433 00270$:
      000CD6                       2434 00138$:
                                   2435 ;	8052Explorer.c:439: puts("0 off, 1 on.");
      000CD6 90 1C CA         [24] 2436 	mov	dptr,#___str_105
      000CD9 75 F0 80         [24] 2437 	mov	b,#0x80
      000CDC C0 07            [24] 2438 	push	ar7
      000CDE C0 06            [24] 2439 	push	ar6
      000CE0 C0 04            [24] 2440 	push	ar4
      000CE2 C0 03            [24] 2441 	push	ar3
      000CE4 C0 02            [24] 2442 	push	ar2
      000CE6 C0 01            [24] 2443 	push	ar1
      000CE8 12 12 58         [24] 2444 	lcall	_puts
      000CEB D0 01            [24] 2445 	pop	ar1
      000CED D0 02            [24] 2446 	pop	ar2
      000CEF D0 03            [24] 2447 	pop	ar3
      000CF1 D0 04            [24] 2448 	pop	ar4
      000CF3 D0 06            [24] 2449 	pop	ar6
      000CF5 D0 07            [24] 2450 	pop	ar7
                                   2451 ;	8052Explorer.c:440: while (!ser_byte_avail()){
      000CF7                       2452 00110$:
      000CF7 C0 07            [24] 2453 	push	ar7
      000CF9 C0 06            [24] 2454 	push	ar6
      000CFB C0 04            [24] 2455 	push	ar4
      000CFD C0 03            [24] 2456 	push	ar3
      000CFF C0 02            [24] 2457 	push	ar2
      000D01 C0 01            [24] 2458 	push	ar1
      000D03 12 10 0C         [24] 2459 	lcall	_ser_byte_avail
      000D06 E5 82            [12] 2460 	mov	a,dpl
      000D08 D0 01            [24] 2461 	pop	ar1
      000D0A D0 02            [24] 2462 	pop	ar2
      000D0C D0 03            [24] 2463 	pop	ar3
      000D0E D0 04            [24] 2464 	pop	ar4
      000D10 D0 06            [24] 2465 	pop	ar6
      000D12 D0 07            [24] 2466 	pop	ar7
      000D14 60 E1            [24] 2467 	jz	00110$
                                   2468 ;	8052Explorer.c:443: unsigned char action = getchar();
      000D16 C0 07            [24] 2469 	push	ar7
      000D18 C0 06            [24] 2470 	push	ar6
      000D1A C0 04            [24] 2471 	push	ar4
      000D1C C0 03            [24] 2472 	push	ar3
      000D1E C0 02            [24] 2473 	push	ar2
      000D20 C0 01            [24] 2474 	push	ar1
      000D22 12 10 51         [24] 2475 	lcall	_getchar
      000D25 A8 82            [24] 2476 	mov	r0,dpl
      000D27 D0 01            [24] 2477 	pop	ar1
      000D29 D0 02            [24] 2478 	pop	ar2
      000D2B D0 03            [24] 2479 	pop	ar3
      000D2D D0 04            [24] 2480 	pop	ar4
      000D2F D0 06            [24] 2481 	pop	ar6
      000D31 D0 07            [24] 2482 	pop	ar7
                                   2483 ;	8052Explorer.c:444: action = action -48;
      000D33 E8               [12] 2484 	mov	a,r0
      000D34 24 D0            [12] 2485 	add	a,#0xd0
                                   2486 ;	8052Explorer.c:445: if (action == 0 || action == 1) {
      000D36 FD               [12] 2487 	mov	r5,a
      000D37 60 08            [24] 2488 	jz	00134$
      000D39 BD 01 02         [24] 2489 	cjne	r5,#0x01,00273$
      000D3C 80 03            [24] 2490 	sjmp	00274$
      000D3E                       2491 00273$:
      000D3E 02 0D DE         [24] 2492 	ljmp	00135$
      000D41                       2493 00274$:
      000D41                       2494 00134$:
                                   2495 ;	8052Explorer.c:446: if (action == 1) {
      000D41 BD 01 4D         [24] 2496 	cjne	r5,#0x01,00132$
                                   2497 ;	8052Explorer.c:447: action = action << pin;
      000D44 85 31 F0         [24] 2498 	mov	b,_p_pin_65537_110
      000D47 05 F0            [12] 2499 	inc	b
      000D49 ED               [12] 2500 	mov	a,r5
      000D4A 80 02            [24] 2501 	sjmp	00279$
      000D4C                       2502 00277$:
      000D4C 25 E0            [12] 2503 	add	a,acc
      000D4E                       2504 00279$:
      000D4E D5 F0 FB         [24] 2505 	djnz	b,00277$
                                   2506 ;	8052Explorer.c:448: action = ~action;
      000D51 F4               [12] 2507 	cpl	a
      000D52 FD               [12] 2508 	mov	r5,a
                                   2509 ;	8052Explorer.c:450: printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
      000D53 C0 07            [24] 2510 	push	ar7
      000D55 C0 06            [24] 2511 	push	ar6
      000D57 C0 05            [24] 2512 	push	ar5
      000D59 C0 03            [24] 2513 	push	ar3
      000D5B C0 04            [24] 2514 	push	ar4
      000D5D C0 01            [24] 2515 	push	ar1
      000D5F C0 02            [24] 2516 	push	ar2
      000D61 74 D7            [12] 2517 	mov	a,#___str_106
      000D63 C0 E0            [24] 2518 	push	acc
      000D65 74 1C            [12] 2519 	mov	a,#(___str_106 >> 8)
      000D67 C0 E0            [24] 2520 	push	acc
      000D69 12 11 02         [24] 2521 	lcall	_printf_tiny
      000D6C E5 81            [12] 2522 	mov	a,sp
      000D6E 24 FA            [12] 2523 	add	a,#0xfa
      000D70 F5 81            [12] 2524 	mov	sp,a
      000D72 D0 05            [24] 2525 	pop	ar5
      000D74 D0 06            [24] 2526 	pop	ar6
      000D76 D0 07            [24] 2527 	pop	ar7
                                   2528 ;	8052Explorer.c:451: if (0 == porta) {
      000D78 EF               [12] 2529 	mov	a,r7
      000D79 70 04            [24] 2530 	jnz	00120$
                                   2531 ;	8052Explorer.c:452: P0 &= action;
      000D7B ED               [12] 2532 	mov	a,r5
      000D7C 52 80            [12] 2533 	anl	_P0,a
      000D7E 22               [24] 2534 	ret
      000D7F                       2535 00120$:
                                   2536 ;	8052Explorer.c:453: } else if (1 == porta) {
      000D7F BF 01 04         [24] 2537 	cjne	r7,#0x01,00117$
                                   2538 ;	8052Explorer.c:454: P1 &= action;
      000D82 ED               [12] 2539 	mov	a,r5
      000D83 52 90            [12] 2540 	anl	_P1,a
      000D85 22               [24] 2541 	ret
      000D86                       2542 00117$:
                                   2543 ;	8052Explorer.c:455: } else if (2 == porta) {
      000D86 EE               [12] 2544 	mov	a,r6
      000D87 60 04            [24] 2545 	jz	00114$
                                   2546 ;	8052Explorer.c:456: P2 &= action;
      000D89 ED               [12] 2547 	mov	a,r5
      000D8A 52 A0            [12] 2548 	anl	_P2,a
      000D8C 22               [24] 2549 	ret
      000D8D                       2550 00114$:
                                   2551 ;	8052Explorer.c:458: P3 &= action;
      000D8D ED               [12] 2552 	mov	a,r5
      000D8E 52 B0            [12] 2553 	anl	_P3,a
      000D90 22               [24] 2554 	ret
      000D91                       2555 00132$:
                                   2556 ;	8052Explorer.c:463: action = action << pin;
      000D91 85 31 F0         [24] 2557 	mov	b,_p_pin_65537_110
      000D94 05 F0            [12] 2558 	inc	b
      000D96 74 01            [12] 2559 	mov	a,#0x01
      000D98 80 02            [24] 2560 	sjmp	00286$
      000D9A                       2561 00284$:
      000D9A 25 E0            [12] 2562 	add	a,acc
      000D9C                       2563 00286$:
      000D9C D5 F0 FB         [24] 2564 	djnz	b,00284$
      000D9F FD               [12] 2565 	mov	r5,a
                                   2566 ;	8052Explorer.c:465: printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
      000DA0 C0 07            [24] 2567 	push	ar7
      000DA2 C0 06            [24] 2568 	push	ar6
      000DA4 C0 05            [24] 2569 	push	ar5
      000DA6 C0 03            [24] 2570 	push	ar3
      000DA8 C0 04            [24] 2571 	push	ar4
      000DAA C0 01            [24] 2572 	push	ar1
      000DAC C0 02            [24] 2573 	push	ar2
      000DAE 74 F6            [12] 2574 	mov	a,#___str_107
      000DB0 C0 E0            [24] 2575 	push	acc
      000DB2 74 1C            [12] 2576 	mov	a,#(___str_107 >> 8)
      000DB4 C0 E0            [24] 2577 	push	acc
      000DB6 12 11 02         [24] 2578 	lcall	_printf_tiny
      000DB9 E5 81            [12] 2579 	mov	a,sp
      000DBB 24 FA            [12] 2580 	add	a,#0xfa
      000DBD F5 81            [12] 2581 	mov	sp,a
      000DBF D0 05            [24] 2582 	pop	ar5
      000DC1 D0 06            [24] 2583 	pop	ar6
      000DC3 D0 07            [24] 2584 	pop	ar7
                                   2585 ;	8052Explorer.c:466: if (0 == porta) {
      000DC5 EF               [12] 2586 	mov	a,r7
      000DC6 70 04            [24] 2587 	jnz	00129$
                                   2588 ;	8052Explorer.c:467: P0 |= action;
      000DC8 ED               [12] 2589 	mov	a,r5
      000DC9 42 80            [12] 2590 	orl	_P0,a
      000DCB 22               [24] 2591 	ret
      000DCC                       2592 00129$:
                                   2593 ;	8052Explorer.c:468: } else if (1 == porta) {
      000DCC BF 01 04         [24] 2594 	cjne	r7,#0x01,00126$
                                   2595 ;	8052Explorer.c:469: P1 |= action;
      000DCF ED               [12] 2596 	mov	a,r5
      000DD0 42 90            [12] 2597 	orl	_P1,a
      000DD2 22               [24] 2598 	ret
      000DD3                       2599 00126$:
                                   2600 ;	8052Explorer.c:470: } else if (2 == porta) {
      000DD3 EE               [12] 2601 	mov	a,r6
      000DD4 60 04            [24] 2602 	jz	00123$
                                   2603 ;	8052Explorer.c:471: P2 |= action;
      000DD6 ED               [12] 2604 	mov	a,r5
      000DD7 42 A0            [12] 2605 	orl	_P2,a
      000DD9 22               [24] 2606 	ret
      000DDA                       2607 00123$:
                                   2608 ;	8052Explorer.c:473: P3 |= action;
      000DDA ED               [12] 2609 	mov	a,r5
      000DDB 42 B0            [12] 2610 	orl	_P3,a
      000DDD 22               [24] 2611 	ret
      000DDE                       2612 00135$:
                                   2613 ;	8052Explorer.c:478: puts("Invalid action!");
      000DDE 90 1D 16         [24] 2614 	mov	dptr,#___str_108
      000DE1 75 F0 80         [24] 2615 	mov	b,#0x80
      000DE4 02 12 58         [24] 2616 	ljmp	_puts
      000DE7                       2617 00139$:
                                   2618 ;	8052Explorer.c:483: puts("the pin 2 is the serial character receive blink.");
      000DE7 90 1D 6D         [24] 2619 	mov	dptr,#___str_115
      000DEA 75 F0 80         [24] 2620 	mov	b,#0x80
      000DED 02 12 58         [24] 2621 	ljmp	_puts
      000DF0                       2622 00145$:
                                   2623 ;	8052Explorer.c:486: puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
      000DF0 90 1D 26         [24] 2624 	mov	dptr,#___str_112
      000DF3 75 F0 80         [24] 2625 	mov	b,#0x80
      000DF6 02 12 58         [24] 2626 	ljmp	_puts
      000DF9                       2627 00150$:
                                   2628 ;	8052Explorer.c:489: puts("Invalid pin!");
      000DF9 90 1D 60         [24] 2629 	mov	dptr,#___str_113
      000DFC 75 F0 80         [24] 2630 	mov	b,#0x80
                                   2631 ;	8052Explorer.c:491: }
      000DFF 02 12 58         [24] 2632 	ljmp	_puts
                                   2633 ;------------------------------------------------------------
                                   2634 ;Allocation info for local variables in function 'HELP'
                                   2635 ;------------------------------------------------------------
                                   2636 ;	8052Explorer.c:493: void HELP ( void ) {
                                   2637 ;	-----------------------------------------
                                   2638 ;	 function HELP
                                   2639 ;	-----------------------------------------
      000E02                       2640 _HELP:
                                   2641 ;	8052Explorer.c:503: puts("H print this help.");
      000E02 90 1D FF         [24] 2642 	mov	dptr,#___str_134
      000E05 75 F0 80         [24] 2643 	mov	b,#0x80
                                   2644 ;	8052Explorer.c:504: }
      000E08 02 12 58         [24] 2645 	ljmp	_puts
                                   2646 ;------------------------------------------------------------
                                   2647 ;Allocation info for local variables in function 'main'
                                   2648 ;------------------------------------------------------------
                                   2649 ;carattere                 Allocated to registers r6 
                                   2650 ;------------------------------------------------------------
                                   2651 ;	8052Explorer.c:506: void main( void ) {
                                   2652 ;	-----------------------------------------
                                   2653 ;	 function main
                                   2654 ;	-----------------------------------------
      000E0B                       2655 _main:
                                   2656 ;	8052Explorer.c:507: start();
      000E0B 12 0A D3         [24] 2657 	lcall	_start
                                   2658 ;	8052Explorer.c:508: puts("Insert command, h for help.");
      000E0E 90 1F 01         [24] 2659 	mov	dptr,#___str_135
      000E11 75 F0 80         [24] 2660 	mov	b,#0x80
      000E14 12 12 58         [24] 2661 	lcall	_puts
                                   2662 ;	8052Explorer.c:510: while( 1 )							// forever.
      000E17                       2663 00125$:
                                   2664 ;	8052Explorer.c:512: watchdogRESET();
      000E17 12 00 85         [24] 2665 	lcall	_watchdogRESET
                                   2666 ;	8052Explorer.c:514: if ( ser_byte_avail() )	{				// if data coming in...
      000E1A 12 10 0C         [24] 2667 	lcall	_ser_byte_avail
      000E1D E5 82            [12] 2668 	mov	a,dpl
      000E1F 60 F6            [24] 2669 	jz	00125$
                                   2670 ;	8052Explorer.c:515: carattere = getchar();
      000E21 12 10 51         [24] 2671 	lcall	_getchar
      000E24 AE 82            [24] 2672 	mov	r6,dpl
      000E26 AF 83            [24] 2673 	mov	r7,dph
                                   2674 ;	8052Explorer.c:521: switch (carattere)
      000E28 BE 30 02         [24] 2675 	cjne	r6,#0x30,00206$
      000E2B 80 67            [24] 2676 	sjmp	00110$
      000E2D                       2677 00206$:
      000E2D BE 31 03         [24] 2678 	cjne	r6,#0x31,00207$
      000E30 02 0E 9C         [24] 2679 	ljmp	00111$
      000E33                       2680 00207$:
      000E33 BE 32 03         [24] 2681 	cjne	r6,#0x32,00208$
      000E36 02 0E A4         [24] 2682 	ljmp	00112$
      000E39                       2683 00208$:
      000E39 BE 33 03         [24] 2684 	cjne	r6,#0x33,00209$
      000E3C 02 0E AC         [24] 2685 	ljmp	00113$
      000E3F                       2686 00209$:
      000E3F BE 43 02         [24] 2687 	cjne	r6,#0x43,00210$
      000E42 80 2D            [24] 2688 	sjmp	00102$
      000E44                       2689 00210$:
      000E44 BE 45 02         [24] 2690 	cjne	r6,#0x45,00211$
      000E47 80 32            [24] 2691 	sjmp	00104$
      000E49                       2692 00211$:
      000E49 BE 48 02         [24] 2693 	cjne	r6,#0x48,00212$
      000E4C 80 41            [24] 2694 	sjmp	00109$
      000E4E                       2695 00212$:
      000E4E BE 63 02         [24] 2696 	cjne	r6,#0x63,00213$
      000E51 80 19            [24] 2697 	sjmp	00101$
      000E53                       2698 00213$:
      000E53 BE 65 02         [24] 2699 	cjne	r6,#0x65,00214$
      000E56 80 1E            [24] 2700 	sjmp	00103$
      000E58                       2701 00214$:
      000E58 BE 66 02         [24] 2702 	cjne	r6,#0x66,00215$
      000E5B 80 23            [24] 2703 	sjmp	00105$
      000E5D                       2704 00215$:
      000E5D BE 68 02         [24] 2705 	cjne	r6,#0x68,00216$
      000E60 80 2D            [24] 2706 	sjmp	00109$
      000E62                       2707 00216$:
      000E62 BE 6D 02         [24] 2708 	cjne	r6,#0x6d,00217$
      000E65 80 1E            [24] 2709 	sjmp	00106$
      000E67                       2710 00217$:
                                   2711 ;	8052Explorer.c:523: case 'c':
      000E67 BE 72 4A         [24] 2712 	cjne	r6,#0x72,00114$
      000E6A 80 1E            [24] 2713 	sjmp	00107$
      000E6C                       2714 00101$:
                                   2715 ;	8052Explorer.c:524: dumpCODE();
      000E6C 12 04 A9         [24] 2716 	lcall	_dumpCODE
                                   2717 ;	8052Explorer.c:525: break;
                                   2718 ;	8052Explorer.c:526: case 'C':
      000E6F 80 64            [24] 2719 	sjmp	00119$
      000E71                       2720 00102$:
                                   2721 ;	8052Explorer.c:527: hexCODE();
      000E71 12 08 90         [24] 2722 	lcall	_hexCODE
                                   2723 ;	8052Explorer.c:528: break;
                                   2724 ;	8052Explorer.c:529: case 'e':
      000E74 80 5F            [24] 2725 	sjmp	00119$
      000E76                       2726 00103$:
                                   2727 ;	8052Explorer.c:530: dumpEEPROM();
      000E76 12 00 A1         [24] 2728 	lcall	_dumpEEPROM
                                   2729 ;	8052Explorer.c:531: break;
                                   2730 ;	8052Explorer.c:532: case 'E':
      000E79 80 5A            [24] 2731 	sjmp	00119$
      000E7B                       2732 00104$:
                                   2733 ;	8052Explorer.c:533: hexEEPROM();
      000E7B 12 02 6E         [24] 2734 	lcall	_hexEEPROM
                                   2735 ;	8052Explorer.c:534: break;
                                   2736 ;	8052Explorer.c:535: case 'f':
      000E7E 80 55            [24] 2737 	sjmp	00119$
      000E80                       2738 00105$:
                                   2739 ;	8052Explorer.c:536: felix();
      000E80 12 00 8C         [24] 2740 	lcall	_felix
                                   2741 ;	8052Explorer.c:537: break;
                                   2742 ;	8052Explorer.c:538: case 'm':
      000E83 80 50            [24] 2743 	sjmp	00119$
      000E85                       2744 00106$:
                                   2745 ;	8052Explorer.c:539: dumpRAM();
      000E85 12 06 9D         [24] 2746 	lcall	_dumpRAM
                                   2747 ;	8052Explorer.c:540: break;
                                   2748 ;	8052Explorer.c:541: case 'r':
      000E88 80 4B            [24] 2749 	sjmp	00119$
      000E8A                       2750 00107$:
                                   2751 ;	8052Explorer.c:542: reset();
      000E8A 12 0A C8         [24] 2752 	lcall	_reset
                                   2753 ;	8052Explorer.c:543: break;
                                   2754 ;	8052Explorer.c:545: case 'H':
      000E8D 80 46            [24] 2755 	sjmp	00119$
      000E8F                       2756 00109$:
                                   2757 ;	8052Explorer.c:546: HELP();
      000E8F 12 0E 02         [24] 2758 	lcall	_HELP
                                   2759 ;	8052Explorer.c:547: break;
                                   2760 ;	8052Explorer.c:548: case '0':
      000E92 80 41            [24] 2761 	sjmp	00119$
      000E94                       2762 00110$:
                                   2763 ;	8052Explorer.c:549: p(0);
      000E94 75 82 00         [24] 2764 	mov	dpl,#0x00
      000E97 12 0B CE         [24] 2765 	lcall	_p
                                   2766 ;	8052Explorer.c:550: break;
                                   2767 ;	8052Explorer.c:551: case '1':
      000E9A 80 39            [24] 2768 	sjmp	00119$
      000E9C                       2769 00111$:
                                   2770 ;	8052Explorer.c:552: p(1);
      000E9C 75 82 01         [24] 2771 	mov	dpl,#0x01
      000E9F 12 0B CE         [24] 2772 	lcall	_p
                                   2773 ;	8052Explorer.c:553: break;
                                   2774 ;	8052Explorer.c:554: case '2':
      000EA2 80 31            [24] 2775 	sjmp	00119$
      000EA4                       2776 00112$:
                                   2777 ;	8052Explorer.c:555: p(2);
      000EA4 75 82 02         [24] 2778 	mov	dpl,#0x02
      000EA7 12 0B CE         [24] 2779 	lcall	_p
                                   2780 ;	8052Explorer.c:556: break;
                                   2781 ;	8052Explorer.c:557: case '3':
      000EAA 80 29            [24] 2782 	sjmp	00119$
      000EAC                       2783 00113$:
                                   2784 ;	8052Explorer.c:558: p(3);
      000EAC 75 82 03         [24] 2785 	mov	dpl,#0x03
      000EAF 12 0B CE         [24] 2786 	lcall	_p
                                   2787 ;	8052Explorer.c:559: break;
                                   2788 ;	8052Explorer.c:560: default:
      000EB2 80 21            [24] 2789 	sjmp	00119$
      000EB4                       2790 00114$:
                                   2791 ;	8052Explorer.c:561: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000EB4 BE 30 00         [24] 2792 	cjne	r6,#0x30,00219$
      000EB7                       2793 00219$:
      000EB7 40 1C            [24] 2794 	jc	00119$
      000EB9 EE               [12] 2795 	mov	a,r6
      000EBA 24 85            [12] 2796 	add	a,#0xff - 0x7a
      000EBC 40 17            [24] 2797 	jc	00119$
                                   2798 ;	8052Explorer.c:562: printf_tiny("Invalid command %c.\r", carattere );
      000EBE 7F 00            [12] 2799 	mov	r7,#0x00
      000EC0 C0 06            [24] 2800 	push	ar6
      000EC2 C0 07            [24] 2801 	push	ar7
      000EC4 74 1D            [12] 2802 	mov	a,#___str_136
      000EC6 C0 E0            [24] 2803 	push	acc
      000EC8 74 1F            [12] 2804 	mov	a,#(___str_136 >> 8)
      000ECA C0 E0            [24] 2805 	push	acc
      000ECC 12 11 02         [24] 2806 	lcall	_printf_tiny
      000ECF E5 81            [12] 2807 	mov	a,sp
      000ED1 24 FC            [12] 2808 	add	a,#0xfc
      000ED3 F5 81            [12] 2809 	mov	sp,a
                                   2810 ;	8052Explorer.c:565: while ( ser_byte_avail() )	{				// if data coming in...
      000ED5                       2811 00119$:
      000ED5 12 10 0C         [24] 2812 	lcall	_ser_byte_avail
      000ED8 E5 82            [12] 2813 	mov	a,dpl
      000EDA 60 05            [24] 2814 	jz	00121$
                                   2815 ;	8052Explorer.c:566: carattere = getchar();
      000EDC 12 10 51         [24] 2816 	lcall	_getchar
      000EDF 80 F4            [24] 2817 	sjmp	00119$
      000EE1                       2818 00121$:
                                   2819 ;	8052Explorer.c:568: puts("Insert command, h for help:");
      000EE1 90 1F 32         [24] 2820 	mov	dptr,#___str_137
      000EE4 75 F0 80         [24] 2821 	mov	b,#0x80
      000EE7 12 12 58         [24] 2822 	lcall	_puts
                                   2823 ;	8052Explorer.c:572: }
      000EEA 02 0E 17         [24] 2824 	ljmp	00125$
                                   2825 	.area CSEG    (CODE)
                                   2826 	.area CONST   (CODE)
      0012B8                       2827 _acTestString:
      0012B8 48 65 6C 6C 6F 20 57  2828 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      0012C6 0D                    2829 	.db 0x0d
      0012C7 54 68 69 73 20 69 73  2830 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      0012DD 0D                    2831 	.db 0x0d
      0012DE 00                    2832 	.db 0x00
                           000000  2833 _codice	=	0x0000
                                   2834 	.area CONST   (CODE)
      0012DF                       2835 ___str_64:
      0012DF 20 20 20 20 20 20 20  2836 	.ascii "              iWs                                 ,W["
             20 20 20 20 20 20 20
             69 57 73 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 2C 57 5B
      001314 0A                    2837 	.db 0x0a
      001315 20 20 20 20 20 20 20  2838 	.ascii "              W@@W.                              g@@["
             20 20 20 20 20 20 20
             57 40 40 57 2E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             67 40 40 5B
      00134A 0A                    2839 	.db 0x0a
      00134B 20 20 20 20 20 20 20  2840 	.ascii "             i@@@@@s                           g@@@@W"
             20 20 20 20 20 20 69
             40 40 40 40 40 73 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 57
      001380 0A                    2841 	.db 0x0a
      001381 20 20 20 20 20 20 20  2842 	.ascii "             @@@@@@@W.                       ,W@@@@@@"
             20 20 20 20 20 20 40
             40 40 40 40 40 40 57
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      0013B6 0A                    2843 	.db 0x0a
      0013B7 20 20 20 20 20 20 20  2844 	.ascii "            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i"
             20 20 20 20 20 5D 40
             40 40 40 40 40 40 40
             40 57 2E 20 20 20 2C
             5F 5F 5F 5F 5F 5F 5F
             2E 20 20 20 20 20 20
             20 2C 6D 40 40 40 40
             40 40 40 40 69
      0013ED 0A                    2845 	.db 0x0a
      0013EE 20 20 20 20 20 20 20  2846 	.ascii "           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@["
             20 20 20 20 2C 40 40
             40 40 40 40 40 40 40
             40 40 40 57 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 6D 6D 5F
             67 40 40 40 40 40 40
             40 40 40 40 5B
      001424 0A                    2847 	.db 0x0a
      001425 20 20 20 20 20 20 20  2848 	.ascii "           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
             20 20 20 20 64 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40
      00145B 0A                    2849 	.db 0x0a
      00145C 20 20 20 20 20 20 20  2850 	.ascii "          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i"
             20 20 20 69 40 40 40
             40 40 40 40 41 2A 7E
             7E 7E 7E 7E 56 4D 40
             40 40 40 40 40 40 40
             40 40 41 66 7E 7E 7E
             7E 56 2A 40 40 40 40
             40 40 40 40 40 69
      001493 0A                    2851 	.db 0x0a
      001494 20 20 20 20 20 20 20  2852 	.ascii "          @@@@@A~          'M@@@@@@A`         'V@@@@@@b"
             20 20 20 40 40 40 40
             40 41 7E 20 20 20 20
             20 20 20 20 20 20 27
             4D 40 40 40 40 40 40
             41 60 20 20 20 20 20
             20 20 20 20 27 56 40
             40 40 40 40 40 62
      0014CB 0A                    2853 	.db 0x0a
      0014CC 20 20 20 20 20 20 20  2854 	.ascii "         d@@@*`              Y@@@@f              V@@@@@."
             20 20 64 40 40 40 2A
             60 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 59 40 40 40 40 66
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             56 40 40 40 40 40 2E
      001504 0A                    2855 	.db 0x0a
      001505 20 20 20 20 20 20 20  2856 	.ascii "        i@@A`                 M@@P                 V@@@b"
             20 69 40 40 41 60 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 4D 40 40 50 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 56 40 40 40 62
      00153D 0A                    2857 	.db 0x0a
      00153E 20 20 20 20 20 20 20  2858 	.ascii "       ,@@A                   '@@                   !@@@."
             2C 40 40 41 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 27 40 40 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 21 40 40 40
             2E
      001577 0A                    2859 	.db 0x0a
      001578 20 20 20 20 20 20 20  2860 	.ascii "       W@P                     @[                    '@@W"
             57 40 50 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 40 40
             57
      0015B1 0A                    2861 	.db 0x0a
      0015B2 20 20 20 20 20 20 64  2862 	.ascii "      d@@            ,         ]!                     ]@@b"
             40 40 20 20 20 20 20
             20 20 20 20 20 20 20
             2C 20 20 20 20 20 20
             20 20 20 5D 21 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 62
      0015EC 0A                    2863 	.db 0x0a
      0015ED 20 20 20 20 20 67 40  2864 	.ascii "     g@@[          ,W@@s       ]       ,W@@s           @@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 2C 57
             40 40 73 20 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 2C 57 40
             40 73 20 20 20 20 20
             20 20 20 20 20 20 40
             40 40 69
      001628 0A                    2865 	.db 0x0a
      001629 20 20 20 20 69 40 40  2866 	.ascii "    i@@@[          W@@@@i      ]       W@@@@i          @@@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 57 40
             40 40 40 69 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 57 40 40
             40 40 69 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 69
      001665 0A                    2867 	.db 0x0a
      001666 20 20 20 69 40 40 40  2868 	.ascii "   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 5B 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      0016A2 69                    2869 	.ascii "i"
      0016A3 0A                    2870 	.db 0x0a
      0016A4 20 20 67 40 40 40 40  2871 	.ascii "  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 21 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      0016E0 40 69                 2872 	.ascii "@i"
      0016E2 0A                    2873 	.db 0x0a
      0016E3 20 64 40 40 40 40 40  2874 	.ascii " d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@"
             40 40 20 20 20 20 20
             20 20 20 20 20 21 40
             40 40 50 20 20 20 20
             20 20 69 41 57 20 20
             20 20 20 20 21 40 40
             40 41 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 40 40 40
      00171F 40 40 69              2875 	.ascii "@@i"
      001722 0A                    2876 	.db 0x0a
      001723 57 40 40 40 40 40 40  2877 	.ascii "W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@"
             40 40 62 20 20 20 20
             20 20 20 20 20 20 27
             7E 7E 20 20 20 20 20
             20 2C 5A 20 59 69 20
             20 20 20 20 20 27 7E
             7E 20 20 20 20 20 20
             20 20 20 20 2C 40 40
             40 40 40 40
      00175F 40 40 40              2878 	.ascii "@@@"
      001762 0A                    2879 	.db 0x0a
      001763 27 2A 40 40 40 40 40  2880 	.ascii "'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@"
             40 40 40 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 5A 60 20 20 59 2E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      00179F 40 40 41              2881 	.ascii "@@A"
      0017A2 0A                    2882 	.db 0x0a
      0017A3 20 20 27 4D 40 40 40  2883 	.ascii "  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@"
             2A 66 2A 2A 57 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 2C
             5A 20 20 20 20 20 56
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 57 2A 7E 7E
             7E 4D 40 40
      0017DF 40 66                 2884 	.ascii "@f"
      0017E1 0A                    2885 	.db 0x0a
      0017E2 20 20 20 20 27 4D 40  2886 	.ascii "    'M@    'Vs.          ,z~       'N_           ,Z~     d@P"
             20 20 20 20 27 56 73
             2E 20 20 20 20 20 20
             20 20 20 20 2C 7A 7E
             20 20 20 20 20 20 20
             27 4E 5F 20 20 20 20
             20 20 20 20 20 20 20
             2C 5A 7E 20 20 20 20
             20 64 40 50
      00181E 0A                    2887 	.db 0x0a
      00181F 20 20 20 4D 40 40 40  2888 	.ascii "   M@@@       ~-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@"
             20 20 20 20 20 20 20
             7E 2D 5F 5F 20 20 5F
             5F 7A 2F 60 20 2C 67
             6D 57 40 40 6D 6D 5F
             20 27 2B 65 5F 2E 20
             20 20 5F 5F 3D 2F 60
             20 20 20 20 20 20 2C
             40 40 40 40
      00185B 0A                    2889 	.db 0x0a
      00185C 20 20 20 20 27 56 4D  2890 	.ascii "    'VMW                  g@@@@@@@@@W     ~~~          ,WAf"
             57 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 40 40 40 40
             40 57 20 20 20 20 20
             7E 7E 7E 20 20 20 20
             20 20 20 20 20 20 2C
             57 41 66
      001897 0A                    2891 	.db 0x0a
      001898 20 20 20 20 20 20 20  2892 	.ascii "       ~N.                @@@@@@@@@@@!                ,Z`"
             7E 4E 2E 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 40 40 40 40
             40 40 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 2C 5A
             60
      0018D1 0A                    2893 	.db 0x0a
      0018D2 20 20 20 20 20 20 20  2894 	.ascii "         V.               !M@@@@@@@@f                gf-"
             20 20 56 2E 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 21 4D
             40 40 40 40 40 40 40
             40 66 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 67 66 2D
      00190A 0A                    2895 	.db 0x0a
      00190B 20 20 20 20 20 20 20  2896 	.ascii "          'N.               '~***f~                ,Z`"
             20 20 20 27 4E 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             27 7E 2A 2A 2A 66 7E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 5A 60
      001941 0A                    2897 	.db 0x0a
      001942 20 20 20 20 20 20 20  2898 	.ascii "            Vc.                                  _Zf"
             20 20 20 20 20 56 63
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             5F 5A 66
      001976 0A                    2899 	.db 0x0a
      001977 20 20 20 20 20 20 20  2900 	.ascii "              ~e_                             ,gY~"
             20 20 20 20 20 20 20
             7E 65 5F 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 2C 67 59
             7E
      0019A9 0A                    2901 	.db 0x0a
      0019AA 20 20 20 20 20 20 20  2902 	.ascii "                'V=_          -@@D         ,gY~ '"
             20 20 20 20 20 20 20
             20 20 27 56 3D 5F 20
             20 20 20 20 20 20 20
             20 20 2D 40 40 44 20
             20 20 20 20 20 20 20
             20 2C 67 59 7E 20 27
      0019DB 0A                    2903 	.db 0x0a
      0019DC 20 20 20 20 20 20 20  2904 	.ascii "                    ~=__.           ,__z=~`"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7E
             3D 5F 5F 2E 20 20 20
             20 20 20 20 20 20 20
             20 2C 5F 5F 7A 3D 7E
             60
      001A07 0A                    2905 	.db 0x0a
      001A08 20 20 20 20 20 20 20  2906 	.ascii "                         '~~~*==Y*f~~~ "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 7E 7E
             7E 2A 3D 3D 59 2A 66
             7E 7E 7E 20
      001A2F 00                    2907 	.db 0x00
                                   2908 	.area CSEG    (CODE)
                                   2909 	.area CONST   (CODE)
      001A30                       2910 ___str_65:
      001A30 44 75 6D 70 69 6E 67  2911 	.ascii "Dumping eeprom content and changing first character:"
             20 65 65 70 72 6F 6D
             20 63 6F 6E 74 65 6E
             74 20 61 6E 64 20 63
             68 61 6E 67 69 6E 67
             20 66 69 72 73 74 20
             63 68 61 72 61 63 74
             65 72 3A
      001A64 00                    2912 	.db 0x00
                                   2913 	.area CSEG    (CODE)
                                   2914 	.area CONST   (CODE)
      001A65                       2915 ___str_66:
      001A65 30 30 30 25 78 20 20  2916 	.ascii "000%x  "
      001A6C 00                    2917 	.db 0x00
                                   2918 	.area CSEG    (CODE)
                                   2919 	.area CONST   (CODE)
      001A6D                       2920 ___str_67:
      001A6D 30 30 25 78 20 20     2921 	.ascii "00%x  "
      001A73 00                    2922 	.db 0x00
                                   2923 	.area CSEG    (CODE)
                                   2924 	.area CONST   (CODE)
      001A74                       2925 ___str_68:
      001A74 30 25 78 20 20        2926 	.ascii "0%x  "
      001A79 00                    2927 	.db 0x00
                                   2928 	.area CSEG    (CODE)
                                   2929 	.area CONST   (CODE)
      001A7A                       2930 ___str_69:
      001A7A 25 78 20 20           2931 	.ascii "%x  "
      001A7E 00                    2932 	.db 0x00
                                   2933 	.area CSEG    (CODE)
                                   2934 	.area CONST   (CODE)
      001A7F                       2935 ___str_70:
      001A7F 25 78 20              2936 	.ascii "%x "
      001A82 00                    2937 	.db 0x00
                                   2938 	.area CSEG    (CODE)
                                   2939 	.area CONST   (CODE)
      001A83                       2940 ___str_71:
      001A83 20 7C                 2941 	.ascii " |"
      001A85 00                    2942 	.db 0x00
                                   2943 	.area CSEG    (CODE)
                                   2944 	.area CONST   (CODE)
      001A86                       2945 ___str_72:
      001A86 25 63                 2946 	.ascii "%c"
      001A88 00                    2947 	.db 0x00
                                   2948 	.area CSEG    (CODE)
                                   2949 	.area CONST   (CODE)
      001A89                       2950 ___str_73:
      001A89 44 75 6D 70 69 6E 67  2951 	.ascii "Dumping eeprom content in hex format:"
             20 65 65 70 72 6F 6D
             20 63 6F 6E 74 65 6E
             74 20 69 6E 20 68 65
             78 20 66 6F 72 6D 61
             74 3A
      001AAE 00                    2952 	.db 0x00
                                   2953 	.area CSEG    (CODE)
                                   2954 	.area CONST   (CODE)
      001AAF                       2955 ___str_74:
      001AAF 3A 31 30              2956 	.ascii ":10"
      001AB2 00                    2957 	.db 0x00
                                   2958 	.area CSEG    (CODE)
                                   2959 	.area CONST   (CODE)
      001AB3                       2960 ___str_75:
      001AB3 30 30 30 25 78        2961 	.ascii "000%x"
      001AB8 00                    2962 	.db 0x00
                                   2963 	.area CSEG    (CODE)
                                   2964 	.area CONST   (CODE)
      001AB9                       2965 ___str_76:
      001AB9 30 30 25 78           2966 	.ascii "00%x"
      001ABD 00                    2967 	.db 0x00
                                   2968 	.area CSEG    (CODE)
                                   2969 	.area CONST   (CODE)
      001ABE                       2970 ___str_77:
      001ABE 30 25 78              2971 	.ascii "0%x"
      001AC1 00                    2972 	.db 0x00
                                   2973 	.area CSEG    (CODE)
                                   2974 	.area CONST   (CODE)
      001AC2                       2975 ___str_78:
      001AC2 25 78                 2976 	.ascii "%x"
      001AC4 00                    2977 	.db 0x00
                                   2978 	.area CSEG    (CODE)
                                   2979 	.area CONST   (CODE)
      001AC5                       2980 ___str_79:
      001AC5 30 30                 2981 	.ascii "00"
      001AC7 00                    2982 	.db 0x00
                                   2983 	.area CSEG    (CODE)
                                   2984 	.area CONST   (CODE)
      001AC8                       2985 ___str_80:
      001AC8 25 78                 2986 	.ascii "%x"
      001ACA 0D                    2987 	.db 0x0d
      001ACB 00                    2988 	.db 0x00
                                   2989 	.area CSEG    (CODE)
                                   2990 	.area CONST   (CODE)
      001ACC                       2991 ___str_81:
      001ACC 25 73                 2992 	.ascii "%s"
      001ACE 00                    2993 	.db 0x00
                                   2994 	.area CSEG    (CODE)
                                   2995 	.area CONST   (CODE)
      001ACF                       2996 ___str_82:
      001ACF 3A 30 30 30 30 30 30  2997 	.ascii ":00000001FF"
             30 31 46 46
      001ADA 00                    2998 	.db 0x00
                                   2999 	.area CSEG    (CODE)
                                   3000 	.area CONST   (CODE)
      001ADB                       3001 ___str_83:
      001ADB 44 75 6D 70 69 6E 67  3002 	.ascii "Dumping code:"
             20 63 6F 64 65 3A
      001AE8 00                    3003 	.db 0x00
                                   3004 	.area CSEG    (CODE)
                                   3005 	.area CONST   (CODE)
      001AE9                       3006 ___str_84:
      001AE9 44 75 6D 70 69 6E 67  3007 	.ascii "Dumping ram memory:"
             20 72 61 6D 20 6D 65
             6D 6F 72 79 3A
      001AFC 00                    3008 	.db 0x00
                                   3009 	.area CSEG    (CODE)
                                   3010 	.area CONST   (CODE)
      001AFD                       3011 ___str_85:
      001AFD 44 75 6D 70 69 6E 67  3012 	.ascii "Dumping code in hex file format:"
             20 63 6F 64 65 20 69
             6E 20 68 65 78 20 66
             69 6C 65 20 66 6F 72
             6D 61 74 3A
      001B1D 00                    3013 	.db 0x00
                                   3014 	.area CSEG    (CODE)
                                   3015 	.area CONST   (CODE)
      001B1E                       3016 ___str_86:
      001B1E 52 65 73 65 74 74 69  3017 	.ascii "Resetting the micro."
             6E 67 20 74 68 65 20
             6D 69 63 72 6F 2E
      001B32 00                    3018 	.db 0x00
                                   3019 	.area CSEG    (CODE)
                                   3020 	.area CONST   (CODE)
      001B33                       3021 ___str_87:
      001B33 43 70 75 20 25 73 20  3022 	.ascii "Cpu %s running at %sMHz"
             72 75 6E 6E 69 6E 67
             20 61 74 20 25 73 4D
             48 7A
      001B4A 0D                    3023 	.db 0x0d
      001B4B 00                    3024 	.db 0x00
                                   3025 	.area CSEG    (CODE)
                                   3026 	.area CONST   (CODE)
      001B4C                       3027 ___str_88:
      001B4C 38 39 53 38 32 35 33  3028 	.ascii "89S8253"
      001B53 00                    3029 	.db 0x00
                                   3030 	.area CSEG    (CODE)
                                   3031 	.area CONST   (CODE)
      001B54                       3032 ___str_89:
      001B54 35 30                 3033 	.ascii "50"
      001B56 00                    3034 	.db 0x00
                                   3035 	.area CSEG    (CODE)
                                   3036 	.area CONST   (CODE)
      001B57                       3037 ___str_90:
      001B57 44 6F 75 62 6C 65 20  3038 	.ascii "Double system clock"
             73 79 73 74 65 6D 20
             63 6C 6F 63 6B
      001B6A 00                    3039 	.db 0x00
                                   3040 	.area CSEG    (CODE)
                                   3041 	.area CONST   (CODE)
      001B6B                       3042 ___str_91:
      001B6B 43 6F 6C 64 20 72 65  3043 	.ascii "Cold reset"
             73 65 74
      001B75 00                    3044 	.db 0x00
                                   3045 	.area CSEG    (CODE)
                                   3046 	.area CONST   (CODE)
      001B76                       3047 ___str_92:
      001B76 57 61 72 6D 20 72 65  3048 	.ascii "Warm reset"
             73 65 74
      001B80 00                    3049 	.db 0x00
                                   3050 	.area CSEG    (CODE)
                                   3051 	.area CONST   (CODE)
      001B81                       3052 ___str_93:
      001B81 45 6E 61 62 6C 65 64  3053 	.ascii "Enabled watchdog"
             20 77 61 74 63 68 64
             6F 67
      001B91 00                    3054 	.db 0x00
                                   3055 	.area CSEG    (CODE)
                                   3056 	.area CONST   (CODE)
      001B92                       3057 ___str_94:
      001B92 53 74 61 72 74 65 64  3058 	.ascii "Started timer 2 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             32 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001BBA 0D                    3059 	.db 0x0d
      001BBB 00                    3060 	.db 0x00
                                   3061 	.area CSEG    (CODE)
                                   3062 	.area CONST   (CODE)
      001BBC                       3063 ___str_95:
      001BBC 53 74 61 72 74 65 64  3064 	.ascii "Started serial at %s bps"
             20 73 65 72 69 61 6C
             20 61 74 20 25 73 20
             62 70 73
      001BD4 0D                    3065 	.db 0x0d
      001BD5 00                    3066 	.db 0x00
                                   3067 	.area CSEG    (CODE)
                                   3068 	.area CONST   (CODE)
      001BD6                       3069 ___str_96:
      001BD6 35 37 36 30 30        3070 	.ascii "57600"
      001BDB 00                    3071 	.db 0x00
                                   3072 	.area CSEG    (CODE)
                                   3073 	.area CONST   (CODE)
      001BDC                       3074 ___str_97:
      001BDC 53 74 61 72 74 65 64  3075 	.ascii "Started timer 0 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             30 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001C04 0D                    3076 	.db 0x0d
      001C05 00                    3077 	.db 0x00
                                   3078 	.area CSEG    (CODE)
                                   3079 	.area CONST   (CODE)
      001C06                       3080 ___str_100:
      001C06 48 65 6C 6C 6F 20 57  3081 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      001C14 0D                    3082 	.db 0x0d
      001C15 54 68 69 73 20 69 73  3083 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      001C2B 0A                    3084 	.db 0x0a
      001C2C 50 72 69 6E 74 20 61  3085 	.ascii "Print a string from code memory:"
             20 73 74 72 69 6E 67
             20 66 72 6F 6D 20 63
             6F 64 65 20 6D 65 6D
             6F 72 79 3A
      001C4C 00                    3086 	.db 0x00
                                   3087 	.area CSEG    (CODE)
                                   3088 	.area CONST   (CODE)
      001C4D                       3089 ___str_101:
      001C4D 57 68 69 63 68 20 70  3090 	.ascii "Which pin from 2 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 32 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001C6E 0D                    3091 	.db 0x0d
      001C6F 00                    3092 	.db 0x00
                                   3093 	.area CSEG    (CODE)
                                   3094 	.area CONST   (CODE)
      001C70                       3095 ___str_102:
      001C70 57 68 69 63 68 20 70  3096 	.ascii "Which pin from 3 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 33 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001C91 0D                    3097 	.db 0x0d
      001C92 00                    3098 	.db 0x00
                                   3099 	.area CSEG    (CODE)
                                   3100 	.area CONST   (CODE)
      001C93                       3101 ___str_103:
      001C93 57 68 69 63 68 20 70  3102 	.ascii "Which pin from 0 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 30 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001CB4 0D                    3103 	.db 0x0d
      001CB5 00                    3104 	.db 0x00
                                   3105 	.area CSEG    (CODE)
                                   3106 	.area CONST   (CODE)
      001CB6                       3107 ___str_104:
      001CB6 50 69 6E 20 25 75 20  3108 	.ascii "Pin %u of port %u: "
             6F 66 20 70 6F 72 74
             20 25 75 3A 20
      001CC9 00                    3109 	.db 0x00
                                   3110 	.area CSEG    (CODE)
                                   3111 	.area CONST   (CODE)
      001CCA                       3112 ___str_105:
      001CCA 30 20 6F 66 66 2C 20  3113 	.ascii "0 off, 1 on."
             31 20 6F 6E 2E
      001CD6 00                    3114 	.db 0x00
                                   3115 	.area CSEG    (CODE)
                                   3116 	.area CONST   (CODE)
      001CD7                       3117 ___str_106:
      001CD7 53 65 74 74 69 6E 67  3118 	.ascii "Setting pin %u of port %u on."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 6E
             2E
      001CF4 0D                    3119 	.db 0x0d
      001CF5 00                    3120 	.db 0x00
                                   3121 	.area CSEG    (CODE)
                                   3122 	.area CONST   (CODE)
      001CF6                       3123 ___str_107:
      001CF6 53 65 74 74 69 6E 67  3124 	.ascii "Setting pin %u of port %u off."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 66
             66 2E
      001D14 0D                    3125 	.db 0x0d
      001D15 00                    3126 	.db 0x00
                                   3127 	.area CSEG    (CODE)
                                   3128 	.area CONST   (CODE)
      001D16                       3129 ___str_108:
      001D16 49 6E 76 61 6C 69 64  3130 	.ascii "Invalid action!"
             20 61 63 74 69 6F 6E
             21
      001D25 00                    3131 	.db 0x00
                                   3132 	.area CSEG    (CODE)
                                   3133 	.area CONST   (CODE)
      001D26                       3134 ___str_112:
      001D26 53 6F 72 72 79 20 74  3135 	.ascii "Sorry the pins 0 and 1 of port 3 are used by serial port."
             68 65 20 70 69 6E 73
             20 30 20 61 6E 64 20
             31 20 6F 66 20 70 6F
             72 74 20 33 20 61 72
             65 20 75 73 65 64 20
             62 79 20 73 65 72 69
             61 6C 20 70 6F 72 74
             2E
      001D5F 00                    3136 	.db 0x00
                                   3137 	.area CSEG    (CODE)
                                   3138 	.area CONST   (CODE)
      001D60                       3139 ___str_113:
      001D60 49 6E 76 61 6C 69 64  3140 	.ascii "Invalid pin!"
             20 70 69 6E 21
      001D6C 00                    3141 	.db 0x00
                                   3142 	.area CSEG    (CODE)
                                   3143 	.area CONST   (CODE)
      001D6D                       3144 ___str_115:
      001D6D 53 6F 72 72 79 20 74  3145 	.ascii "Sorry the pin 0 on port 2 is the blinking led,"
             68 65 20 70 69 6E 20
             30 20 6F 6E 20 70 6F
             72 74 20 32 20 69 73
             20 74 68 65 20 62 6C
             69 6E 6B 69 6E 67 20
             6C 65 64 2C
      001D9B 0A                    3146 	.db 0x0a
      001D9C 74 68 65 20 70 69 6E  3147 	.ascii "the pin 1 is the serial character transmit blink,"
             20 31 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 74
             72 61 6E 73 6D 69 74
             20 62 6C 69 6E 6B 2C
      001DCD 0A                    3148 	.db 0x0a
      001DCE 74 68 65 20 70 69 6E  3149 	.ascii "the pin 2 is the serial character receive blink."
             20 32 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 72
             65 63 65 69 76 65 20
             62 6C 69 6E 6B 2E
      001DFE 00                    3150 	.db 0x00
                                   3151 	.area CSEG    (CODE)
                                   3152 	.area CONST   (CODE)
      001DFF                       3153 ___str_134:
      001DFF 41 76 61 69 6C 61 62  3154 	.ascii "Available comamnds are:"
             6C 65 20 63 6F 6D 61
             6D 6E 64 73 20 61 72
             65 3A
      001E16 0A                    3155 	.db 0x0a
      001E17 30 2C 20 31 2C 20 32  3156 	.ascii "0, 1, 2 or 3 to change pin ports status."
             20 6F 72 20 33 20 74
             6F 20 63 68 61 6E 67
             65 20 70 69 6E 20 70
             6F 72 74 73 20 73 74
             61 74 75 73 2E
      001E3F 0A                    3157 	.db 0x0a
      001E40 63 20 64 75 6D 70 20  3158 	.ascii "c dump code memory."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 2E
      001E53 0A                    3159 	.db 0x0a
      001E54 43 20 64 75 6D 70 20  3160 	.ascii "C dump code memory in hex format."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 20 69 6E
             20 68 65 78 20 66 6F
             72 6D 61 74 2E
      001E75 0A                    3161 	.db 0x0a
      001E76 65 20 64 75 6D 70 20  3162 	.ascii "e dump eeprom memory."
             65 65 70 72 6F 6D 20
             6D 65 6D 6F 72 79 2E
      001E8B 0A                    3163 	.db 0x0a
      001E8C 45 20 64 75 6D 70 20  3164 	.ascii "E dump eeprom memory in hex format."
             65 65 70 72 6F 6D 20
             6D 65 6D 6F 72 79 20
             69 6E 20 68 65 78 20
             66 6F 72 6D 61 74 2E
      001EAF 0A                    3165 	.db 0x0a
      001EB0 6D 20 64 75 6D 70 20  3166 	.ascii "m dump ram memory."
             72 61 6D 20 6D 65 6D
             6F 72 79 2E
      001EC2 0A                    3167 	.db 0x0a
      001EC3 66 20 70 72 69 6E 74  3168 	.ascii "f print felix"
             20 66 65 6C 69 78
      001ED0 0A                    3169 	.db 0x0a
      001ED1 72 20 72 65 73 65 74  3170 	.ascii "r reset the microcontroller."
             20 74 68 65 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 2E
      001EED 0A                    3171 	.db 0x0a
      001EEE 48 20 70 72 69 6E 74  3172 	.ascii "H print this help."
             20 74 68 69 73 20 68
             65 6C 70 2E
      001F00 00                    3173 	.db 0x00
                                   3174 	.area CSEG    (CODE)
                                   3175 	.area CONST   (CODE)
      001F01                       3176 ___str_135:
      001F01 49 6E 73 65 72 74 20  3177 	.ascii "Insert command, h for help."
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 2E
      001F1C 00                    3178 	.db 0x00
                                   3179 	.area CSEG    (CODE)
                                   3180 	.area CONST   (CODE)
      001F1D                       3181 ___str_136:
      001F1D 49 6E 76 61 6C 69 64  3182 	.ascii "Invalid command %c."
             20 63 6F 6D 6D 61 6E
             64 20 25 63 2E
      001F30 0D                    3183 	.db 0x0d
      001F31 00                    3184 	.db 0x00
                                   3185 	.area CSEG    (CODE)
                                   3186 	.area CONST   (CODE)
      001F32                       3187 ___str_137:
      001F32 49 6E 73 65 72 74 20  3188 	.ascii "Insert command, h for help:"
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 3A
      001F4D 00                    3189 	.db 0x00
                                   3190 	.area CSEG    (CODE)
                                   3191 	.area XINIT   (CODE)
                                   3192 	.area CABS    (ABS,CODE)
