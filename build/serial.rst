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
      000001                        379 _is_txing:
      000001                        380 	.ds 1
      000002                        381 _ser_byte_avail_sloc0_1_0:
      000002                        382 	.ds 1
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
      000F1D                        435 _init_ser:
                           000007   436 	ar7 = 0x07
                           000006   437 	ar6 = 0x06
                           000005   438 	ar5 = 0x05
                           000004   439 	ar4 = 0x04
                           000003   440 	ar3 = 0x03
                           000002   441 	ar2 = 0x02
                           000001   442 	ar1 = 0x01
                           000000   443 	ar0 = 0x00
      000F1D AF 82            [24]  444 	mov	r7,dpl
                                    445 ;	library/serial.c:22: rx_head = 0;                  	// Default head/tail pointers.
      000F1F 75 33 00         [24]  446 	mov	_rx_head,#0x00
                                    447 ;	library/serial.c:23: rx_tail = 0;
      000F22 75 34 00         [24]  448 	mov	_rx_tail,#0x00
                                    449 ;	library/serial.c:24: tx_tail = 0;
      000F25 75 32 00         [24]  450 	mov	_tx_tail,#0x00
                                    451 ;	library/serial.c:25: tx_head = 0;
      000F28 75 35 00         [24]  452 	mov	_tx_head,#0x00
                                    453 ;	library/serial.c:26: is_txing = FALSE;				// Not transmitting.
                                    454 ;	assignBit
      000F2B C2 01            [12]  455 	clr	_is_txing
                                    456 ;	library/serial.c:28: SER_RX_PORT = HIGH;          	// Set Txd & Rxd to high
                                    457 ;	assignBit
      000F2D D2 B0            [12]  458 	setb	_P3_0
                                    459 ;	library/serial.c:29: SER_TX_PORT = HIGH;
                                    460 ;	assignBit
      000F2F D2 B1            [12]  461 	setb	_P3_1
                                    462 ;	library/serial.c:31: SCON = 0x50;               		// Mode 1.
      000F31 75 98 50         [24]  463 	mov	_SCON,#0x50
                                    464 ;	library/serial.c:37: T2CON &= 0xF0; /* EXEN2=0; TR2=0; C/T2#=0; CP/RL2#=0; */
      000F34 53 C8 F0         [24]  465 	anl	_T2CON,#0xf0
                                    466 ;	library/serial.c:38: T2CON |= 0x30; /* RCLK = 1; TCLK=1; */
      000F37 43 C8 30         [24]  467 	orl	_T2CON,#0x30
                                    468 ;	library/serial.c:55: TH2 = th2; /* init value */
      000F3A 8F CD            [24]  469 	mov	_TH2,r7
                                    470 ;	library/serial.c:56: TL2 = tl2; /* init value */
      000F3C 85 0E CC         [24]  471 	mov	_TL2,_init_ser_PARM_2
                                    472 ;	library/serial.c:57: RCAP2H = th2; /* reload value, 115200 Bds at 11.059MHz */
      000F3F 8F CB            [24]  473 	mov	_RCAP2H,r7
                                    474 ;	library/serial.c:58: RCAP2L = tl2; /* reload value, 115200 Bds at 11.059MHz */
      000F41 85 0E CA         [24]  475 	mov	_RCAP2L,_init_ser_PARM_2
                                    476 ;	library/serial.c:60: TR2 = 1;                     		// Timer 2 run.
                                    477 ;	assignBit
      000F44 D2 CA            [12]  478 	setb	_TR2
                                    479 ;	library/serial.c:64: PS = TRUE;                    	// Low priority.
                                    480 ;	assignBit
      000F46 D2 BC            [12]  481 	setb	_PS
                                    482 ;	library/serial.c:66: EA = 1;													// Enable interrupts.
                                    483 ;	assignBit
      000F48 D2 AF            [12]  484 	setb	_EA
                                    485 ;	library/serial.c:67: ES = TRUE;                     	// Enable serial interrupt.
                                    486 ;	assignBit
      000F4A D2 AC            [12]  487 	setb	_ES
                                    488 ;	library/serial.c:68: }
      000F4C 22               [24]  489 	ret
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'SerInt'
                                    492 ;------------------------------------------------------------
                                    493 ;	library/serial.c:74: void SerInt( void ) __interrupt 4 __using 2
                                    494 ;	-----------------------------------------
                                    495 ;	 function SerInt
                                    496 ;	-----------------------------------------
      000F4D                        497 _SerInt:
                           000017   498 	ar7 = 0x17
                           000016   499 	ar6 = 0x16
                           000015   500 	ar5 = 0x15
                           000014   501 	ar4 = 0x14
                           000013   502 	ar3 = 0x13
                           000012   503 	ar2 = 0x12
                           000011   504 	ar1 = 0x11
                           000010   505 	ar0 = 0x10
      000F4D C0 E0            [24]  506 	push	acc
      000F4F C0 D0            [24]  507 	push	psw
      000F51 75 D0 10         [24]  508 	mov	psw,#0x10
                                    509 ;	library/serial.c:76: if( RI )							// Receive character?
                                    510 ;	library/serial.c:78: RI = 0;							// clear receive flag
                                    511 ;	assignBit
      000F54 10 98 02         [24]  512 	jbc	_RI,00134$
      000F57 80 15            [24]  513 	sjmp	00104$
      000F59                        514 00134$:
                                    515 ;	library/serial.c:79: rx_buf[ rx_head++ ] = SBUF;    	// Get character from serial port and put into fifo.
      000F59 E5 33            [12]  516 	mov	a,_rx_head
      000F5B FF               [12]  517 	mov	r7,a
      000F5C 04               [12]  518 	inc	a
      000F5D F5 33            [12]  519 	mov	_rx_head,a
      000F5F EF               [12]  520 	mov	a,r7
      000F60 24 36            [12]  521 	add	a,#_rx_buf
      000F62 F8               [12]  522 	mov	r0,a
      000F63 A6 99            [24]  523 	mov	@r0,_SBUF
                                    524 ;	library/serial.c:80: if( rx_head >= BUFFER_SIZE)		// Wrap pointer to beginning of buffer if at end.
      000F65 74 F0            [12]  525 	mov	a,#0x100 - 0x10
      000F67 25 33            [12]  526 	add	a,_rx_head
      000F69 50 03            [24]  527 	jnc	00104$
                                    528 ;	library/serial.c:81: rx_head = 0;
      000F6B 75 33 00         [24]  529 	mov	_rx_head,#0x00
      000F6E                        530 00104$:
                                    531 ;	library/serial.c:84: if( TI )							// Transmit character?
                                    532 ;	library/serial.c:86: TI = 0;							// Clear transmitter flag.
                                    533 ;	assignBit
      000F6E 10 99 02         [24]  534 	jbc	_TI,00136$
      000F71 80 20            [24]  535 	sjmp	00111$
      000F73                        536 00136$:
                                    537 ;	library/serial.c:87: if( tx_head == tx_tail )      	// Check to see if anymore characters to send?
      000F73 E5 32            [12]  538 	mov	a,_tx_tail
      000F75 B5 35 04         [24]  539 	cjne	a,_tx_head,00108$
                                    540 ;	library/serial.c:88: is_txing = FALSE;         	// No, indicate to ser_write_byte to set TI next time.
                                    541 ;	assignBit
      000F78 C2 01            [12]  542 	clr	_is_txing
      000F7A 80 17            [24]  543 	sjmp	00111$
      000F7C                        544 00108$:
                                    545 ;	library/serial.c:91: is_txing = TRUE;          	// TI interrupt will occur at end of this character.
                                    546 ;	assignBit
      000F7C D2 01            [12]  547 	setb	_is_txing
                                    548 ;	library/serial.c:92: SBUF = tx_buf[ tx_tail++ ];	// Transmit character out serial port.
      000F7E E5 32            [12]  549 	mov	a,_tx_tail
      000F80 FF               [12]  550 	mov	r7,a
      000F81 04               [12]  551 	inc	a
      000F82 F5 32            [12]  552 	mov	_tx_tail,a
      000F84 EF               [12]  553 	mov	a,r7
      000F85 24 46            [12]  554 	add	a,#_tx_buf
      000F87 F9               [12]  555 	mov	r1,a
      000F88 87 99            [24]  556 	mov	_SBUF,@r1
                                    557 ;	library/serial.c:93: if( tx_tail >= BUFFER_SIZE)	// Wrap pointer to beginning of buffer if at end.
      000F8A 74 F0            [12]  558 	mov	a,#0x100 - 0x10
      000F8C 25 32            [12]  559 	add	a,_tx_tail
      000F8E 50 03            [24]  560 	jnc	00111$
                                    561 ;	library/serial.c:94: tx_tail = 0;
      000F90 75 32 00         [24]  562 	mov	_tx_tail,#0x00
      000F93                        563 00111$:
                                    564 ;	library/serial.c:98: WDTRST = 0x1E;
      000F93 75 A6 1E         [24]  565 	mov	_WDTRST,#0x1e
                                    566 ;	library/serial.c:99: WDTRST = 0xE1;
      000F96 75 A6 E1         [24]  567 	mov	_WDTRST,#0xe1
                                    568 ;	library/serial.c:101: }
      000F99 D0 D0            [24]  569 	pop	psw
      000F9B D0 E0            [24]  570 	pop	acc
      000F9D 32               [24]  571 	reti
                                    572 ;	eliminated unneeded push/pop dpl
                                    573 ;	eliminated unneeded push/pop dph
                                    574 ;	eliminated unneeded push/pop b
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'ser_write_byte'
                                    577 ;------------------------------------------------------------
                                    578 ;buf                       Allocated to registers r7 
                                    579 ;next_head                 Allocated to registers r6 
                                    580 ;------------------------------------------------------------
                                    581 ;	library/serial.c:106: char ser_write_byte( unsigned char buf )
                                    582 ;	-----------------------------------------
                                    583 ;	 function ser_write_byte
                                    584 ;	-----------------------------------------
      000F9E                        585 _ser_write_byte:
                           000007   586 	ar7 = 0x07
                           000006   587 	ar6 = 0x06
                           000005   588 	ar5 = 0x05
                           000004   589 	ar4 = 0x04
                           000003   590 	ar3 = 0x03
                           000002   591 	ar2 = 0x02
                           000001   592 	ar1 = 0x01
                           000000   593 	ar0 = 0x00
      000F9E AF 82            [24]  594 	mov	r7,dpl
                                    595 ;	library/serial.c:112: tx_buf[ tx_head ] = buf;
      000FA0 E5 35            [12]  596 	mov	a,_tx_head
      000FA2 24 46            [12]  597 	add	a,#_tx_buf
      000FA4 F8               [12]  598 	mov	r0,a
      000FA5 A6 07            [24]  599 	mov	@r0,ar7
                                    600 ;	library/serial.c:113: next_head = tx_head + 1;
      000FA7 AE 35            [24]  601 	mov	r6,_tx_head
      000FA9 0E               [12]  602 	inc	r6
                                    603 ;	library/serial.c:115: if( next_head >= BUFFER_SIZE)
      000FAA BE 10 00         [24]  604 	cjne	r6,#0x10,00126$
      000FAD                        605 00126$:
      000FAD 40 02            [24]  606 	jc	00103$
                                    607 ;	library/serial.c:116: next_head = 0;
      000FAF 7E 00            [12]  608 	mov	r6,#0x00
                                    609 ;	library/serial.c:120: while( next_head == tx_tail );
      000FB1                        610 00103$:
      000FB1 EE               [12]  611 	mov	a,r6
      000FB2 B5 32 02         [24]  612 	cjne	a,_tx_tail,00128$
      000FB5 80 FA            [24]  613 	sjmp	00103$
      000FB7                        614 00128$:
                                    615 ;	library/serial.c:122: tx_head = next_head;
      000FB7 8E 35            [24]  616 	mov	_tx_head,r6
                                    617 ;	library/serial.c:123: if( is_txing == FALSE )
      000FB9 20 01 02         [24]  618 	jb	_is_txing,00107$
                                    619 ;	library/serial.c:124: TI = TRUE;
                                    620 ;	assignBit
      000FBC D2 99            [12]  621 	setb	_TI
      000FBE                        622 00107$:
                                    623 ;	library/serial.c:126: P2_1 = !P2_1;
      000FBE B2 A1            [12]  624 	cpl	_P2_1
                                    625 ;	library/serial.c:127: return buf;
      000FC0 8F 82            [24]  626 	mov	dpl,r7
                                    627 ;	library/serial.c:128: }
      000FC2 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'ser_byte_avail'
                                    631 ;------------------------------------------------------------
                                    632 ;	library/serial.c:134: char ser_byte_avail( void )
                                    633 ;	-----------------------------------------
                                    634 ;	 function ser_byte_avail
                                    635 ;	-----------------------------------------
      000FC3                        636 _ser_byte_avail:
                                    637 ;	library/serial.c:137: WDTRST = 0x1E;
      000FC3 75 A6 1E         [24]  638 	mov	_WDTRST,#0x1e
                                    639 ;	library/serial.c:138: WDTRST = 0xE1;
      000FC6 75 A6 E1         [24]  640 	mov	_WDTRST,#0xe1
                                    641 ;	library/serial.c:140: return(rx_head != rx_tail);
      000FC9 E5 34            [12]  642 	mov	a,_rx_tail
      000FCB B5 33 03         [24]  643 	cjne	a,_rx_head,00103$
      000FCE D3               [12]  644 	setb	c
      000FCF 80 01            [24]  645 	sjmp	00104$
      000FD1                        646 00103$:
      000FD1 C3               [12]  647 	clr	c
      000FD2                        648 00104$:
      000FD2 B3               [12]  649 	cpl	c
      000FD3 92 02            [24]  650 	mov	_ser_byte_avail_sloc0_1_0,c
      000FD5 E4               [12]  651 	clr	a
      000FD6 33               [12]  652 	rlc	a
      000FD7 F5 82            [12]  653 	mov	dpl,a
                                    654 ;	library/serial.c:147: }
      000FD9 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'ser_read_byte'
                                    658 ;------------------------------------------------------------
                                    659 ;buf                       Allocated to registers r7 
                                    660 ;------------------------------------------------------------
                                    661 ;	library/serial.c:153: unsigned char ser_read_byte( void )
                                    662 ;	-----------------------------------------
                                    663 ;	 function ser_read_byte
                                    664 ;	-----------------------------------------
      000FDA                        665 _ser_read_byte:
                                    666 ;	library/serial.c:159: buf = rx_buf[ rx_tail++ ];
      000FDA E5 34            [12]  667 	mov	a,_rx_tail
      000FDC FF               [12]  668 	mov	r7,a
      000FDD 04               [12]  669 	inc	a
      000FDE F5 34            [12]  670 	mov	_rx_tail,a
      000FE0 EF               [12]  671 	mov	a,r7
      000FE1 24 36            [12]  672 	add	a,#_rx_buf
      000FE3 F9               [12]  673 	mov	r1,a
      000FE4 87 07            [24]  674 	mov	ar7,@r1
                                    675 ;	library/serial.c:161: if( rx_tail >= BUFFER_SIZE)		// rx_tail %= BUFFER_SIZE;
      000FE6 74 F0            [12]  676 	mov	a,#0x100 - 0x10
      000FE8 25 34            [12]  677 	add	a,_rx_tail
      000FEA 50 03            [24]  678 	jnc	00102$
                                    679 ;	library/serial.c:162: rx_tail = 0;
      000FEC 75 34 00         [24]  680 	mov	_rx_tail,#0x00
      000FEF                        681 00102$:
                                    682 ;	library/serial.c:164: P2_2 = !P2_2;
      000FEF B2 A2            [12]  683 	cpl	_P2_2
                                    684 ;	library/serial.c:165: return( buf );
      000FF1 8F 82            [24]  685 	mov	dpl,r7
                                    686 ;	library/serial.c:166: }
      000FF3 22               [24]  687 	ret
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'putchar'
                                    690 ;------------------------------------------------------------
                                    691 ;buf                       Allocated to registers r6 r7 
                                    692 ;------------------------------------------------------------
                                    693 ;	library/serial.c:168: int putchar(int buf) {
                                    694 ;	-----------------------------------------
                                    695 ;	 function putchar
                                    696 ;	-----------------------------------------
      000FF4                        697 _putchar:
                                    698 ;	library/serial.c:169: ser_write_byte((char)buf);
      000FF4 AE 82            [24]  699 	mov	r6,dpl
      000FF6 AF 83            [24]  700 	mov	r7,dph
      000FF8 C0 07            [24]  701 	push	ar7
      000FFA C0 06            [24]  702 	push	ar6
      000FFC 12 0F 9E         [24]  703 	lcall	_ser_write_byte
      000FFF D0 06            [24]  704 	pop	ar6
      001001 D0 07            [24]  705 	pop	ar7
                                    706 ;	library/serial.c:170: return buf;
      001003 8E 82            [24]  707 	mov	dpl,r6
      001005 8F 83            [24]  708 	mov	dph,r7
                                    709 ;	library/serial.c:171: }
      001007 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'getchar'
                                    713 ;------------------------------------------------------------
                                    714 ;buf                       Allocated to registers r7 r6 
                                    715 ;------------------------------------------------------------
                                    716 ;	library/serial.c:173: int getchar(void) {
                                    717 ;	-----------------------------------------
                                    718 ;	 function getchar
                                    719 ;	-----------------------------------------
      001008                        720 _getchar:
                                    721 ;	library/serial.c:174: int buf=ser_read_byte();
      001008 12 0F DA         [24]  722 	lcall	_ser_read_byte
                                    723 ;	library/serial.c:175: return buf;
      00100B 7E 00            [12]  724 	mov	r6,#0x00
      00100D 8E 83            [24]  725 	mov	dph,r6
                                    726 ;	library/serial.c:176: }
      00100F 22               [24]  727 	ret
                                    728 	.area CSEG    (CODE)
                                    729 	.area CONST   (CODE)
                                    730 	.area XINIT   (CODE)
                                    731 	.area CABS    (ABS,CODE)
