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
                                     24 	.globl _printf_tiny
                                     25 	.globl _putchar
                                     26 	.globl _getchar
                                     27 	.globl _puts
                                     28 	.globl _init_timer0
                                     29 	.globl _ser_byte_avail
                                     30 	.globl _init_ser
                                     31 	.globl _writeEeprom
                                     32 	.globl _readEeprom
                                     33 	.globl _BREG_F7
                                     34 	.globl _BREG_F6
                                     35 	.globl _BREG_F5
                                     36 	.globl _BREG_F4
                                     37 	.globl _BREG_F3
                                     38 	.globl _BREG_F2
                                     39 	.globl _BREG_F1
                                     40 	.globl _BREG_F0
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _FL
                                     48 	.globl _P
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _PS
                                     67 	.globl _PT1
                                     68 	.globl _PX1
                                     69 	.globl _PT0
                                     70 	.globl _PX0
                                     71 	.globl _RD
                                     72 	.globl _WR
                                     73 	.globl _T1
                                     74 	.globl _T0
                                     75 	.globl _INT1
                                     76 	.globl _INT0
                                     77 	.globl _TXD
                                     78 	.globl _RXD
                                     79 	.globl _P3_7
                                     80 	.globl _P3_6
                                     81 	.globl _P3_5
                                     82 	.globl _P3_4
                                     83 	.globl _P3_3
                                     84 	.globl _P3_2
                                     85 	.globl _P3_1
                                     86 	.globl _P3_0
                                     87 	.globl _EA
                                     88 	.globl _ET2
                                     89 	.globl _ES
                                     90 	.globl _ET1
                                     91 	.globl _EX1
                                     92 	.globl _ET0
                                     93 	.globl _EX0
                                     94 	.globl _P2_7
                                     95 	.globl _P2_6
                                     96 	.globl _P2_5
                                     97 	.globl _P2_4
                                     98 	.globl _P2_3
                                     99 	.globl _P2_2
                                    100 	.globl _P2_1
                                    101 	.globl _P2_0
                                    102 	.globl _SM0
                                    103 	.globl _SM1
                                    104 	.globl _SM2
                                    105 	.globl _REN
                                    106 	.globl _TB8
                                    107 	.globl _RB8
                                    108 	.globl _TI
                                    109 	.globl _RI
                                    110 	.globl _SCK
                                    111 	.globl _MISO
                                    112 	.globl _MOSI
                                    113 	.globl _SS
                                    114 	.globl _T2EX
                                    115 	.globl _T2
                                    116 	.globl _P1_7
                                    117 	.globl _P1_6
                                    118 	.globl _P1_5
                                    119 	.globl _P1_4
                                    120 	.globl _P1_3
                                    121 	.globl _P1_2
                                    122 	.globl _P1_1
                                    123 	.globl _P1_0
                                    124 	.globl _TF1
                                    125 	.globl _TR1
                                    126 	.globl _TF0
                                    127 	.globl _TR0
                                    128 	.globl _IE1
                                    129 	.globl _IT1
                                    130 	.globl _IE0
                                    131 	.globl _IT0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _ALE
                                    141 	.globl _B
                                    142 	.globl _A
                                    143 	.globl _ACC
                                    144 	.globl _SPCR
                                    145 	.globl _PSW
                                    146 	.globl _TH2
                                    147 	.globl _TL2
                                    148 	.globl _RCAP2H
                                    149 	.globl _RCAP2L
                                    150 	.globl _T2MOD
                                    151 	.globl _T2CON
                                    152 	.globl _IP
                                    153 	.globl _P3
                                    154 	.globl _SPSR
                                    155 	.globl _IE
                                    156 	.globl _P2
                                    157 	.globl _SBUF
                                    158 	.globl _SCON
                                    159 	.globl _WMCON
                                    160 	.globl _P1
                                    161 	.globl _TH1
                                    162 	.globl _TH0
                                    163 	.globl _TL1
                                    164 	.globl _TL0
                                    165 	.globl _TMOD
                                    166 	.globl _TCON
                                    167 	.globl _PCON
                                    168 	.globl _SPDR
                                    169 	.globl _DP1H
                                    170 	.globl _DP1L
                                    171 	.globl _DP0H
                                    172 	.globl _DPH
                                    173 	.globl _DP0L
                                    174 	.globl _DPL
                                    175 	.globl _SP
                                    176 	.globl _P0
                                    177 	.globl _SADEN
                                    178 	.globl _IPH
                                    179 	.globl _SADDR
                                    180 	.globl _WDTCON
                                    181 	.globl _WDTRST
                                    182 	.globl _EECON
                                    183 	.globl _CLKREG
                                    184 	.globl _AUXR
                                    185 	.globl _dati
                                    186 ;--------------------------------------------------------
                                    187 ; special function registers
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           00008E   191 _AUXR	=	0x008e
                           00008F   192 _CLKREG	=	0x008f
                           000096   193 _EECON	=	0x0096
                           0000A6   194 _WDTRST	=	0x00a6
                           0000A7   195 _WDTCON	=	0x00a7
                           0000A9   196 _SADDR	=	0x00a9
                           0000B7   197 _IPH	=	0x00b7
                           0000B9   198 _SADEN	=	0x00b9
                           000080   199 _P0	=	0x0080
                           000081   200 _SP	=	0x0081
                           000082   201 _DPL	=	0x0082
                           000082   202 _DP0L	=	0x0082
                           000083   203 _DPH	=	0x0083
                           000083   204 _DP0H	=	0x0083
                           000084   205 _DP1L	=	0x0084
                           000085   206 _DP1H	=	0x0085
                           000086   207 _SPDR	=	0x0086
                           000087   208 _PCON	=	0x0087
                           000088   209 _TCON	=	0x0088
                           000089   210 _TMOD	=	0x0089
                           00008A   211 _TL0	=	0x008a
                           00008B   212 _TL1	=	0x008b
                           00008C   213 _TH0	=	0x008c
                           00008D   214 _TH1	=	0x008d
                           000090   215 _P1	=	0x0090
                           000096   216 _WMCON	=	0x0096
                           000098   217 _SCON	=	0x0098
                           000099   218 _SBUF	=	0x0099
                           0000A0   219 _P2	=	0x00a0
                           0000A8   220 _IE	=	0x00a8
                           0000AA   221 _SPSR	=	0x00aa
                           0000B0   222 _P3	=	0x00b0
                           0000B8   223 _IP	=	0x00b8
                           0000C8   224 _T2CON	=	0x00c8
                           0000C9   225 _T2MOD	=	0x00c9
                           0000CA   226 _RCAP2L	=	0x00ca
                           0000CB   227 _RCAP2H	=	0x00cb
                           0000CC   228 _TL2	=	0x00cc
                           0000CD   229 _TH2	=	0x00cd
                           0000D0   230 _PSW	=	0x00d0
                           0000D5   231 _SPCR	=	0x00d5
                           0000E0   232 _ACC	=	0x00e0
                           0000E0   233 _A	=	0x00e0
                           0000F0   234 _B	=	0x00f0
                           00008E   235 _ALE	=	0x008e
                                    236 ;--------------------------------------------------------
                                    237 ; special function bits
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           000080   241 _P0_0	=	0x0080
                           000081   242 _P0_1	=	0x0081
                           000082   243 _P0_2	=	0x0082
                           000083   244 _P0_3	=	0x0083
                           000084   245 _P0_4	=	0x0084
                           000085   246 _P0_5	=	0x0085
                           000086   247 _P0_6	=	0x0086
                           000087   248 _P0_7	=	0x0087
                           000088   249 _IT0	=	0x0088
                           000089   250 _IE0	=	0x0089
                           00008A   251 _IT1	=	0x008a
                           00008B   252 _IE1	=	0x008b
                           00008C   253 _TR0	=	0x008c
                           00008D   254 _TF0	=	0x008d
                           00008E   255 _TR1	=	0x008e
                           00008F   256 _TF1	=	0x008f
                           000090   257 _P1_0	=	0x0090
                           000091   258 _P1_1	=	0x0091
                           000092   259 _P1_2	=	0x0092
                           000093   260 _P1_3	=	0x0093
                           000094   261 _P1_4	=	0x0094
                           000095   262 _P1_5	=	0x0095
                           000096   263 _P1_6	=	0x0096
                           000097   264 _P1_7	=	0x0097
                           000090   265 _T2	=	0x0090
                           000091   266 _T2EX	=	0x0091
                           000094   267 _SS	=	0x0094
                           000095   268 _MOSI	=	0x0095
                           000096   269 _MISO	=	0x0096
                           000097   270 _SCK	=	0x0097
                           000098   271 _RI	=	0x0098
                           000099   272 _TI	=	0x0099
                           00009A   273 _RB8	=	0x009a
                           00009B   274 _TB8	=	0x009b
                           00009C   275 _REN	=	0x009c
                           00009D   276 _SM2	=	0x009d
                           00009E   277 _SM1	=	0x009e
                           00009F   278 _SM0	=	0x009f
                           0000A0   279 _P2_0	=	0x00a0
                           0000A1   280 _P2_1	=	0x00a1
                           0000A2   281 _P2_2	=	0x00a2
                           0000A3   282 _P2_3	=	0x00a3
                           0000A4   283 _P2_4	=	0x00a4
                           0000A5   284 _P2_5	=	0x00a5
                           0000A6   285 _P2_6	=	0x00a6
                           0000A7   286 _P2_7	=	0x00a7
                           0000A8   287 _EX0	=	0x00a8
                           0000A9   288 _ET0	=	0x00a9
                           0000AA   289 _EX1	=	0x00aa
                           0000AB   290 _ET1	=	0x00ab
                           0000AC   291 _ES	=	0x00ac
                           0000AD   292 _ET2	=	0x00ad
                           0000AF   293 _EA	=	0x00af
                           0000B0   294 _P3_0	=	0x00b0
                           0000B1   295 _P3_1	=	0x00b1
                           0000B2   296 _P3_2	=	0x00b2
                           0000B3   297 _P3_3	=	0x00b3
                           0000B4   298 _P3_4	=	0x00b4
                           0000B5   299 _P3_5	=	0x00b5
                           0000B6   300 _P3_6	=	0x00b6
                           0000B7   301 _P3_7	=	0x00b7
                           0000B0   302 _RXD	=	0x00b0
                           0000B1   303 _TXD	=	0x00b1
                           0000B2   304 _INT0	=	0x00b2
                           0000B3   305 _INT1	=	0x00b3
                           0000B4   306 _T0	=	0x00b4
                           0000B5   307 _T1	=	0x00b5
                           0000B6   308 _WR	=	0x00b6
                           0000B7   309 _RD	=	0x00b7
                           0000B8   310 _PX0	=	0x00b8
                           0000B9   311 _PT0	=	0x00b9
                           0000BA   312 _PX1	=	0x00ba
                           0000BB   313 _PT1	=	0x00bb
                           0000BC   314 _PS	=	0x00bc
                           0000BD   315 _PT2	=	0x00bd
                           0000C8   316 _T2CON_0	=	0x00c8
                           0000C9   317 _T2CON_1	=	0x00c9
                           0000CA   318 _T2CON_2	=	0x00ca
                           0000CB   319 _T2CON_3	=	0x00cb
                           0000CC   320 _T2CON_4	=	0x00cc
                           0000CD   321 _T2CON_5	=	0x00cd
                           0000CE   322 _T2CON_6	=	0x00ce
                           0000CF   323 _T2CON_7	=	0x00cf
                           0000C8   324 _CP_RL2	=	0x00c8
                           0000C9   325 _C_T2	=	0x00c9
                           0000CA   326 _TR2	=	0x00ca
                           0000CB   327 _EXEN2	=	0x00cb
                           0000CC   328 _TCLK	=	0x00cc
                           0000CD   329 _RCLK	=	0x00cd
                           0000CE   330 _EXF2	=	0x00ce
                           0000CF   331 _TF2	=	0x00cf
                           0000D0   332 _P	=	0x00d0
                           0000D1   333 _FL	=	0x00d1
                           0000D2   334 _OV	=	0x00d2
                           0000D3   335 _RS0	=	0x00d3
                           0000D4   336 _RS1	=	0x00d4
                           0000D5   337 _F0	=	0x00d5
                           0000D6   338 _AC	=	0x00d6
                           0000D7   339 _CY	=	0x00d7
                           0000F0   340 _BREG_F0	=	0x00f0
                           0000F1   341 _BREG_F1	=	0x00f1
                           0000F2   342 _BREG_F2	=	0x00f2
                           0000F3   343 _BREG_F3	=	0x00f3
                           0000F4   344 _BREG_F4	=	0x00f4
                           0000F5   345 _BREG_F5	=	0x00f5
                           0000F6   346 _BREG_F6	=	0x00f6
                           0000F7   347 _BREG_F7	=	0x00f7
                                    348 ;--------------------------------------------------------
                                    349 ; overlayable register banks
                                    350 ;--------------------------------------------------------
                                    351 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        352 	.ds 8
                                    353 ;--------------------------------------------------------
                                    354 ; internal ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area DSEG    (DATA)
                           000000   357 _dati	=	0x0000
      000022                        358 _dumpCODE_indirizzo_131072_56:
      000022                        359 	.ds 2
      000024                        360 _dumpCODE_posto_262144_62:
      000024                        361 	.ds 2
      000026                        362 _dumpCODE_posto_262144_65:
      000026                        363 	.ds 1
      000027                        364 _dumpRAM_indirizzo_131072_70:
      000027                        365 	.ds 2
      000029                        366 _dumpRAM_posto_262144_76:
      000029                        367 	.ds 2
      00002B                        368 _dumpRAM_posto_262144_79:
      00002B                        369 	.ds 1
      00002C                        370 _hexCODE_puntatore_65536_83:
      00002C                        371 	.ds 3
      00002F                        372 _hexCODE_checksum_65537_84:
      00002F                        373 	.ds 2
      000031                        374 _p_pin_65537_105:
      000031                        375 	.ds 1
                                    376 ;--------------------------------------------------------
                                    377 ; overlayable items in internal ram
                                    378 ;--------------------------------------------------------
                                    379 ;--------------------------------------------------------
                                    380 ; Stack segment in internal ram
                                    381 ;--------------------------------------------------------
                                    382 	.area	SSEG
      00005A                        383 __start__stack:
      00005A                        384 	.ds	1
                                    385 
                                    386 ;--------------------------------------------------------
                                    387 ; indirectly addressable internal ram data
                                    388 ;--------------------------------------------------------
                                    389 	.area ISEG    (DATA)
                                    390 ;--------------------------------------------------------
                                    391 ; absolute internal ram data
                                    392 ;--------------------------------------------------------
                                    393 	.area IABS    (ABS,DATA)
                                    394 	.area IABS    (ABS,DATA)
                                    395 ;--------------------------------------------------------
                                    396 ; bit data
                                    397 ;--------------------------------------------------------
                                    398 	.area BSEG    (BIT)
      000000                        399 _main_sloc0_1_0:
      000000                        400 	.ds 1
                                    401 ;--------------------------------------------------------
                                    402 ; paged external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area PSEG    (PAG,XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; external ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XSEG    (XDATA)
                                    409 ;--------------------------------------------------------
                                    410 ; absolute external ram data
                                    411 ;--------------------------------------------------------
                                    412 	.area XABS    (ABS,XDATA)
                                    413 ;--------------------------------------------------------
                                    414 ; external initialized ram data
                                    415 ;--------------------------------------------------------
                                    416 	.area XISEG   (XDATA)
                                    417 	.area HOME    (CODE)
                                    418 	.area GSINIT0 (CODE)
                                    419 	.area GSINIT1 (CODE)
                                    420 	.area GSINIT2 (CODE)
                                    421 	.area GSINIT3 (CODE)
                                    422 	.area GSINIT4 (CODE)
                                    423 	.area GSINIT5 (CODE)
                                    424 	.area GSINIT  (CODE)
                                    425 	.area GSFINAL (CODE)
                                    426 	.area CSEG    (CODE)
                                    427 ;--------------------------------------------------------
                                    428 ; interrupt vector
                                    429 ;--------------------------------------------------------
                                    430 	.area HOME    (CODE)
      000000                        431 __interrupt_vect:
      000000 02 00 29         [24]  432 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  433 	reti
      000004                        434 	.ds	7
      00000B 02 10 28         [24]  435 	ljmp	_it_timer0
      00000E                        436 	.ds	5
      000013 32               [24]  437 	reti
      000014                        438 	.ds	7
      00001B 32               [24]  439 	reti
      00001C                        440 	.ds	7
      000023 02 0F 4D         [24]  441 	ljmp	_SerInt
                                    442 ;--------------------------------------------------------
                                    443 ; global & static initialisations
                                    444 ;--------------------------------------------------------
                                    445 	.area HOME    (CODE)
                                    446 	.area GSINIT  (CODE)
                                    447 	.area GSFINAL (CODE)
                                    448 	.area GSINIT  (CODE)
                                    449 	.globl __sdcc_gsinit_startup
                                    450 	.globl __sdcc_program_startup
                                    451 	.globl __start__stack
                                    452 	.globl __mcs51_genXINIT
                                    453 	.globl __mcs51_genXRAMCLEAR
                                    454 	.globl __mcs51_genRAMCLEAR
                                    455 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  456 	ljmp	__sdcc_program_startup
                                    457 ;--------------------------------------------------------
                                    458 ; Home
                                    459 ;--------------------------------------------------------
                                    460 	.area HOME    (CODE)
                                    461 	.area HOME    (CODE)
      000026                        462 __sdcc_program_startup:
      000026 02 0D BF         [24]  463 	ljmp	_main
                                    464 ;	return from main will return to caller
                                    465 ;--------------------------------------------------------
                                    466 ; code
                                    467 ;--------------------------------------------------------
                                    468 	.area CSEG    (CODE)
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'felix'
                                    471 ;------------------------------------------------------------
                                    472 ;	8052Explorer.c:126: void felix (void) {
                                    473 ;	-----------------------------------------
                                    474 ;	 function felix
                                    475 ;	-----------------------------------------
      000085                        476 _felix:
                           000007   477 	ar7 = 0x07
                           000006   478 	ar6 = 0x06
                           000005   479 	ar5 = 0x05
                           000004   480 	ar4 = 0x04
                           000003   481 	ar3 = 0x03
                           000002   482 	ar2 = 0x02
                           000001   483 	ar1 = 0x01
                           000000   484 	ar0 = 0x00
                                    485 ;	8052Explorer.c:127: putchar('\r');
      000085 90 00 0D         [24]  486 	mov	dptr,#0x000d
      000088 12 0F F4         [24]  487 	lcall	_putchar
                                    488 ;	8052Explorer.c:160: puts("                         '~~~*==Y*f~~~ ");
      00008B 90 12 90         [24]  489 	mov	dptr,#___str_64
      00008E 75 F0 80         [24]  490 	mov	b,#0x80
      000091 12 12 09         [24]  491 	lcall	_puts
                                    492 ;	8052Explorer.c:161: putchar('\r');
      000094 90 00 0D         [24]  493 	mov	dptr,#0x000d
                                    494 ;	8052Explorer.c:162: }
      000097 02 0F F4         [24]  495 	ljmp	_putchar
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'dumpEEPROM'
                                    498 ;------------------------------------------------------------
                                    499 ;eepromchar                Allocated to registers r7 
                                    500 ;indirizzo                 Allocated to registers r6 r7 
                                    501 ;posto                     Allocated to registers r5 
                                    502 ;lettura                   Allocated to registers r4 
                                    503 ;lettura                   Allocated to registers r4 
                                    504 ;posto                     Allocated to registers r5 
                                    505 ;------------------------------------------------------------
                                    506 ;	8052Explorer.c:165: void dumpEEPROM () {
                                    507 ;	-----------------------------------------
                                    508 ;	 function dumpEEPROM
                                    509 ;	-----------------------------------------
      00009A                        510 _dumpEEPROM:
                                    511 ;	8052Explorer.c:166: puts("Dumping eeprom content and changing first character:");
      00009A 90 19 E1         [24]  512 	mov	dptr,#___str_65
      00009D 75 F0 80         [24]  513 	mov	b,#0x80
      0000A0 12 12 09         [24]  514 	lcall	_puts
                                    515 ;	8052Explorer.c:168: unsigned char eepromchar = readEeprom(0);
      0000A3 90 00 00         [24]  516 	mov	dptr,#0x0000
      0000A6 12 0E CC         [24]  517 	lcall	_readEeprom
      0000A9 E5 82            [12]  518 	mov	a,dpl
                                    519 ;	8052Explorer.c:169: eepromchar++;
      0000AB 04               [12]  520 	inc	a
      0000AC FF               [12]  521 	mov	r7,a
                                    522 ;	8052Explorer.c:170: if (0x5B == eepromchar) {
      0000AD BF 5B 02         [24]  523 	cjne	r7,#0x5b,00102$
                                    524 ;	8052Explorer.c:171: eepromchar = 0x41;
      0000B0 7F 41            [12]  525 	mov	r7,#0x41
      0000B2                        526 00102$:
                                    527 ;	8052Explorer.c:173: writeEeprom (eepromchar, 0);
      0000B2 E4               [12]  528 	clr	a
      0000B3 F5 0B            [12]  529 	mov	_writeEeprom_PARM_2,a
      0000B5 F5 0C            [12]  530 	mov	(_writeEeprom_PARM_2 + 1),a
      0000B7 8F 82            [24]  531 	mov	dpl,r7
      0000B9 12 0E FB         [24]  532 	lcall	_writeEeprom
                                    533 ;	8052Explorer.c:175: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
      0000BC 7E 00            [12]  534 	mov	r6,#0x00
      0000BE 7F 00            [12]  535 	mov	r7,#0x00
      0000C0                        536 00127$:
      0000C0 8E 04            [24]  537 	mov	ar4,r6
      0000C2 8F 05            [24]  538 	mov	ar5,r7
      0000C4 C3               [12]  539 	clr	c
      0000C5 74 FF            [12]  540 	mov	a,#0xff
      0000C7 9C               [12]  541 	subb	a,r4
      0000C8 74 07            [12]  542 	mov	a,#0x07
      0000CA 9D               [12]  543 	subb	a,r5
      0000CB 50 03            [24]  544 	jnc	00195$
      0000CD 02 02 5B         [24]  545 	ljmp	00119$
      0000D0                        546 00195$:
                                    547 ;	8052Explorer.c:176: if (indirizzo < 0x10) {
      0000D0 C3               [12]  548 	clr	c
      0000D1 EC               [12]  549 	mov	a,r4
      0000D2 94 10            [12]  550 	subb	a,#0x10
      0000D4 ED               [12]  551 	mov	a,r5
      0000D5 94 00            [12]  552 	subb	a,#0x00
      0000D7 50 1F            [24]  553 	jnc	00110$
                                    554 ;	8052Explorer.c:177: printf_tiny("000%x  ", indirizzo);
      0000D9 C0 07            [24]  555 	push	ar7
      0000DB C0 06            [24]  556 	push	ar6
      0000DD C0 06            [24]  557 	push	ar6
      0000DF C0 07            [24]  558 	push	ar7
      0000E1 74 16            [12]  559 	mov	a,#___str_66
      0000E3 C0 E0            [24]  560 	push	acc
      0000E5 74 1A            [12]  561 	mov	a,#(___str_66 >> 8)
      0000E7 C0 E0            [24]  562 	push	acc
      0000E9 12 10 B3         [24]  563 	lcall	_printf_tiny
      0000EC E5 81            [12]  564 	mov	a,sp
      0000EE 24 FC            [12]  565 	add	a,#0xfc
      0000F0 F5 81            [12]  566 	mov	sp,a
      0000F2 D0 06            [24]  567 	pop	ar6
      0000F4 D0 07            [24]  568 	pop	ar7
      0000F6 80 65            [24]  569 	sjmp	00138$
      0000F8                        570 00110$:
                                    571 ;	8052Explorer.c:178: } else if (indirizzo < 0x100) {
      0000F8 74 FF            [12]  572 	mov	a,#0x100 - 0x01
      0000FA 2D               [12]  573 	add	a,r5
      0000FB 40 1F            [24]  574 	jc	00107$
                                    575 ;	8052Explorer.c:179: printf_tiny("00%x  ", indirizzo);
      0000FD C0 07            [24]  576 	push	ar7
      0000FF C0 06            [24]  577 	push	ar6
      000101 C0 06            [24]  578 	push	ar6
      000103 C0 07            [24]  579 	push	ar7
      000105 74 1E            [12]  580 	mov	a,#___str_67
      000107 C0 E0            [24]  581 	push	acc
      000109 74 1A            [12]  582 	mov	a,#(___str_67 >> 8)
      00010B C0 E0            [24]  583 	push	acc
      00010D 12 10 B3         [24]  584 	lcall	_printf_tiny
      000110 E5 81            [12]  585 	mov	a,sp
      000112 24 FC            [12]  586 	add	a,#0xfc
      000114 F5 81            [12]  587 	mov	sp,a
      000116 D0 06            [24]  588 	pop	ar6
      000118 D0 07            [24]  589 	pop	ar7
      00011A 80 41            [24]  590 	sjmp	00138$
      00011C                        591 00107$:
                                    592 ;	8052Explorer.c:180: } else if (indirizzo < 0x1000) {
      00011C 74 F0            [12]  593 	mov	a,#0x100 - 0x10
      00011E 2D               [12]  594 	add	a,r5
      00011F 40 1F            [24]  595 	jc	00104$
                                    596 ;	8052Explorer.c:181: printf_tiny("0%x  ", indirizzo);
      000121 C0 07            [24]  597 	push	ar7
      000123 C0 06            [24]  598 	push	ar6
      000125 C0 06            [24]  599 	push	ar6
      000127 C0 07            [24]  600 	push	ar7
      000129 74 25            [12]  601 	mov	a,#___str_68
      00012B C0 E0            [24]  602 	push	acc
      00012D 74 1A            [12]  603 	mov	a,#(___str_68 >> 8)
      00012F C0 E0            [24]  604 	push	acc
      000131 12 10 B3         [24]  605 	lcall	_printf_tiny
      000134 E5 81            [12]  606 	mov	a,sp
      000136 24 FC            [12]  607 	add	a,#0xfc
      000138 F5 81            [12]  608 	mov	sp,a
      00013A D0 06            [24]  609 	pop	ar6
      00013C D0 07            [24]  610 	pop	ar7
      00013E 80 1D            [24]  611 	sjmp	00138$
      000140                        612 00104$:
                                    613 ;	8052Explorer.c:183: printf_tiny("%x  ", indirizzo);
      000140 C0 07            [24]  614 	push	ar7
      000142 C0 06            [24]  615 	push	ar6
      000144 C0 06            [24]  616 	push	ar6
      000146 C0 07            [24]  617 	push	ar7
      000148 74 2B            [12]  618 	mov	a,#___str_69
      00014A C0 E0            [24]  619 	push	acc
      00014C 74 1A            [12]  620 	mov	a,#(___str_69 >> 8)
      00014E C0 E0            [24]  621 	push	acc
      000150 12 10 B3         [24]  622 	lcall	_printf_tiny
      000153 E5 81            [12]  623 	mov	a,sp
      000155 24 FC            [12]  624 	add	a,#0xfc
      000157 F5 81            [12]  625 	mov	sp,a
      000159 D0 06            [24]  626 	pop	ar6
      00015B D0 07            [24]  627 	pop	ar7
                                    628 ;	8052Explorer.c:185: for (unsigned char posto = 0; posto < 16; posto++) {
      00015D                        629 00138$:
      00015D 7D 00            [12]  630 	mov	r5,#0x00
      00015F                        631 00121$:
      00015F BD 10 00         [24]  632 	cjne	r5,#0x10,00199$
      000162                        633 00199$:
      000162 50 64            [24]  634 	jnc	00114$
                                    635 ;	8052Explorer.c:186: unsigned char lettura = readEeprom(indirizzo + (unsigned int)posto);
      000164 8D 03            [24]  636 	mov	ar3,r5
      000166 7C 00            [12]  637 	mov	r4,#0x00
      000168 8E 01            [24]  638 	mov	ar1,r6
      00016A 8F 02            [24]  639 	mov	ar2,r7
      00016C EB               [12]  640 	mov	a,r3
      00016D 29               [12]  641 	add	a,r1
      00016E FB               [12]  642 	mov	r3,a
      00016F EC               [12]  643 	mov	a,r4
      000170 3A               [12]  644 	addc	a,r2
      000171 FC               [12]  645 	mov	r4,a
      000172 8B 82            [24]  646 	mov	dpl,r3
      000174 8C 83            [24]  647 	mov	dph,r4
      000176 C0 07            [24]  648 	push	ar7
      000178 C0 06            [24]  649 	push	ar6
      00017A C0 05            [24]  650 	push	ar5
      00017C 12 0E CC         [24]  651 	lcall	_readEeprom
      00017F AC 82            [24]  652 	mov	r4,dpl
      000181 D0 05            [24]  653 	pop	ar5
      000183 D0 06            [24]  654 	pop	ar6
      000185 D0 07            [24]  655 	pop	ar7
                                    656 ;	8052Explorer.c:187: if ( lettura < 0x10 ) {
      000187 BC 10 00         [24]  657 	cjne	r4,#0x10,00201$
      00018A                        658 00201$:
      00018A 50 16            [24]  659 	jnc	00113$
                                    660 ;	8052Explorer.c:188: putchar('0');
      00018C 90 00 30         [24]  661 	mov	dptr,#0x0030
      00018F C0 07            [24]  662 	push	ar7
      000191 C0 06            [24]  663 	push	ar6
      000193 C0 05            [24]  664 	push	ar5
      000195 C0 04            [24]  665 	push	ar4
      000197 12 0F F4         [24]  666 	lcall	_putchar
      00019A D0 04            [24]  667 	pop	ar4
      00019C D0 05            [24]  668 	pop	ar5
      00019E D0 06            [24]  669 	pop	ar6
      0001A0 D0 07            [24]  670 	pop	ar7
      0001A2                        671 00113$:
                                    672 ;	8052Explorer.c:190: printf_tiny("%x ", lettura);
      0001A2 7B 00            [12]  673 	mov	r3,#0x00
      0001A4 C0 07            [24]  674 	push	ar7
      0001A6 C0 06            [24]  675 	push	ar6
      0001A8 C0 05            [24]  676 	push	ar5
      0001AA C0 04            [24]  677 	push	ar4
      0001AC C0 03            [24]  678 	push	ar3
      0001AE 74 30            [12]  679 	mov	a,#___str_70
      0001B0 C0 E0            [24]  680 	push	acc
      0001B2 74 1A            [12]  681 	mov	a,#(___str_70 >> 8)
      0001B4 C0 E0            [24]  682 	push	acc
      0001B6 12 10 B3         [24]  683 	lcall	_printf_tiny
      0001B9 E5 81            [12]  684 	mov	a,sp
      0001BB 24 FC            [12]  685 	add	a,#0xfc
      0001BD F5 81            [12]  686 	mov	sp,a
      0001BF D0 05            [24]  687 	pop	ar5
      0001C1 D0 06            [24]  688 	pop	ar6
      0001C3 D0 07            [24]  689 	pop	ar7
                                    690 ;	8052Explorer.c:185: for (unsigned char posto = 0; posto < 16; posto++) {
      0001C5 0D               [12]  691 	inc	r5
      0001C6 80 97            [24]  692 	sjmp	00121$
      0001C8                        693 00114$:
                                    694 ;	8052Explorer.c:193: printf_tiny(" |");
      0001C8 C0 07            [24]  695 	push	ar7
      0001CA C0 06            [24]  696 	push	ar6
      0001CC 74 34            [12]  697 	mov	a,#___str_71
      0001CE C0 E0            [24]  698 	push	acc
      0001D0 74 1A            [12]  699 	mov	a,#(___str_71 >> 8)
      0001D2 C0 E0            [24]  700 	push	acc
      0001D4 12 10 B3         [24]  701 	lcall	_printf_tiny
      0001D7 15 81            [12]  702 	dec	sp
      0001D9 15 81            [12]  703 	dec	sp
      0001DB D0 06            [24]  704 	pop	ar6
      0001DD D0 07            [24]  705 	pop	ar7
                                    706 ;	8052Explorer.c:195: for (unsigned char posto=0; posto < 16; posto++) {
      0001DF 7D 00            [12]  707 	mov	r5,#0x00
      0001E1                        708 00124$:
      0001E1 BD 10 00         [24]  709 	cjne	r5,#0x10,00203$
      0001E4                        710 00203$:
      0001E4 50 4F            [24]  711 	jnc	00118$
                                    712 ;	8052Explorer.c:196: lettura = readEeprom(indirizzo+(short)posto);
      0001E6 8D 03            [24]  713 	mov	ar3,r5
      0001E8 7C 00            [12]  714 	mov	r4,#0x00
      0001EA EB               [12]  715 	mov	a,r3
      0001EB 2E               [12]  716 	add	a,r6
      0001EC F5 82            [12]  717 	mov	dpl,a
      0001EE EC               [12]  718 	mov	a,r4
      0001EF 3F               [12]  719 	addc	a,r7
      0001F0 F5 83            [12]  720 	mov	dph,a
      0001F2 C0 07            [24]  721 	push	ar7
      0001F4 C0 06            [24]  722 	push	ar6
      0001F6 C0 05            [24]  723 	push	ar5
      0001F8 12 0E CC         [24]  724 	lcall	_readEeprom
      0001FB AC 82            [24]  725 	mov	r4,dpl
      0001FD D0 05            [24]  726 	pop	ar5
      0001FF D0 06            [24]  727 	pop	ar6
      000201 D0 07            [24]  728 	pop	ar7
                                    729 ;	8052Explorer.c:197: if ( lettura < 0x20 || lettura > 0x7E ) {
      000203 BC 20 00         [24]  730 	cjne	r4,#0x20,00205$
      000206                        731 00205$:
      000206 40 05            [24]  732 	jc	00115$
      000208 EC               [12]  733 	mov	a,r4
      000209 24 81            [12]  734 	add	a,#0xff - 0x7e
      00020B 50 02            [24]  735 	jnc	00116$
      00020D                        736 00115$:
                                    737 ;	8052Explorer.c:198: lettura = '.';
      00020D 7C 2E            [12]  738 	mov	r4,#0x2e
      00020F                        739 00116$:
                                    740 ;	8052Explorer.c:200: printf_tiny("%c", lettura);
      00020F 7B 00            [12]  741 	mov	r3,#0x00
      000211 C0 07            [24]  742 	push	ar7
      000213 C0 06            [24]  743 	push	ar6
      000215 C0 05            [24]  744 	push	ar5
      000217 C0 04            [24]  745 	push	ar4
      000219 C0 03            [24]  746 	push	ar3
      00021B 74 37            [12]  747 	mov	a,#___str_72
      00021D C0 E0            [24]  748 	push	acc
      00021F 74 1A            [12]  749 	mov	a,#(___str_72 >> 8)
      000221 C0 E0            [24]  750 	push	acc
      000223 12 10 B3         [24]  751 	lcall	_printf_tiny
      000226 E5 81            [12]  752 	mov	a,sp
      000228 24 FC            [12]  753 	add	a,#0xfc
      00022A F5 81            [12]  754 	mov	sp,a
      00022C D0 05            [24]  755 	pop	ar5
      00022E D0 06            [24]  756 	pop	ar6
      000230 D0 07            [24]  757 	pop	ar7
                                    758 ;	8052Explorer.c:195: for (unsigned char posto=0; posto < 16; posto++) {
      000232 0D               [12]  759 	inc	r5
      000233 80 AC            [24]  760 	sjmp	00124$
      000235                        761 00118$:
                                    762 ;	8052Explorer.c:203: putchar('|');
      000235 90 00 7C         [24]  763 	mov	dptr,#0x007c
      000238 C0 07            [24]  764 	push	ar7
      00023A C0 06            [24]  765 	push	ar6
      00023C 12 0F F4         [24]  766 	lcall	_putchar
                                    767 ;	8052Explorer.c:204: putchar('\r');
      00023F 90 00 0D         [24]  768 	mov	dptr,#0x000d
      000242 12 0F F4         [24]  769 	lcall	_putchar
      000245 D0 06            [24]  770 	pop	ar6
      000247 D0 07            [24]  771 	pop	ar7
                                    772 ;	8052Explorer.c:175: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
      000249 8E 04            [24]  773 	mov	ar4,r6
      00024B 8F 05            [24]  774 	mov	ar5,r7
      00024D 74 10            [12]  775 	mov	a,#0x10
      00024F 2C               [12]  776 	add	a,r4
      000250 FC               [12]  777 	mov	r4,a
      000251 E4               [12]  778 	clr	a
      000252 3D               [12]  779 	addc	a,r5
      000253 FD               [12]  780 	mov	r5,a
      000254 8C 06            [24]  781 	mov	ar6,r4
      000256 8D 07            [24]  782 	mov	ar7,r5
      000258 02 00 C0         [24]  783 	ljmp	00127$
      00025B                        784 00119$:
                                    785 ;	8052Explorer.c:207: putchar('\r');
      00025B 90 00 0D         [24]  786 	mov	dptr,#0x000d
      00025E 12 0F F4         [24]  787 	lcall	_putchar
                                    788 ;	8052Explorer.c:208: putchar('\r');
      000261 90 00 0D         [24]  789 	mov	dptr,#0x000d
                                    790 ;	8052Explorer.c:210: }
      000264 02 0F F4         [24]  791 	ljmp	_putchar
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'hexEEPROM'
                                    794 ;------------------------------------------------------------
                                    795 ;checksum                  Allocated to registers r5 r4 
                                    796 ;indirizzo                 Allocated to registers r6 r7 
                                    797 ;posto                     Allocated to registers r3 
                                    798 ;lettura                   Allocated to registers r2 
                                    799 ;------------------------------------------------------------
                                    800 ;	8052Explorer.c:212: void hexEEPROM () {
                                    801 ;	-----------------------------------------
                                    802 ;	 function hexEEPROM
                                    803 ;	-----------------------------------------
      000267                        804 _hexEEPROM:
                                    805 ;	8052Explorer.c:214: puts("Dumping eeprom content in hex format:");
      000267 90 1A 3A         [24]  806 	mov	dptr,#___str_73
      00026A 75 F0 80         [24]  807 	mov	b,#0x80
      00026D 12 12 09         [24]  808 	lcall	_puts
                                    809 ;	8052Explorer.c:215: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      000270 7E 00            [12]  810 	mov	r6,#0x00
      000272 7F 00            [12]  811 	mov	r7,#0x00
      000274                        812 00120$:
      000274 8E 04            [24]  813 	mov	ar4,r6
      000276 8F 05            [24]  814 	mov	ar5,r7
      000278 C3               [12]  815 	clr	c
      000279 74 FF            [12]  816 	mov	a,#0xff
      00027B 9C               [12]  817 	subb	a,r4
      00027C 74 07            [12]  818 	mov	a,#0x07
      00027E 9D               [12]  819 	subb	a,r5
      00027F 50 03            [24]  820 	jnc	00170$
      000281 02 04 79         [24]  821 	ljmp	00115$
      000284                        822 00170$:
                                    823 ;	8052Explorer.c:216: printf_tiny(":10");
      000284 C0 07            [24]  824 	push	ar7
      000286 C0 06            [24]  825 	push	ar6
      000288 C0 05            [24]  826 	push	ar5
      00028A C0 04            [24]  827 	push	ar4
      00028C 74 60            [12]  828 	mov	a,#___str_74
      00028E C0 E0            [24]  829 	push	acc
      000290 74 1A            [12]  830 	mov	a,#(___str_74 >> 8)
      000292 C0 E0            [24]  831 	push	acc
      000294 12 10 B3         [24]  832 	lcall	_printf_tiny
      000297 15 81            [12]  833 	dec	sp
      000299 15 81            [12]  834 	dec	sp
      00029B D0 04            [24]  835 	pop	ar4
      00029D D0 05            [24]  836 	pop	ar5
      00029F D0 06            [24]  837 	pop	ar6
      0002A1 D0 07            [24]  838 	pop	ar7
                                    839 ;	8052Explorer.c:217: checksum = 0x10;
      0002A3 7A 10            [12]  840 	mov	r2,#0x10
      0002A5 7B 00            [12]  841 	mov	r3,#0x00
                                    842 ;	8052Explorer.c:218: if (indirizzo < 0x10) {
      0002A7 C3               [12]  843 	clr	c
      0002A8 EC               [12]  844 	mov	a,r4
      0002A9 94 10            [12]  845 	subb	a,#0x10
      0002AB ED               [12]  846 	mov	a,r5
      0002AC 94 00            [12]  847 	subb	a,#0x00
      0002AE 50 28            [24]  848 	jnc	00108$
                                    849 ;	8052Explorer.c:219: printf_tiny("000%x", indirizzo);
      0002B0 C0 07            [24]  850 	push	ar7
      0002B2 C0 06            [24]  851 	push	ar6
      0002B4 C0 03            [24]  852 	push	ar3
      0002B6 C0 02            [24]  853 	push	ar2
      0002B8 C0 06            [24]  854 	push	ar6
      0002BA C0 07            [24]  855 	push	ar7
      0002BC 74 64            [12]  856 	mov	a,#___str_75
      0002BE C0 E0            [24]  857 	push	acc
      0002C0 74 1A            [12]  858 	mov	a,#(___str_75 >> 8)
      0002C2 C0 E0            [24]  859 	push	acc
      0002C4 12 10 B3         [24]  860 	lcall	_printf_tiny
      0002C7 E5 81            [12]  861 	mov	a,sp
      0002C9 24 FC            [12]  862 	add	a,#0xfc
      0002CB F5 81            [12]  863 	mov	sp,a
      0002CD D0 02            [24]  864 	pop	ar2
      0002CF D0 03            [24]  865 	pop	ar3
      0002D1 D0 06            [24]  866 	pop	ar6
      0002D3 D0 07            [24]  867 	pop	ar7
      0002D5 02 03 55         [24]  868 	ljmp	00109$
      0002D8                        869 00108$:
                                    870 ;	8052Explorer.c:220: } else if (indirizzo < 0x100) {
      0002D8 74 FF            [12]  871 	mov	a,#0x100 - 0x01
      0002DA 2D               [12]  872 	add	a,r5
      0002DB 40 27            [24]  873 	jc	00105$
                                    874 ;	8052Explorer.c:221: printf_tiny("00%x", indirizzo);
      0002DD C0 07            [24]  875 	push	ar7
      0002DF C0 06            [24]  876 	push	ar6
      0002E1 C0 03            [24]  877 	push	ar3
      0002E3 C0 02            [24]  878 	push	ar2
      0002E5 C0 06            [24]  879 	push	ar6
      0002E7 C0 07            [24]  880 	push	ar7
      0002E9 74 6A            [12]  881 	mov	a,#___str_76
      0002EB C0 E0            [24]  882 	push	acc
      0002ED 74 1A            [12]  883 	mov	a,#(___str_76 >> 8)
      0002EF C0 E0            [24]  884 	push	acc
      0002F1 12 10 B3         [24]  885 	lcall	_printf_tiny
      0002F4 E5 81            [12]  886 	mov	a,sp
      0002F6 24 FC            [12]  887 	add	a,#0xfc
      0002F8 F5 81            [12]  888 	mov	sp,a
      0002FA D0 02            [24]  889 	pop	ar2
      0002FC D0 03            [24]  890 	pop	ar3
      0002FE D0 06            [24]  891 	pop	ar6
      000300 D0 07            [24]  892 	pop	ar7
      000302 80 51            [24]  893 	sjmp	00109$
      000304                        894 00105$:
                                    895 ;	8052Explorer.c:222: } else if (indirizzo < 0x1000) {
      000304 74 F0            [12]  896 	mov	a,#0x100 - 0x10
      000306 2D               [12]  897 	add	a,r5
      000307 40 27            [24]  898 	jc	00102$
                                    899 ;	8052Explorer.c:223: printf_tiny("0%x", indirizzo);
      000309 C0 07            [24]  900 	push	ar7
      00030B C0 06            [24]  901 	push	ar6
      00030D C0 03            [24]  902 	push	ar3
      00030F C0 02            [24]  903 	push	ar2
      000311 C0 06            [24]  904 	push	ar6
      000313 C0 07            [24]  905 	push	ar7
      000315 74 6F            [12]  906 	mov	a,#___str_77
      000317 C0 E0            [24]  907 	push	acc
      000319 74 1A            [12]  908 	mov	a,#(___str_77 >> 8)
      00031B C0 E0            [24]  909 	push	acc
      00031D 12 10 B3         [24]  910 	lcall	_printf_tiny
      000320 E5 81            [12]  911 	mov	a,sp
      000322 24 FC            [12]  912 	add	a,#0xfc
      000324 F5 81            [12]  913 	mov	sp,a
      000326 D0 02            [24]  914 	pop	ar2
      000328 D0 03            [24]  915 	pop	ar3
      00032A D0 06            [24]  916 	pop	ar6
      00032C D0 07            [24]  917 	pop	ar7
      00032E 80 25            [24]  918 	sjmp	00109$
      000330                        919 00102$:
                                    920 ;	8052Explorer.c:225: printf_tiny("%x", indirizzo);
      000330 C0 07            [24]  921 	push	ar7
      000332 C0 06            [24]  922 	push	ar6
      000334 C0 03            [24]  923 	push	ar3
      000336 C0 02            [24]  924 	push	ar2
      000338 C0 06            [24]  925 	push	ar6
      00033A C0 07            [24]  926 	push	ar7
      00033C 74 73            [12]  927 	mov	a,#___str_78
      00033E C0 E0            [24]  928 	push	acc
      000340 74 1A            [12]  929 	mov	a,#(___str_78 >> 8)
      000342 C0 E0            [24]  930 	push	acc
      000344 12 10 B3         [24]  931 	lcall	_printf_tiny
      000347 E5 81            [12]  932 	mov	a,sp
      000349 24 FC            [12]  933 	add	a,#0xfc
      00034B F5 81            [12]  934 	mov	sp,a
      00034D D0 02            [24]  935 	pop	ar2
      00034F D0 03            [24]  936 	pop	ar3
      000351 D0 06            [24]  937 	pop	ar6
      000353 D0 07            [24]  938 	pop	ar7
      000355                        939 00109$:
                                    940 ;	8052Explorer.c:227: checksum += (indirizzo >> 8 ) & 0xFF ;
      000355 8F 05            [24]  941 	mov	ar5,r7
      000357 7C 00            [12]  942 	mov	r4,#0x00
      000359 ED               [12]  943 	mov	a,r5
      00035A 2A               [12]  944 	add	a,r2
      00035B FD               [12]  945 	mov	r5,a
      00035C EC               [12]  946 	mov	a,r4
      00035D 3B               [12]  947 	addc	a,r3
      00035E FC               [12]  948 	mov	r4,a
                                    949 ;	8052Explorer.c:228: checksum += (indirizzo & 0xFF);
      00035F 8E 02            [24]  950 	mov	ar2,r6
      000361 7B 00            [12]  951 	mov	r3,#0x00
      000363 EA               [12]  952 	mov	a,r2
      000364 2D               [12]  953 	add	a,r5
      000365 FD               [12]  954 	mov	r5,a
      000366 EB               [12]  955 	mov	a,r3
      000367 3C               [12]  956 	addc	a,r4
      000368 FC               [12]  957 	mov	r4,a
                                    958 ;	8052Explorer.c:229: printf_tiny("00");
      000369 C0 07            [24]  959 	push	ar7
      00036B C0 06            [24]  960 	push	ar6
      00036D C0 05            [24]  961 	push	ar5
      00036F C0 04            [24]  962 	push	ar4
      000371 74 76            [12]  963 	mov	a,#___str_79
      000373 C0 E0            [24]  964 	push	acc
      000375 74 1A            [12]  965 	mov	a,#(___str_79 >> 8)
      000377 C0 E0            [24]  966 	push	acc
      000379 12 10 B3         [24]  967 	lcall	_printf_tiny
      00037C 15 81            [12]  968 	dec	sp
      00037E 15 81            [12]  969 	dec	sp
      000380 D0 04            [24]  970 	pop	ar4
      000382 D0 05            [24]  971 	pop	ar5
      000384 D0 06            [24]  972 	pop	ar6
      000386 D0 07            [24]  973 	pop	ar7
                                    974 ;	8052Explorer.c:232: for (unsigned char posto = 0; posto < 16; posto++) {
      000388 7B 00            [12]  975 	mov	r3,#0x00
      00038A                        976 00117$:
      00038A BB 10 00         [24]  977 	cjne	r3,#0x10,00174$
      00038D                        978 00174$:
      00038D 40 03            [24]  979 	jc	00175$
      00038F 02 04 19         [24]  980 	ljmp	00112$
      000392                        981 00175$:
                                    982 ;	8052Explorer.c:233: unsigned char lettura = readEeprom(indirizzo+(unsigned short)posto);
      000392 8B 01            [24]  983 	mov	ar1,r3
      000394 7A 00            [12]  984 	mov	r2,#0x00
      000396 E9               [12]  985 	mov	a,r1
      000397 2E               [12]  986 	add	a,r6
      000398 F5 82            [12]  987 	mov	dpl,a
      00039A EA               [12]  988 	mov	a,r2
      00039B 3F               [12]  989 	addc	a,r7
      00039C F5 83            [12]  990 	mov	dph,a
      00039E C0 07            [24]  991 	push	ar7
      0003A0 C0 06            [24]  992 	push	ar6
      0003A2 C0 05            [24]  993 	push	ar5
      0003A4 C0 04            [24]  994 	push	ar4
      0003A6 C0 03            [24]  995 	push	ar3
      0003A8 12 0E CC         [24]  996 	lcall	_readEeprom
      0003AB AA 82            [24]  997 	mov	r2,dpl
      0003AD D0 03            [24]  998 	pop	ar3
      0003AF D0 04            [24]  999 	pop	ar4
      0003B1 D0 05            [24] 1000 	pop	ar5
      0003B3 D0 06            [24] 1001 	pop	ar6
      0003B5 D0 07            [24] 1002 	pop	ar7
                                   1003 ;	8052Explorer.c:234: if ( lettura < 0x10 ) {
      0003B7 BA 10 00         [24] 1004 	cjne	r2,#0x10,00176$
      0003BA                       1005 00176$:
      0003BA 50 1E            [24] 1006 	jnc	00111$
                                   1007 ;	8052Explorer.c:235: putchar('0');
      0003BC 90 00 30         [24] 1008 	mov	dptr,#0x0030
      0003BF C0 07            [24] 1009 	push	ar7
      0003C1 C0 06            [24] 1010 	push	ar6
      0003C3 C0 05            [24] 1011 	push	ar5
      0003C5 C0 04            [24] 1012 	push	ar4
      0003C7 C0 03            [24] 1013 	push	ar3
      0003C9 C0 02            [24] 1014 	push	ar2
      0003CB 12 0F F4         [24] 1015 	lcall	_putchar
      0003CE D0 02            [24] 1016 	pop	ar2
      0003D0 D0 03            [24] 1017 	pop	ar3
      0003D2 D0 04            [24] 1018 	pop	ar4
      0003D4 D0 05            [24] 1019 	pop	ar5
      0003D6 D0 06            [24] 1020 	pop	ar6
      0003D8 D0 07            [24] 1021 	pop	ar7
      0003DA                       1022 00111$:
                                   1023 ;	8052Explorer.c:237: printf_tiny("%x", lettura);
      0003DA 8A 01            [24] 1024 	mov	ar1,r2
      0003DC 7A 00            [12] 1025 	mov	r2,#0x00
      0003DE C0 07            [24] 1026 	push	ar7
      0003E0 C0 06            [24] 1027 	push	ar6
      0003E2 C0 05            [24] 1028 	push	ar5
      0003E4 C0 04            [24] 1029 	push	ar4
      0003E6 C0 03            [24] 1030 	push	ar3
      0003E8 C0 02            [24] 1031 	push	ar2
      0003EA C0 01            [24] 1032 	push	ar1
      0003EC C0 01            [24] 1033 	push	ar1
      0003EE C0 02            [24] 1034 	push	ar2
      0003F0 74 73            [12] 1035 	mov	a,#___str_78
      0003F2 C0 E0            [24] 1036 	push	acc
      0003F4 74 1A            [12] 1037 	mov	a,#(___str_78 >> 8)
      0003F6 C0 E0            [24] 1038 	push	acc
      0003F8 12 10 B3         [24] 1039 	lcall	_printf_tiny
      0003FB E5 81            [12] 1040 	mov	a,sp
      0003FD 24 FC            [12] 1041 	add	a,#0xfc
      0003FF F5 81            [12] 1042 	mov	sp,a
      000401 D0 01            [24] 1043 	pop	ar1
      000403 D0 02            [24] 1044 	pop	ar2
      000405 D0 03            [24] 1045 	pop	ar3
      000407 D0 04            [24] 1046 	pop	ar4
      000409 D0 05            [24] 1047 	pop	ar5
      00040B D0 06            [24] 1048 	pop	ar6
      00040D D0 07            [24] 1049 	pop	ar7
                                   1050 ;	8052Explorer.c:238: checksum += lettura;
      00040F E9               [12] 1051 	mov	a,r1
      000410 2D               [12] 1052 	add	a,r5
      000411 FD               [12] 1053 	mov	r5,a
      000412 EA               [12] 1054 	mov	a,r2
      000413 3C               [12] 1055 	addc	a,r4
      000414 FC               [12] 1056 	mov	r4,a
                                   1057 ;	8052Explorer.c:232: for (unsigned char posto = 0; posto < 16; posto++) {
      000415 0B               [12] 1058 	inc	r3
      000416 02 03 8A         [24] 1059 	ljmp	00117$
      000419                       1060 00112$:
                                   1061 ;	8052Explorer.c:241: checksum = ((~checksum) & 0xFF);
      000419 ED               [12] 1062 	mov	a,r5
      00041A F4               [12] 1063 	cpl	a
      00041B FD               [12] 1064 	mov	r5,a
      00041C EC               [12] 1065 	mov	a,r4
      00041D F4               [12] 1066 	cpl	a
      00041E 7C 00            [12] 1067 	mov	r4,#0x00
                                   1068 ;	8052Explorer.c:242: checksum++;
      000420 0D               [12] 1069 	inc	r5
      000421 BD 00 01         [24] 1070 	cjne	r5,#0x00,00178$
      000424 0C               [12] 1071 	inc	r4
      000425                       1072 00178$:
                                   1073 ;	8052Explorer.c:243: if ( (checksum & 0xFF) < 16 ) {
      000425 8D 02            [24] 1074 	mov	ar2,r5
      000427 7B 00            [12] 1075 	mov	r3,#0x00
      000429 C3               [12] 1076 	clr	c
      00042A EA               [12] 1077 	mov	a,r2
      00042B 94 10            [12] 1078 	subb	a,#0x10
      00042D EB               [12] 1079 	mov	a,r3
      00042E 94 00            [12] 1080 	subb	a,#0x00
      000430 50 16            [24] 1081 	jnc	00114$
                                   1082 ;	8052Explorer.c:244: putchar('0');
      000432 90 00 30         [24] 1083 	mov	dptr,#0x0030
      000435 C0 07            [24] 1084 	push	ar7
      000437 C0 06            [24] 1085 	push	ar6
      000439 C0 05            [24] 1086 	push	ar5
      00043B C0 04            [24] 1087 	push	ar4
      00043D 12 0F F4         [24] 1088 	lcall	_putchar
      000440 D0 04            [24] 1089 	pop	ar4
      000442 D0 05            [24] 1090 	pop	ar5
      000444 D0 06            [24] 1091 	pop	ar6
      000446 D0 07            [24] 1092 	pop	ar7
      000448                       1093 00114$:
                                   1094 ;	8052Explorer.c:246: printf_tiny("%x\r", checksum & 0xFF);
      000448 7C 00            [12] 1095 	mov	r4,#0x00
      00044A C0 07            [24] 1096 	push	ar7
      00044C C0 06            [24] 1097 	push	ar6
      00044E C0 05            [24] 1098 	push	ar5
      000450 C0 04            [24] 1099 	push	ar4
      000452 74 79            [12] 1100 	mov	a,#___str_80
      000454 C0 E0            [24] 1101 	push	acc
      000456 74 1A            [12] 1102 	mov	a,#(___str_80 >> 8)
      000458 C0 E0            [24] 1103 	push	acc
      00045A 12 10 B3         [24] 1104 	lcall	_printf_tiny
      00045D E5 81            [12] 1105 	mov	a,sp
      00045F 24 FC            [12] 1106 	add	a,#0xfc
      000461 F5 81            [12] 1107 	mov	sp,a
      000463 D0 06            [24] 1108 	pop	ar6
      000465 D0 07            [24] 1109 	pop	ar7
                                   1110 ;	8052Explorer.c:215: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      000467 8E 04            [24] 1111 	mov	ar4,r6
      000469 8F 05            [24] 1112 	mov	ar5,r7
      00046B 74 10            [12] 1113 	mov	a,#0x10
      00046D 2C               [12] 1114 	add	a,r4
      00046E FC               [12] 1115 	mov	r4,a
      00046F E4               [12] 1116 	clr	a
      000470 3D               [12] 1117 	addc	a,r5
      000471 FD               [12] 1118 	mov	r5,a
      000472 8C 06            [24] 1119 	mov	ar6,r4
      000474 8D 07            [24] 1120 	mov	ar7,r5
      000476 02 02 74         [24] 1121 	ljmp	00120$
      000479                       1122 00115$:
                                   1123 ;	8052Explorer.c:248: printf_tiny("%s", ":00000001FF");
      000479 74 80            [12] 1124 	mov	a,#___str_82
      00047B C0 E0            [24] 1125 	push	acc
      00047D 74 1A            [12] 1126 	mov	a,#(___str_82 >> 8)
      00047F C0 E0            [24] 1127 	push	acc
      000481 74 80            [12] 1128 	mov	a,#0x80
      000483 C0 E0            [24] 1129 	push	acc
      000485 74 7D            [12] 1130 	mov	a,#___str_81
      000487 C0 E0            [24] 1131 	push	acc
      000489 74 1A            [12] 1132 	mov	a,#(___str_81 >> 8)
      00048B C0 E0            [24] 1133 	push	acc
      00048D 12 10 B3         [24] 1134 	lcall	_printf_tiny
      000490 E5 81            [12] 1135 	mov	a,sp
      000492 24 FB            [12] 1136 	add	a,#0xfb
      000494 F5 81            [12] 1137 	mov	sp,a
                                   1138 ;	8052Explorer.c:249: putchar('\r');
      000496 90 00 0D         [24] 1139 	mov	dptr,#0x000d
      000499 12 0F F4         [24] 1140 	lcall	_putchar
                                   1141 ;	8052Explorer.c:250: putchar('\r');
      00049C 90 00 0D         [24] 1142 	mov	dptr,#0x000d
                                   1143 ;	8052Explorer.c:252: }
      00049F 02 0F F4         [24] 1144 	ljmp	_putchar
                                   1145 ;------------------------------------------------------------
                                   1146 ;Allocation info for local variables in function 'dumpCODE'
                                   1147 ;------------------------------------------------------------
                                   1148 ;puntatore                 Allocated to registers 
                                   1149 ;indirizzo                 Allocated with name '_dumpCODE_indirizzo_131072_56'
                                   1150 ;posto                     Allocated with name '_dumpCODE_posto_262144_62'
                                   1151 ;posto                     Allocated with name '_dumpCODE_posto_262144_65'
                                   1152 ;------------------------------------------------------------
                                   1153 ;	8052Explorer.c:255: void dumpCODE () {
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function dumpCODE
                                   1156 ;	-----------------------------------------
      0004A2                       1157 _dumpCODE:
                                   1158 ;	8052Explorer.c:256: unsigned char *puntatore = codice;
      0004A2 7D 00            [12] 1159 	mov	r5,#_codice
      0004A4 7E 00            [12] 1160 	mov	r6,#(_codice >> 8)
      0004A6 7F 80            [12] 1161 	mov	r7,#0x80
                                   1162 ;	8052Explorer.c:258: puts("Dumping code:");
      0004A8 90 1A 8C         [24] 1163 	mov	dptr,#___str_83
      0004AB 75 F0 80         [24] 1164 	mov	b,#0x80
      0004AE C0 07            [24] 1165 	push	ar7
      0004B0 C0 06            [24] 1166 	push	ar6
      0004B2 C0 05            [24] 1167 	push	ar5
      0004B4 12 12 09         [24] 1168 	lcall	_puts
      0004B7 D0 05            [24] 1169 	pop	ar5
      0004B9 D0 06            [24] 1170 	pop	ar6
      0004BB D0 07            [24] 1171 	pop	ar7
                                   1172 ;	8052Explorer.c:259: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0004BD E4               [12] 1173 	clr	a
      0004BE F5 22            [12] 1174 	mov	_dumpCODE_indirizzo_131072_56,a
      0004C0 F5 23            [12] 1175 	mov	(_dumpCODE_indirizzo_131072_56 + 1),a
      0004C2                       1176 00126$:
      0004C2 C3               [12] 1177 	clr	c
      0004C3 74 FF            [12] 1178 	mov	a,#0xff
      0004C5 95 22            [12] 1179 	subb	a,_dumpCODE_indirizzo_131072_56
      0004C7 74 1F            [12] 1180 	mov	a,#0x1f
      0004C9 95 23            [12] 1181 	subb	a,(_dumpCODE_indirizzo_131072_56 + 1)
      0004CB 50 03            [24] 1182 	jnc	00188$
      0004CD 02 06 90         [24] 1183 	ljmp	00118$
      0004D0                       1184 00188$:
                                   1185 ;	8052Explorer.c:260: if (indirizzo < 0x10) {
      0004D0 C3               [12] 1186 	clr	c
      0004D1 E5 22            [12] 1187 	mov	a,_dumpCODE_indirizzo_131072_56
      0004D3 94 10            [12] 1188 	subb	a,#0x10
      0004D5 E5 23            [12] 1189 	mov	a,(_dumpCODE_indirizzo_131072_56 + 1)
      0004D7 94 00            [12] 1190 	subb	a,#0x00
      0004D9 50 23            [24] 1191 	jnc	00108$
                                   1192 ;	8052Explorer.c:261: printf_tiny("000%x  ", indirizzo);
      0004DB C0 07            [24] 1193 	push	ar7
      0004DD C0 06            [24] 1194 	push	ar6
      0004DF C0 05            [24] 1195 	push	ar5
      0004E1 C0 22            [24] 1196 	push	_dumpCODE_indirizzo_131072_56
      0004E3 C0 23            [24] 1197 	push	(_dumpCODE_indirizzo_131072_56 + 1)
      0004E5 74 16            [12] 1198 	mov	a,#___str_66
      0004E7 C0 E0            [24] 1199 	push	acc
      0004E9 74 1A            [12] 1200 	mov	a,#(___str_66 >> 8)
      0004EB C0 E0            [24] 1201 	push	acc
      0004ED 12 10 B3         [24] 1202 	lcall	_printf_tiny
      0004F0 E5 81            [12] 1203 	mov	a,sp
      0004F2 24 FC            [12] 1204 	add	a,#0xfc
      0004F4 F5 81            [12] 1205 	mov	sp,a
      0004F6 D0 05            [24] 1206 	pop	ar5
      0004F8 D0 06            [24] 1207 	pop	ar6
      0004FA D0 07            [24] 1208 	pop	ar7
      0004FC 80 73            [24] 1209 	sjmp	00136$
      0004FE                       1210 00108$:
                                   1211 ;	8052Explorer.c:262: } else if (indirizzo < 0x100) {
      0004FE 74 FF            [12] 1212 	mov	a,#0x100 - 0x01
      000500 25 23            [12] 1213 	add	a,(_dumpCODE_indirizzo_131072_56 + 1)
      000502 40 23            [24] 1214 	jc	00105$
                                   1215 ;	8052Explorer.c:263: printf_tiny("00%x  ", indirizzo);
      000504 C0 07            [24] 1216 	push	ar7
      000506 C0 06            [24] 1217 	push	ar6
      000508 C0 05            [24] 1218 	push	ar5
      00050A C0 22            [24] 1219 	push	_dumpCODE_indirizzo_131072_56
      00050C C0 23            [24] 1220 	push	(_dumpCODE_indirizzo_131072_56 + 1)
      00050E 74 1E            [12] 1221 	mov	a,#___str_67
      000510 C0 E0            [24] 1222 	push	acc
      000512 74 1A            [12] 1223 	mov	a,#(___str_67 >> 8)
      000514 C0 E0            [24] 1224 	push	acc
      000516 12 10 B3         [24] 1225 	lcall	_printf_tiny
      000519 E5 81            [12] 1226 	mov	a,sp
      00051B 24 FC            [12] 1227 	add	a,#0xfc
      00051D F5 81            [12] 1228 	mov	sp,a
      00051F D0 05            [24] 1229 	pop	ar5
      000521 D0 06            [24] 1230 	pop	ar6
      000523 D0 07            [24] 1231 	pop	ar7
      000525 80 4A            [24] 1232 	sjmp	00136$
      000527                       1233 00105$:
                                   1234 ;	8052Explorer.c:264: } else if (indirizzo < 0x1000) {
      000527 74 F0            [12] 1235 	mov	a,#0x100 - 0x10
      000529 25 23            [12] 1236 	add	a,(_dumpCODE_indirizzo_131072_56 + 1)
      00052B 40 23            [24] 1237 	jc	00102$
                                   1238 ;	8052Explorer.c:265: printf_tiny("0%x  ", indirizzo);
      00052D C0 07            [24] 1239 	push	ar7
      00052F C0 06            [24] 1240 	push	ar6
      000531 C0 05            [24] 1241 	push	ar5
      000533 C0 22            [24] 1242 	push	_dumpCODE_indirizzo_131072_56
      000535 C0 23            [24] 1243 	push	(_dumpCODE_indirizzo_131072_56 + 1)
      000537 74 25            [12] 1244 	mov	a,#___str_68
      000539 C0 E0            [24] 1245 	push	acc
      00053B 74 1A            [12] 1246 	mov	a,#(___str_68 >> 8)
      00053D C0 E0            [24] 1247 	push	acc
      00053F 12 10 B3         [24] 1248 	lcall	_printf_tiny
      000542 E5 81            [12] 1249 	mov	a,sp
      000544 24 FC            [12] 1250 	add	a,#0xfc
      000546 F5 81            [12] 1251 	mov	sp,a
      000548 D0 05            [24] 1252 	pop	ar5
      00054A D0 06            [24] 1253 	pop	ar6
      00054C D0 07            [24] 1254 	pop	ar7
      00054E 80 21            [24] 1255 	sjmp	00136$
      000550                       1256 00102$:
                                   1257 ;	8052Explorer.c:267: printf_tiny("%x  ", indirizzo);
      000550 C0 07            [24] 1258 	push	ar7
      000552 C0 06            [24] 1259 	push	ar6
      000554 C0 05            [24] 1260 	push	ar5
      000556 C0 22            [24] 1261 	push	_dumpCODE_indirizzo_131072_56
      000558 C0 23            [24] 1262 	push	(_dumpCODE_indirizzo_131072_56 + 1)
      00055A 74 2B            [12] 1263 	mov	a,#___str_69
      00055C C0 E0            [24] 1264 	push	acc
      00055E 74 1A            [12] 1265 	mov	a,#(___str_69 >> 8)
      000560 C0 E0            [24] 1266 	push	acc
      000562 12 10 B3         [24] 1267 	lcall	_printf_tiny
      000565 E5 81            [12] 1268 	mov	a,sp
      000567 24 FC            [12] 1269 	add	a,#0xfc
      000569 F5 81            [12] 1270 	mov	sp,a
      00056B D0 05            [24] 1271 	pop	ar5
      00056D D0 06            [24] 1272 	pop	ar6
      00056F D0 07            [24] 1273 	pop	ar7
                                   1274 ;	8052Explorer.c:269: for (unsigned int posto = 0; posto < 16; posto++ ) {
      000571                       1275 00136$:
      000571 8D 00            [24] 1276 	mov	ar0,r5
      000573 8E 01            [24] 1277 	mov	ar1,r6
      000575 8F 02            [24] 1278 	mov	ar2,r7
      000577 E4               [12] 1279 	clr	a
      000578 F5 24            [12] 1280 	mov	_dumpCODE_posto_262144_62,a
      00057A F5 25            [12] 1281 	mov	(_dumpCODE_posto_262144_62 + 1),a
      00057C                       1282 00120$:
      00057C C3               [12] 1283 	clr	c
      00057D E5 24            [12] 1284 	mov	a,_dumpCODE_posto_262144_62
      00057F 94 10            [12] 1285 	subb	a,#0x10
      000581 E5 25            [12] 1286 	mov	a,(_dumpCODE_posto_262144_62 + 1)
      000583 94 00            [12] 1287 	subb	a,#0x00
      000585 50 5D            [24] 1288 	jnc	00112$
                                   1289 ;	8052Explorer.c:270: if ( *puntatore < 16 ) {
      000587 88 82            [24] 1290 	mov	dpl,r0
      000589 89 83            [24] 1291 	mov	dph,r1
      00058B 8A F0            [24] 1292 	mov	b,r2
      00058D 12 12 49         [24] 1293 	lcall	__gptrget
      000590 FC               [12] 1294 	mov	r4,a
      000591 BC 10 00         [24] 1295 	cjne	r4,#0x10,00193$
      000594                       1296 00193$:
      000594 50 12            [24] 1297 	jnc	00111$
                                   1298 ;	8052Explorer.c:271: putchar('0');
      000596 90 00 30         [24] 1299 	mov	dptr,#0x0030
      000599 C0 02            [24] 1300 	push	ar2
      00059B C0 01            [24] 1301 	push	ar1
      00059D C0 00            [24] 1302 	push	ar0
      00059F 12 0F F4         [24] 1303 	lcall	_putchar
      0005A2 D0 00            [24] 1304 	pop	ar0
      0005A4 D0 01            [24] 1305 	pop	ar1
      0005A6 D0 02            [24] 1306 	pop	ar2
      0005A8                       1307 00111$:
                                   1308 ;	8052Explorer.c:273: printf_tiny("%x ", *puntatore);
      0005A8 88 82            [24] 1309 	mov	dpl,r0
      0005AA 89 83            [24] 1310 	mov	dph,r1
      0005AC 8A F0            [24] 1311 	mov	b,r2
      0005AE 12 12 49         [24] 1312 	lcall	__gptrget
      0005B1 FC               [12] 1313 	mov	r4,a
      0005B2 A3               [24] 1314 	inc	dptr
      0005B3 A8 82            [24] 1315 	mov	r0,dpl
      0005B5 A9 83            [24] 1316 	mov	r1,dph
      0005B7 7B 00            [12] 1317 	mov	r3,#0x00
      0005B9 C0 02            [24] 1318 	push	ar2
      0005BB C0 01            [24] 1319 	push	ar1
      0005BD C0 00            [24] 1320 	push	ar0
      0005BF C0 04            [24] 1321 	push	ar4
      0005C1 C0 03            [24] 1322 	push	ar3
      0005C3 74 30            [12] 1323 	mov	a,#___str_70
      0005C5 C0 E0            [24] 1324 	push	acc
      0005C7 74 1A            [12] 1325 	mov	a,#(___str_70 >> 8)
      0005C9 C0 E0            [24] 1326 	push	acc
      0005CB 12 10 B3         [24] 1327 	lcall	_printf_tiny
      0005CE E5 81            [12] 1328 	mov	a,sp
      0005D0 24 FC            [12] 1329 	add	a,#0xfc
      0005D2 F5 81            [12] 1330 	mov	sp,a
      0005D4 D0 00            [24] 1331 	pop	ar0
      0005D6 D0 01            [24] 1332 	pop	ar1
      0005D8 D0 02            [24] 1333 	pop	ar2
                                   1334 ;	8052Explorer.c:274: puntatore++;
                                   1335 ;	8052Explorer.c:269: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0005DA 05 24            [12] 1336 	inc	_dumpCODE_posto_262144_62
      0005DC E4               [12] 1337 	clr	a
      0005DD B5 24 9C         [24] 1338 	cjne	a,_dumpCODE_posto_262144_62,00120$
      0005E0 05 25            [12] 1339 	inc	(_dumpCODE_posto_262144_62 + 1)
      0005E2 80 98            [24] 1340 	sjmp	00120$
      0005E4                       1341 00112$:
                                   1342 ;	8052Explorer.c:276: printf_tiny(" |");
      0005E4 C0 02            [24] 1343 	push	ar2
      0005E6 C0 01            [24] 1344 	push	ar1
      0005E8 C0 00            [24] 1345 	push	ar0
      0005EA 74 34            [12] 1346 	mov	a,#___str_71
      0005EC C0 E0            [24] 1347 	push	acc
      0005EE 74 1A            [12] 1348 	mov	a,#(___str_71 >> 8)
      0005F0 C0 E0            [24] 1349 	push	acc
      0005F2 12 10 B3         [24] 1350 	lcall	_printf_tiny
      0005F5 15 81            [12] 1351 	dec	sp
      0005F7 15 81            [12] 1352 	dec	sp
      0005F9 D0 00            [24] 1353 	pop	ar0
      0005FB D0 01            [24] 1354 	pop	ar1
      0005FD D0 02            [24] 1355 	pop	ar2
                                   1356 ;	8052Explorer.c:277: puntatore -= 16;
      0005FF E8               [12] 1357 	mov	a,r0
      000600 24 F0            [12] 1358 	add	a,#0xf0
      000602 FC               [12] 1359 	mov	r4,a
      000603 E9               [12] 1360 	mov	a,r1
      000604 34 FF            [12] 1361 	addc	a,#0xff
      000606 FB               [12] 1362 	mov	r3,a
                                   1363 ;	8052Explorer.c:278: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000607 75 26 00         [24] 1364 	mov	_dumpCODE_posto_262144_65,#0x00
      00060A                       1365 00123$:
      00060A 74 F0            [12] 1366 	mov	a,#0x100 - 0x10
      00060C 25 26            [12] 1367 	add	a,_dumpCODE_posto_262144_65
      00060E 40 54            [24] 1368 	jc	00142$
                                   1369 ;	8052Explorer.c:279: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      000610 8C 82            [24] 1370 	mov	dpl,r4
      000612 8B 83            [24] 1371 	mov	dph,r3
      000614 8A F0            [24] 1372 	mov	b,r2
      000616 12 12 49         [24] 1373 	lcall	__gptrget
      000619 F8               [12] 1374 	mov	r0,a
      00061A B8 20 00         [24] 1375 	cjne	r0,#0x20,00197$
      00061D                       1376 00197$:
      00061D 40 05            [24] 1377 	jc	00113$
      00061F E8               [12] 1378 	mov	a,r0
      000620 24 81            [12] 1379 	add	a,#0xff - 0x7e
      000622 50 14            [24] 1380 	jnc	00114$
      000624                       1381 00113$:
                                   1382 ;	8052Explorer.c:280: putchar('.');
      000624 90 00 2E         [24] 1383 	mov	dptr,#0x002e
      000627 C0 04            [24] 1384 	push	ar4
      000629 C0 03            [24] 1385 	push	ar3
      00062B C0 02            [24] 1386 	push	ar2
      00062D 12 0F F4         [24] 1387 	lcall	_putchar
      000630 D0 02            [24] 1388 	pop	ar2
      000632 D0 03            [24] 1389 	pop	ar3
      000634 D0 04            [24] 1390 	pop	ar4
      000636 80 23            [24] 1391 	sjmp	00115$
      000638                       1392 00114$:
                                   1393 ;	8052Explorer.c:282: printf_tiny("%c", *puntatore);
      000638 79 00            [12] 1394 	mov	r1,#0x00
      00063A C0 04            [24] 1395 	push	ar4
      00063C C0 03            [24] 1396 	push	ar3
      00063E C0 02            [24] 1397 	push	ar2
      000640 C0 00            [24] 1398 	push	ar0
      000642 C0 01            [24] 1399 	push	ar1
      000644 74 37            [12] 1400 	mov	a,#___str_72
      000646 C0 E0            [24] 1401 	push	acc
      000648 74 1A            [12] 1402 	mov	a,#(___str_72 >> 8)
      00064A C0 E0            [24] 1403 	push	acc
      00064C 12 10 B3         [24] 1404 	lcall	_printf_tiny
      00064F E5 81            [12] 1405 	mov	a,sp
      000651 24 FC            [12] 1406 	add	a,#0xfc
      000653 F5 81            [12] 1407 	mov	sp,a
      000655 D0 02            [24] 1408 	pop	ar2
      000657 D0 03            [24] 1409 	pop	ar3
      000659 D0 04            [24] 1410 	pop	ar4
      00065B                       1411 00115$:
                                   1412 ;	8052Explorer.c:284: puntatore++;
      00065B 0C               [12] 1413 	inc	r4
      00065C BC 00 01         [24] 1414 	cjne	r4,#0x00,00200$
      00065F 0B               [12] 1415 	inc	r3
      000660                       1416 00200$:
                                   1417 ;	8052Explorer.c:278: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000660 05 26            [12] 1418 	inc	_dumpCODE_posto_262144_65
      000662 80 A6            [24] 1419 	sjmp	00123$
      000664                       1420 00142$:
      000664 8C 05            [24] 1421 	mov	ar5,r4
      000666 8B 06            [24] 1422 	mov	ar6,r3
      000668 8A 07            [24] 1423 	mov	ar7,r2
                                   1424 ;	8052Explorer.c:286: putchar('|');
      00066A 90 00 7C         [24] 1425 	mov	dptr,#0x007c
      00066D C0 07            [24] 1426 	push	ar7
      00066F C0 06            [24] 1427 	push	ar6
      000671 C0 05            [24] 1428 	push	ar5
      000673 12 0F F4         [24] 1429 	lcall	_putchar
                                   1430 ;	8052Explorer.c:287: putchar('\r');
      000676 90 00 0D         [24] 1431 	mov	dptr,#0x000d
      000679 12 0F F4         [24] 1432 	lcall	_putchar
      00067C D0 05            [24] 1433 	pop	ar5
      00067E D0 06            [24] 1434 	pop	ar6
      000680 D0 07            [24] 1435 	pop	ar7
                                   1436 ;	8052Explorer.c:259: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      000682 74 10            [12] 1437 	mov	a,#0x10
      000684 25 22            [12] 1438 	add	a,_dumpCODE_indirizzo_131072_56
      000686 F5 22            [12] 1439 	mov	_dumpCODE_indirizzo_131072_56,a
      000688 E4               [12] 1440 	clr	a
      000689 35 23            [12] 1441 	addc	a,(_dumpCODE_indirizzo_131072_56 + 1)
      00068B F5 23            [12] 1442 	mov	(_dumpCODE_indirizzo_131072_56 + 1),a
      00068D 02 04 C2         [24] 1443 	ljmp	00126$
      000690                       1444 00118$:
                                   1445 ;	8052Explorer.c:289: putchar('\r');
      000690 90 00 0D         [24] 1446 	mov	dptr,#0x000d
                                   1447 ;	8052Explorer.c:291: }
      000693 02 0F F4         [24] 1448 	ljmp	_putchar
                                   1449 ;------------------------------------------------------------
                                   1450 ;Allocation info for local variables in function 'dumpRAM'
                                   1451 ;------------------------------------------------------------
                                   1452 ;puntatore                 Allocated to registers 
                                   1453 ;indirizzo                 Allocated with name '_dumpRAM_indirizzo_131072_70'
                                   1454 ;posto                     Allocated with name '_dumpRAM_posto_262144_76'
                                   1455 ;posto                     Allocated with name '_dumpRAM_posto_262144_79'
                                   1456 ;------------------------------------------------------------
                                   1457 ;	8052Explorer.c:293: void dumpRAM () {
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function dumpRAM
                                   1460 ;	-----------------------------------------
      000696                       1461 _dumpRAM:
                                   1462 ;	8052Explorer.c:294: unsigned char *puntatore = dati;
      000696 7D 00            [12] 1463 	mov	r5,#_dati
      000698 7E 00            [12] 1464 	mov	r6,#0x00
      00069A 7F 40            [12] 1465 	mov	r7,#0x40
                                   1466 ;	8052Explorer.c:296: puts("Dumping ram memory:");
      00069C 90 1A 9A         [24] 1467 	mov	dptr,#___str_84
      00069F 75 F0 80         [24] 1468 	mov	b,#0x80
      0006A2 C0 07            [24] 1469 	push	ar7
      0006A4 C0 06            [24] 1470 	push	ar6
      0006A6 C0 05            [24] 1471 	push	ar5
      0006A8 12 12 09         [24] 1472 	lcall	_puts
      0006AB D0 05            [24] 1473 	pop	ar5
      0006AD D0 06            [24] 1474 	pop	ar6
      0006AF D0 07            [24] 1475 	pop	ar7
                                   1476 ;	8052Explorer.c:297: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
      0006B1 E4               [12] 1477 	clr	a
      0006B2 F5 27            [12] 1478 	mov	_dumpRAM_indirizzo_131072_70,a
      0006B4 F5 28            [12] 1479 	mov	(_dumpRAM_indirizzo_131072_70 + 1),a
      0006B6                       1480 00126$:
      0006B6 C3               [12] 1481 	clr	c
      0006B7 74 FF            [12] 1482 	mov	a,#0xff
      0006B9 95 27            [12] 1483 	subb	a,_dumpRAM_indirizzo_131072_70
      0006BB E4               [12] 1484 	clr	a
      0006BC 95 28            [12] 1485 	subb	a,(_dumpRAM_indirizzo_131072_70 + 1)
      0006BE 50 03            [24] 1486 	jnc	00188$
      0006C0 02 08 83         [24] 1487 	ljmp	00118$
      0006C3                       1488 00188$:
                                   1489 ;	8052Explorer.c:298: if (indirizzo < 0x10) {
      0006C3 C3               [12] 1490 	clr	c
      0006C4 E5 27            [12] 1491 	mov	a,_dumpRAM_indirizzo_131072_70
      0006C6 94 10            [12] 1492 	subb	a,#0x10
      0006C8 E5 28            [12] 1493 	mov	a,(_dumpRAM_indirizzo_131072_70 + 1)
      0006CA 94 00            [12] 1494 	subb	a,#0x00
      0006CC 50 23            [24] 1495 	jnc	00108$
                                   1496 ;	8052Explorer.c:299: printf_tiny("000%x  ", indirizzo);
      0006CE C0 07            [24] 1497 	push	ar7
      0006D0 C0 06            [24] 1498 	push	ar6
      0006D2 C0 05            [24] 1499 	push	ar5
      0006D4 C0 27            [24] 1500 	push	_dumpRAM_indirizzo_131072_70
      0006D6 C0 28            [24] 1501 	push	(_dumpRAM_indirizzo_131072_70 + 1)
      0006D8 74 16            [12] 1502 	mov	a,#___str_66
      0006DA C0 E0            [24] 1503 	push	acc
      0006DC 74 1A            [12] 1504 	mov	a,#(___str_66 >> 8)
      0006DE C0 E0            [24] 1505 	push	acc
      0006E0 12 10 B3         [24] 1506 	lcall	_printf_tiny
      0006E3 E5 81            [12] 1507 	mov	a,sp
      0006E5 24 FC            [12] 1508 	add	a,#0xfc
      0006E7 F5 81            [12] 1509 	mov	sp,a
      0006E9 D0 05            [24] 1510 	pop	ar5
      0006EB D0 06            [24] 1511 	pop	ar6
      0006ED D0 07            [24] 1512 	pop	ar7
      0006EF 80 73            [24] 1513 	sjmp	00136$
      0006F1                       1514 00108$:
                                   1515 ;	8052Explorer.c:300: } else if (indirizzo < 0x100) {
      0006F1 74 FF            [12] 1516 	mov	a,#0x100 - 0x01
      0006F3 25 28            [12] 1517 	add	a,(_dumpRAM_indirizzo_131072_70 + 1)
      0006F5 40 23            [24] 1518 	jc	00105$
                                   1519 ;	8052Explorer.c:301: printf_tiny("00%x  ", indirizzo);
      0006F7 C0 07            [24] 1520 	push	ar7
      0006F9 C0 06            [24] 1521 	push	ar6
      0006FB C0 05            [24] 1522 	push	ar5
      0006FD C0 27            [24] 1523 	push	_dumpRAM_indirizzo_131072_70
      0006FF C0 28            [24] 1524 	push	(_dumpRAM_indirizzo_131072_70 + 1)
      000701 74 1E            [12] 1525 	mov	a,#___str_67
      000703 C0 E0            [24] 1526 	push	acc
      000705 74 1A            [12] 1527 	mov	a,#(___str_67 >> 8)
      000707 C0 E0            [24] 1528 	push	acc
      000709 12 10 B3         [24] 1529 	lcall	_printf_tiny
      00070C E5 81            [12] 1530 	mov	a,sp
      00070E 24 FC            [12] 1531 	add	a,#0xfc
      000710 F5 81            [12] 1532 	mov	sp,a
      000712 D0 05            [24] 1533 	pop	ar5
      000714 D0 06            [24] 1534 	pop	ar6
      000716 D0 07            [24] 1535 	pop	ar7
      000718 80 4A            [24] 1536 	sjmp	00136$
      00071A                       1537 00105$:
                                   1538 ;	8052Explorer.c:302: } else if (indirizzo < 0x1000) {
      00071A 74 F0            [12] 1539 	mov	a,#0x100 - 0x10
      00071C 25 28            [12] 1540 	add	a,(_dumpRAM_indirizzo_131072_70 + 1)
      00071E 40 23            [24] 1541 	jc	00102$
                                   1542 ;	8052Explorer.c:303: printf_tiny("0%x  ", indirizzo);
      000720 C0 07            [24] 1543 	push	ar7
      000722 C0 06            [24] 1544 	push	ar6
      000724 C0 05            [24] 1545 	push	ar5
      000726 C0 27            [24] 1546 	push	_dumpRAM_indirizzo_131072_70
      000728 C0 28            [24] 1547 	push	(_dumpRAM_indirizzo_131072_70 + 1)
      00072A 74 25            [12] 1548 	mov	a,#___str_68
      00072C C0 E0            [24] 1549 	push	acc
      00072E 74 1A            [12] 1550 	mov	a,#(___str_68 >> 8)
      000730 C0 E0            [24] 1551 	push	acc
      000732 12 10 B3         [24] 1552 	lcall	_printf_tiny
      000735 E5 81            [12] 1553 	mov	a,sp
      000737 24 FC            [12] 1554 	add	a,#0xfc
      000739 F5 81            [12] 1555 	mov	sp,a
      00073B D0 05            [24] 1556 	pop	ar5
      00073D D0 06            [24] 1557 	pop	ar6
      00073F D0 07            [24] 1558 	pop	ar7
      000741 80 21            [24] 1559 	sjmp	00136$
      000743                       1560 00102$:
                                   1561 ;	8052Explorer.c:305: printf_tiny("%x  ", indirizzo);
      000743 C0 07            [24] 1562 	push	ar7
      000745 C0 06            [24] 1563 	push	ar6
      000747 C0 05            [24] 1564 	push	ar5
      000749 C0 27            [24] 1565 	push	_dumpRAM_indirizzo_131072_70
      00074B C0 28            [24] 1566 	push	(_dumpRAM_indirizzo_131072_70 + 1)
      00074D 74 2B            [12] 1567 	mov	a,#___str_69
      00074F C0 E0            [24] 1568 	push	acc
      000751 74 1A            [12] 1569 	mov	a,#(___str_69 >> 8)
      000753 C0 E0            [24] 1570 	push	acc
      000755 12 10 B3         [24] 1571 	lcall	_printf_tiny
      000758 E5 81            [12] 1572 	mov	a,sp
      00075A 24 FC            [12] 1573 	add	a,#0xfc
      00075C F5 81            [12] 1574 	mov	sp,a
      00075E D0 05            [24] 1575 	pop	ar5
      000760 D0 06            [24] 1576 	pop	ar6
      000762 D0 07            [24] 1577 	pop	ar7
                                   1578 ;	8052Explorer.c:307: for (unsigned int posto = 0; posto < 16; posto++ ) {
      000764                       1579 00136$:
      000764 8D 00            [24] 1580 	mov	ar0,r5
      000766 8E 01            [24] 1581 	mov	ar1,r6
      000768 8F 02            [24] 1582 	mov	ar2,r7
      00076A E4               [12] 1583 	clr	a
      00076B F5 29            [12] 1584 	mov	_dumpRAM_posto_262144_76,a
      00076D F5 2A            [12] 1585 	mov	(_dumpRAM_posto_262144_76 + 1),a
      00076F                       1586 00120$:
      00076F C3               [12] 1587 	clr	c
      000770 E5 29            [12] 1588 	mov	a,_dumpRAM_posto_262144_76
      000772 94 10            [12] 1589 	subb	a,#0x10
      000774 E5 2A            [12] 1590 	mov	a,(_dumpRAM_posto_262144_76 + 1)
      000776 94 00            [12] 1591 	subb	a,#0x00
      000778 50 5D            [24] 1592 	jnc	00112$
                                   1593 ;	8052Explorer.c:308: if ( *puntatore < 16 ) {
      00077A 88 82            [24] 1594 	mov	dpl,r0
      00077C 89 83            [24] 1595 	mov	dph,r1
      00077E 8A F0            [24] 1596 	mov	b,r2
      000780 12 12 49         [24] 1597 	lcall	__gptrget
      000783 FC               [12] 1598 	mov	r4,a
      000784 BC 10 00         [24] 1599 	cjne	r4,#0x10,00193$
      000787                       1600 00193$:
      000787 50 12            [24] 1601 	jnc	00111$
                                   1602 ;	8052Explorer.c:309: putchar('0');
      000789 90 00 30         [24] 1603 	mov	dptr,#0x0030
      00078C C0 02            [24] 1604 	push	ar2
      00078E C0 01            [24] 1605 	push	ar1
      000790 C0 00            [24] 1606 	push	ar0
      000792 12 0F F4         [24] 1607 	lcall	_putchar
      000795 D0 00            [24] 1608 	pop	ar0
      000797 D0 01            [24] 1609 	pop	ar1
      000799 D0 02            [24] 1610 	pop	ar2
      00079B                       1611 00111$:
                                   1612 ;	8052Explorer.c:311: printf_tiny("%x ", *puntatore);
      00079B 88 82            [24] 1613 	mov	dpl,r0
      00079D 89 83            [24] 1614 	mov	dph,r1
      00079F 8A F0            [24] 1615 	mov	b,r2
      0007A1 12 12 49         [24] 1616 	lcall	__gptrget
      0007A4 FC               [12] 1617 	mov	r4,a
      0007A5 A3               [24] 1618 	inc	dptr
      0007A6 A8 82            [24] 1619 	mov	r0,dpl
      0007A8 A9 83            [24] 1620 	mov	r1,dph
      0007AA 7B 00            [12] 1621 	mov	r3,#0x00
      0007AC C0 02            [24] 1622 	push	ar2
      0007AE C0 01            [24] 1623 	push	ar1
      0007B0 C0 00            [24] 1624 	push	ar0
      0007B2 C0 04            [24] 1625 	push	ar4
      0007B4 C0 03            [24] 1626 	push	ar3
      0007B6 74 30            [12] 1627 	mov	a,#___str_70
      0007B8 C0 E0            [24] 1628 	push	acc
      0007BA 74 1A            [12] 1629 	mov	a,#(___str_70 >> 8)
      0007BC C0 E0            [24] 1630 	push	acc
      0007BE 12 10 B3         [24] 1631 	lcall	_printf_tiny
      0007C1 E5 81            [12] 1632 	mov	a,sp
      0007C3 24 FC            [12] 1633 	add	a,#0xfc
      0007C5 F5 81            [12] 1634 	mov	sp,a
      0007C7 D0 00            [24] 1635 	pop	ar0
      0007C9 D0 01            [24] 1636 	pop	ar1
      0007CB D0 02            [24] 1637 	pop	ar2
                                   1638 ;	8052Explorer.c:312: puntatore++;
                                   1639 ;	8052Explorer.c:307: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0007CD 05 29            [12] 1640 	inc	_dumpRAM_posto_262144_76
      0007CF E4               [12] 1641 	clr	a
      0007D0 B5 29 9C         [24] 1642 	cjne	a,_dumpRAM_posto_262144_76,00120$
      0007D3 05 2A            [12] 1643 	inc	(_dumpRAM_posto_262144_76 + 1)
      0007D5 80 98            [24] 1644 	sjmp	00120$
      0007D7                       1645 00112$:
                                   1646 ;	8052Explorer.c:314: printf_tiny(" |");
      0007D7 C0 02            [24] 1647 	push	ar2
      0007D9 C0 01            [24] 1648 	push	ar1
      0007DB C0 00            [24] 1649 	push	ar0
      0007DD 74 34            [12] 1650 	mov	a,#___str_71
      0007DF C0 E0            [24] 1651 	push	acc
      0007E1 74 1A            [12] 1652 	mov	a,#(___str_71 >> 8)
      0007E3 C0 E0            [24] 1653 	push	acc
      0007E5 12 10 B3         [24] 1654 	lcall	_printf_tiny
      0007E8 15 81            [12] 1655 	dec	sp
      0007EA 15 81            [12] 1656 	dec	sp
      0007EC D0 00            [24] 1657 	pop	ar0
      0007EE D0 01            [24] 1658 	pop	ar1
      0007F0 D0 02            [24] 1659 	pop	ar2
                                   1660 ;	8052Explorer.c:315: puntatore -= 16;
      0007F2 E8               [12] 1661 	mov	a,r0
      0007F3 24 F0            [12] 1662 	add	a,#0xf0
      0007F5 FC               [12] 1663 	mov	r4,a
      0007F6 E9               [12] 1664 	mov	a,r1
      0007F7 34 FF            [12] 1665 	addc	a,#0xff
      0007F9 FB               [12] 1666 	mov	r3,a
                                   1667 ;	8052Explorer.c:316: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0007FA 75 2B 00         [24] 1668 	mov	_dumpRAM_posto_262144_79,#0x00
      0007FD                       1669 00123$:
      0007FD 74 F0            [12] 1670 	mov	a,#0x100 - 0x10
      0007FF 25 2B            [12] 1671 	add	a,_dumpRAM_posto_262144_79
      000801 40 54            [24] 1672 	jc	00142$
                                   1673 ;	8052Explorer.c:317: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      000803 8C 82            [24] 1674 	mov	dpl,r4
      000805 8B 83            [24] 1675 	mov	dph,r3
      000807 8A F0            [24] 1676 	mov	b,r2
      000809 12 12 49         [24] 1677 	lcall	__gptrget
      00080C F8               [12] 1678 	mov	r0,a
      00080D B8 20 00         [24] 1679 	cjne	r0,#0x20,00197$
      000810                       1680 00197$:
      000810 40 05            [24] 1681 	jc	00113$
      000812 E8               [12] 1682 	mov	a,r0
      000813 24 81            [12] 1683 	add	a,#0xff - 0x7e
      000815 50 14            [24] 1684 	jnc	00114$
      000817                       1685 00113$:
                                   1686 ;	8052Explorer.c:318: putchar('.');
      000817 90 00 2E         [24] 1687 	mov	dptr,#0x002e
      00081A C0 04            [24] 1688 	push	ar4
      00081C C0 03            [24] 1689 	push	ar3
      00081E C0 02            [24] 1690 	push	ar2
      000820 12 0F F4         [24] 1691 	lcall	_putchar
      000823 D0 02            [24] 1692 	pop	ar2
      000825 D0 03            [24] 1693 	pop	ar3
      000827 D0 04            [24] 1694 	pop	ar4
      000829 80 23            [24] 1695 	sjmp	00115$
      00082B                       1696 00114$:
                                   1697 ;	8052Explorer.c:320: printf_tiny("%c", *puntatore);
      00082B 79 00            [12] 1698 	mov	r1,#0x00
      00082D C0 04            [24] 1699 	push	ar4
      00082F C0 03            [24] 1700 	push	ar3
      000831 C0 02            [24] 1701 	push	ar2
      000833 C0 00            [24] 1702 	push	ar0
      000835 C0 01            [24] 1703 	push	ar1
      000837 74 37            [12] 1704 	mov	a,#___str_72
      000839 C0 E0            [24] 1705 	push	acc
      00083B 74 1A            [12] 1706 	mov	a,#(___str_72 >> 8)
      00083D C0 E0            [24] 1707 	push	acc
      00083F 12 10 B3         [24] 1708 	lcall	_printf_tiny
      000842 E5 81            [12] 1709 	mov	a,sp
      000844 24 FC            [12] 1710 	add	a,#0xfc
      000846 F5 81            [12] 1711 	mov	sp,a
      000848 D0 02            [24] 1712 	pop	ar2
      00084A D0 03            [24] 1713 	pop	ar3
      00084C D0 04            [24] 1714 	pop	ar4
      00084E                       1715 00115$:
                                   1716 ;	8052Explorer.c:322: puntatore++;
      00084E 0C               [12] 1717 	inc	r4
      00084F BC 00 01         [24] 1718 	cjne	r4,#0x00,00200$
      000852 0B               [12] 1719 	inc	r3
      000853                       1720 00200$:
                                   1721 ;	8052Explorer.c:316: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000853 05 2B            [12] 1722 	inc	_dumpRAM_posto_262144_79
      000855 80 A6            [24] 1723 	sjmp	00123$
      000857                       1724 00142$:
      000857 8C 05            [24] 1725 	mov	ar5,r4
      000859 8B 06            [24] 1726 	mov	ar6,r3
      00085B 8A 07            [24] 1727 	mov	ar7,r2
                                   1728 ;	8052Explorer.c:324: putchar('|');
      00085D 90 00 7C         [24] 1729 	mov	dptr,#0x007c
      000860 C0 07            [24] 1730 	push	ar7
      000862 C0 06            [24] 1731 	push	ar6
      000864 C0 05            [24] 1732 	push	ar5
      000866 12 0F F4         [24] 1733 	lcall	_putchar
                                   1734 ;	8052Explorer.c:325: putchar('\r');
      000869 90 00 0D         [24] 1735 	mov	dptr,#0x000d
      00086C 12 0F F4         [24] 1736 	lcall	_putchar
      00086F D0 05            [24] 1737 	pop	ar5
      000871 D0 06            [24] 1738 	pop	ar6
      000873 D0 07            [24] 1739 	pop	ar7
                                   1740 ;	8052Explorer.c:297: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
      000875 74 10            [12] 1741 	mov	a,#0x10
      000877 25 27            [12] 1742 	add	a,_dumpRAM_indirizzo_131072_70
      000879 F5 27            [12] 1743 	mov	_dumpRAM_indirizzo_131072_70,a
      00087B E4               [12] 1744 	clr	a
      00087C 35 28            [12] 1745 	addc	a,(_dumpRAM_indirizzo_131072_70 + 1)
      00087E F5 28            [12] 1746 	mov	(_dumpRAM_indirizzo_131072_70 + 1),a
      000880 02 06 B6         [24] 1747 	ljmp	00126$
      000883                       1748 00118$:
                                   1749 ;	8052Explorer.c:327: putchar('\r');
      000883 90 00 0D         [24] 1750 	mov	dptr,#0x000d
                                   1751 ;	8052Explorer.c:329: }
      000886 02 0F F4         [24] 1752 	ljmp	_putchar
                                   1753 ;------------------------------------------------------------
                                   1754 ;Allocation info for local variables in function 'hexCODE'
                                   1755 ;------------------------------------------------------------
                                   1756 ;puntatore                 Allocated with name '_hexCODE_puntatore_65536_83'
                                   1757 ;checksum                  Allocated with name '_hexCODE_checksum_65537_84'
                                   1758 ;indirizzo                 Allocated to registers r3 r4 
                                   1759 ;posto                     Allocated to registers r0 
                                   1760 ;------------------------------------------------------------
                                   1761 ;	8052Explorer.c:331: void hexCODE(){
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function hexCODE
                                   1764 ;	-----------------------------------------
      000889                       1765 _hexCODE:
                                   1766 ;	8052Explorer.c:332: unsigned char *puntatore = codice;
      000889 75 2C 00         [24] 1767 	mov	_hexCODE_puntatore_65536_83,#_codice
      00088C 75 2D 00         [24] 1768 	mov	(_hexCODE_puntatore_65536_83 + 1),#(_codice >> 8)
      00088F 75 2E 80         [24] 1769 	mov	(_hexCODE_puntatore_65536_83 + 2),#0x80
                                   1770 ;	8052Explorer.c:336: puts("Dumping code in hex file format:");
      000892 90 1A AE         [24] 1771 	mov	dptr,#___str_85
      000895 75 F0 80         [24] 1772 	mov	b,#0x80
      000898 12 12 09         [24] 1773 	lcall	_puts
                                   1774 ;	8052Explorer.c:339: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      00089B 7B 00            [12] 1775 	mov	r3,#0x00
      00089D 7C 00            [12] 1776 	mov	r4,#0x00
      00089F                       1777 00120$:
      00089F C3               [12] 1778 	clr	c
      0008A0 74 FF            [12] 1779 	mov	a,#0xff
      0008A2 9B               [12] 1780 	subb	a,r3
      0008A3 74 1F            [12] 1781 	mov	a,#0x1f
      0008A5 9C               [12] 1782 	subb	a,r4
      0008A6 50 03            [24] 1783 	jnc	00171$
      0008A8 02 0A 98         [24] 1784 	ljmp	00115$
      0008AB                       1785 00171$:
                                   1786 ;	8052Explorer.c:340: printf_tiny(":10");
      0008AB C0 04            [24] 1787 	push	ar4
      0008AD C0 03            [24] 1788 	push	ar3
      0008AF 74 60            [12] 1789 	mov	a,#___str_74
      0008B1 C0 E0            [24] 1790 	push	acc
      0008B3 74 1A            [12] 1791 	mov	a,#(___str_74 >> 8)
      0008B5 C0 E0            [24] 1792 	push	acc
      0008B7 12 10 B3         [24] 1793 	lcall	_printf_tiny
      0008BA 15 81            [12] 1794 	dec	sp
      0008BC 15 81            [12] 1795 	dec	sp
      0008BE D0 03            [24] 1796 	pop	ar3
      0008C0 D0 04            [24] 1797 	pop	ar4
                                   1798 ;	8052Explorer.c:341: checksum = 0x10;
      0008C2 79 10            [12] 1799 	mov	r1,#0x10
      0008C4 7A 00            [12] 1800 	mov	r2,#0x00
                                   1801 ;	8052Explorer.c:342: if (indirizzo < 0x10) {
      0008C6 C3               [12] 1802 	clr	c
      0008C7 EB               [12] 1803 	mov	a,r3
      0008C8 94 10            [12] 1804 	subb	a,#0x10
      0008CA EC               [12] 1805 	mov	a,r4
      0008CB 94 00            [12] 1806 	subb	a,#0x00
      0008CD 50 28            [24] 1807 	jnc	00108$
                                   1808 ;	8052Explorer.c:343: printf_tiny("000%x", indirizzo);
      0008CF C0 04            [24] 1809 	push	ar4
      0008D1 C0 03            [24] 1810 	push	ar3
      0008D3 C0 02            [24] 1811 	push	ar2
      0008D5 C0 01            [24] 1812 	push	ar1
      0008D7 C0 03            [24] 1813 	push	ar3
      0008D9 C0 04            [24] 1814 	push	ar4
      0008DB 74 64            [12] 1815 	mov	a,#___str_75
      0008DD C0 E0            [24] 1816 	push	acc
      0008DF 74 1A            [12] 1817 	mov	a,#(___str_75 >> 8)
      0008E1 C0 E0            [24] 1818 	push	acc
      0008E3 12 10 B3         [24] 1819 	lcall	_printf_tiny
      0008E6 E5 81            [12] 1820 	mov	a,sp
      0008E8 24 FC            [12] 1821 	add	a,#0xfc
      0008EA F5 81            [12] 1822 	mov	sp,a
      0008EC D0 01            [24] 1823 	pop	ar1
      0008EE D0 02            [24] 1824 	pop	ar2
      0008F0 D0 03            [24] 1825 	pop	ar3
      0008F2 D0 04            [24] 1826 	pop	ar4
      0008F4 02 09 74         [24] 1827 	ljmp	00109$
      0008F7                       1828 00108$:
                                   1829 ;	8052Explorer.c:344: } else if (indirizzo < 0x100) {
      0008F7 74 FF            [12] 1830 	mov	a,#0x100 - 0x01
      0008F9 2C               [12] 1831 	add	a,r4
      0008FA 40 27            [24] 1832 	jc	00105$
                                   1833 ;	8052Explorer.c:345: printf_tiny("00%x", indirizzo);
      0008FC C0 04            [24] 1834 	push	ar4
      0008FE C0 03            [24] 1835 	push	ar3
      000900 C0 02            [24] 1836 	push	ar2
      000902 C0 01            [24] 1837 	push	ar1
      000904 C0 03            [24] 1838 	push	ar3
      000906 C0 04            [24] 1839 	push	ar4
      000908 74 6A            [12] 1840 	mov	a,#___str_76
      00090A C0 E0            [24] 1841 	push	acc
      00090C 74 1A            [12] 1842 	mov	a,#(___str_76 >> 8)
      00090E C0 E0            [24] 1843 	push	acc
      000910 12 10 B3         [24] 1844 	lcall	_printf_tiny
      000913 E5 81            [12] 1845 	mov	a,sp
      000915 24 FC            [12] 1846 	add	a,#0xfc
      000917 F5 81            [12] 1847 	mov	sp,a
      000919 D0 01            [24] 1848 	pop	ar1
      00091B D0 02            [24] 1849 	pop	ar2
      00091D D0 03            [24] 1850 	pop	ar3
      00091F D0 04            [24] 1851 	pop	ar4
      000921 80 51            [24] 1852 	sjmp	00109$
      000923                       1853 00105$:
                                   1854 ;	8052Explorer.c:346: } else if (indirizzo < 0x1000) {
      000923 74 F0            [12] 1855 	mov	a,#0x100 - 0x10
      000925 2C               [12] 1856 	add	a,r4
      000926 40 27            [24] 1857 	jc	00102$
                                   1858 ;	8052Explorer.c:347: printf_tiny("0%x", indirizzo);
      000928 C0 04            [24] 1859 	push	ar4
      00092A C0 03            [24] 1860 	push	ar3
      00092C C0 02            [24] 1861 	push	ar2
      00092E C0 01            [24] 1862 	push	ar1
      000930 C0 03            [24] 1863 	push	ar3
      000932 C0 04            [24] 1864 	push	ar4
      000934 74 6F            [12] 1865 	mov	a,#___str_77
      000936 C0 E0            [24] 1866 	push	acc
      000938 74 1A            [12] 1867 	mov	a,#(___str_77 >> 8)
      00093A C0 E0            [24] 1868 	push	acc
      00093C 12 10 B3         [24] 1869 	lcall	_printf_tiny
      00093F E5 81            [12] 1870 	mov	a,sp
      000941 24 FC            [12] 1871 	add	a,#0xfc
      000943 F5 81            [12] 1872 	mov	sp,a
      000945 D0 01            [24] 1873 	pop	ar1
      000947 D0 02            [24] 1874 	pop	ar2
      000949 D0 03            [24] 1875 	pop	ar3
      00094B D0 04            [24] 1876 	pop	ar4
      00094D 80 25            [24] 1877 	sjmp	00109$
      00094F                       1878 00102$:
                                   1879 ;	8052Explorer.c:349: printf_tiny("%x", indirizzo);
      00094F C0 04            [24] 1880 	push	ar4
      000951 C0 03            [24] 1881 	push	ar3
      000953 C0 02            [24] 1882 	push	ar2
      000955 C0 01            [24] 1883 	push	ar1
      000957 C0 03            [24] 1884 	push	ar3
      000959 C0 04            [24] 1885 	push	ar4
      00095B 74 73            [12] 1886 	mov	a,#___str_78
      00095D C0 E0            [24] 1887 	push	acc
      00095F 74 1A            [12] 1888 	mov	a,#(___str_78 >> 8)
      000961 C0 E0            [24] 1889 	push	acc
      000963 12 10 B3         [24] 1890 	lcall	_printf_tiny
      000966 E5 81            [12] 1891 	mov	a,sp
      000968 24 FC            [12] 1892 	add	a,#0xfc
      00096A F5 81            [12] 1893 	mov	sp,a
      00096C D0 01            [24] 1894 	pop	ar1
      00096E D0 02            [24] 1895 	pop	ar2
      000970 D0 03            [24] 1896 	pop	ar3
      000972 D0 04            [24] 1897 	pop	ar4
      000974                       1898 00109$:
                                   1899 ;	8052Explorer.c:351: checksum += (indirizzo >> 8 ) & 0xFF ;
      000974 8C 00            [24] 1900 	mov	ar0,r4
      000976 88 07            [24] 1901 	mov	ar7,r0
      000978 78 00            [12] 1902 	mov	r0,#0x00
      00097A EF               [12] 1903 	mov	a,r7
      00097B 29               [12] 1904 	add	a,r1
      00097C FF               [12] 1905 	mov	r7,a
      00097D E8               [12] 1906 	mov	a,r0
      00097E 3A               [12] 1907 	addc	a,r2
      00097F F8               [12] 1908 	mov	r0,a
                                   1909 ;	8052Explorer.c:352: checksum += (indirizzo & 0xFF);
      000980 8B 05            [24] 1910 	mov	ar5,r3
      000982 7E 00            [12] 1911 	mov	r6,#0x00
      000984 ED               [12] 1912 	mov	a,r5
      000985 2F               [12] 1913 	add	a,r7
      000986 F5 2F            [12] 1914 	mov	_hexCODE_checksum_65537_84,a
      000988 EE               [12] 1915 	mov	a,r6
      000989 38               [12] 1916 	addc	a,r0
      00098A F5 30            [12] 1917 	mov	(_hexCODE_checksum_65537_84 + 1),a
                                   1918 ;	8052Explorer.c:353: printf_tiny("00");
      00098C C0 04            [24] 1919 	push	ar4
      00098E C0 03            [24] 1920 	push	ar3
      000990 74 76            [12] 1921 	mov	a,#___str_79
      000992 C0 E0            [24] 1922 	push	acc
      000994 74 1A            [12] 1923 	mov	a,#(___str_79 >> 8)
      000996 C0 E0            [24] 1924 	push	acc
      000998 12 10 B3         [24] 1925 	lcall	_printf_tiny
      00099B 15 81            [12] 1926 	dec	sp
      00099D 15 81            [12] 1927 	dec	sp
      00099F D0 03            [24] 1928 	pop	ar3
      0009A1 D0 04            [24] 1929 	pop	ar4
                                   1930 ;	8052Explorer.c:355: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0009A3 AD 2C            [24] 1931 	mov	r5,_hexCODE_puntatore_65536_83
      0009A5 AA 2D            [24] 1932 	mov	r2,(_hexCODE_puntatore_65536_83 + 1)
      0009A7 A9 2E            [24] 1933 	mov	r1,(_hexCODE_puntatore_65536_83 + 2)
      0009A9 78 00            [12] 1934 	mov	r0,#0x00
      0009AB                       1935 00117$:
      0009AB B8 10 00         [24] 1936 	cjne	r0,#0x10,00175$
      0009AE                       1937 00175$:
      0009AE 40 03            [24] 1938 	jc	00176$
      0009B0 02 0A 38         [24] 1939 	ljmp	00133$
      0009B3                       1940 00176$:
                                   1941 ;	8052Explorer.c:356: if ( *puntatore < 16 ) {
      0009B3 8D 82            [24] 1942 	mov	dpl,r5
      0009B5 8A 83            [24] 1943 	mov	dph,r2
      0009B7 89 F0            [24] 1944 	mov	b,r1
      0009B9 12 12 49         [24] 1945 	lcall	__gptrget
      0009BC FF               [12] 1946 	mov	r7,a
      0009BD BF 10 00         [24] 1947 	cjne	r7,#0x10,00177$
      0009C0                       1948 00177$:
      0009C0 50 1E            [24] 1949 	jnc	00111$
                                   1950 ;	8052Explorer.c:357: putchar('0');
      0009C2 90 00 30         [24] 1951 	mov	dptr,#0x0030
      0009C5 C0 05            [24] 1952 	push	ar5
      0009C7 C0 04            [24] 1953 	push	ar4
      0009C9 C0 03            [24] 1954 	push	ar3
      0009CB C0 02            [24] 1955 	push	ar2
      0009CD C0 01            [24] 1956 	push	ar1
      0009CF C0 00            [24] 1957 	push	ar0
      0009D1 12 0F F4         [24] 1958 	lcall	_putchar
      0009D4 D0 00            [24] 1959 	pop	ar0
      0009D6 D0 01            [24] 1960 	pop	ar1
      0009D8 D0 02            [24] 1961 	pop	ar2
      0009DA D0 03            [24] 1962 	pop	ar3
      0009DC D0 04            [24] 1963 	pop	ar4
      0009DE D0 05            [24] 1964 	pop	ar5
      0009E0                       1965 00111$:
                                   1966 ;	8052Explorer.c:359: printf_tiny("%x", *puntatore);
      0009E0 8D 82            [24] 1967 	mov	dpl,r5
      0009E2 8A 83            [24] 1968 	mov	dph,r2
      0009E4 89 F0            [24] 1969 	mov	b,r1
      0009E6 12 12 49         [24] 1970 	lcall	__gptrget
      0009E9 FF               [12] 1971 	mov	r7,a
      0009EA 7E 00            [12] 1972 	mov	r6,#0x00
      0009EC C0 05            [24] 1973 	push	ar5
      0009EE C0 04            [24] 1974 	push	ar4
      0009F0 C0 03            [24] 1975 	push	ar3
      0009F2 C0 02            [24] 1976 	push	ar2
      0009F4 C0 01            [24] 1977 	push	ar1
      0009F6 C0 00            [24] 1978 	push	ar0
      0009F8 C0 07            [24] 1979 	push	ar7
      0009FA C0 06            [24] 1980 	push	ar6
      0009FC 74 73            [12] 1981 	mov	a,#___str_78
      0009FE C0 E0            [24] 1982 	push	acc
      000A00 74 1A            [12] 1983 	mov	a,#(___str_78 >> 8)
      000A02 C0 E0            [24] 1984 	push	acc
      000A04 12 10 B3         [24] 1985 	lcall	_printf_tiny
      000A07 E5 81            [12] 1986 	mov	a,sp
      000A09 24 FC            [12] 1987 	add	a,#0xfc
      000A0B F5 81            [12] 1988 	mov	sp,a
      000A0D D0 00            [24] 1989 	pop	ar0
      000A0F D0 01            [24] 1990 	pop	ar1
      000A11 D0 02            [24] 1991 	pop	ar2
      000A13 D0 03            [24] 1992 	pop	ar3
      000A15 D0 04            [24] 1993 	pop	ar4
      000A17 D0 05            [24] 1994 	pop	ar5
                                   1995 ;	8052Explorer.c:360: checksum += *puntatore;
      000A19 8D 82            [24] 1996 	mov	dpl,r5
      000A1B 8A 83            [24] 1997 	mov	dph,r2
      000A1D 89 F0            [24] 1998 	mov	b,r1
      000A1F 12 12 49         [24] 1999 	lcall	__gptrget
      000A22 FF               [12] 2000 	mov	r7,a
      000A23 A3               [24] 2001 	inc	dptr
      000A24 AD 82            [24] 2002 	mov	r5,dpl
      000A26 AA 83            [24] 2003 	mov	r2,dph
      000A28 7E 00            [12] 2004 	mov	r6,#0x00
      000A2A EF               [12] 2005 	mov	a,r7
      000A2B 25 2F            [12] 2006 	add	a,_hexCODE_checksum_65537_84
      000A2D F5 2F            [12] 2007 	mov	_hexCODE_checksum_65537_84,a
      000A2F EE               [12] 2008 	mov	a,r6
      000A30 35 30            [12] 2009 	addc	a,(_hexCODE_checksum_65537_84 + 1)
      000A32 F5 30            [12] 2010 	mov	(_hexCODE_checksum_65537_84 + 1),a
                                   2011 ;	8052Explorer.c:361: puntatore++;
                                   2012 ;	8052Explorer.c:355: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000A34 08               [12] 2013 	inc	r0
      000A35 02 09 AB         [24] 2014 	ljmp	00117$
      000A38                       2015 00133$:
      000A38 8D 2C            [24] 2016 	mov	_hexCODE_puntatore_65536_83,r5
      000A3A 8A 2D            [24] 2017 	mov	(_hexCODE_puntatore_65536_83 + 1),r2
      000A3C 89 2E            [24] 2018 	mov	(_hexCODE_puntatore_65536_83 + 2),r1
                                   2019 ;	8052Explorer.c:363: checksum = ((~checksum) & 0xFF);
      000A3E E5 2F            [12] 2020 	mov	a,_hexCODE_checksum_65537_84
      000A40 F4               [12] 2021 	cpl	a
      000A41 FE               [12] 2022 	mov	r6,a
      000A42 E5 30            [12] 2023 	mov	a,(_hexCODE_checksum_65537_84 + 1)
      000A44 F4               [12] 2024 	cpl	a
      000A45 7F 00            [12] 2025 	mov	r7,#0x00
                                   2026 ;	8052Explorer.c:364: checksum++;
      000A47 0E               [12] 2027 	inc	r6
      000A48 BE 00 01         [24] 2028 	cjne	r6,#0x00,00179$
      000A4B 0F               [12] 2029 	inc	r7
      000A4C                       2030 00179$:
                                   2031 ;	8052Explorer.c:365: if ( (checksum & 0xFF) < 16 ) {
      000A4C 8E 02            [24] 2032 	mov	ar2,r6
      000A4E 7D 00            [12] 2033 	mov	r5,#0x00
      000A50 C3               [12] 2034 	clr	c
      000A51 EA               [12] 2035 	mov	a,r2
      000A52 94 10            [12] 2036 	subb	a,#0x10
      000A54 ED               [12] 2037 	mov	a,r5
      000A55 94 00            [12] 2038 	subb	a,#0x00
      000A57 50 16            [24] 2039 	jnc	00114$
                                   2040 ;	8052Explorer.c:366: putchar('0');
      000A59 90 00 30         [24] 2041 	mov	dptr,#0x0030
      000A5C C0 07            [24] 2042 	push	ar7
      000A5E C0 06            [24] 2043 	push	ar6
      000A60 C0 04            [24] 2044 	push	ar4
      000A62 C0 03            [24] 2045 	push	ar3
      000A64 12 0F F4         [24] 2046 	lcall	_putchar
      000A67 D0 03            [24] 2047 	pop	ar3
      000A69 D0 04            [24] 2048 	pop	ar4
      000A6B D0 06            [24] 2049 	pop	ar6
      000A6D D0 07            [24] 2050 	pop	ar7
      000A6F                       2051 00114$:
                                   2052 ;	8052Explorer.c:368: printf_tiny("%x\r", checksum & 0xFF);
      000A6F 7F 00            [12] 2053 	mov	r7,#0x00
      000A71 C0 04            [24] 2054 	push	ar4
      000A73 C0 03            [24] 2055 	push	ar3
      000A75 C0 06            [24] 2056 	push	ar6
      000A77 C0 07            [24] 2057 	push	ar7
      000A79 74 79            [12] 2058 	mov	a,#___str_80
      000A7B C0 E0            [24] 2059 	push	acc
      000A7D 74 1A            [12] 2060 	mov	a,#(___str_80 >> 8)
      000A7F C0 E0            [24] 2061 	push	acc
      000A81 12 10 B3         [24] 2062 	lcall	_printf_tiny
      000A84 E5 81            [12] 2063 	mov	a,sp
      000A86 24 FC            [12] 2064 	add	a,#0xfc
      000A88 F5 81            [12] 2065 	mov	sp,a
      000A8A D0 03            [24] 2066 	pop	ar3
      000A8C D0 04            [24] 2067 	pop	ar4
                                   2068 ;	8052Explorer.c:339: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      000A8E 74 10            [12] 2069 	mov	a,#0x10
      000A90 2B               [12] 2070 	add	a,r3
      000A91 FB               [12] 2071 	mov	r3,a
      000A92 E4               [12] 2072 	clr	a
      000A93 3C               [12] 2073 	addc	a,r4
      000A94 FC               [12] 2074 	mov	r4,a
      000A95 02 08 9F         [24] 2075 	ljmp	00120$
      000A98                       2076 00115$:
                                   2077 ;	8052Explorer.c:370: printf_tiny("%s", ":00000001FF");
      000A98 74 80            [12] 2078 	mov	a,#___str_82
      000A9A C0 E0            [24] 2079 	push	acc
      000A9C 74 1A            [12] 2080 	mov	a,#(___str_82 >> 8)
      000A9E C0 E0            [24] 2081 	push	acc
      000AA0 74 80            [12] 2082 	mov	a,#0x80
      000AA2 C0 E0            [24] 2083 	push	acc
      000AA4 74 7D            [12] 2084 	mov	a,#___str_81
      000AA6 C0 E0            [24] 2085 	push	acc
      000AA8 74 1A            [12] 2086 	mov	a,#(___str_81 >> 8)
      000AAA C0 E0            [24] 2087 	push	acc
      000AAC 12 10 B3         [24] 2088 	lcall	_printf_tiny
      000AAF E5 81            [12] 2089 	mov	a,sp
      000AB1 24 FB            [12] 2090 	add	a,#0xfb
      000AB3 F5 81            [12] 2091 	mov	sp,a
                                   2092 ;	8052Explorer.c:372: putchar('\r');
      000AB5 90 00 0D         [24] 2093 	mov	dptr,#0x000d
      000AB8 12 0F F4         [24] 2094 	lcall	_putchar
                                   2095 ;	8052Explorer.c:373: putchar('\r');
      000ABB 90 00 0D         [24] 2096 	mov	dptr,#0x000d
                                   2097 ;	8052Explorer.c:374: }
      000ABE 02 0F F4         [24] 2098 	ljmp	_putchar
                                   2099 ;------------------------------------------------------------
                                   2100 ;Allocation info for local variables in function 'reset'
                                   2101 ;------------------------------------------------------------
                                   2102 ;	8052Explorer.c:376: void reset( void ) {
                                   2103 ;	-----------------------------------------
                                   2104 ;	 function reset
                                   2105 ;	-----------------------------------------
      000AC1                       2106 _reset:
                                   2107 ;	8052Explorer.c:377: puts("Resetting the micro.");
      000AC1 90 1A CF         [24] 2108 	mov	dptr,#___str_86
      000AC4 75 F0 80         [24] 2109 	mov	b,#0x80
      000AC7 12 12 09         [24] 2110 	lcall	_puts
                                   2111 ;	8052Explorer.c:383: while ( 1 );
      000ACA                       2112 00102$:
                                   2113 ;	8052Explorer.c:384: }
      000ACA 80 FE            [24] 2114 	sjmp	00102$
                                   2115 ;------------------------------------------------------------
                                   2116 ;Allocation info for local variables in function 'start'
                                   2117 ;------------------------------------------------------------
                                   2118 ;	8052Explorer.c:386: void start( void )
                                   2119 ;	-----------------------------------------
                                   2120 ;	 function start
                                   2121 ;	-----------------------------------------
      000ACC                       2122 _start:
                                   2123 ;	8052Explorer.c:402: P0=0xFF;
      000ACC 75 80 FF         [24] 2124 	mov	_P0,#0xff
                                   2125 ;	8052Explorer.c:403: P1=0xFF;
      000ACF 75 90 FF         [24] 2126 	mov	_P1,#0xff
                                   2127 ;	8052Explorer.c:404: P2=0xFF;
      000AD2 75 A0 FF         [24] 2128 	mov	_P2,#0xff
                                   2129 ;	8052Explorer.c:405: P3=0xFF;
      000AD5 75 B0 FF         [24] 2130 	mov	_P3,#0xff
                                   2131 ;	8052Explorer.c:406: init_ser(MYTH2, MYTL2);
      000AD8 75 0E FD         [24] 2132 	mov	_init_ser_PARM_2,#0xfd
      000ADB 75 82 FF         [24] 2133 	mov	dpl,#0xff
      000ADE 12 0F 1D         [24] 2134 	lcall	_init_ser
                                   2135 ;	8052Explorer.c:407: felix();
      000AE1 12 00 85         [24] 2136 	lcall	_felix
                                   2137 ;	8052Explorer.c:408: printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
      000AE4 74 05            [12] 2138 	mov	a,#___str_89
      000AE6 C0 E0            [24] 2139 	push	acc
      000AE8 74 1B            [12] 2140 	mov	a,#(___str_89 >> 8)
      000AEA C0 E0            [24] 2141 	push	acc
      000AEC 74 80            [12] 2142 	mov	a,#0x80
      000AEE C0 E0            [24] 2143 	push	acc
      000AF0 74 FD            [12] 2144 	mov	a,#___str_88
      000AF2 C0 E0            [24] 2145 	push	acc
      000AF4 74 1A            [12] 2146 	mov	a,#(___str_88 >> 8)
      000AF6 C0 E0            [24] 2147 	push	acc
      000AF8 74 80            [12] 2148 	mov	a,#0x80
      000AFA C0 E0            [24] 2149 	push	acc
      000AFC 74 E4            [12] 2150 	mov	a,#___str_87
      000AFE C0 E0            [24] 2151 	push	acc
      000B00 74 1A            [12] 2152 	mov	a,#(___str_87 >> 8)
      000B02 C0 E0            [24] 2153 	push	acc
      000B04 12 10 B3         [24] 2154 	lcall	_printf_tiny
      000B07 E5 81            [12] 2155 	mov	a,sp
      000B09 24 F8            [12] 2156 	add	a,#0xf8
      000B0B F5 81            [12] 2157 	mov	sp,a
                                   2158 ;	8052Explorer.c:425: printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
      000B0D 74 FD            [12] 2159 	mov	a,#0xfd
      000B0F C0 E0            [24] 2160 	push	acc
      000B11 E4               [12] 2161 	clr	a
      000B12 C0 E0            [24] 2162 	push	acc
      000B14 14               [12] 2163 	dec	a
      000B15 C0 E0            [24] 2164 	push	acc
      000B17 E4               [12] 2165 	clr	a
      000B18 C0 E0            [24] 2166 	push	acc
      000B1A 74 0D            [12] 2167 	mov	a,#___str_90
      000B1C C0 E0            [24] 2168 	push	acc
      000B1E 74 1B            [12] 2169 	mov	a,#(___str_90 >> 8)
      000B20 C0 E0            [24] 2170 	push	acc
      000B22 12 10 B3         [24] 2171 	lcall	_printf_tiny
      000B25 E5 81            [12] 2172 	mov	a,sp
      000B27 24 FA            [12] 2173 	add	a,#0xfa
      000B29 F5 81            [12] 2174 	mov	sp,a
                                   2175 ;	8052Explorer.c:426: printf_tiny("Started serial at %s bps\r", BPS);
      000B2B 74 51            [12] 2176 	mov	a,#___str_92
      000B2D C0 E0            [24] 2177 	push	acc
      000B2F 74 1B            [12] 2178 	mov	a,#(___str_92 >> 8)
      000B31 C0 E0            [24] 2179 	push	acc
      000B33 74 80            [12] 2180 	mov	a,#0x80
      000B35 C0 E0            [24] 2181 	push	acc
      000B37 74 37            [12] 2182 	mov	a,#___str_91
      000B39 C0 E0            [24] 2183 	push	acc
      000B3B 74 1B            [12] 2184 	mov	a,#(___str_91 >> 8)
      000B3D C0 E0            [24] 2185 	push	acc
      000B3F 12 10 B3         [24] 2186 	lcall	_printf_tiny
      000B42 E5 81            [12] 2187 	mov	a,sp
      000B44 24 FB            [12] 2188 	add	a,#0xfb
      000B46 F5 81            [12] 2189 	mov	sp,a
                                   2190 ;	8052Explorer.c:427: init_timer0(0xDE, 0xED);
      000B48 75 0E ED         [24] 2191 	mov	_init_timer0_PARM_2,#0xed
      000B4B 75 82 DE         [24] 2192 	mov	dpl,#0xde
      000B4E 12 10 10         [24] 2193 	lcall	_init_timer0
                                   2194 ;	8052Explorer.c:428: printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
      000B51 74 ED            [12] 2195 	mov	a,#0xed
      000B53 C0 E0            [24] 2196 	push	acc
      000B55 E4               [12] 2197 	clr	a
      000B56 C0 E0            [24] 2198 	push	acc
      000B58 74 DE            [12] 2199 	mov	a,#0xde
      000B5A C0 E0            [24] 2200 	push	acc
      000B5C E4               [12] 2201 	clr	a
      000B5D C0 E0            [24] 2202 	push	acc
      000B5F 74 58            [12] 2203 	mov	a,#___str_93
      000B61 C0 E0            [24] 2204 	push	acc
      000B63 74 1B            [12] 2205 	mov	a,#(___str_93 >> 8)
      000B65 C0 E0            [24] 2206 	push	acc
      000B67 12 10 B3         [24] 2207 	lcall	_printf_tiny
      000B6A E5 81            [12] 2208 	mov	a,sp
      000B6C 24 FA            [12] 2209 	add	a,#0xfa
      000B6E F5 81            [12] 2210 	mov	sp,a
                                   2211 ;	8052Explorer.c:430: puts("Print a string from code memory:");
      000B70 90 1B 82         [24] 2212 	mov	dptr,#___str_96
      000B73 75 F0 80         [24] 2213 	mov	b,#0x80
      000B76 12 12 09         [24] 2214 	lcall	_puts
                                   2215 ;	8052Explorer.c:431: puts(acTestString); 
      000B79 90 12 69         [24] 2216 	mov	dptr,#_acTestString
      000B7C 75 F0 80         [24] 2217 	mov	b,#0x80
                                   2218 ;	8052Explorer.c:432: }
      000B7F 02 12 09         [24] 2219 	ljmp	_puts
                                   2220 ;------------------------------------------------------------
                                   2221 ;Allocation info for local variables in function 'p'
                                   2222 ;------------------------------------------------------------
                                   2223 ;porta                     Allocated to registers r7 
                                   2224 ;pin                       Allocated with name '_p_pin_65537_105'
                                   2225 ;action                    Allocated to registers r5 
                                   2226 ;------------------------------------------------------------
                                   2227 ;	8052Explorer.c:434: void p( unsigned char porta ) {
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function p
                                   2230 ;	-----------------------------------------
      000B82                       2231 _p:
      000B82 AF 82            [24] 2232 	mov	r7,dpl
                                   2233 ;	8052Explorer.c:435: if (porta == 3 ) {
      000B84 E4               [12] 2234 	clr	a
      000B85 BF 03 01         [24] 2235 	cjne	r7,#0x03,00255$
      000B88 04               [12] 2236 	inc	a
      000B89                       2237 00255$:
      000B89 FE               [12] 2238 	mov	r6,a
      000B8A 60 23            [24] 2239 	jz	00105$
                                   2240 ;	8052Explorer.c:436: printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
      000B8C 8F 04            [24] 2241 	mov	ar4,r7
      000B8E 7D 00            [12] 2242 	mov	r5,#0x00
      000B90 C0 07            [24] 2243 	push	ar7
      000B92 C0 06            [24] 2244 	push	ar6
      000B94 C0 04            [24] 2245 	push	ar4
      000B96 C0 05            [24] 2246 	push	ar5
      000B98 74 C9            [12] 2247 	mov	a,#___str_97
      000B9A C0 E0            [24] 2248 	push	acc
      000B9C 74 1B            [12] 2249 	mov	a,#(___str_97 >> 8)
      000B9E C0 E0            [24] 2250 	push	acc
      000BA0 12 10 B3         [24] 2251 	lcall	_printf_tiny
      000BA3 E5 81            [12] 2252 	mov	a,sp
      000BA5 24 FC            [12] 2253 	add	a,#0xfc
      000BA7 F5 81            [12] 2254 	mov	sp,a
      000BA9 D0 06            [24] 2255 	pop	ar6
      000BAB D0 07            [24] 2256 	pop	ar7
      000BAD 80 47            [24] 2257 	sjmp	00107$
      000BAF                       2258 00105$:
                                   2259 ;	8052Explorer.c:437: } else if (porta == 2 ) {
      000BAF BF 02 23         [24] 2260 	cjne	r7,#0x02,00102$
                                   2261 ;	8052Explorer.c:438: printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
      000BB2 8F 04            [24] 2262 	mov	ar4,r7
      000BB4 7D 00            [12] 2263 	mov	r5,#0x00
      000BB6 C0 07            [24] 2264 	push	ar7
      000BB8 C0 06            [24] 2265 	push	ar6
      000BBA C0 04            [24] 2266 	push	ar4
      000BBC C0 05            [24] 2267 	push	ar5
      000BBE 74 EC            [12] 2268 	mov	a,#___str_98
      000BC0 C0 E0            [24] 2269 	push	acc
      000BC2 74 1B            [12] 2270 	mov	a,#(___str_98 >> 8)
      000BC4 C0 E0            [24] 2271 	push	acc
      000BC6 12 10 B3         [24] 2272 	lcall	_printf_tiny
      000BC9 E5 81            [12] 2273 	mov	a,sp
      000BCB 24 FC            [12] 2274 	add	a,#0xfc
      000BCD F5 81            [12] 2275 	mov	sp,a
      000BCF D0 06            [24] 2276 	pop	ar6
      000BD1 D0 07            [24] 2277 	pop	ar7
      000BD3 80 21            [24] 2278 	sjmp	00107$
      000BD5                       2279 00102$:
                                   2280 ;	8052Explorer.c:440: printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
      000BD5 8F 04            [24] 2281 	mov	ar4,r7
      000BD7 7D 00            [12] 2282 	mov	r5,#0x00
      000BD9 C0 07            [24] 2283 	push	ar7
      000BDB C0 06            [24] 2284 	push	ar6
      000BDD C0 04            [24] 2285 	push	ar4
      000BDF C0 05            [24] 2286 	push	ar5
      000BE1 74 0F            [12] 2287 	mov	a,#___str_99
      000BE3 C0 E0            [24] 2288 	push	acc
      000BE5 74 1C            [12] 2289 	mov	a,#(___str_99 >> 8)
      000BE7 C0 E0            [24] 2290 	push	acc
      000BE9 12 10 B3         [24] 2291 	lcall	_printf_tiny
      000BEC E5 81            [12] 2292 	mov	a,sp
      000BEE 24 FC            [12] 2293 	add	a,#0xfc
      000BF0 F5 81            [12] 2294 	mov	sp,a
      000BF2 D0 06            [24] 2295 	pop	ar6
      000BF4 D0 07            [24] 2296 	pop	ar7
                                   2297 ;	8052Explorer.c:442: while (!ser_byte_avail()){
      000BF6                       2298 00107$:
      000BF6 C0 07            [24] 2299 	push	ar7
      000BF8 C0 06            [24] 2300 	push	ar6
      000BFA 12 0F C3         [24] 2301 	lcall	_ser_byte_avail
      000BFD E5 82            [12] 2302 	mov	a,dpl
      000BFF D0 06            [24] 2303 	pop	ar6
      000C01 D0 07            [24] 2304 	pop	ar7
      000C03 60 F1            [24] 2305 	jz	00107$
                                   2306 ;	8052Explorer.c:445: unsigned char pin = getchar();
      000C05 C0 07            [24] 2307 	push	ar7
      000C07 C0 06            [24] 2308 	push	ar6
      000C09 12 10 08         [24] 2309 	lcall	_getchar
      000C0C AC 82            [24] 2310 	mov	r4,dpl
      000C0E D0 06            [24] 2311 	pop	ar6
      000C10 D0 07            [24] 2312 	pop	ar7
                                   2313 ;	8052Explorer.c:446: pin = pin - 48;
      000C12 EC               [12] 2314 	mov	a,r4
      000C13 24 D0            [12] 2315 	add	a,#0xd0
      000C15 F5 31            [12] 2316 	mov	_p_pin_65537_105,a
                                   2317 ;	8052Explorer.c:447: printf_tiny("Pin %u of port %u: ", pin, porta );
      000C17 8F 03            [24] 2318 	mov	ar3,r7
      000C19 7C 00            [12] 2319 	mov	r4,#0x00
      000C1B A9 31            [24] 2320 	mov	r1,_p_pin_65537_105
      000C1D 7A 00            [12] 2321 	mov	r2,#0x00
      000C1F C0 07            [24] 2322 	push	ar7
      000C21 C0 06            [24] 2323 	push	ar6
      000C23 C0 04            [24] 2324 	push	ar4
      000C25 C0 03            [24] 2325 	push	ar3
      000C27 C0 02            [24] 2326 	push	ar2
      000C29 C0 01            [24] 2327 	push	ar1
      000C2B C0 03            [24] 2328 	push	ar3
      000C2D C0 04            [24] 2329 	push	ar4
      000C2F C0 01            [24] 2330 	push	ar1
      000C31 C0 02            [24] 2331 	push	ar2
      000C33 74 32            [12] 2332 	mov	a,#___str_100
      000C35 C0 E0            [24] 2333 	push	acc
      000C37 74 1C            [12] 2334 	mov	a,#(___str_100 >> 8)
      000C39 C0 E0            [24] 2335 	push	acc
      000C3B 12 10 B3         [24] 2336 	lcall	_printf_tiny
      000C3E E5 81            [12] 2337 	mov	a,sp
      000C40 24 FA            [12] 2338 	add	a,#0xfa
      000C42 F5 81            [12] 2339 	mov	sp,a
      000C44 D0 01            [24] 2340 	pop	ar1
      000C46 D0 02            [24] 2341 	pop	ar2
      000C48 D0 03            [24] 2342 	pop	ar3
      000C4A D0 04            [24] 2343 	pop	ar4
      000C4C D0 06            [24] 2344 	pop	ar6
      000C4E D0 07            [24] 2345 	pop	ar7
                                   2346 ;	8052Explorer.c:448: if ( pin >= 0 && pin <= 8 ) {
      000C50 E5 31            [12] 2347 	mov	a,_p_pin_65537_105
      000C52 24 F7            [12] 2348 	add	a,#0xff - 0x08
      000C54 50 03            [24] 2349 	jnc	00261$
      000C56 02 0D AD         [24] 2350 	ljmp	00150$
      000C59                       2351 00261$:
                                   2352 ;	8052Explorer.c:449: if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
      000C59 EE               [12] 2353 	mov	a,r6
      000C5A 60 0F            [24] 2354 	jz	00144$
      000C5C E5 31            [12] 2355 	mov	a,_p_pin_65537_105
      000C5E 70 03            [24] 2356 	jnz	00263$
      000C60 02 0D A4         [24] 2357 	ljmp	00145$
      000C63                       2358 00263$:
      000C63 74 01            [12] 2359 	mov	a,#0x01
      000C65 B5 31 03         [24] 2360 	cjne	a,_p_pin_65537_105,00264$
      000C68 02 0D A4         [24] 2361 	ljmp	00145$
      000C6B                       2362 00264$:
      000C6B                       2363 00144$:
                                   2364 ;	8052Explorer.c:450: if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
      000C6B E4               [12] 2365 	clr	a
      000C6C BF 02 01         [24] 2366 	cjne	r7,#0x02,00265$
      000C6F 04               [12] 2367 	inc	a
      000C70                       2368 00265$:
      000C70 FE               [12] 2369 	mov	r6,a
      000C71 60 17            [24] 2370 	jz	00138$
      000C73 E5 31            [12] 2371 	mov	a,_p_pin_65537_105
      000C75 70 03            [24] 2372 	jnz	00268$
      000C77 02 0D 9B         [24] 2373 	ljmp	00139$
      000C7A                       2374 00268$:
      000C7A 74 01            [12] 2375 	mov	a,#0x01
      000C7C B5 31 03         [24] 2376 	cjne	a,_p_pin_65537_105,00269$
      000C7F 02 0D 9B         [24] 2377 	ljmp	00139$
      000C82                       2378 00269$:
      000C82 74 02            [12] 2379 	mov	a,#0x02
      000C84 B5 31 03         [24] 2380 	cjne	a,_p_pin_65537_105,00270$
      000C87 02 0D 9B         [24] 2381 	ljmp	00139$
      000C8A                       2382 00270$:
      000C8A                       2383 00138$:
                                   2384 ;	8052Explorer.c:451: puts("0 off, 1 on.");
      000C8A 90 1C 46         [24] 2385 	mov	dptr,#___str_101
      000C8D 75 F0 80         [24] 2386 	mov	b,#0x80
      000C90 C0 07            [24] 2387 	push	ar7
      000C92 C0 06            [24] 2388 	push	ar6
      000C94 C0 04            [24] 2389 	push	ar4
      000C96 C0 03            [24] 2390 	push	ar3
      000C98 C0 02            [24] 2391 	push	ar2
      000C9A C0 01            [24] 2392 	push	ar1
      000C9C 12 12 09         [24] 2393 	lcall	_puts
      000C9F D0 01            [24] 2394 	pop	ar1
      000CA1 D0 02            [24] 2395 	pop	ar2
      000CA3 D0 03            [24] 2396 	pop	ar3
      000CA5 D0 04            [24] 2397 	pop	ar4
      000CA7 D0 06            [24] 2398 	pop	ar6
      000CA9 D0 07            [24] 2399 	pop	ar7
                                   2400 ;	8052Explorer.c:452: while (!ser_byte_avail()){
      000CAB                       2401 00110$:
      000CAB C0 07            [24] 2402 	push	ar7
      000CAD C0 06            [24] 2403 	push	ar6
      000CAF C0 04            [24] 2404 	push	ar4
      000CB1 C0 03            [24] 2405 	push	ar3
      000CB3 C0 02            [24] 2406 	push	ar2
      000CB5 C0 01            [24] 2407 	push	ar1
      000CB7 12 0F C3         [24] 2408 	lcall	_ser_byte_avail
      000CBA E5 82            [12] 2409 	mov	a,dpl
      000CBC D0 01            [24] 2410 	pop	ar1
      000CBE D0 02            [24] 2411 	pop	ar2
      000CC0 D0 03            [24] 2412 	pop	ar3
      000CC2 D0 04            [24] 2413 	pop	ar4
      000CC4 D0 06            [24] 2414 	pop	ar6
      000CC6 D0 07            [24] 2415 	pop	ar7
      000CC8 60 E1            [24] 2416 	jz	00110$
                                   2417 ;	8052Explorer.c:455: unsigned char action = getchar();
      000CCA C0 07            [24] 2418 	push	ar7
      000CCC C0 06            [24] 2419 	push	ar6
      000CCE C0 04            [24] 2420 	push	ar4
      000CD0 C0 03            [24] 2421 	push	ar3
      000CD2 C0 02            [24] 2422 	push	ar2
      000CD4 C0 01            [24] 2423 	push	ar1
      000CD6 12 10 08         [24] 2424 	lcall	_getchar
      000CD9 A8 82            [24] 2425 	mov	r0,dpl
      000CDB D0 01            [24] 2426 	pop	ar1
      000CDD D0 02            [24] 2427 	pop	ar2
      000CDF D0 03            [24] 2428 	pop	ar3
      000CE1 D0 04            [24] 2429 	pop	ar4
      000CE3 D0 06            [24] 2430 	pop	ar6
      000CE5 D0 07            [24] 2431 	pop	ar7
                                   2432 ;	8052Explorer.c:456: action = action -48;
      000CE7 E8               [12] 2433 	mov	a,r0
      000CE8 24 D0            [12] 2434 	add	a,#0xd0
                                   2435 ;	8052Explorer.c:457: if (action == 0 || action == 1) {
      000CEA FD               [12] 2436 	mov	r5,a
      000CEB 60 08            [24] 2437 	jz	00134$
      000CED BD 01 02         [24] 2438 	cjne	r5,#0x01,00273$
      000CF0 80 03            [24] 2439 	sjmp	00274$
      000CF2                       2440 00273$:
      000CF2 02 0D 92         [24] 2441 	ljmp	00135$
      000CF5                       2442 00274$:
      000CF5                       2443 00134$:
                                   2444 ;	8052Explorer.c:458: if (action == 1) {
      000CF5 BD 01 4D         [24] 2445 	cjne	r5,#0x01,00132$
                                   2446 ;	8052Explorer.c:459: action = action << pin;
      000CF8 85 31 F0         [24] 2447 	mov	b,_p_pin_65537_105
      000CFB 05 F0            [12] 2448 	inc	b
      000CFD ED               [12] 2449 	mov	a,r5
      000CFE 80 02            [24] 2450 	sjmp	00279$
      000D00                       2451 00277$:
      000D00 25 E0            [12] 2452 	add	a,acc
      000D02                       2453 00279$:
      000D02 D5 F0 FB         [24] 2454 	djnz	b,00277$
                                   2455 ;	8052Explorer.c:460: action = ~action;
      000D05 F4               [12] 2456 	cpl	a
      000D06 FD               [12] 2457 	mov	r5,a
                                   2458 ;	8052Explorer.c:462: printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
      000D07 C0 07            [24] 2459 	push	ar7
      000D09 C0 06            [24] 2460 	push	ar6
      000D0B C0 05            [24] 2461 	push	ar5
      000D0D C0 03            [24] 2462 	push	ar3
      000D0F C0 04            [24] 2463 	push	ar4
      000D11 C0 01            [24] 2464 	push	ar1
      000D13 C0 02            [24] 2465 	push	ar2
      000D15 74 53            [12] 2466 	mov	a,#___str_102
      000D17 C0 E0            [24] 2467 	push	acc
      000D19 74 1C            [12] 2468 	mov	a,#(___str_102 >> 8)
      000D1B C0 E0            [24] 2469 	push	acc
      000D1D 12 10 B3         [24] 2470 	lcall	_printf_tiny
      000D20 E5 81            [12] 2471 	mov	a,sp
      000D22 24 FA            [12] 2472 	add	a,#0xfa
      000D24 F5 81            [12] 2473 	mov	sp,a
      000D26 D0 05            [24] 2474 	pop	ar5
      000D28 D0 06            [24] 2475 	pop	ar6
      000D2A D0 07            [24] 2476 	pop	ar7
                                   2477 ;	8052Explorer.c:463: if (0 == porta) {
      000D2C EF               [12] 2478 	mov	a,r7
      000D2D 70 04            [24] 2479 	jnz	00120$
                                   2480 ;	8052Explorer.c:464: P0 &= action;
      000D2F ED               [12] 2481 	mov	a,r5
      000D30 52 80            [12] 2482 	anl	_P0,a
      000D32 22               [24] 2483 	ret
      000D33                       2484 00120$:
                                   2485 ;	8052Explorer.c:465: } else if (1 == porta) {
      000D33 BF 01 04         [24] 2486 	cjne	r7,#0x01,00117$
                                   2487 ;	8052Explorer.c:466: P1 &= action;
      000D36 ED               [12] 2488 	mov	a,r5
      000D37 52 90            [12] 2489 	anl	_P1,a
      000D39 22               [24] 2490 	ret
      000D3A                       2491 00117$:
                                   2492 ;	8052Explorer.c:467: } else if (2 == porta) {
      000D3A EE               [12] 2493 	mov	a,r6
      000D3B 60 04            [24] 2494 	jz	00114$
                                   2495 ;	8052Explorer.c:468: P2 &= action;
      000D3D ED               [12] 2496 	mov	a,r5
      000D3E 52 A0            [12] 2497 	anl	_P2,a
      000D40 22               [24] 2498 	ret
      000D41                       2499 00114$:
                                   2500 ;	8052Explorer.c:470: P3 &= action;
      000D41 ED               [12] 2501 	mov	a,r5
      000D42 52 B0            [12] 2502 	anl	_P3,a
      000D44 22               [24] 2503 	ret
      000D45                       2504 00132$:
                                   2505 ;	8052Explorer.c:475: action = action << pin;
      000D45 85 31 F0         [24] 2506 	mov	b,_p_pin_65537_105
      000D48 05 F0            [12] 2507 	inc	b
      000D4A 74 01            [12] 2508 	mov	a,#0x01
      000D4C 80 02            [24] 2509 	sjmp	00286$
      000D4E                       2510 00284$:
      000D4E 25 E0            [12] 2511 	add	a,acc
      000D50                       2512 00286$:
      000D50 D5 F0 FB         [24] 2513 	djnz	b,00284$
      000D53 FD               [12] 2514 	mov	r5,a
                                   2515 ;	8052Explorer.c:477: printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
      000D54 C0 07            [24] 2516 	push	ar7
      000D56 C0 06            [24] 2517 	push	ar6
      000D58 C0 05            [24] 2518 	push	ar5
      000D5A C0 03            [24] 2519 	push	ar3
      000D5C C0 04            [24] 2520 	push	ar4
      000D5E C0 01            [24] 2521 	push	ar1
      000D60 C0 02            [24] 2522 	push	ar2
      000D62 74 72            [12] 2523 	mov	a,#___str_103
      000D64 C0 E0            [24] 2524 	push	acc
      000D66 74 1C            [12] 2525 	mov	a,#(___str_103 >> 8)
      000D68 C0 E0            [24] 2526 	push	acc
      000D6A 12 10 B3         [24] 2527 	lcall	_printf_tiny
      000D6D E5 81            [12] 2528 	mov	a,sp
      000D6F 24 FA            [12] 2529 	add	a,#0xfa
      000D71 F5 81            [12] 2530 	mov	sp,a
      000D73 D0 05            [24] 2531 	pop	ar5
      000D75 D0 06            [24] 2532 	pop	ar6
      000D77 D0 07            [24] 2533 	pop	ar7
                                   2534 ;	8052Explorer.c:478: if (0 == porta) {
      000D79 EF               [12] 2535 	mov	a,r7
      000D7A 70 04            [24] 2536 	jnz	00129$
                                   2537 ;	8052Explorer.c:479: P0 |= action;
      000D7C ED               [12] 2538 	mov	a,r5
      000D7D 42 80            [12] 2539 	orl	_P0,a
      000D7F 22               [24] 2540 	ret
      000D80                       2541 00129$:
                                   2542 ;	8052Explorer.c:480: } else if (1 == porta) {
      000D80 BF 01 04         [24] 2543 	cjne	r7,#0x01,00126$
                                   2544 ;	8052Explorer.c:481: P1 |= action;
      000D83 ED               [12] 2545 	mov	a,r5
      000D84 42 90            [12] 2546 	orl	_P1,a
      000D86 22               [24] 2547 	ret
      000D87                       2548 00126$:
                                   2549 ;	8052Explorer.c:482: } else if (2 == porta) {
      000D87 EE               [12] 2550 	mov	a,r6
      000D88 60 04            [24] 2551 	jz	00123$
                                   2552 ;	8052Explorer.c:483: P2 |= action;
      000D8A ED               [12] 2553 	mov	a,r5
      000D8B 42 A0            [12] 2554 	orl	_P2,a
      000D8D 22               [24] 2555 	ret
      000D8E                       2556 00123$:
                                   2557 ;	8052Explorer.c:485: P3 |= action;
      000D8E ED               [12] 2558 	mov	a,r5
      000D8F 42 B0            [12] 2559 	orl	_P3,a
      000D91 22               [24] 2560 	ret
      000D92                       2561 00135$:
                                   2562 ;	8052Explorer.c:490: puts("Invalid action!");
      000D92 90 1C 92         [24] 2563 	mov	dptr,#___str_104
      000D95 75 F0 80         [24] 2564 	mov	b,#0x80
      000D98 02 12 09         [24] 2565 	ljmp	_puts
      000D9B                       2566 00139$:
                                   2567 ;	8052Explorer.c:495: puts("the pin 2 is the serial character receive blink.");
      000D9B 90 1C E9         [24] 2568 	mov	dptr,#___str_111
      000D9E 75 F0 80         [24] 2569 	mov	b,#0x80
      000DA1 02 12 09         [24] 2570 	ljmp	_puts
      000DA4                       2571 00145$:
                                   2572 ;	8052Explorer.c:498: puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
      000DA4 90 1C A2         [24] 2573 	mov	dptr,#___str_108
      000DA7 75 F0 80         [24] 2574 	mov	b,#0x80
      000DAA 02 12 09         [24] 2575 	ljmp	_puts
      000DAD                       2576 00150$:
                                   2577 ;	8052Explorer.c:501: puts("Invalid pin!");
      000DAD 90 1C DC         [24] 2578 	mov	dptr,#___str_109
      000DB0 75 F0 80         [24] 2579 	mov	b,#0x80
                                   2580 ;	8052Explorer.c:503: }
      000DB3 02 12 09         [24] 2581 	ljmp	_puts
                                   2582 ;------------------------------------------------------------
                                   2583 ;Allocation info for local variables in function 'HELP'
                                   2584 ;------------------------------------------------------------
                                   2585 ;	8052Explorer.c:505: void HELP ( void ) {
                                   2586 ;	-----------------------------------------
                                   2587 ;	 function HELP
                                   2588 ;	-----------------------------------------
      000DB6                       2589 _HELP:
                                   2590 ;	8052Explorer.c:519: puts("H print this help.");
      000DB6 90 1D 7B         [24] 2591 	mov	dptr,#___str_128
      000DB9 75 F0 80         [24] 2592 	mov	b,#0x80
                                   2593 ;	8052Explorer.c:520: }
      000DBC 02 12 09         [24] 2594 	ljmp	_puts
                                   2595 ;------------------------------------------------------------
                                   2596 ;Allocation info for local variables in function 'main'
                                   2597 ;------------------------------------------------------------
                                   2598 ;carattere                 Allocated to registers r6 
                                   2599 ;------------------------------------------------------------
                                   2600 ;	8052Explorer.c:522: void main( void ) {
                                   2601 ;	-----------------------------------------
                                   2602 ;	 function main
                                   2603 ;	-----------------------------------------
      000DBF                       2604 _main:
                                   2605 ;	8052Explorer.c:523: start();
      000DBF 12 0A CC         [24] 2606 	lcall	_start
                                   2607 ;	8052Explorer.c:524: puts("Insert command, h for help.");
      000DC2 90 1E 60         [24] 2608 	mov	dptr,#___str_129
      000DC5 75 F0 80         [24] 2609 	mov	b,#0x80
      000DC8 12 12 09         [24] 2610 	lcall	_puts
                                   2611 ;	8052Explorer.c:526: while( 1 )							// forever.
      000DCB                       2612 00127$:
                                   2613 ;	8052Explorer.c:532: if ( ser_byte_avail() )	{				// if data coming in...
      000DCB 12 0F C3         [24] 2614 	lcall	_ser_byte_avail
      000DCE E5 82            [12] 2615 	mov	a,dpl
      000DD0 60 F9            [24] 2616 	jz	00127$
                                   2617 ;	8052Explorer.c:533: carattere = getchar();
      000DD2 12 10 08         [24] 2618 	lcall	_getchar
      000DD5 AE 82            [24] 2619 	mov	r6,dpl
                                   2620 ;	8052Explorer.c:539: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000DD7 BE 30 00         [24] 2621 	cjne	r6,#0x30,00212$
      000DDA                       2622 00212$:
      000DDA 92 00            [24] 2623 	mov	_main_sloc0_1_0,c
      000DDC 40 14            [24] 2624 	jc	00102$
      000DDE EE               [12] 2625 	mov	a,r6
      000DDF 24 85            [12] 2626 	add	a,#0xff - 0x7a
      000DE1 40 0F            [24] 2627 	jc	00102$
                                   2628 ;	8052Explorer.c:540: putchar(carattere);
      000DE3 8E 05            [24] 2629 	mov	ar5,r6
      000DE5 7F 00            [12] 2630 	mov	r7,#0x00
      000DE7 8D 82            [24] 2631 	mov	dpl,r5
      000DE9 8F 83            [24] 2632 	mov	dph,r7
      000DEB C0 06            [24] 2633 	push	ar6
      000DED 12 0F F4         [24] 2634 	lcall	_putchar
      000DF0 D0 06            [24] 2635 	pop	ar6
      000DF2                       2636 00102$:
                                   2637 ;	8052Explorer.c:542: putchar('\r');
      000DF2 90 00 0D         [24] 2638 	mov	dptr,#0x000d
      000DF5 C0 06            [24] 2639 	push	ar6
      000DF7 12 0F F4         [24] 2640 	lcall	_putchar
      000DFA D0 06            [24] 2641 	pop	ar6
                                   2642 ;	8052Explorer.c:543: switch (carattere)
      000DFC BE 30 02         [24] 2643 	cjne	r6,#0x30,00215$
      000DFF 80 5A            [24] 2644 	sjmp	00112$
      000E01                       2645 00215$:
      000E01 BE 31 02         [24] 2646 	cjne	r6,#0x31,00216$
      000E04 80 5D            [24] 2647 	sjmp	00113$
      000E06                       2648 00216$:
      000E06 BE 32 02         [24] 2649 	cjne	r6,#0x32,00217$
      000E09 80 60            [24] 2650 	sjmp	00114$
      000E0B                       2651 00217$:
      000E0B BE 33 02         [24] 2652 	cjne	r6,#0x33,00218$
      000E0E 80 63            [24] 2653 	sjmp	00115$
      000E10                       2654 00218$:
      000E10 BE 43 02         [24] 2655 	cjne	r6,#0x43,00219$
      000E13 80 28            [24] 2656 	sjmp	00105$
      000E15                       2657 00219$:
      000E15 BE 45 02         [24] 2658 	cjne	r6,#0x45,00220$
      000E18 80 2D            [24] 2659 	sjmp	00107$
      000E1A                       2660 00220$:
      000E1A BE 48 02         [24] 2661 	cjne	r6,#0x48,00221$
      000E1D 80 37            [24] 2662 	sjmp	00111$
      000E1F                       2663 00221$:
      000E1F BE 63 02         [24] 2664 	cjne	r6,#0x63,00222$
      000E22 80 14            [24] 2665 	sjmp	00104$
      000E24                       2666 00222$:
      000E24 BE 65 02         [24] 2667 	cjne	r6,#0x65,00223$
      000E27 80 19            [24] 2668 	sjmp	00106$
      000E29                       2669 00223$:
      000E29 BE 66 02         [24] 2670 	cjne	r6,#0x66,00224$
      000E2C 80 1E            [24] 2671 	sjmp	00108$
      000E2E                       2672 00224$:
      000E2E BE 68 02         [24] 2673 	cjne	r6,#0x68,00225$
      000E31 80 23            [24] 2674 	sjmp	00111$
      000E33                       2675 00225$:
                                   2676 ;	8052Explorer.c:545: case 'c':
      000E33 BE 6D 45         [24] 2677 	cjne	r6,#0x6d,00116$
      000E36 80 19            [24] 2678 	sjmp	00109$
      000E38                       2679 00104$:
                                   2680 ;	8052Explorer.c:546: dumpCODE();
      000E38 12 04 A2         [24] 2681 	lcall	_dumpCODE
                                   2682 ;	8052Explorer.c:547: break;
                                   2683 ;	8052Explorer.c:548: case 'C':
      000E3B 80 5D            [24] 2684 	sjmp	00121$
      000E3D                       2685 00105$:
                                   2686 ;	8052Explorer.c:549: hexCODE();
      000E3D 12 08 89         [24] 2687 	lcall	_hexCODE
                                   2688 ;	8052Explorer.c:550: break;
                                   2689 ;	8052Explorer.c:552: case 'e':
      000E40 80 58            [24] 2690 	sjmp	00121$
      000E42                       2691 00106$:
                                   2692 ;	8052Explorer.c:553: dumpEEPROM();
      000E42 12 00 9A         [24] 2693 	lcall	_dumpEEPROM
                                   2694 ;	8052Explorer.c:554: break;
                                   2695 ;	8052Explorer.c:555: case 'E':
      000E45 80 53            [24] 2696 	sjmp	00121$
      000E47                       2697 00107$:
                                   2698 ;	8052Explorer.c:556: hexEEPROM();
      000E47 12 02 67         [24] 2699 	lcall	_hexEEPROM
                                   2700 ;	8052Explorer.c:557: break;
                                   2701 ;	8052Explorer.c:559: case 'f':
      000E4A 80 4E            [24] 2702 	sjmp	00121$
      000E4C                       2703 00108$:
                                   2704 ;	8052Explorer.c:560: felix();
      000E4C 12 00 85         [24] 2705 	lcall	_felix
                                   2706 ;	8052Explorer.c:561: break;
                                   2707 ;	8052Explorer.c:562: case 'm':
      000E4F 80 49            [24] 2708 	sjmp	00121$
      000E51                       2709 00109$:
                                   2710 ;	8052Explorer.c:563: dumpRAM();
      000E51 12 06 96         [24] 2711 	lcall	_dumpRAM
                                   2712 ;	8052Explorer.c:564: break;
                                   2713 ;	8052Explorer.c:571: case 'H':
      000E54 80 44            [24] 2714 	sjmp	00121$
      000E56                       2715 00111$:
                                   2716 ;	8052Explorer.c:572: HELP();
      000E56 12 0D B6         [24] 2717 	lcall	_HELP
                                   2718 ;	8052Explorer.c:573: break;
                                   2719 ;	8052Explorer.c:574: case '0':
      000E59 80 3F            [24] 2720 	sjmp	00121$
      000E5B                       2721 00112$:
                                   2722 ;	8052Explorer.c:575: p(0);
      000E5B 75 82 00         [24] 2723 	mov	dpl,#0x00
      000E5E 12 0B 82         [24] 2724 	lcall	_p
                                   2725 ;	8052Explorer.c:576: break;
                                   2726 ;	8052Explorer.c:577: case '1':
      000E61 80 37            [24] 2727 	sjmp	00121$
      000E63                       2728 00113$:
                                   2729 ;	8052Explorer.c:578: p(1);
      000E63 75 82 01         [24] 2730 	mov	dpl,#0x01
      000E66 12 0B 82         [24] 2731 	lcall	_p
                                   2732 ;	8052Explorer.c:579: break;
                                   2733 ;	8052Explorer.c:580: case '2':
      000E69 80 2F            [24] 2734 	sjmp	00121$
      000E6B                       2735 00114$:
                                   2736 ;	8052Explorer.c:581: p(2);
      000E6B 75 82 02         [24] 2737 	mov	dpl,#0x02
      000E6E 12 0B 82         [24] 2738 	lcall	_p
                                   2739 ;	8052Explorer.c:582: break;
                                   2740 ;	8052Explorer.c:583: case '3':
      000E71 80 27            [24] 2741 	sjmp	00121$
      000E73                       2742 00115$:
                                   2743 ;	8052Explorer.c:584: p(3);
      000E73 75 82 03         [24] 2744 	mov	dpl,#0x03
      000E76 12 0B 82         [24] 2745 	lcall	_p
                                   2746 ;	8052Explorer.c:585: break;
                                   2747 ;	8052Explorer.c:586: default:
      000E79 80 1F            [24] 2748 	sjmp	00121$
      000E7B                       2749 00116$:
                                   2750 ;	8052Explorer.c:587: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000E7B 20 00 1C         [24] 2751 	jb	_main_sloc0_1_0,00121$
      000E7E EE               [12] 2752 	mov	a,r6
      000E7F 24 85            [12] 2753 	add	a,#0xff - 0x7a
      000E81 40 17            [24] 2754 	jc	00121$
                                   2755 ;	8052Explorer.c:588: printf_tiny("Invalid command %c.\r", carattere );
      000E83 7F 00            [12] 2756 	mov	r7,#0x00
      000E85 C0 06            [24] 2757 	push	ar6
      000E87 C0 07            [24] 2758 	push	ar7
      000E89 74 7C            [12] 2759 	mov	a,#___str_130
      000E8B C0 E0            [24] 2760 	push	acc
      000E8D 74 1E            [12] 2761 	mov	a,#(___str_130 >> 8)
      000E8F C0 E0            [24] 2762 	push	acc
      000E91 12 10 B3         [24] 2763 	lcall	_printf_tiny
      000E94 E5 81            [12] 2764 	mov	a,sp
      000E96 24 FC            [12] 2765 	add	a,#0xfc
      000E98 F5 81            [12] 2766 	mov	sp,a
                                   2767 ;	8052Explorer.c:591: while ( ser_byte_avail() )	{				// if data coming in...
      000E9A                       2768 00121$:
      000E9A 12 0F C3         [24] 2769 	lcall	_ser_byte_avail
      000E9D E5 82            [12] 2770 	mov	a,dpl
      000E9F 60 05            [24] 2771 	jz	00123$
                                   2772 ;	8052Explorer.c:592: carattere = getchar();
      000EA1 12 10 08         [24] 2773 	lcall	_getchar
      000EA4 80 F4            [24] 2774 	sjmp	00121$
      000EA6                       2775 00123$:
                                   2776 ;	8052Explorer.c:594: puts("Insert command, h for help:");
      000EA6 90 1E 91         [24] 2777 	mov	dptr,#___str_131
      000EA9 75 F0 80         [24] 2778 	mov	b,#0x80
      000EAC 12 12 09         [24] 2779 	lcall	_puts
                                   2780 ;	8052Explorer.c:598: }
      000EAF 02 0D CB         [24] 2781 	ljmp	00127$
                                   2782 	.area CSEG    (CODE)
                                   2783 	.area CONST   (CODE)
      001269                       2784 _acTestString:
      001269 48 65 6C 6C 6F 20 57  2785 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      001277 0D                    2786 	.db 0x0d
      001278 54 68 69 73 20 69 73  2787 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      00128E 0D                    2788 	.db 0x0d
      00128F 00                    2789 	.db 0x00
                           000000  2790 _codice	=	0x0000
                                   2791 	.area CONST   (CODE)
      001290                       2792 ___str_64:
      001290 20 20 20 20 20 20 20  2793 	.ascii "              iWs                                 ,W["
             20 20 20 20 20 20 20
             69 57 73 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 2C 57 5B
      0012C5 0A                    2794 	.db 0x0a
      0012C6 20 20 20 20 20 20 20  2795 	.ascii "              W@@W.                              g@@["
             20 20 20 20 20 20 20
             57 40 40 57 2E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             67 40 40 5B
      0012FB 0A                    2796 	.db 0x0a
      0012FC 20 20 20 20 20 20 20  2797 	.ascii "             i@@@@@s                           g@@@@W"
             20 20 20 20 20 20 69
             40 40 40 40 40 73 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 57
      001331 0A                    2798 	.db 0x0a
      001332 20 20 20 20 20 20 20  2799 	.ascii "             @@@@@@@W.                       ,W@@@@@@"
             20 20 20 20 20 20 40
             40 40 40 40 40 40 57
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      001367 0A                    2800 	.db 0x0a
      001368 20 20 20 20 20 20 20  2801 	.ascii "            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i"
             20 20 20 20 20 5D 40
             40 40 40 40 40 40 40
             40 57 2E 20 20 20 2C
             5F 5F 5F 5F 5F 5F 5F
             2E 20 20 20 20 20 20
             20 2C 6D 40 40 40 40
             40 40 40 40 69
      00139E 0A                    2802 	.db 0x0a
      00139F 20 20 20 20 20 20 20  2803 	.ascii "           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@["
             20 20 20 20 2C 40 40
             40 40 40 40 40 40 40
             40 40 40 57 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 6D 6D 5F
             67 40 40 40 40 40 40
             40 40 40 40 5B
      0013D5 0A                    2804 	.db 0x0a
      0013D6 20 20 20 20 20 20 20  2805 	.ascii "           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
             20 20 20 20 64 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40
      00140C 0A                    2806 	.db 0x0a
      00140D 20 20 20 20 20 20 20  2807 	.ascii "          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i"
             20 20 20 69 40 40 40
             40 40 40 40 41 2A 7E
             7E 7E 7E 7E 56 4D 40
             40 40 40 40 40 40 40
             40 40 41 66 7E 7E 7E
             7E 56 2A 40 40 40 40
             40 40 40 40 40 69
      001444 0A                    2808 	.db 0x0a
      001445 20 20 20 20 20 20 20  2809 	.ascii "          @@@@@A~          'M@@@@@@A`         'V@@@@@@b"
             20 20 20 40 40 40 40
             40 41 7E 20 20 20 20
             20 20 20 20 20 20 27
             4D 40 40 40 40 40 40
             41 60 20 20 20 20 20
             20 20 20 20 27 56 40
             40 40 40 40 40 62
      00147C 0A                    2810 	.db 0x0a
      00147D 20 20 20 20 20 20 20  2811 	.ascii "         d@@@*`              Y@@@@f              V@@@@@."
             20 20 64 40 40 40 2A
             60 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 59 40 40 40 40 66
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             56 40 40 40 40 40 2E
      0014B5 0A                    2812 	.db 0x0a
      0014B6 20 20 20 20 20 20 20  2813 	.ascii "        i@@A`                 M@@P                 V@@@b"
             20 69 40 40 41 60 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 4D 40 40 50 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 56 40 40 40 62
      0014EE 0A                    2814 	.db 0x0a
      0014EF 20 20 20 20 20 20 20  2815 	.ascii "       ,@@A                   '@@                   !@@@."
             2C 40 40 41 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 27 40 40 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 21 40 40 40
             2E
      001528 0A                    2816 	.db 0x0a
      001529 20 20 20 20 20 20 20  2817 	.ascii "       W@P                     @[                    '@@W"
             57 40 50 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 40 40
             57
      001562 0A                    2818 	.db 0x0a
      001563 20 20 20 20 20 20 64  2819 	.ascii "      d@@            ,         ]!                     ]@@b"
             40 40 20 20 20 20 20
             20 20 20 20 20 20 20
             2C 20 20 20 20 20 20
             20 20 20 5D 21 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 62
      00159D 0A                    2820 	.db 0x0a
      00159E 20 20 20 20 20 67 40  2821 	.ascii "     g@@[          ,W@@s       ]       ,W@@s           @@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 2C 57
             40 40 73 20 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 2C 57 40
             40 73 20 20 20 20 20
             20 20 20 20 20 20 40
             40 40 69
      0015D9 0A                    2822 	.db 0x0a
      0015DA 20 20 20 20 69 40 40  2823 	.ascii "    i@@@[          W@@@@i      ]       W@@@@i          @@@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 57 40
             40 40 40 69 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 57 40 40
             40 40 69 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 69
      001616 0A                    2824 	.db 0x0a
      001617 20 20 20 69 40 40 40  2825 	.ascii "   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 5B 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      001653 69                    2826 	.ascii "i"
      001654 0A                    2827 	.db 0x0a
      001655 20 20 67 40 40 40 40  2828 	.ascii "  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 21 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      001691 40 69                 2829 	.ascii "@i"
      001693 0A                    2830 	.db 0x0a
      001694 20 64 40 40 40 40 40  2831 	.ascii " d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@"
             40 40 20 20 20 20 20
             20 20 20 20 20 21 40
             40 40 50 20 20 20 20
             20 20 69 41 57 20 20
             20 20 20 20 21 40 40
             40 41 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 40 40 40
      0016D0 40 40 69              2832 	.ascii "@@i"
      0016D3 0A                    2833 	.db 0x0a
      0016D4 57 40 40 40 40 40 40  2834 	.ascii "W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@"
             40 40 62 20 20 20 20
             20 20 20 20 20 20 27
             7E 7E 20 20 20 20 20
             20 2C 5A 20 59 69 20
             20 20 20 20 20 27 7E
             7E 20 20 20 20 20 20
             20 20 20 20 2C 40 40
             40 40 40 40
      001710 40 40 40              2835 	.ascii "@@@"
      001713 0A                    2836 	.db 0x0a
      001714 27 2A 40 40 40 40 40  2837 	.ascii "'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@"
             40 40 40 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 5A 60 20 20 59 2E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      001750 40 40 41              2838 	.ascii "@@A"
      001753 0A                    2839 	.db 0x0a
      001754 20 20 27 4D 40 40 40  2840 	.ascii "  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@"
             2A 66 2A 2A 57 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 2C
             5A 20 20 20 20 20 56
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 57 2A 7E 7E
             7E 4D 40 40
      001790 40 66                 2841 	.ascii "@f"
      001792 0A                    2842 	.db 0x0a
      001793 20 20 20 20 27 4D 40  2843 	.ascii "    'M@    'Vs.          ,z~       'N_           ,Z~     d@P"
             20 20 20 20 27 56 73
             2E 20 20 20 20 20 20
             20 20 20 20 2C 7A 7E
             20 20 20 20 20 20 20
             27 4E 5F 20 20 20 20
             20 20 20 20 20 20 20
             2C 5A 7E 20 20 20 20
             20 64 40 50
      0017CF 0A                    2844 	.db 0x0a
      0017D0 20 20 20 4D 40 40 40  2845 	.ascii "   M@@@       ~-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@"
             20 20 20 20 20 20 20
             7E 2D 5F 5F 20 20 5F
             5F 7A 2F 60 20 2C 67
             6D 57 40 40 6D 6D 5F
             20 27 2B 65 5F 2E 20
             20 20 5F 5F 3D 2F 60
             20 20 20 20 20 20 2C
             40 40 40 40
      00180C 0A                    2846 	.db 0x0a
      00180D 20 20 20 20 27 56 4D  2847 	.ascii "    'VMW                  g@@@@@@@@@W     ~~~          ,WAf"
             57 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 40 40 40 40
             40 57 20 20 20 20 20
             7E 7E 7E 20 20 20 20
             20 20 20 20 20 20 2C
             57 41 66
      001848 0A                    2848 	.db 0x0a
      001849 20 20 20 20 20 20 20  2849 	.ascii "       ~N.                @@@@@@@@@@@!                ,Z`"
             7E 4E 2E 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 40 40 40 40
             40 40 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 2C 5A
             60
      001882 0A                    2850 	.db 0x0a
      001883 20 20 20 20 20 20 20  2851 	.ascii "         V.               !M@@@@@@@@f                gf-"
             20 20 56 2E 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 21 4D
             40 40 40 40 40 40 40
             40 66 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 67 66 2D
      0018BB 0A                    2852 	.db 0x0a
      0018BC 20 20 20 20 20 20 20  2853 	.ascii "          'N.               '~***f~                ,Z`"
             20 20 20 27 4E 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             27 7E 2A 2A 2A 66 7E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 5A 60
      0018F2 0A                    2854 	.db 0x0a
      0018F3 20 20 20 20 20 20 20  2855 	.ascii "            Vc.                                  _Zf"
             20 20 20 20 20 56 63
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             5F 5A 66
      001927 0A                    2856 	.db 0x0a
      001928 20 20 20 20 20 20 20  2857 	.ascii "              ~e_                             ,gY~"
             20 20 20 20 20 20 20
             7E 65 5F 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 2C 67 59
             7E
      00195A 0A                    2858 	.db 0x0a
      00195B 20 20 20 20 20 20 20  2859 	.ascii "                'V=_          -@@D         ,gY~ '"
             20 20 20 20 20 20 20
             20 20 27 56 3D 5F 20
             20 20 20 20 20 20 20
             20 20 2D 40 40 44 20
             20 20 20 20 20 20 20
             20 2C 67 59 7E 20 27
      00198C 0A                    2860 	.db 0x0a
      00198D 20 20 20 20 20 20 20  2861 	.ascii "                    ~=__.           ,__z=~`"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7E
             3D 5F 5F 2E 20 20 20
             20 20 20 20 20 20 20
             20 2C 5F 5F 7A 3D 7E
             60
      0019B8 0A                    2862 	.db 0x0a
      0019B9 20 20 20 20 20 20 20  2863 	.ascii "                         '~~~*==Y*f~~~ "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 7E 7E
             7E 2A 3D 3D 59 2A 66
             7E 7E 7E 20
      0019E0 00                    2864 	.db 0x00
                                   2865 	.area CSEG    (CODE)
                                   2866 	.area CONST   (CODE)
      0019E1                       2867 ___str_65:
      0019E1 44 75 6D 70 69 6E 67  2868 	.ascii "Dumping eeprom content and changing first character:"
             20 65 65 70 72 6F 6D
             20 63 6F 6E 74 65 6E
             74 20 61 6E 64 20 63
             68 61 6E 67 69 6E 67
             20 66 69 72 73 74 20
             63 68 61 72 61 63 74
             65 72 3A
      001A15 00                    2869 	.db 0x00
                                   2870 	.area CSEG    (CODE)
                                   2871 	.area CONST   (CODE)
      001A16                       2872 ___str_66:
      001A16 30 30 30 25 78 20 20  2873 	.ascii "000%x  "
      001A1D 00                    2874 	.db 0x00
                                   2875 	.area CSEG    (CODE)
                                   2876 	.area CONST   (CODE)
      001A1E                       2877 ___str_67:
      001A1E 30 30 25 78 20 20     2878 	.ascii "00%x  "
      001A24 00                    2879 	.db 0x00
                                   2880 	.area CSEG    (CODE)
                                   2881 	.area CONST   (CODE)
      001A25                       2882 ___str_68:
      001A25 30 25 78 20 20        2883 	.ascii "0%x  "
      001A2A 00                    2884 	.db 0x00
                                   2885 	.area CSEG    (CODE)
                                   2886 	.area CONST   (CODE)
      001A2B                       2887 ___str_69:
      001A2B 25 78 20 20           2888 	.ascii "%x  "
      001A2F 00                    2889 	.db 0x00
                                   2890 	.area CSEG    (CODE)
                                   2891 	.area CONST   (CODE)
      001A30                       2892 ___str_70:
      001A30 25 78 20              2893 	.ascii "%x "
      001A33 00                    2894 	.db 0x00
                                   2895 	.area CSEG    (CODE)
                                   2896 	.area CONST   (CODE)
      001A34                       2897 ___str_71:
      001A34 20 7C                 2898 	.ascii " |"
      001A36 00                    2899 	.db 0x00
                                   2900 	.area CSEG    (CODE)
                                   2901 	.area CONST   (CODE)
      001A37                       2902 ___str_72:
      001A37 25 63                 2903 	.ascii "%c"
      001A39 00                    2904 	.db 0x00
                                   2905 	.area CSEG    (CODE)
                                   2906 	.area CONST   (CODE)
      001A3A                       2907 ___str_73:
      001A3A 44 75 6D 70 69 6E 67  2908 	.ascii "Dumping eeprom content in hex format:"
             20 65 65 70 72 6F 6D
             20 63 6F 6E 74 65 6E
             74 20 69 6E 20 68 65
             78 20 66 6F 72 6D 61
             74 3A
      001A5F 00                    2909 	.db 0x00
                                   2910 	.area CSEG    (CODE)
                                   2911 	.area CONST   (CODE)
      001A60                       2912 ___str_74:
      001A60 3A 31 30              2913 	.ascii ":10"
      001A63 00                    2914 	.db 0x00
                                   2915 	.area CSEG    (CODE)
                                   2916 	.area CONST   (CODE)
      001A64                       2917 ___str_75:
      001A64 30 30 30 25 78        2918 	.ascii "000%x"
      001A69 00                    2919 	.db 0x00
                                   2920 	.area CSEG    (CODE)
                                   2921 	.area CONST   (CODE)
      001A6A                       2922 ___str_76:
      001A6A 30 30 25 78           2923 	.ascii "00%x"
      001A6E 00                    2924 	.db 0x00
                                   2925 	.area CSEG    (CODE)
                                   2926 	.area CONST   (CODE)
      001A6F                       2927 ___str_77:
      001A6F 30 25 78              2928 	.ascii "0%x"
      001A72 00                    2929 	.db 0x00
                                   2930 	.area CSEG    (CODE)
                                   2931 	.area CONST   (CODE)
      001A73                       2932 ___str_78:
      001A73 25 78                 2933 	.ascii "%x"
      001A75 00                    2934 	.db 0x00
                                   2935 	.area CSEG    (CODE)
                                   2936 	.area CONST   (CODE)
      001A76                       2937 ___str_79:
      001A76 30 30                 2938 	.ascii "00"
      001A78 00                    2939 	.db 0x00
                                   2940 	.area CSEG    (CODE)
                                   2941 	.area CONST   (CODE)
      001A79                       2942 ___str_80:
      001A79 25 78                 2943 	.ascii "%x"
      001A7B 0D                    2944 	.db 0x0d
      001A7C 00                    2945 	.db 0x00
                                   2946 	.area CSEG    (CODE)
                                   2947 	.area CONST   (CODE)
      001A7D                       2948 ___str_81:
      001A7D 25 73                 2949 	.ascii "%s"
      001A7F 00                    2950 	.db 0x00
                                   2951 	.area CSEG    (CODE)
                                   2952 	.area CONST   (CODE)
      001A80                       2953 ___str_82:
      001A80 3A 30 30 30 30 30 30  2954 	.ascii ":00000001FF"
             30 31 46 46
      001A8B 00                    2955 	.db 0x00
                                   2956 	.area CSEG    (CODE)
                                   2957 	.area CONST   (CODE)
      001A8C                       2958 ___str_83:
      001A8C 44 75 6D 70 69 6E 67  2959 	.ascii "Dumping code:"
             20 63 6F 64 65 3A
      001A99 00                    2960 	.db 0x00
                                   2961 	.area CSEG    (CODE)
                                   2962 	.area CONST   (CODE)
      001A9A                       2963 ___str_84:
      001A9A 44 75 6D 70 69 6E 67  2964 	.ascii "Dumping ram memory:"
             20 72 61 6D 20 6D 65
             6D 6F 72 79 3A
      001AAD 00                    2965 	.db 0x00
                                   2966 	.area CSEG    (CODE)
                                   2967 	.area CONST   (CODE)
      001AAE                       2968 ___str_85:
      001AAE 44 75 6D 70 69 6E 67  2969 	.ascii "Dumping code in hex file format:"
             20 63 6F 64 65 20 69
             6E 20 68 65 78 20 66
             69 6C 65 20 66 6F 72
             6D 61 74 3A
      001ACE 00                    2970 	.db 0x00
                                   2971 	.area CSEG    (CODE)
                                   2972 	.area CONST   (CODE)
      001ACF                       2973 ___str_86:
      001ACF 52 65 73 65 74 74 69  2974 	.ascii "Resetting the micro."
             6E 67 20 74 68 65 20
             6D 69 63 72 6F 2E
      001AE3 00                    2975 	.db 0x00
                                   2976 	.area CSEG    (CODE)
                                   2977 	.area CONST   (CODE)
      001AE4                       2978 ___str_87:
      001AE4 43 70 75 20 25 73 20  2979 	.ascii "Cpu %s running at %sMHz"
             72 75 6E 6E 69 6E 67
             20 61 74 20 25 73 4D
             48 7A
      001AFB 0D                    2980 	.db 0x0d
      001AFC 00                    2981 	.db 0x00
                                   2982 	.area CSEG    (CODE)
                                   2983 	.area CONST   (CODE)
      001AFD                       2984 ___str_88:
      001AFD 38 39 53 38 32 35 32  2985 	.ascii "89S8252"
      001B04 00                    2986 	.db 0x00
                                   2987 	.area CSEG    (CODE)
                                   2988 	.area CONST   (CODE)
      001B05                       2989 ___str_89:
      001B05 31 31 2E 30 35 39 32  2990 	.ascii "11.0592"
      001B0C 00                    2991 	.db 0x00
                                   2992 	.area CSEG    (CODE)
                                   2993 	.area CONST   (CODE)
      001B0D                       2994 ___str_90:
      001B0D 53 74 61 72 74 65 64  2995 	.ascii "Started timer 2 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             32 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001B35 0D                    2996 	.db 0x0d
      001B36 00                    2997 	.db 0x00
                                   2998 	.area CSEG    (CODE)
                                   2999 	.area CONST   (CODE)
      001B37                       3000 ___str_91:
      001B37 53 74 61 72 74 65 64  3001 	.ascii "Started serial at %s bps"
             20 73 65 72 69 61 6C
             20 61 74 20 25 73 20
             62 70 73
      001B4F 0D                    3002 	.db 0x0d
      001B50 00                    3003 	.db 0x00
                                   3004 	.area CSEG    (CODE)
                                   3005 	.area CONST   (CODE)
      001B51                       3006 ___str_92:
      001B51 31 31 35 32 30 30     3007 	.ascii "115200"
      001B57 00                    3008 	.db 0x00
                                   3009 	.area CSEG    (CODE)
                                   3010 	.area CONST   (CODE)
      001B58                       3011 ___str_93:
      001B58 53 74 61 72 74 65 64  3012 	.ascii "Started timer 0 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             30 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001B80 0D                    3013 	.db 0x0d
      001B81 00                    3014 	.db 0x00
                                   3015 	.area CSEG    (CODE)
                                   3016 	.area CONST   (CODE)
      001B82                       3017 ___str_96:
      001B82 48 65 6C 6C 6F 20 57  3018 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      001B90 0D                    3019 	.db 0x0d
      001B91 54 68 69 73 20 69 73  3020 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      001BA7 0A                    3021 	.db 0x0a
      001BA8 50 72 69 6E 74 20 61  3022 	.ascii "Print a string from code memory:"
             20 73 74 72 69 6E 67
             20 66 72 6F 6D 20 63
             6F 64 65 20 6D 65 6D
             6F 72 79 3A
      001BC8 00                    3023 	.db 0x00
                                   3024 	.area CSEG    (CODE)
                                   3025 	.area CONST   (CODE)
      001BC9                       3026 ___str_97:
      001BC9 57 68 69 63 68 20 70  3027 	.ascii "Which pin from 2 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 32 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001BEA 0D                    3028 	.db 0x0d
      001BEB 00                    3029 	.db 0x00
                                   3030 	.area CSEG    (CODE)
                                   3031 	.area CONST   (CODE)
      001BEC                       3032 ___str_98:
      001BEC 57 68 69 63 68 20 70  3033 	.ascii "Which pin from 3 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 33 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001C0D 0D                    3034 	.db 0x0d
      001C0E 00                    3035 	.db 0x00
                                   3036 	.area CSEG    (CODE)
                                   3037 	.area CONST   (CODE)
      001C0F                       3038 ___str_99:
      001C0F 57 68 69 63 68 20 70  3039 	.ascii "Which pin from 0 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 30 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      001C30 0D                    3040 	.db 0x0d
      001C31 00                    3041 	.db 0x00
                                   3042 	.area CSEG    (CODE)
                                   3043 	.area CONST   (CODE)
      001C32                       3044 ___str_100:
      001C32 50 69 6E 20 25 75 20  3045 	.ascii "Pin %u of port %u: "
             6F 66 20 70 6F 72 74
             20 25 75 3A 20
      001C45 00                    3046 	.db 0x00
                                   3047 	.area CSEG    (CODE)
                                   3048 	.area CONST   (CODE)
      001C46                       3049 ___str_101:
      001C46 30 20 6F 66 66 2C 20  3050 	.ascii "0 off, 1 on."
             31 20 6F 6E 2E
      001C52 00                    3051 	.db 0x00
                                   3052 	.area CSEG    (CODE)
                                   3053 	.area CONST   (CODE)
      001C53                       3054 ___str_102:
      001C53 53 65 74 74 69 6E 67  3055 	.ascii "Setting pin %u of port %u on."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 6E
             2E
      001C70 0D                    3056 	.db 0x0d
      001C71 00                    3057 	.db 0x00
                                   3058 	.area CSEG    (CODE)
                                   3059 	.area CONST   (CODE)
      001C72                       3060 ___str_103:
      001C72 53 65 74 74 69 6E 67  3061 	.ascii "Setting pin %u of port %u off."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 66
             66 2E
      001C90 0D                    3062 	.db 0x0d
      001C91 00                    3063 	.db 0x00
                                   3064 	.area CSEG    (CODE)
                                   3065 	.area CONST   (CODE)
      001C92                       3066 ___str_104:
      001C92 49 6E 76 61 6C 69 64  3067 	.ascii "Invalid action!"
             20 61 63 74 69 6F 6E
             21
      001CA1 00                    3068 	.db 0x00
                                   3069 	.area CSEG    (CODE)
                                   3070 	.area CONST   (CODE)
      001CA2                       3071 ___str_108:
      001CA2 53 6F 72 72 79 20 74  3072 	.ascii "Sorry the pins 0 and 1 of port 3 are used by serial port."
             68 65 20 70 69 6E 73
             20 30 20 61 6E 64 20
             31 20 6F 66 20 70 6F
             72 74 20 33 20 61 72
             65 20 75 73 65 64 20
             62 79 20 73 65 72 69
             61 6C 20 70 6F 72 74
             2E
      001CDB 00                    3073 	.db 0x00
                                   3074 	.area CSEG    (CODE)
                                   3075 	.area CONST   (CODE)
      001CDC                       3076 ___str_109:
      001CDC 49 6E 76 61 6C 69 64  3077 	.ascii "Invalid pin!"
             20 70 69 6E 21
      001CE8 00                    3078 	.db 0x00
                                   3079 	.area CSEG    (CODE)
                                   3080 	.area CONST   (CODE)
      001CE9                       3081 ___str_111:
      001CE9 53 6F 72 72 79 20 74  3082 	.ascii "Sorry the pin 0 on port 2 is the blinking led,"
             68 65 20 70 69 6E 20
             30 20 6F 6E 20 70 6F
             72 74 20 32 20 69 73
             20 74 68 65 20 62 6C
             69 6E 6B 69 6E 67 20
             6C 65 64 2C
      001D17 0A                    3083 	.db 0x0a
      001D18 74 68 65 20 70 69 6E  3084 	.ascii "the pin 1 is the serial character transmit blink,"
             20 31 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 74
             72 61 6E 73 6D 69 74
             20 62 6C 69 6E 6B 2C
      001D49 0A                    3085 	.db 0x0a
      001D4A 74 68 65 20 70 69 6E  3086 	.ascii "the pin 2 is the serial character receive blink."
             20 32 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 72
             65 63 65 69 76 65 20
             62 6C 69 6E 6B 2E
      001D7A 00                    3087 	.db 0x00
                                   3088 	.area CSEG    (CODE)
                                   3089 	.area CONST   (CODE)
      001D7B                       3090 ___str_128:
      001D7B 41 76 61 69 6C 61 62  3091 	.ascii "Available comamnds are:"
             6C 65 20 63 6F 6D 61
             6D 6E 64 73 20 61 72
             65 3A
      001D92 0A                    3092 	.db 0x0a
      001D93 30 2C 20 31 2C 20 32  3093 	.ascii "0, 1, 2 or 3 to change pin ports status."
             20 6F 72 20 33 20 74
             6F 20 63 68 61 6E 67
             65 20 70 69 6E 20 70
             6F 72 74 73 20 73 74
             61 74 75 73 2E
      001DBB 0A                    3094 	.db 0x0a
      001DBC 63 20 64 75 6D 70 20  3095 	.ascii "c dump code memory."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 2E
      001DCF 0A                    3096 	.db 0x0a
      001DD0 43 20 64 75 6D 70 20  3097 	.ascii "C dump code memory in hex format."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 20 69 6E
             20 68 65 78 20 66 6F
             72 6D 61 74 2E
      001DF1 0A                    3098 	.db 0x0a
      001DF2 65 20 64 75 6D 70 20  3099 	.ascii "e dump eeprom memory."
             65 65 70 72 6F 6D 20
             6D 65 6D 6F 72 79 2E
      001E07 0A                    3100 	.db 0x0a
      001E08 45 20 64 75 6D 70 20  3101 	.ascii "E dump eeprom memory in hex format."
             65 65 70 72 6F 6D 20
             6D 65 6D 6F 72 79 20
             69 6E 20 68 65 78 20
             66 6F 72 6D 61 74 2E
      001E2B 0A                    3102 	.db 0x0a
      001E2C 6D 20 64 75 6D 70 20  3103 	.ascii "m dump ram memory."
             72 61 6D 20 6D 65 6D
             6F 72 79 2E
      001E3E 0A                    3104 	.db 0x0a
      001E3F 66 20 70 72 69 6E 74  3105 	.ascii "f print felix"
             20 66 65 6C 69 78
      001E4C 0A                    3106 	.db 0x0a
      001E4D 48 20 70 72 69 6E 74  3107 	.ascii "H print this help."
             20 74 68 69 73 20 68
             65 6C 70 2E
      001E5F 00                    3108 	.db 0x00
                                   3109 	.area CSEG    (CODE)
                                   3110 	.area CONST   (CODE)
      001E60                       3111 ___str_129:
      001E60 49 6E 73 65 72 74 20  3112 	.ascii "Insert command, h for help."
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 2E
      001E7B 00                    3113 	.db 0x00
                                   3114 	.area CSEG    (CODE)
                                   3115 	.area CONST   (CODE)
      001E7C                       3116 ___str_130:
      001E7C 49 6E 76 61 6C 69 64  3117 	.ascii "Invalid command %c."
             20 63 6F 6D 6D 61 6E
             64 20 25 63 2E
      001E8F 0D                    3118 	.db 0x0d
      001E90 00                    3119 	.db 0x00
                                   3120 	.area CSEG    (CODE)
                                   3121 	.area CONST   (CODE)
      001E91                       3122 ___str_131:
      001E91 49 6E 73 65 72 74 20  3123 	.ascii "Insert command, h for help:"
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 3A
      001EAC 00                    3124 	.db 0x00
                                   3125 	.area CSEG    (CODE)
                                   3126 	.area XINIT   (CODE)
                                   3127 	.area CABS    (ABS,CODE)
