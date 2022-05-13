                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _writeEepromAssembler
                                     12 	.globl _readEepromAssembler
                                     13 	.globl _BREG_F7
                                     14 	.globl _BREG_F6
                                     15 	.globl _BREG_F5
                                     16 	.globl _BREG_F4
                                     17 	.globl _BREG_F3
                                     18 	.globl _BREG_F2
                                     19 	.globl _BREG_F1
                                     20 	.globl _BREG_F0
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _FL
                                     28 	.globl _P
                                     29 	.globl _TF2
                                     30 	.globl _EXF2
                                     31 	.globl _RCLK
                                     32 	.globl _TCLK
                                     33 	.globl _EXEN2
                                     34 	.globl _TR2
                                     35 	.globl _C_T2
                                     36 	.globl _CP_RL2
                                     37 	.globl _T2CON_7
                                     38 	.globl _T2CON_6
                                     39 	.globl _T2CON_5
                                     40 	.globl _T2CON_4
                                     41 	.globl _T2CON_3
                                     42 	.globl _T2CON_2
                                     43 	.globl _T2CON_1
                                     44 	.globl _T2CON_0
                                     45 	.globl _PT2
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ET2
                                     69 	.globl _ES
                                     70 	.globl _ET1
                                     71 	.globl _EX1
                                     72 	.globl _ET0
                                     73 	.globl _EX0
                                     74 	.globl _P2_7
                                     75 	.globl _P2_6
                                     76 	.globl _P2_5
                                     77 	.globl _P2_4
                                     78 	.globl _P2_3
                                     79 	.globl _P2_2
                                     80 	.globl _P2_1
                                     81 	.globl _P2_0
                                     82 	.globl _SM0
                                     83 	.globl _SM1
                                     84 	.globl _SM2
                                     85 	.globl _REN
                                     86 	.globl _TB8
                                     87 	.globl _RB8
                                     88 	.globl _TI
                                     89 	.globl _RI
                                     90 	.globl _SCK
                                     91 	.globl _MISO
                                     92 	.globl _MOSI
                                     93 	.globl _SS
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _ALE
                                    121 	.globl _B
                                    122 	.globl _A
                                    123 	.globl _ACC
                                    124 	.globl _SPCR
                                    125 	.globl _PSW
                                    126 	.globl _TH2
                                    127 	.globl _TL2
                                    128 	.globl _RCAP2H
                                    129 	.globl _RCAP2L
                                    130 	.globl _T2MOD
                                    131 	.globl _T2CON
                                    132 	.globl _SADEN
                                    133 	.globl _IP
                                    134 	.globl _IPH
                                    135 	.globl _P3
                                    136 	.globl _SPSR
                                    137 	.globl _SADDR
                                    138 	.globl _IE
                                    139 	.globl _WDTCON
                                    140 	.globl _WDTRST
                                    141 	.globl _P2
                                    142 	.globl _SBUF
                                    143 	.globl _SCON
                                    144 	.globl _EECON
                                    145 	.globl _P1
                                    146 	.globl _CLKREG
                                    147 	.globl _AUXR
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TMOD
                                    153 	.globl _TCON
                                    154 	.globl _PCON
                                    155 	.globl _SPDR
                                    156 	.globl _DP1H
                                    157 	.globl _DP1L
                                    158 	.globl _DP0H
                                    159 	.globl _DPH
                                    160 	.globl _DP0L
                                    161 	.globl _DPL
                                    162 	.globl _SP
                                    163 	.globl _P0
                                    164 	.globl _writeEeprom_PARM_2
                                    165 	.globl _tempc
                                    166 	.globl _tempb
                                    167 	.globl _tempa
                                    168 	.globl _readEeprom
                                    169 	.globl _writeEeprom
                                    170 ;--------------------------------------------------------
                                    171 ; special function registers
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0	=	0x0080
                           000081   176 _SP	=	0x0081
                           000082   177 _DPL	=	0x0082
                           000082   178 _DP0L	=	0x0082
                           000083   179 _DPH	=	0x0083
                           000083   180 _DP0H	=	0x0083
                           000084   181 _DP1L	=	0x0084
                           000085   182 _DP1H	=	0x0085
                           000086   183 _SPDR	=	0x0086
                           000087   184 _PCON	=	0x0087
                           000088   185 _TCON	=	0x0088
                           000089   186 _TMOD	=	0x0089
                           00008A   187 _TL0	=	0x008a
                           00008B   188 _TL1	=	0x008b
                           00008C   189 _TH0	=	0x008c
                           00008D   190 _TH1	=	0x008d
                           00008E   191 _AUXR	=	0x008e
                           00008F   192 _CLKREG	=	0x008f
                           000090   193 _P1	=	0x0090
                           000096   194 _EECON	=	0x0096
                           000098   195 _SCON	=	0x0098
                           000099   196 _SBUF	=	0x0099
                           0000A0   197 _P2	=	0x00a0
                           0000A6   198 _WDTRST	=	0x00a6
                           0000A7   199 _WDTCON	=	0x00a7
                           0000A8   200 _IE	=	0x00a8
                           0000A9   201 _SADDR	=	0x00a9
                           0000AA   202 _SPSR	=	0x00aa
                           0000B0   203 _P3	=	0x00b0
                           0000B7   204 _IPH	=	0x00b7
                           0000B8   205 _IP	=	0x00b8
                           0000B9   206 _SADEN	=	0x00b9
                           0000C8   207 _T2CON	=	0x00c8
                           0000C9   208 _T2MOD	=	0x00c9
                           0000CA   209 _RCAP2L	=	0x00ca
                           0000CB   210 _RCAP2H	=	0x00cb
                           0000CC   211 _TL2	=	0x00cc
                           0000CD   212 _TH2	=	0x00cd
                           0000D0   213 _PSW	=	0x00d0
                           0000D5   214 _SPCR	=	0x00d5
                           0000E0   215 _ACC	=	0x00e0
                           0000E0   216 _A	=	0x00e0
                           0000F0   217 _B	=	0x00f0
                           00008E   218 _ALE	=	0x008e
                                    219 ;--------------------------------------------------------
                                    220 ; special function bits
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0_0	=	0x0080
                           000081   225 _P0_1	=	0x0081
                           000082   226 _P0_2	=	0x0082
                           000083   227 _P0_3	=	0x0083
                           000084   228 _P0_4	=	0x0084
                           000085   229 _P0_5	=	0x0085
                           000086   230 _P0_6	=	0x0086
                           000087   231 _P0_7	=	0x0087
                           000088   232 _IT0	=	0x0088
                           000089   233 _IE0	=	0x0089
                           00008A   234 _IT1	=	0x008a
                           00008B   235 _IE1	=	0x008b
                           00008C   236 _TR0	=	0x008c
                           00008D   237 _TF0	=	0x008d
                           00008E   238 _TR1	=	0x008e
                           00008F   239 _TF1	=	0x008f
                           000090   240 _P1_0	=	0x0090
                           000091   241 _P1_1	=	0x0091
                           000092   242 _P1_2	=	0x0092
                           000093   243 _P1_3	=	0x0093
                           000094   244 _P1_4	=	0x0094
                           000095   245 _P1_5	=	0x0095
                           000096   246 _P1_6	=	0x0096
                           000097   247 _P1_7	=	0x0097
                           000090   248 _T2	=	0x0090
                           000091   249 _T2EX	=	0x0091
                           000094   250 _SS	=	0x0094
                           000095   251 _MOSI	=	0x0095
                           000096   252 _MISO	=	0x0096
                           000097   253 _SCK	=	0x0097
                           000098   254 _RI	=	0x0098
                           000099   255 _TI	=	0x0099
                           00009A   256 _RB8	=	0x009a
                           00009B   257 _TB8	=	0x009b
                           00009C   258 _REN	=	0x009c
                           00009D   259 _SM2	=	0x009d
                           00009E   260 _SM1	=	0x009e
                           00009F   261 _SM0	=	0x009f
                           0000A0   262 _P2_0	=	0x00a0
                           0000A1   263 _P2_1	=	0x00a1
                           0000A2   264 _P2_2	=	0x00a2
                           0000A3   265 _P2_3	=	0x00a3
                           0000A4   266 _P2_4	=	0x00a4
                           0000A5   267 _P2_5	=	0x00a5
                           0000A6   268 _P2_6	=	0x00a6
                           0000A7   269 _P2_7	=	0x00a7
                           0000A8   270 _EX0	=	0x00a8
                           0000A9   271 _ET0	=	0x00a9
                           0000AA   272 _EX1	=	0x00aa
                           0000AB   273 _ET1	=	0x00ab
                           0000AC   274 _ES	=	0x00ac
                           0000AD   275 _ET2	=	0x00ad
                           0000AF   276 _EA	=	0x00af
                           0000B0   277 _P3_0	=	0x00b0
                           0000B1   278 _P3_1	=	0x00b1
                           0000B2   279 _P3_2	=	0x00b2
                           0000B3   280 _P3_3	=	0x00b3
                           0000B4   281 _P3_4	=	0x00b4
                           0000B5   282 _P3_5	=	0x00b5
                           0000B6   283 _P3_6	=	0x00b6
                           0000B7   284 _P3_7	=	0x00b7
                           0000B0   285 _RXD	=	0x00b0
                           0000B1   286 _TXD	=	0x00b1
                           0000B2   287 _INT0	=	0x00b2
                           0000B3   288 _INT1	=	0x00b3
                           0000B4   289 _T0	=	0x00b4
                           0000B5   290 _T1	=	0x00b5
                           0000B6   291 _WR	=	0x00b6
                           0000B7   292 _RD	=	0x00b7
                           0000B8   293 _PX0	=	0x00b8
                           0000B9   294 _PT0	=	0x00b9
                           0000BA   295 _PX1	=	0x00ba
                           0000BB   296 _PT1	=	0x00bb
                           0000BC   297 _PS	=	0x00bc
                           0000BD   298 _PT2	=	0x00bd
                           0000C8   299 _T2CON_0	=	0x00c8
                           0000C9   300 _T2CON_1	=	0x00c9
                           0000CA   301 _T2CON_2	=	0x00ca
                           0000CB   302 _T2CON_3	=	0x00cb
                           0000CC   303 _T2CON_4	=	0x00cc
                           0000CD   304 _T2CON_5	=	0x00cd
                           0000CE   305 _T2CON_6	=	0x00ce
                           0000CF   306 _T2CON_7	=	0x00cf
                           0000C8   307 _CP_RL2	=	0x00c8
                           0000C9   308 _C_T2	=	0x00c9
                           0000CA   309 _TR2	=	0x00ca
                           0000CB   310 _EXEN2	=	0x00cb
                           0000CC   311 _TCLK	=	0x00cc
                           0000CD   312 _RCLK	=	0x00cd
                           0000CE   313 _EXF2	=	0x00ce
                           0000CF   314 _TF2	=	0x00cf
                           0000D0   315 _P	=	0x00d0
                           0000D1   316 _FL	=	0x00d1
                           0000D2   317 _OV	=	0x00d2
                           0000D3   318 _RS0	=	0x00d3
                           0000D4   319 _RS1	=	0x00d4
                           0000D5   320 _F0	=	0x00d5
                           0000D6   321 _AC	=	0x00d6
                           0000D7   322 _CY	=	0x00d7
                           0000F0   323 _BREG_F0	=	0x00f0
                           0000F1   324 _BREG_F1	=	0x00f1
                           0000F2   325 _BREG_F2	=	0x00f2
                           0000F3   326 _BREG_F3	=	0x00f3
                           0000F4   327 _BREG_F4	=	0x00f4
                           0000F5   328 _BREG_F5	=	0x00f5
                           0000F6   329 _BREG_F6	=	0x00f6
                           0000F7   330 _BREG_F7	=	0x00f7
                                    331 ;--------------------------------------------------------
                                    332 ; overlayable register banks
                                    333 ;--------------------------------------------------------
                                    334 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        335 	.ds 8
                                    336 ;--------------------------------------------------------
                                    337 ; internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area DSEG    (DATA)
      000008                        340 _tempa::
      000008                        341 	.ds 1
      000009                        342 _tempb::
      000009                        343 	.ds 1
      00000A                        344 _tempc::
      00000A                        345 	.ds 1
      00000B                        346 _writeEeprom_PARM_2:
      00000B                        347 	.ds 2
                                    348 ;--------------------------------------------------------
                                    349 ; overlayable items in internal ram
                                    350 ;--------------------------------------------------------
                                    351 ;--------------------------------------------------------
                                    352 ; indirectly addressable internal ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area ISEG    (DATA)
                                    355 ;--------------------------------------------------------
                                    356 ; absolute internal ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area IABS    (ABS,DATA)
                                    359 	.area IABS    (ABS,DATA)
                                    360 ;--------------------------------------------------------
                                    361 ; bit data
                                    362 ;--------------------------------------------------------
                                    363 	.area BSEG    (BIT)
                                    364 ;--------------------------------------------------------
                                    365 ; paged external ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area PSEG    (PAG,XDATA)
                                    368 ;--------------------------------------------------------
                                    369 ; external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XSEG    (XDATA)
                                    372 ;--------------------------------------------------------
                                    373 ; absolute external ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XABS    (ABS,XDATA)
                                    376 ;--------------------------------------------------------
                                    377 ; external initialized ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area XISEG   (XDATA)
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT0 (CODE)
                                    382 	.area GSINIT1 (CODE)
                                    383 	.area GSINIT2 (CODE)
                                    384 	.area GSINIT3 (CODE)
                                    385 	.area GSINIT4 (CODE)
                                    386 	.area GSINIT5 (CODE)
                                    387 	.area GSINIT  (CODE)
                                    388 	.area GSFINAL (CODE)
                                    389 	.area CSEG    (CODE)
                                    390 ;--------------------------------------------------------
                                    391 ; global & static initialisations
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
                                    394 	.area GSINIT  (CODE)
                                    395 	.area GSFINAL (CODE)
                                    396 	.area GSINIT  (CODE)
                                    397 ;--------------------------------------------------------
                                    398 ; Home
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area HOME    (CODE)
                                    402 ;--------------------------------------------------------
                                    403 ; code
                                    404 ;--------------------------------------------------------
                                    405 	.area CSEG    (CODE)
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'readEepromAssembler'
                                    408 ;------------------------------------------------------------
                                    409 ;	library/eeprom.c:7: void readEepromAssembler (void) __naked
                                    410 ;	-----------------------------------------
                                    411 ;	 function readEepromAssembler
                                    412 ;	-----------------------------------------
      000EED                        413 _readEepromAssembler:
                                    414 ;	naked function: no prologue.
                                    415 ;	library/eeprom.c:25: __endasm;
      000EED C0 E0            [24]  416 	push	acc
      000EEF C0 F0            [24]  417 	push	b
      000EF1 C0 82            [24]  418 	push	dpl
      000EF3 C0 83            [24]  419 	push	dph
      000EF5 85 08 82         [24]  420 	mov	dpl, _tempa
      000EF8 85 09 83         [24]  421 	mov	dph, _tempb
      000EFB E0               [24]  422 	movx	a, @dptr
      000EFC F5 0A            [12]  423 	mov	_tempc, a
      000EFE D0 83            [24]  424 	pop	dph
      000F00 D0 82            [24]  425 	pop	dpl
      000F02 D0 F0            [24]  426 	pop	b
      000F04 D0 E0            [24]  427 	pop	acc
      000F06 32               [24]  428 	reti
                                    429 ;	library/eeprom.c:26: }
                                    430 ;	naked function: no epilogue.
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'readEeprom'
                                    433 ;------------------------------------------------------------
                                    434 ;addres                    Allocated to registers r6 r7 
                                    435 ;returnvalue               Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	library/eeprom.c:28: unsigned char readEeprom (unsigned short addres)
                                    438 ;	-----------------------------------------
                                    439 ;	 function readEeprom
                                    440 ;	-----------------------------------------
      000F07                        441 _readEeprom:
                           000007   442 	ar7 = 0x07
                           000006   443 	ar6 = 0x06
                           000005   444 	ar5 = 0x05
                           000004   445 	ar4 = 0x04
                           000003   446 	ar3 = 0x03
                           000002   447 	ar2 = 0x02
                           000001   448 	ar1 = 0x01
                           000000   449 	ar0 = 0x00
      000F07 AE 82            [24]  450 	mov	r6,dpl
      000F09 AF 83            [24]  451 	mov	r7,dph
                                    452 ;	library/eeprom.c:37: EECON |= 8;
      000F0B 43 96 08         [24]  453 	orl	_EECON,#0x08
                                    454 ;	library/eeprom.c:39: tempa = (unsigned char) (addres & 255);
      000F0E 8E 08            [24]  455 	mov	_tempa,r6
                                    456 ;	library/eeprom.c:40: tempb = (unsigned char) ((addres >> 8) & 255);
      000F10 8F 09            [24]  457 	mov	_tempb,r7
                                    458 ;	library/eeprom.c:43: readEepromAssembler();
      000F12 12 0E ED         [24]  459 	lcall	_readEepromAssembler
                                    460 ;	library/eeprom.c:45: returnvalue = tempc;
      000F15 85 0A 82         [24]  461 	mov	dpl,_tempc
                                    462 ;	library/eeprom.c:49: EECON &= ~8;
      000F18 53 96 F7         [24]  463 	anl	_EECON,#0xf7
                                    464 ;	library/eeprom.c:51: return returnvalue;
                                    465 ;	library/eeprom.c:52: }
      000F1B 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'writeEepromAssembler'
                                    469 ;------------------------------------------------------------
                                    470 ;	library/eeprom.c:54: void writeEepromAssembler (void) __naked
                                    471 ;	-----------------------------------------
                                    472 ;	 function writeEepromAssembler
                                    473 ;	-----------------------------------------
      000F1C                        474 _writeEepromAssembler:
                                    475 ;	naked function: no prologue.
                                    476 ;	library/eeprom.c:72: __endasm;
      000F1C C0 E0            [24]  477 	push	acc
      000F1E C0 F0            [24]  478 	push	b
      000F20 C0 82            [24]  479 	push	dpl
      000F22 C0 83            [24]  480 	push	dph
      000F24 85 08 82         [24]  481 	mov	dpl, _tempa
      000F27 85 09 83         [24]  482 	mov	dph, _tempb
      000F2A E5 0A            [12]  483 	mov	a, _tempc
      000F2C F0               [24]  484 	movx	@dptr, a
      000F2D D0 83            [24]  485 	pop	dph
      000F2F D0 82            [24]  486 	pop	dpl
      000F31 D0 F0            [24]  487 	pop	b
      000F33 D0 E0            [24]  488 	pop	acc
      000F35 32               [24]  489 	reti
                                    490 ;	library/eeprom.c:73: }
                                    491 ;	naked function: no epilogue.
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'writeEeprom'
                                    494 ;------------------------------------------------------------
                                    495 ;addres                    Allocated with name '_writeEeprom_PARM_2'
                                    496 ;datavalue                 Allocated to registers r7 
                                    497 ;------------------------------------------------------------
                                    498 ;	library/eeprom.c:75: void writeEeprom (unsigned char datavalue, unsigned short addres)
                                    499 ;	-----------------------------------------
                                    500 ;	 function writeEeprom
                                    501 ;	-----------------------------------------
      000F36                        502 _writeEeprom:
      000F36 AF 82            [24]  503 	mov	r7,dpl
                                    504 ;	library/eeprom.c:79: EECON |= 8;
      000F38 43 96 08         [24]  505 	orl	_EECON,#0x08
                                    506 ;	library/eeprom.c:83: EECON |= 16;
      000F3B 43 96 10         [24]  507 	orl	_EECON,#0x10
                                    508 ;	library/eeprom.c:89: tempa = (unsigned char) (addres & 255);
      000F3E 85 0B 08         [24]  509 	mov	_tempa,_writeEeprom_PARM_2
                                    510 ;	library/eeprom.c:90: tempb = (unsigned char) ((addres >> 8) & 255);
      000F41 85 0C 09         [24]  511 	mov	_tempb,(_writeEeprom_PARM_2 + 1)
                                    512 ;	library/eeprom.c:91: tempc = datavalue;
      000F44 8F 0A            [24]  513 	mov	_tempc,r7
                                    514 ;	library/eeprom.c:94: writeEepromAssembler();
      000F46 12 0F 1C         [24]  515 	lcall	_writeEepromAssembler
                                    516 ;	library/eeprom.c:97: while ((EECON | 2) == 0);
                                    517 ;	library/eeprom.c:101: EECON &= ~16;
      000F49 53 96 EF         [24]  518 	anl	_EECON,#0xef
                                    519 ;	library/eeprom.c:105: EECON &= ~8;
      000F4C 53 96 F7         [24]  520 	anl	_EECON,#0xf7
                                    521 ;	library/eeprom.c:108: while (readEeprom(addres) != datavalue);
      000F4F                        522 00104$:
      000F4F 85 0B 82         [24]  523 	mov	dpl,_writeEeprom_PARM_2
      000F52 85 0C 83         [24]  524 	mov	dph,(_writeEeprom_PARM_2 + 1)
      000F55 C0 07            [24]  525 	push	ar7
      000F57 12 0F 07         [24]  526 	lcall	_readEeprom
      000F5A AE 82            [24]  527 	mov	r6,dpl
      000F5C D0 07            [24]  528 	pop	ar7
      000F5E EE               [12]  529 	mov	a,r6
      000F5F B5 07 ED         [24]  530 	cjne	a,ar7,00104$
                                    531 ;	library/eeprom.c:109: }
      000F62 22               [24]  532 	ret
                                    533 	.area CSEG    (CODE)
                                    534 	.area CONST   (CODE)
                                    535 	.area XINIT   (CODE)
                                    536 	.area CABS    (ABS,CODE)
