                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _init_ser_PARM_2
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
                                    163 	.globl _tx_head
                                    164 	.globl _rx_tail
                                    165 	.globl _rx_head
                                    166 	.globl _tx_tail
                                    167 	.globl _init_ser
                                    168 	.globl _SerInt
                                    169 	.globl _ser_write_byte
                                    170 	.globl _ser_byte_avail
                                    171 	.globl _ser_read_byte
                                    172 	.globl _putchar
                                    173 	.globl _getchar
                                    174 ;--------------------------------------------------------
                                    175 ; special function registers
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0	=	0x0080
                           000081   180 _SP	=	0x0081
                           000082   181 _DPL	=	0x0082
                           000082   182 _DP0L	=	0x0082
                           000083   183 _DPH	=	0x0083
                           000083   184 _DP0H	=	0x0083
                           000084   185 _DP1L	=	0x0084
                           000085   186 _DP1H	=	0x0085
                           000086   187 _SPDR	=	0x0086
                           000087   188 _PCON	=	0x0087
                           000088   189 _TCON	=	0x0088
                           000089   190 _TMOD	=	0x0089
                           00008A   191 _TL0	=	0x008a
                           00008B   192 _TL1	=	0x008b
                           00008C   193 _TH0	=	0x008c
                           00008D   194 _TH1	=	0x008d
                           00008E   195 _AUXR	=	0x008e
                           00008F   196 _CLKREG	=	0x008f
                           000090   197 _P1	=	0x0090
                           000096   198 _EECON	=	0x0096
                           000098   199 _SCON	=	0x0098
                           000099   200 _SBUF	=	0x0099
                           0000A0   201 _P2	=	0x00a0
                           0000A6   202 _WDTRST	=	0x00a6
                           0000A7   203 _WDTCON	=	0x00a7
                           0000A8   204 _IE	=	0x00a8
                           0000A9   205 _SADDR	=	0x00a9
                           0000AA   206 _SPSR	=	0x00aa
                           0000B0   207 _P3	=	0x00b0
                           0000B7   208 _IPH	=	0x00b7
                           0000B8   209 _IP	=	0x00b8
                           0000B9   210 _SADEN	=	0x00b9
                           0000C8   211 _T2CON	=	0x00c8
                           0000C9   212 _T2MOD	=	0x00c9
                           0000CA   213 _RCAP2L	=	0x00ca
                           0000CB   214 _RCAP2H	=	0x00cb
                           0000CC   215 _TL2	=	0x00cc
                           0000CD   216 _TH2	=	0x00cd
                           0000D0   217 _PSW	=	0x00d0
                           0000D5   218 _SPCR	=	0x00d5
                           0000E0   219 _ACC	=	0x00e0
                           0000E0   220 _A	=	0x00e0
                           0000F0   221 _B	=	0x00f0
                           00008E   222 _ALE	=	0x008e
                                    223 ;--------------------------------------------------------
                                    224 ; special function bits
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           000080   228 _P0_0	=	0x0080
                           000081   229 _P0_1	=	0x0081
                           000082   230 _P0_2	=	0x0082
                           000083   231 _P0_3	=	0x0083
                           000084   232 _P0_4	=	0x0084
                           000085   233 _P0_5	=	0x0085
                           000086   234 _P0_6	=	0x0086
                           000087   235 _P0_7	=	0x0087
                           000088   236 _IT0	=	0x0088
                           000089   237 _IE0	=	0x0089
                           00008A   238 _IT1	=	0x008a
                           00008B   239 _IE1	=	0x008b
                           00008C   240 _TR0	=	0x008c
                           00008D   241 _TF0	=	0x008d
                           00008E   242 _TR1	=	0x008e
                           00008F   243 _TF1	=	0x008f
                           000090   244 _P1_0	=	0x0090
                           000091   245 _P1_1	=	0x0091
                           000092   246 _P1_2	=	0x0092
                           000093   247 _P1_3	=	0x0093
                           000094   248 _P1_4	=	0x0094
                           000095   249 _P1_5	=	0x0095
                           000096   250 _P1_6	=	0x0096
                           000097   251 _P1_7	=	0x0097
                           000090   252 _T2	=	0x0090
                           000091   253 _T2EX	=	0x0091
                           000094   254 _SS	=	0x0094
                           000095   255 _MOSI	=	0x0095
                           000096   256 _MISO	=	0x0096
                           000097   257 _SCK	=	0x0097
                           000098   258 _RI	=	0x0098
                           000099   259 _TI	=	0x0099
                           00009A   260 _RB8	=	0x009a
                           00009B   261 _TB8	=	0x009b
                           00009C   262 _REN	=	0x009c
                           00009D   263 _SM2	=	0x009d
                           00009E   264 _SM1	=	0x009e
                           00009F   265 _SM0	=	0x009f
                           0000A0   266 _P2_0	=	0x00a0
                           0000A1   267 _P2_1	=	0x00a1
                           0000A2   268 _P2_2	=	0x00a2
                           0000A3   269 _P2_3	=	0x00a3
                           0000A4   270 _P2_4	=	0x00a4
                           0000A5   271 _P2_5	=	0x00a5
                           0000A6   272 _P2_6	=	0x00a6
                           0000A7   273 _P2_7	=	0x00a7
                           0000A8   274 _EX0	=	0x00a8
                           0000A9   275 _ET0	=	0x00a9
                           0000AA   276 _EX1	=	0x00aa
                           0000AB   277 _ET1	=	0x00ab
                           0000AC   278 _ES	=	0x00ac
                           0000AD   279 _ET2	=	0x00ad
                           0000AF   280 _EA	=	0x00af
                           0000B0   281 _P3_0	=	0x00b0
                           0000B1   282 _P3_1	=	0x00b1
                           0000B2   283 _P3_2	=	0x00b2
                           0000B3   284 _P3_3	=	0x00b3
                           0000B4   285 _P3_4	=	0x00b4
                           0000B5   286 _P3_5	=	0x00b5
                           0000B6   287 _P3_6	=	0x00b6
                           0000B7   288 _P3_7	=	0x00b7
                           0000B0   289 _RXD	=	0x00b0
                           0000B1   290 _TXD	=	0x00b1
                           0000B2   291 _INT0	=	0x00b2
                           0000B3   292 _INT1	=	0x00b3
                           0000B4   293 _T0	=	0x00b4
                           0000B5   294 _T1	=	0x00b5
                           0000B6   295 _WR	=	0x00b6
                           0000B7   296 _RD	=	0x00b7
                           0000B8   297 _PX0	=	0x00b8
                           0000B9   298 _PT0	=	0x00b9
                           0000BA   299 _PX1	=	0x00ba
                           0000BB   300 _PT1	=	0x00bb
                           0000BC   301 _PS	=	0x00bc
                           0000BD   302 _PT2	=	0x00bd
                           0000C8   303 _T2CON_0	=	0x00c8
                           0000C9   304 _T2CON_1	=	0x00c9
                           0000CA   305 _T2CON_2	=	0x00ca
                           0000CB   306 _T2CON_3	=	0x00cb
                           0000CC   307 _T2CON_4	=	0x00cc
                           0000CD   308 _T2CON_5	=	0x00cd
                           0000CE   309 _T2CON_6	=	0x00ce
                           0000CF   310 _T2CON_7	=	0x00cf
                           0000C8   311 _CP_RL2	=	0x00c8
                           0000C9   312 _C_T2	=	0x00c9
                           0000CA   313 _TR2	=	0x00ca
                           0000CB   314 _EXEN2	=	0x00cb
                           0000CC   315 _TCLK	=	0x00cc
                           0000CD   316 _RCLK	=	0x00cd
                           0000CE   317 _EXF2	=	0x00ce
                           0000CF   318 _TF2	=	0x00cf
                           0000D0   319 _P	=	0x00d0
                           0000D1   320 _FL	=	0x00d1
                           0000D2   321 _OV	=	0x00d2
                           0000D3   322 _RS0	=	0x00d3
                           0000D4   323 _RS1	=	0x00d4
                           0000D5   324 _F0	=	0x00d5
                           0000D6   325 _AC	=	0x00d6
                           0000D7   326 _CY	=	0x00d7
                           0000F0   327 _BREG_F0	=	0x00f0
                           0000F1   328 _BREG_F1	=	0x00f1
                           0000F2   329 _BREG_F2	=	0x00f2
                           0000F3   330 _BREG_F3	=	0x00f3
                           0000F4   331 _BREG_F4	=	0x00f4
                           0000F5   332 _BREG_F5	=	0x00f5
                           0000F6   333 _BREG_F6	=	0x00f6
                           0000F7   334 _BREG_F7	=	0x00f7
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable register banks
                                    337 ;--------------------------------------------------------
                                    338 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        339 	.ds 8
                                    340 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        341 	.ds 8
                                    342 ;--------------------------------------------------------
                                    343 ; internal ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area DSEG    (DATA)
      000032                        346 _tx_tail::
      000032                        347 	.ds 1
      000033                        348 _rx_head::
      000033                        349 	.ds 1
      000034                        350 _rx_tail::
      000034                        351 	.ds 1
      000035                        352 _tx_head::
      000035                        353 	.ds 1
      000036                        354 _rx_buf:
      000036                        355 	.ds 16
      000046                        356 _tx_buf:
      000046                        357 	.ds 16
                                    358 ;--------------------------------------------------------
                                    359 ; overlayable items in internal ram
                                    360 ;--------------------------------------------------------
                                    361 	.area	OSEG    (OVR,DATA)
      00000E                        362 _init_ser_PARM_2:
      00000E                        363 	.ds 1
                                    364 	.area	OSEG    (OVR,DATA)
                                    365 	.area	OSEG    (OVR,DATA)
                                    366 ;--------------------------------------------------------
                                    367 ; indirectly addressable internal ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area ISEG    (DATA)
                                    370 ;--------------------------------------------------------
                                    371 ; absolute internal ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area IABS    (ABS,DATA)
                                    374 	.area IABS    (ABS,DATA)
                                    375 ;--------------------------------------------------------
                                    376 ; bit data
                                    377 ;--------------------------------------------------------
                                    378 	.area BSEG    (BIT)
      000000                        379 _is_txing:
      000000                        380 	.ds 1
      000001                        381 _ser_byte_avail_sloc0_1_0:
      000001                        382 	.ds 1
                                    383 ;--------------------------------------------------------
                                    384 ; paged external ram data
                                    385 ;--------------------------------------------------------
                                    386 	.area PSEG    (PAG,XDATA)
                                    387 ;--------------------------------------------------------
                                    388 ; external ram data
                                    389 ;--------------------------------------------------------
                                    390 	.area XSEG    (XDATA)
                                    391 ;--------------------------------------------------------
                                    392 ; absolute external ram data
                                    393 ;--------------------------------------------------------
                                    394 	.area XABS    (ABS,XDATA)
                                    395 ;--------------------------------------------------------
                                    396 ; external initialized ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area XISEG   (XDATA)
                                    399 	.area HOME    (CODE)
                                    400 	.area GSINIT0 (CODE)
                                    401 	.area GSINIT1 (CODE)
                                    402 	.area GSINIT2 (CODE)
                                    403 	.area GSINIT3 (CODE)
                                    404 	.area GSINIT4 (CODE)
                                    405 	.area GSINIT5 (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area CSEG    (CODE)
                                    409 ;--------------------------------------------------------
                                    410 ; global & static initialisations
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area GSINIT  (CODE)
                                    414 	.area GSFINAL (CODE)
                                    415 	.area GSINIT  (CODE)
                                    416 ;--------------------------------------------------------
                                    417 ; Home
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
                                    420 	.area HOME    (CODE)
                                    421 ;--------------------------------------------------------
                                    422 ; code
                                    423 ;--------------------------------------------------------
                                    424 	.area CSEG    (CODE)
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'init_ser'
                                    427 ;------------------------------------------------------------
                                    428 ;tl2                       Allocated with name '_init_ser_PARM_2'
                                    429 ;th2                       Allocated to registers r7 
                                    430 ;------------------------------------------------------------
                                    431 ;	library/serial.c:19: void init_ser( unsigned char th2, unsigned char tl2 )
                                    432 ;	-----------------------------------------
                                    433 ;	 function init_ser
                                    434 ;	-----------------------------------------
      000F63                        435 _init_ser:
                           000007   436 	ar7 = 0x07
                           000006   437 	ar6 = 0x06
                           000005   438 	ar5 = 0x05
                           000004   439 	ar4 = 0x04
                           000003   440 	ar3 = 0x03
                           000002   441 	ar2 = 0x02
                           000001   442 	ar1 = 0x01
                           000000   443 	ar0 = 0x00
      000F63 AF 82            [24]  444 	mov	r7,dpl
                                    445 ;	library/serial.c:21: P2 = 0;
      000F65 75 A0 00         [24]  446 	mov	_P2,#0x00
                                    447 ;	library/serial.c:22: rx_head = 0;                  	// Default head/tail pointers.
      000F68 75 33 00         [24]  448 	mov	_rx_head,#0x00
                                    449 ;	library/serial.c:23: rx_tail = 0;
      000F6B 75 34 00         [24]  450 	mov	_rx_tail,#0x00
                                    451 ;	library/serial.c:24: tx_tail = 0;
      000F6E 75 32 00         [24]  452 	mov	_tx_tail,#0x00
                                    453 ;	library/serial.c:25: tx_head = 0;
      000F71 75 35 00         [24]  454 	mov	_tx_head,#0x00
                                    455 ;	library/serial.c:26: is_txing = FALSE;				// Not transmitting.
                                    456 ;	assignBit
      000F74 C2 00            [12]  457 	clr	_is_txing
                                    458 ;	library/serial.c:28: SER_RX_PORT = HIGH;          	// Set Txd & Rxd to high
                                    459 ;	assignBit
      000F76 D2 B0            [12]  460 	setb	_P3_0
                                    461 ;	library/serial.c:29: SER_TX_PORT = HIGH;
                                    462 ;	assignBit
      000F78 D2 B1            [12]  463 	setb	_P3_1
                                    464 ;	library/serial.c:31: SCON = 0x50;               		// Mode 1.
      000F7A 75 98 50         [24]  465 	mov	_SCON,#0x50
                                    466 ;	library/serial.c:37: T2CON &= 0xF0; /* EXEN2=0; TR2=0; C/T2#=0; CP/RL2#=0; */
      000F7D 53 C8 F0         [24]  467 	anl	_T2CON,#0xf0
                                    468 ;	library/serial.c:38: T2CON |= 0x30; /* RCLK = 1; TCLK=1; */
      000F80 43 C8 30         [24]  469 	orl	_T2CON,#0x30
                                    470 ;	library/serial.c:55: TH2 = th2; /* init value */
      000F83 8F CD            [24]  471 	mov	_TH2,r7
                                    472 ;	library/serial.c:56: TL2 = tl2; /* init value */
      000F85 85 0E CC         [24]  473 	mov	_TL2,_init_ser_PARM_2
                                    474 ;	library/serial.c:57: RCAP2H = th2; /* reload value, 115200 Bds at 11.059MHz */
      000F88 8F CB            [24]  475 	mov	_RCAP2H,r7
                                    476 ;	library/serial.c:58: RCAP2L = tl2; /* reload value, 115200 Bds at 11.059MHz */
      000F8A 85 0E CA         [24]  477 	mov	_RCAP2L,_init_ser_PARM_2
                                    478 ;	library/serial.c:60: TR2 = 1;                     		// Timer 2 run.
                                    479 ;	assignBit
      000F8D D2 CA            [12]  480 	setb	_TR2
                                    481 ;	library/serial.c:64: PS = TRUE;                    	// Low priority.
                                    482 ;	assignBit
      000F8F D2 BC            [12]  483 	setb	_PS
                                    484 ;	library/serial.c:66: EA = 1;													// Enable interrupts.
                                    485 ;	assignBit
      000F91 D2 AF            [12]  486 	setb	_EA
                                    487 ;	library/serial.c:67: ES = TRUE;                     	// Enable serial interrupt.
                                    488 ;	assignBit
      000F93 D2 AC            [12]  489 	setb	_ES
                                    490 ;	library/serial.c:68: }
      000F95 22               [24]  491 	ret
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'SerInt'
                                    494 ;------------------------------------------------------------
                                    495 ;	library/serial.c:74: void SerInt( void ) __interrupt 4 __using 2
                                    496 ;	-----------------------------------------
                                    497 ;	 function SerInt
                                    498 ;	-----------------------------------------
      000F96                        499 _SerInt:
                           000017   500 	ar7 = 0x17
                           000016   501 	ar6 = 0x16
                           000015   502 	ar5 = 0x15
                           000014   503 	ar4 = 0x14
                           000013   504 	ar3 = 0x13
                           000012   505 	ar2 = 0x12
                           000011   506 	ar1 = 0x11
                           000010   507 	ar0 = 0x10
      000F96 C0 E0            [24]  508 	push	acc
      000F98 C0 D0            [24]  509 	push	psw
      000F9A 75 D0 10         [24]  510 	mov	psw,#0x10
                                    511 ;	library/serial.c:76: if( RI )							// Receive character?
                                    512 ;	library/serial.c:78: RI = 0;							// clear receive flag
                                    513 ;	assignBit
      000F9D 10 98 02         [24]  514 	jbc	_RI,00134$
      000FA0 80 15            [24]  515 	sjmp	00104$
      000FA2                        516 00134$:
                                    517 ;	library/serial.c:79: rx_buf[ rx_head++ ] = SBUF;    	// Get character from serial port and put into fifo.
      000FA2 E5 33            [12]  518 	mov	a,_rx_head
      000FA4 FF               [12]  519 	mov	r7,a
      000FA5 04               [12]  520 	inc	a
      000FA6 F5 33            [12]  521 	mov	_rx_head,a
      000FA8 EF               [12]  522 	mov	a,r7
      000FA9 24 36            [12]  523 	add	a,#_rx_buf
      000FAB F8               [12]  524 	mov	r0,a
      000FAC A6 99            [24]  525 	mov	@r0,_SBUF
                                    526 ;	library/serial.c:80: if( rx_head >= BUFFER_SIZE)		// Wrap pointer to beginning of buffer if at end.
      000FAE 74 F0            [12]  527 	mov	a,#0x100 - 0x10
      000FB0 25 33            [12]  528 	add	a,_rx_head
      000FB2 50 03            [24]  529 	jnc	00104$
                                    530 ;	library/serial.c:81: rx_head = 0;
      000FB4 75 33 00         [24]  531 	mov	_rx_head,#0x00
      000FB7                        532 00104$:
                                    533 ;	library/serial.c:84: if( TI )							// Transmit character?
                                    534 ;	library/serial.c:86: TI = 0;							// Clear transmitter flag.
                                    535 ;	assignBit
      000FB7 10 99 02         [24]  536 	jbc	_TI,00136$
      000FBA 80 20            [24]  537 	sjmp	00111$
      000FBC                        538 00136$:
                                    539 ;	library/serial.c:87: if( tx_head == tx_tail )      	// Check to see if anymore characters to send?
      000FBC E5 32            [12]  540 	mov	a,_tx_tail
      000FBE B5 35 04         [24]  541 	cjne	a,_tx_head,00108$
                                    542 ;	library/serial.c:88: is_txing = FALSE;         	// No, indicate to ser_write_byte to set TI next time.
                                    543 ;	assignBit
      000FC1 C2 00            [12]  544 	clr	_is_txing
      000FC3 80 17            [24]  545 	sjmp	00111$
      000FC5                        546 00108$:
                                    547 ;	library/serial.c:91: is_txing = TRUE;          	// TI interrupt will occur at end of this character.
                                    548 ;	assignBit
      000FC5 D2 00            [12]  549 	setb	_is_txing
                                    550 ;	library/serial.c:92: SBUF = tx_buf[ tx_tail++ ];	// Transmit character out serial port.
      000FC7 E5 32            [12]  551 	mov	a,_tx_tail
      000FC9 FF               [12]  552 	mov	r7,a
      000FCA 04               [12]  553 	inc	a
      000FCB F5 32            [12]  554 	mov	_tx_tail,a
      000FCD EF               [12]  555 	mov	a,r7
      000FCE 24 46            [12]  556 	add	a,#_tx_buf
      000FD0 F9               [12]  557 	mov	r1,a
      000FD1 87 99            [24]  558 	mov	_SBUF,@r1
                                    559 ;	library/serial.c:93: if( tx_tail >= BUFFER_SIZE)	// Wrap pointer to beginning of buffer if at end.
      000FD3 74 F0            [12]  560 	mov	a,#0x100 - 0x10
      000FD5 25 32            [12]  561 	add	a,_tx_tail
      000FD7 50 03            [24]  562 	jnc	00111$
                                    563 ;	library/serial.c:94: tx_tail = 0;
      000FD9 75 32 00         [24]  564 	mov	_tx_tail,#0x00
      000FDC                        565 00111$:
                                    566 ;	library/serial.c:97: WDTRST = 0x1E;
      000FDC 75 A6 1E         [24]  567 	mov	_WDTRST,#0x1e
                                    568 ;	library/serial.c:98: WDTRST = 0xE1;
      000FDF 75 A6 E1         [24]  569 	mov	_WDTRST,#0xe1
                                    570 ;	library/serial.c:99: }
      000FE2 D0 D0            [24]  571 	pop	psw
      000FE4 D0 E0            [24]  572 	pop	acc
      000FE6 32               [24]  573 	reti
                                    574 ;	eliminated unneeded push/pop dpl
                                    575 ;	eliminated unneeded push/pop dph
                                    576 ;	eliminated unneeded push/pop b
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'ser_write_byte'
                                    579 ;------------------------------------------------------------
                                    580 ;buf                       Allocated to registers r7 
                                    581 ;next_head                 Allocated to registers r6 
                                    582 ;------------------------------------------------------------
                                    583 ;	library/serial.c:104: char ser_write_byte( unsigned char buf )
                                    584 ;	-----------------------------------------
                                    585 ;	 function ser_write_byte
                                    586 ;	-----------------------------------------
      000FE7                        587 _ser_write_byte:
                           000007   588 	ar7 = 0x07
                           000006   589 	ar6 = 0x06
                           000005   590 	ar5 = 0x05
                           000004   591 	ar4 = 0x04
                           000003   592 	ar3 = 0x03
                           000002   593 	ar2 = 0x02
                           000001   594 	ar1 = 0x01
                           000000   595 	ar0 = 0x00
      000FE7 AF 82            [24]  596 	mov	r7,dpl
                                    597 ;	library/serial.c:110: tx_buf[ tx_head ] = buf;
      000FE9 E5 35            [12]  598 	mov	a,_tx_head
      000FEB 24 46            [12]  599 	add	a,#_tx_buf
      000FED F8               [12]  600 	mov	r0,a
      000FEE A6 07            [24]  601 	mov	@r0,ar7
                                    602 ;	library/serial.c:111: next_head = tx_head + 1;
      000FF0 AE 35            [24]  603 	mov	r6,_tx_head
      000FF2 0E               [12]  604 	inc	r6
                                    605 ;	library/serial.c:113: if( next_head >= BUFFER_SIZE)
      000FF3 BE 10 00         [24]  606 	cjne	r6,#0x10,00126$
      000FF6                        607 00126$:
      000FF6 40 02            [24]  608 	jc	00103$
                                    609 ;	library/serial.c:114: next_head = 0;
      000FF8 7E 00            [12]  610 	mov	r6,#0x00
                                    611 ;	library/serial.c:118: while( next_head == tx_tail );
      000FFA                        612 00103$:
      000FFA EE               [12]  613 	mov	a,r6
      000FFB B5 32 02         [24]  614 	cjne	a,_tx_tail,00128$
      000FFE 80 FA            [24]  615 	sjmp	00103$
      001000                        616 00128$:
                                    617 ;	library/serial.c:120: tx_head = next_head;
      001000 8E 35            [24]  618 	mov	_tx_head,r6
                                    619 ;	library/serial.c:121: if( is_txing == FALSE )
      001002 20 00 02         [24]  620 	jb	_is_txing,00107$
                                    621 ;	library/serial.c:122: TI = TRUE;
                                    622 ;	assignBit
      001005 D2 99            [12]  623 	setb	_TI
      001007                        624 00107$:
                                    625 ;	library/serial.c:124: P2_1 = !P2_1;
      001007 B2 A1            [12]  626 	cpl	_P2_1
                                    627 ;	library/serial.c:125: return buf;
      001009 8F 82            [24]  628 	mov	dpl,r7
                                    629 ;	library/serial.c:126: }
      00100B 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'ser_byte_avail'
                                    633 ;------------------------------------------------------------
                                    634 ;	library/serial.c:132: char ser_byte_avail( void )
                                    635 ;	-----------------------------------------
                                    636 ;	 function ser_byte_avail
                                    637 ;	-----------------------------------------
      00100C                        638 _ser_byte_avail:
                                    639 ;	library/serial.c:134: WDTRST = 0x1E;
      00100C 75 A6 1E         [24]  640 	mov	_WDTRST,#0x1e
                                    641 ;	library/serial.c:135: WDTRST = 0xE1;
      00100F 75 A6 E1         [24]  642 	mov	_WDTRST,#0xe1
                                    643 ;	library/serial.c:136: return(rx_head != rx_tail);
      001012 E5 34            [12]  644 	mov	a,_rx_tail
      001014 B5 33 03         [24]  645 	cjne	a,_rx_head,00103$
      001017 D3               [12]  646 	setb	c
      001018 80 01            [24]  647 	sjmp	00104$
      00101A                        648 00103$:
      00101A C3               [12]  649 	clr	c
      00101B                        650 00104$:
      00101B B3               [12]  651 	cpl	c
      00101C 92 01            [24]  652 	mov	_ser_byte_avail_sloc0_1_0,c
      00101E E4               [12]  653 	clr	a
      00101F 33               [12]  654 	rlc	a
      001020 F5 82            [12]  655 	mov	dpl,a
                                    656 ;	library/serial.c:143: }
      001022 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'ser_read_byte'
                                    660 ;------------------------------------------------------------
                                    661 ;buf                       Allocated to registers r7 
                                    662 ;------------------------------------------------------------
                                    663 ;	library/serial.c:149: unsigned char ser_read_byte( void )
                                    664 ;	-----------------------------------------
                                    665 ;	 function ser_read_byte
                                    666 ;	-----------------------------------------
      001023                        667 _ser_read_byte:
                                    668 ;	library/serial.c:155: buf = rx_buf[ rx_tail++ ];
      001023 E5 34            [12]  669 	mov	a,_rx_tail
      001025 FF               [12]  670 	mov	r7,a
      001026 04               [12]  671 	inc	a
      001027 F5 34            [12]  672 	mov	_rx_tail,a
      001029 EF               [12]  673 	mov	a,r7
      00102A 24 36            [12]  674 	add	a,#_rx_buf
      00102C F9               [12]  675 	mov	r1,a
      00102D 87 07            [24]  676 	mov	ar7,@r1
                                    677 ;	library/serial.c:157: if( rx_tail >= BUFFER_SIZE)		// rx_tail %= BUFFER_SIZE;
      00102F 74 F0            [12]  678 	mov	a,#0x100 - 0x10
      001031 25 34            [12]  679 	add	a,_rx_tail
      001033 50 03            [24]  680 	jnc	00102$
                                    681 ;	library/serial.c:158: rx_tail = 0;
      001035 75 34 00         [24]  682 	mov	_rx_tail,#0x00
      001038                        683 00102$:
                                    684 ;	library/serial.c:160: P2_2 = !P2_2;
      001038 B2 A2            [12]  685 	cpl	_P2_2
                                    686 ;	library/serial.c:161: return( buf );
      00103A 8F 82            [24]  687 	mov	dpl,r7
                                    688 ;	library/serial.c:162: }
      00103C 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'putchar'
                                    692 ;------------------------------------------------------------
                                    693 ;buf                       Allocated to registers r6 r7 
                                    694 ;------------------------------------------------------------
                                    695 ;	library/serial.c:164: int putchar(int buf) {
                                    696 ;	-----------------------------------------
                                    697 ;	 function putchar
                                    698 ;	-----------------------------------------
      00103D                        699 _putchar:
                                    700 ;	library/serial.c:165: ser_write_byte((char)buf);
      00103D AE 82            [24]  701 	mov	r6,dpl
      00103F AF 83            [24]  702 	mov	r7,dph
      001041 C0 07            [24]  703 	push	ar7
      001043 C0 06            [24]  704 	push	ar6
      001045 12 0F E7         [24]  705 	lcall	_ser_write_byte
      001048 D0 06            [24]  706 	pop	ar6
      00104A D0 07            [24]  707 	pop	ar7
                                    708 ;	library/serial.c:166: return buf;
      00104C 8E 82            [24]  709 	mov	dpl,r6
      00104E 8F 83            [24]  710 	mov	dph,r7
                                    711 ;	library/serial.c:167: }
      001050 22               [24]  712 	ret
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'getchar'
                                    715 ;------------------------------------------------------------
                                    716 ;buf                       Allocated to registers r7 r6 
                                    717 ;------------------------------------------------------------
                                    718 ;	library/serial.c:169: int getchar(void) {
                                    719 ;	-----------------------------------------
                                    720 ;	 function getchar
                                    721 ;	-----------------------------------------
      001051                        722 _getchar:
                                    723 ;	library/serial.c:170: int buf=ser_read_byte();
      001051 12 10 23         [24]  724 	lcall	_ser_read_byte
                                    725 ;	library/serial.c:171: return buf;
      001054 7E 00            [12]  726 	mov	r6,#0x00
      001056 8E 83            [24]  727 	mov	dph,r6
                                    728 ;	library/serial.c:172: }
      001058 22               [24]  729 	ret
                                    730 	.area CSEG    (CODE)
                                    731 	.area CONST   (CODE)
                                    732 	.area XINIT   (CODE)
                                    733 	.area CABS    (ABS,CODE)
