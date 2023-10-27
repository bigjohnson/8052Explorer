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
                                     21 	.globl _felix
                                     22 	.globl _fourclockmultiplier
                                     23 	.globl __sdcc_external_startup
                                     24 	.globl _printf_tiny
                                     25 	.globl _putchar
                                     26 	.globl _getchar
                                     27 	.globl _puts
                                     28 	.globl _init_timer0
                                     29 	.globl _ser_byte_avail
                                     30 	.globl _init_ser
                                     31 	.globl _SMOD_1
                                     32 	.globl _POR
                                     33 	.globl _EPFI
                                     34 	.globl _PFI
                                     35 	.globl _WDIF
                                     36 	.globl _WTRF
                                     37 	.globl _EWT
                                     38 	.globl _RWT
                                     39 	.globl _TF1
                                     40 	.globl _TR1
                                     41 	.globl _TF0
                                     42 	.globl _TR0
                                     43 	.globl _IE1
                                     44 	.globl _IT1
                                     45 	.globl _IE0
                                     46 	.globl _IT0
                                     47 	.globl _T2CON_7
                                     48 	.globl _T2CON_6
                                     49 	.globl _T2CON_5
                                     50 	.globl _T2CON_4
                                     51 	.globl _T2CON_3
                                     52 	.globl _T2CON_2
                                     53 	.globl _T2CON_1
                                     54 	.globl _T2CON_0
                                     55 	.globl _TF2
                                     56 	.globl _EXF2
                                     57 	.globl _RCLK
                                     58 	.globl _TCLK
                                     59 	.globl _EXEN2
                                     60 	.globl _TR2
                                     61 	.globl _C_T2
                                     62 	.globl _CP_RL2
                                     63 	.globl _SM0_FE_1
                                     64 	.globl _FE_1
                                     65 	.globl _SM0_1
                                     66 	.globl _SM1_1
                                     67 	.globl _SM2_1
                                     68 	.globl _REN_1
                                     69 	.globl _TB8_1
                                     70 	.globl _RB8_1
                                     71 	.globl _TI_1
                                     72 	.globl _RI_1
                                     73 	.globl _SM0_FE_0
                                     74 	.globl _FE_0
                                     75 	.globl _SM0_0
                                     76 	.globl _SM1_0
                                     77 	.globl _SM2_0
                                     78 	.globl _REN_0
                                     79 	.globl _TB8_0
                                     80 	.globl _RB8_0
                                     81 	.globl _TI_0
                                     82 	.globl _RI_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _CY
                                     92 	.globl _AC
                                     93 	.globl _F0
                                     94 	.globl _RS1
                                     95 	.globl _RS0
                                     96 	.globl _OV
                                     97 	.globl _F1
                                     98 	.globl _P
                                     99 	.globl _RD
                                    100 	.globl _WR
                                    101 	.globl _T1
                                    102 	.globl _T0
                                    103 	.globl _INT1
                                    104 	.globl _INT0
                                    105 	.globl _TXD0
                                    106 	.globl _TXD
                                    107 	.globl _RXD0
                                    108 	.globl _RXD
                                    109 	.globl _P3_7
                                    110 	.globl _P3_6
                                    111 	.globl _P3_5
                                    112 	.globl _P3_4
                                    113 	.globl _P3_3
                                    114 	.globl _P3_2
                                    115 	.globl _P3_1
                                    116 	.globl _P3_0
                                    117 	.globl _P2_7
                                    118 	.globl _P2_6
                                    119 	.globl _P2_5
                                    120 	.globl _P2_4
                                    121 	.globl _P2_3
                                    122 	.globl _P2_2
                                    123 	.globl _P2_1
                                    124 	.globl _P2_0
                                    125 	.globl _INT5
                                    126 	.globl _INT4
                                    127 	.globl _INT3
                                    128 	.globl _INT2
                                    129 	.globl _TXD1
                                    130 	.globl _RXD1
                                    131 	.globl _T2EX
                                    132 	.globl _T2
                                    133 	.globl _P1_7
                                    134 	.globl _P1_6
                                    135 	.globl _P1_5
                                    136 	.globl _P1_4
                                    137 	.globl _P1_3
                                    138 	.globl _P1_2
                                    139 	.globl _P1_1
                                    140 	.globl _P1_0
                                    141 	.globl _P0_7
                                    142 	.globl _P0_6
                                    143 	.globl _P0_5
                                    144 	.globl _P0_4
                                    145 	.globl _P0_3
                                    146 	.globl _P0_2
                                    147 	.globl _P0_1
                                    148 	.globl _P0_0
                                    149 	.globl _LPS1
                                    150 	.globl _LPT2
                                    151 	.globl _LPS0
                                    152 	.globl _LPT1
                                    153 	.globl _LPX1
                                    154 	.globl _LPT0
                                    155 	.globl _LPX0
                                    156 	.globl _PS1
                                    157 	.globl _PT2
                                    158 	.globl _PS
                                    159 	.globl _PT1
                                    160 	.globl _PX1
                                    161 	.globl _PT0
                                    162 	.globl _PX0
                                    163 	.globl _EA
                                    164 	.globl _ES1
                                    165 	.globl _ET2
                                    166 	.globl _ES0
                                    167 	.globl _ES
                                    168 	.globl _ET1
                                    169 	.globl _EX1
                                    170 	.globl _ET0
                                    171 	.globl _EX0
                                    172 	.globl _LPWDI
                                    173 	.globl _LPX5
                                    174 	.globl _LPX4
                                    175 	.globl _LPX3
                                    176 	.globl _LPX2
                                    177 	.globl _EWDI
                                    178 	.globl _EX5
                                    179 	.globl _EX4
                                    180 	.globl _EX3
                                    181 	.globl _EX2
                                    182 	.globl _BREG_F7
                                    183 	.globl _BREG_F6
                                    184 	.globl _BREG_F5
                                    185 	.globl _BREG_F4
                                    186 	.globl _BREG_F3
                                    187 	.globl _BREG_F2
                                    188 	.globl _BREG_F1
                                    189 	.globl _BREG_F0
                                    190 	.globl _FL
                                    191 	.globl _SCK
                                    192 	.globl _MISO
                                    193 	.globl _MOSI
                                    194 	.globl _SS
                                    195 	.globl _WDCON
                                    196 	.globl _TMOD
                                    197 	.globl _TL2
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TH2
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TCON
                                    204 	.globl _TA
                                    205 	.globl _T2MOD
                                    206 	.globl _T2CON
                                    207 	.globl _STATUS
                                    208 	.globl _SP
                                    209 	.globl _SCON1
                                    210 	.globl _SCON0
                                    211 	.globl _SCON
                                    212 	.globl _SBUF1
                                    213 	.globl _SBUF0
                                    214 	.globl _SBUF
                                    215 	.globl _SADEN1
                                    216 	.globl _SADEN0
                                    217 	.globl _SADDR1
                                    218 	.globl _SADDR0
                                    219 	.globl _ROMSIZE
                                    220 	.globl _RCAP2L
                                    221 	.globl _RCAP2H
                                    222 	.globl _PSW
                                    223 	.globl _PMR
                                    224 	.globl _PCON
                                    225 	.globl _P3
                                    226 	.globl _P2
                                    227 	.globl _P1
                                    228 	.globl _P0
                                    229 	.globl _MD2
                                    230 	.globl _MD1
                                    231 	.globl _MD0
                                    232 	.globl _IP1
                                    233 	.globl _IP0
                                    234 	.globl _IP
                                    235 	.globl _IE
                                    236 	.globl _FCNTL
                                    237 	.globl _EXIF
                                    238 	.globl _EIP1
                                    239 	.globl _EIP0
                                    240 	.globl _EIE
                                    241 	.globl _DPS
                                    242 	.globl _DP1L
                                    243 	.globl _DPL1
                                    244 	.globl _DP0L
                                    245 	.globl _DPL
                                    246 	.globl _DP1H
                                    247 	.globl _DPH1
                                    248 	.globl _DP0H
                                    249 	.globl _DPH
                                    250 	.globl _CKMOD
                                    251 	.globl _CKCON
                                    252 	.globl _B
                                    253 	.globl _ACON
                                    254 	.globl _ACC
                                    255 	.globl _ALE
                                    256 	.globl _A
                                    257 	.globl _SPCR
                                    258 	.globl _SADEN
                                    259 	.globl _IPH
                                    260 	.globl _SPSR
                                    261 	.globl _SADDR
                                    262 	.globl _WDTCON
                                    263 	.globl _WDTRST
                                    264 	.globl _EECON
                                    265 	.globl _CLKREG
                                    266 	.globl _AUXR
                                    267 	.globl _SPDR
                                    268 	.globl _dati
                                    269 ;--------------------------------------------------------
                                    270 ; special function registers
                                    271 ;--------------------------------------------------------
                                    272 	.area RSEG    (ABS,DATA)
      000000                        273 	.org 0x0000
                           000086   274 _SPDR	=	0x0086
                           00008E   275 _AUXR	=	0x008e
                           00008F   276 _CLKREG	=	0x008f
                           000096   277 _EECON	=	0x0096
                           0000A6   278 _WDTRST	=	0x00a6
                           0000A7   279 _WDTCON	=	0x00a7
                           0000A9   280 _SADDR	=	0x00a9
                           0000AA   281 _SPSR	=	0x00aa
                           0000B7   282 _IPH	=	0x00b7
                           0000B9   283 _SADEN	=	0x00b9
                           0000D5   284 _SPCR	=	0x00d5
                           0000E0   285 _A	=	0x00e0
                           00008E   286 _ALE	=	0x008e
                           0000E0   287 _ACC	=	0x00e0
                           00009D   288 _ACON	=	0x009d
                           0000F0   289 _B	=	0x00f0
                           00008E   290 _CKCON	=	0x008e
                           000096   291 _CKMOD	=	0x0096
                           000083   292 _DPH	=	0x0083
                           000083   293 _DP0H	=	0x0083
                           000085   294 _DPH1	=	0x0085
                           000085   295 _DP1H	=	0x0085
                           000082   296 _DPL	=	0x0082
                           000082   297 _DP0L	=	0x0082
                           000084   298 _DPL1	=	0x0084
                           000084   299 _DP1L	=	0x0084
                           000086   300 _DPS	=	0x0086
                           0000E8   301 _EIE	=	0x00e8
                           0000F8   302 _EIP0	=	0x00f8
                           0000F1   303 _EIP1	=	0x00f1
                           000091   304 _EXIF	=	0x0091
                           0000D5   305 _FCNTL	=	0x00d5
                           0000A8   306 _IE	=	0x00a8
                           0000B8   307 _IP	=	0x00b8
                           0000B8   308 _IP0	=	0x00b8
                           0000B1   309 _IP1	=	0x00b1
                           0000E9   310 _MD0	=	0x00e9
                           0000EA   311 _MD1	=	0x00ea
                           0000EB   312 _MD2	=	0x00eb
                           000080   313 _P0	=	0x0080
                           000090   314 _P1	=	0x0090
                           0000A0   315 _P2	=	0x00a0
                           0000B0   316 _P3	=	0x00b0
                           000087   317 _PCON	=	0x0087
                           0000C4   318 _PMR	=	0x00c4
                           0000D0   319 _PSW	=	0x00d0
                           0000CB   320 _RCAP2H	=	0x00cb
                           0000CA   321 _RCAP2L	=	0x00ca
                           0000C2   322 _ROMSIZE	=	0x00c2
                           0000A9   323 _SADDR0	=	0x00a9
                           0000AA   324 _SADDR1	=	0x00aa
                           0000B9   325 _SADEN0	=	0x00b9
                           0000BA   326 _SADEN1	=	0x00ba
                           000099   327 _SBUF	=	0x0099
                           000099   328 _SBUF0	=	0x0099
                           0000C1   329 _SBUF1	=	0x00c1
                           000098   330 _SCON	=	0x0098
                           000098   331 _SCON0	=	0x0098
                           0000C0   332 _SCON1	=	0x00c0
                           000081   333 _SP	=	0x0081
                           0000C5   334 _STATUS	=	0x00c5
                           0000C8   335 _T2CON	=	0x00c8
                           0000C9   336 _T2MOD	=	0x00c9
                           0000C7   337 _TA	=	0x00c7
                           000088   338 _TCON	=	0x0088
                           00008C   339 _TH0	=	0x008c
                           00008D   340 _TH1	=	0x008d
                           0000CD   341 _TH2	=	0x00cd
                           00008A   342 _TL0	=	0x008a
                           00008B   343 _TL1	=	0x008b
                           0000CC   344 _TL2	=	0x00cc
                           000089   345 _TMOD	=	0x0089
                           0000D8   346 _WDCON	=	0x00d8
                                    347 ;--------------------------------------------------------
                                    348 ; special function bits
                                    349 ;--------------------------------------------------------
                                    350 	.area RSEG    (ABS,DATA)
      000000                        351 	.org 0x0000
                           000094   352 _SS	=	0x0094
                           000095   353 _MOSI	=	0x0095
                           000096   354 _MISO	=	0x0096
                           000097   355 _SCK	=	0x0097
                           0000D1   356 _FL	=	0x00d1
                           0000F0   357 _BREG_F0	=	0x00f0
                           0000F1   358 _BREG_F1	=	0x00f1
                           0000F2   359 _BREG_F2	=	0x00f2
                           0000F3   360 _BREG_F3	=	0x00f3
                           0000F4   361 _BREG_F4	=	0x00f4
                           0000F5   362 _BREG_F5	=	0x00f5
                           0000F6   363 _BREG_F6	=	0x00f6
                           0000F7   364 _BREG_F7	=	0x00f7
                           0000E8   365 _EX2	=	0x00e8
                           0000E9   366 _EX3	=	0x00e9
                           0000EA   367 _EX4	=	0x00ea
                           0000EB   368 _EX5	=	0x00eb
                           0000EC   369 _EWDI	=	0x00ec
                           0000F8   370 _LPX2	=	0x00f8
                           0000F9   371 _LPX3	=	0x00f9
                           0000FA   372 _LPX4	=	0x00fa
                           0000FB   373 _LPX5	=	0x00fb
                           0000FC   374 _LPWDI	=	0x00fc
                           0000A8   375 _EX0	=	0x00a8
                           0000A9   376 _ET0	=	0x00a9
                           0000AA   377 _EX1	=	0x00aa
                           0000AB   378 _ET1	=	0x00ab
                           0000AC   379 _ES	=	0x00ac
                           0000AC   380 _ES0	=	0x00ac
                           0000AD   381 _ET2	=	0x00ad
                           0000AE   382 _ES1	=	0x00ae
                           0000AF   383 _EA	=	0x00af
                           0000B8   384 _PX0	=	0x00b8
                           0000B9   385 _PT0	=	0x00b9
                           0000BA   386 _PX1	=	0x00ba
                           0000BB   387 _PT1	=	0x00bb
                           0000BC   388 _PS	=	0x00bc
                           0000BD   389 _PT2	=	0x00bd
                           0000BE   390 _PS1	=	0x00be
                           0000B8   391 _LPX0	=	0x00b8
                           0000B9   392 _LPT0	=	0x00b9
                           0000BA   393 _LPX1	=	0x00ba
                           0000BB   394 _LPT1	=	0x00bb
                           0000BC   395 _LPS0	=	0x00bc
                           0000BD   396 _LPT2	=	0x00bd
                           0000BE   397 _LPS1	=	0x00be
                           000080   398 _P0_0	=	0x0080
                           000081   399 _P0_1	=	0x0081
                           000082   400 _P0_2	=	0x0082
                           000083   401 _P0_3	=	0x0083
                           000084   402 _P0_4	=	0x0084
                           000085   403 _P0_5	=	0x0085
                           000086   404 _P0_6	=	0x0086
                           000087   405 _P0_7	=	0x0087
                           000090   406 _P1_0	=	0x0090
                           000091   407 _P1_1	=	0x0091
                           000092   408 _P1_2	=	0x0092
                           000093   409 _P1_3	=	0x0093
                           000094   410 _P1_4	=	0x0094
                           000095   411 _P1_5	=	0x0095
                           000096   412 _P1_6	=	0x0096
                           000097   413 _P1_7	=	0x0097
                           000090   414 _T2	=	0x0090
                           000091   415 _T2EX	=	0x0091
                           000092   416 _RXD1	=	0x0092
                           000093   417 _TXD1	=	0x0093
                           000094   418 _INT2	=	0x0094
                           000095   419 _INT3	=	0x0095
                           000096   420 _INT4	=	0x0096
                           000097   421 _INT5	=	0x0097
                           0000A0   422 _P2_0	=	0x00a0
                           0000A1   423 _P2_1	=	0x00a1
                           0000A2   424 _P2_2	=	0x00a2
                           0000A3   425 _P2_3	=	0x00a3
                           0000A4   426 _P2_4	=	0x00a4
                           0000A5   427 _P2_5	=	0x00a5
                           0000A6   428 _P2_6	=	0x00a6
                           0000A7   429 _P2_7	=	0x00a7
                           0000B0   430 _P3_0	=	0x00b0
                           0000B1   431 _P3_1	=	0x00b1
                           0000B2   432 _P3_2	=	0x00b2
                           0000B3   433 _P3_3	=	0x00b3
                           0000B4   434 _P3_4	=	0x00b4
                           0000B5   435 _P3_5	=	0x00b5
                           0000B6   436 _P3_6	=	0x00b6
                           0000B7   437 _P3_7	=	0x00b7
                           0000B0   438 _RXD	=	0x00b0
                           0000B0   439 _RXD0	=	0x00b0
                           0000B1   440 _TXD	=	0x00b1
                           0000B1   441 _TXD0	=	0x00b1
                           0000B2   442 _INT0	=	0x00b2
                           0000B3   443 _INT1	=	0x00b3
                           0000B4   444 _T0	=	0x00b4
                           0000B5   445 _T1	=	0x00b5
                           0000B6   446 _WR	=	0x00b6
                           0000B7   447 _RD	=	0x00b7
                           0000D0   448 _P	=	0x00d0
                           0000D1   449 _F1	=	0x00d1
                           0000D2   450 _OV	=	0x00d2
                           0000D3   451 _RS0	=	0x00d3
                           0000D4   452 _RS1	=	0x00d4
                           0000D5   453 _F0	=	0x00d5
                           0000D6   454 _AC	=	0x00d6
                           0000D7   455 _CY	=	0x00d7
                           000098   456 _RI	=	0x0098
                           000099   457 _TI	=	0x0099
                           00009A   458 _RB8	=	0x009a
                           00009B   459 _TB8	=	0x009b
                           00009C   460 _REN	=	0x009c
                           00009D   461 _SM2	=	0x009d
                           00009E   462 _SM1	=	0x009e
                           00009F   463 _SM0	=	0x009f
                           000098   464 _RI_0	=	0x0098
                           000099   465 _TI_0	=	0x0099
                           00009A   466 _RB8_0	=	0x009a
                           00009B   467 _TB8_0	=	0x009b
                           00009C   468 _REN_0	=	0x009c
                           00009D   469 _SM2_0	=	0x009d
                           00009E   470 _SM1_0	=	0x009e
                           00009F   471 _SM0_0	=	0x009f
                           00009F   472 _FE_0	=	0x009f
                           00009F   473 _SM0_FE_0	=	0x009f
                           0000C0   474 _RI_1	=	0x00c0
                           0000C1   475 _TI_1	=	0x00c1
                           0000C2   476 _RB8_1	=	0x00c2
                           0000C3   477 _TB8_1	=	0x00c3
                           0000C4   478 _REN_1	=	0x00c4
                           0000C5   479 _SM2_1	=	0x00c5
                           0000C6   480 _SM1_1	=	0x00c6
                           0000C7   481 _SM0_1	=	0x00c7
                           0000C7   482 _FE_1	=	0x00c7
                           0000C7   483 _SM0_FE_1	=	0x00c7
                           0000C8   484 _CP_RL2	=	0x00c8
                           0000C9   485 _C_T2	=	0x00c9
                           0000CA   486 _TR2	=	0x00ca
                           0000CB   487 _EXEN2	=	0x00cb
                           0000CC   488 _TCLK	=	0x00cc
                           0000CD   489 _RCLK	=	0x00cd
                           0000CE   490 _EXF2	=	0x00ce
                           0000CF   491 _TF2	=	0x00cf
                           0000C8   492 _T2CON_0	=	0x00c8
                           0000C9   493 _T2CON_1	=	0x00c9
                           0000CA   494 _T2CON_2	=	0x00ca
                           0000CB   495 _T2CON_3	=	0x00cb
                           0000CC   496 _T2CON_4	=	0x00cc
                           0000CD   497 _T2CON_5	=	0x00cd
                           0000CE   498 _T2CON_6	=	0x00ce
                           0000CF   499 _T2CON_7	=	0x00cf
                           000088   500 _IT0	=	0x0088
                           000089   501 _IE0	=	0x0089
                           00008A   502 _IT1	=	0x008a
                           00008B   503 _IE1	=	0x008b
                           00008C   504 _TR0	=	0x008c
                           00008D   505 _TF0	=	0x008d
                           00008E   506 _TR1	=	0x008e
                           00008F   507 _TF1	=	0x008f
                           0000D8   508 _RWT	=	0x00d8
                           0000D9   509 _EWT	=	0x00d9
                           0000DA   510 _WTRF	=	0x00da
                           0000DB   511 _WDIF	=	0x00db
                           0000DC   512 _PFI	=	0x00dc
                           0000DD   513 _EPFI	=	0x00dd
                           0000DE   514 _POR	=	0x00de
                           0000DF   515 _SMOD_1	=	0x00df
                                    516 ;--------------------------------------------------------
                                    517 ; overlayable register banks
                                    518 ;--------------------------------------------------------
                                    519 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        520 	.ds 8
                                    521 ;--------------------------------------------------------
                                    522 ; internal ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area DSEG    (DATA)
                           000000   525 _dati	=	0x0000
      000022                        526 _dumpCODE_indirizzo_131072_33:
      000022                        527 	.ds 4
      000026                        528 _dumpCODE_posto_262144_39:
      000026                        529 	.ds 2
      000028                        530 _dumpCODE_posto_262144_42:
      000028                        531 	.ds 1
      000029                        532 _dumpRAM_indirizzo_131072_47:
      000029                        533 	.ds 2
      00002B                        534 _dumpRAM_posto_262144_53:
      00002B                        535 	.ds 2
      00002D                        536 _dumpRAM_posto_262144_56:
      00002D                        537 	.ds 1
      00002E                        538 _hexCODE_puntatore_65536_60:
      00002E                        539 	.ds 3
      000031                        540 _hexCODE_checksum_65537_61:
      000031                        541 	.ds 2
      000033                        542 _hexCODE_indirizzo_131073_62:
      000033                        543 	.ds 4
      000037                        544 _hexCODE_posto_262145_68:
      000037                        545 	.ds 1
      000038                        546 _p_pin_65537_82:
      000038                        547 	.ds 1
                                    548 ;--------------------------------------------------------
                                    549 ; overlayable items in internal ram
                                    550 ;--------------------------------------------------------
                                    551 ;--------------------------------------------------------
                                    552 ; Stack segment in internal ram
                                    553 ;--------------------------------------------------------
                                    554 	.area	SSEG
      000061                        555 __start__stack:
      000061                        556 	.ds	1
                                    557 
                                    558 ;--------------------------------------------------------
                                    559 ; indirectly addressable internal ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area ISEG    (DATA)
                                    562 ;--------------------------------------------------------
                                    563 ; absolute internal ram data
                                    564 ;--------------------------------------------------------
                                    565 	.area IABS    (ABS,DATA)
                                    566 	.area IABS    (ABS,DATA)
                                    567 ;--------------------------------------------------------
                                    568 ; bit data
                                    569 ;--------------------------------------------------------
                                    570 	.area BSEG    (BIT)
      000000                        571 _main_sloc0_1_0:
      000000                        572 	.ds 1
                                    573 ;--------------------------------------------------------
                                    574 ; paged external ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area PSEG    (PAG,XDATA)
                                    577 ;--------------------------------------------------------
                                    578 ; external ram data
                                    579 ;--------------------------------------------------------
                                    580 	.area XSEG    (XDATA)
                                    581 ;--------------------------------------------------------
                                    582 ; absolute external ram data
                                    583 ;--------------------------------------------------------
                                    584 	.area XABS    (ABS,XDATA)
                                    585 ;--------------------------------------------------------
                                    586 ; external initialized ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area XISEG   (XDATA)
                                    589 	.area HOME    (CODE)
                                    590 	.area GSINIT0 (CODE)
                                    591 	.area GSINIT1 (CODE)
                                    592 	.area GSINIT2 (CODE)
                                    593 	.area GSINIT3 (CODE)
                                    594 	.area GSINIT4 (CODE)
                                    595 	.area GSINIT5 (CODE)
                                    596 	.area GSINIT  (CODE)
                                    597 	.area GSFINAL (CODE)
                                    598 	.area CSEG    (CODE)
                                    599 ;--------------------------------------------------------
                                    600 ; interrupt vector
                                    601 ;--------------------------------------------------------
                                    602 	.area HOME    (CODE)
      000000                        603 __interrupt_vect:
      000000 02 00 29         [24]  604 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  605 	reti
      000004                        606 	.ds	7
      00000B 02 0C 52         [24]  607 	ljmp	_it_timer0
      00000E                        608 	.ds	5
      000013 32               [24]  609 	reti
      000014                        610 	.ds	7
      00001B 32               [24]  611 	reti
      00001C                        612 	.ds	7
      000023 02 0B 83         [24]  613 	ljmp	_SerInt
                                    614 ;--------------------------------------------------------
                                    615 ; global & static initialisations
                                    616 ;--------------------------------------------------------
                                    617 	.area HOME    (CODE)
                                    618 	.area GSINIT  (CODE)
                                    619 	.area GSFINAL (CODE)
                                    620 	.area GSINIT  (CODE)
                                    621 	.globl __sdcc_gsinit_startup
                                    622 	.globl __sdcc_program_startup
                                    623 	.globl __start__stack
                                    624 	.globl __mcs51_genXINIT
                                    625 	.globl __mcs51_genXRAMCLEAR
                                    626 	.globl __mcs51_genRAMCLEAR
                                    627 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  628 	ljmp	__sdcc_program_startup
                                    629 ;--------------------------------------------------------
                                    630 ; Home
                                    631 ;--------------------------------------------------------
                                    632 	.area HOME    (CODE)
                                    633 	.area HOME    (CODE)
      000026                        634 __sdcc_program_startup:
      000026 02 0A 09         [24]  635 	ljmp	_main
                                    636 ;	return from main will return to caller
                                    637 ;--------------------------------------------------------
                                    638 ; code
                                    639 ;--------------------------------------------------------
                                    640 	.area CSEG    (CODE)
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    643 ;------------------------------------------------------------
                                    644 ;	8052Explorer.c:117: _sdcc_external_startup() {
                                    645 ;	-----------------------------------------
                                    646 ;	 function _sdcc_external_startup
                                    647 ;	-----------------------------------------
      000085                        648 __sdcc_external_startup:
                           000007   649 	ar7 = 0x07
                           000006   650 	ar6 = 0x06
                           000005   651 	ar5 = 0x05
                           000004   652 	ar4 = 0x04
                           000003   653 	ar3 = 0x03
                           000002   654 	ar2 = 0x02
                           000001   655 	ar1 = 0x01
                           000000   656 	ar0 = 0x00
                                    657 ;	8052Explorer.c:118: PMR |= 1; //Enable internal SRAM Data Memory at adress 0000
      000085 43 C4 01         [24]  658 	orl	_PMR,#0x01
                                    659 ;	8052Explorer.c:119: return 0;
      000088 90 00 00         [24]  660 	mov	dptr,#0x0000
                                    661 ;	8052Explorer.c:120: }
      00008B 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'fourclockmultiplier'
                                    665 ;------------------------------------------------------------
                                    666 ;	8052Explorer.c:122: void fourclockmultiplier(void) {
                                    667 ;	-----------------------------------------
                                    668 ;	 function fourclockmultiplier
                                    669 ;	-----------------------------------------
      00008C                        670 _fourclockmultiplier:
                                    671 ;	8052Explorer.c:124: PMR |= 8; /* Clock Multiplier Selection. This bit selects the clock multiplication factor as shown. 4X/2X = 0
      00008C 43 C4 08         [24]  672 	orl	_PMR,#0x08
                                    673 ;	8052Explorer.c:132: PMR |= 16; /* Crystal Multiplier Enable. This bit enables (= 1) or disables (= 0) the crystal multiplier function.
      00008F 43 C4 10         [24]  674 	orl	_PMR,#0x10
                                    675 ;	8052Explorer.c:142: while (!(EXIF & 8)) {}; /* Clock Ready. This bit indicates the status of the startup period for the crystal oscillator or crystal
      000092                        676 00101$:
      000092 E5 91            [12]  677 	mov	a,_EXIF
      000094 30 E3 FB         [24]  678 	jnb	acc.3,00101$
                                    679 ;	8052Explorer.c:149: PMR &= 63; // enable Crystal multiplier (4X or 2X mode as determined by PMR.3)
      000097 53 C4 3F         [24]  680 	anl	_PMR,#0x3f
                                    681 ;	8052Explorer.c:171: }
      00009A 22               [24]  682 	ret
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'felix'
                                    685 ;------------------------------------------------------------
                                    686 ;	8052Explorer.c:185: void felix (void) {
                                    687 ;	-----------------------------------------
                                    688 ;	 function felix
                                    689 ;	-----------------------------------------
      00009B                        690 _felix:
                                    691 ;	8052Explorer.c:186: putchar('\r');
      00009B 90 00 0D         [24]  692 	mov	dptr,#0x000d
      00009E 12 0C 1E         [24]  693 	lcall	_putchar
                                    694 ;	8052Explorer.c:219: puts("                         '~~~*==Y*f~~~ ");
      0000A1 90 0E B6         [24]  695 	mov	dptr,#___str_64
      0000A4 75 F0 80         [24]  696 	mov	b,#0x80
      0000A7 12 0E 33         [24]  697 	lcall	_puts
                                    698 ;	8052Explorer.c:220: putchar('\r');
      0000AA 90 00 0D         [24]  699 	mov	dptr,#0x000d
                                    700 ;	8052Explorer.c:221: }
      0000AD 02 0C 1E         [24]  701 	ljmp	_putchar
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'dumpCODE'
                                    704 ;------------------------------------------------------------
                                    705 ;puntatore                 Allocated to registers 
                                    706 ;indirizzo                 Allocated with name '_dumpCODE_indirizzo_131072_33'
                                    707 ;posto                     Allocated with name '_dumpCODE_posto_262144_39'
                                    708 ;posto                     Allocated with name '_dumpCODE_posto_262144_42'
                                    709 ;------------------------------------------------------------
                                    710 ;	8052Explorer.c:314: void dumpCODE () {
                                    711 ;	-----------------------------------------
                                    712 ;	 function dumpCODE
                                    713 ;	-----------------------------------------
      0000B0                        714 _dumpCODE:
                                    715 ;	8052Explorer.c:315: unsigned char *puntatore = codice;
      0000B0 7D 00            [12]  716 	mov	r5,#_codice
      0000B2 7E 00            [12]  717 	mov	r6,#(_codice >> 8)
      0000B4 7F 80            [12]  718 	mov	r7,#0x80
                                    719 ;	8052Explorer.c:317: puts("Dumping code:");
      0000B6 90 16 07         [24]  720 	mov	dptr,#___str_65
      0000B9 75 F0 80         [24]  721 	mov	b,#0x80
      0000BC C0 07            [24]  722 	push	ar7
      0000BE C0 06            [24]  723 	push	ar6
      0000C0 C0 05            [24]  724 	push	ar5
      0000C2 12 0E 33         [24]  725 	lcall	_puts
      0000C5 D0 05            [24]  726 	pop	ar5
      0000C7 D0 06            [24]  727 	pop	ar6
      0000C9 D0 07            [24]  728 	pop	ar7
                                    729 ;	8052Explorer.c:318: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0000CB E4               [12]  730 	clr	a
      0000CC F5 22            [12]  731 	mov	_dumpCODE_indirizzo_131072_33,a
      0000CE F5 23            [12]  732 	mov	(_dumpCODE_indirizzo_131072_33 + 1),a
      0000D0 F5 24            [12]  733 	mov	(_dumpCODE_indirizzo_131072_33 + 2),a
      0000D2 F5 25            [12]  734 	mov	(_dumpCODE_indirizzo_131072_33 + 3),a
      0000D4                        735 00126$:
      0000D4 C3               [12]  736 	clr	c
      0000D5 74 FF            [12]  737 	mov	a,#0xff
      0000D7 95 22            [12]  738 	subb	a,_dumpCODE_indirizzo_131072_33
      0000D9 74 FF            [12]  739 	mov	a,#0xff
      0000DB 95 23            [12]  740 	subb	a,(_dumpCODE_indirizzo_131072_33 + 1)
      0000DD E4               [12]  741 	clr	a
      0000DE 95 24            [12]  742 	subb	a,(_dumpCODE_indirizzo_131072_33 + 2)
      0000E0 E4               [12]  743 	clr	a
      0000E1 95 25            [12]  744 	subb	a,(_dumpCODE_indirizzo_131072_33 + 3)
      0000E3 50 03            [24]  745 	jnc	00188$
      0000E5 02 02 DF         [24]  746 	ljmp	00118$
      0000E8                        747 00188$:
                                    748 ;	8052Explorer.c:319: if (indirizzo < 0x10) {
      0000E8 C3               [12]  749 	clr	c
      0000E9 E5 22            [12]  750 	mov	a,_dumpCODE_indirizzo_131072_33
      0000EB 94 10            [12]  751 	subb	a,#0x10
      0000ED E5 23            [12]  752 	mov	a,(_dumpCODE_indirizzo_131072_33 + 1)
      0000EF 94 00            [12]  753 	subb	a,#0x00
      0000F1 E5 24            [12]  754 	mov	a,(_dumpCODE_indirizzo_131072_33 + 2)
      0000F3 94 00            [12]  755 	subb	a,#0x00
      0000F5 E5 25            [12]  756 	mov	a,(_dumpCODE_indirizzo_131072_33 + 3)
      0000F7 94 00            [12]  757 	subb	a,#0x00
      0000F9 50 28            [24]  758 	jnc	00108$
                                    759 ;	8052Explorer.c:320: printf_tiny("000%x  ", (unsigned int)indirizzo);
      0000FB A8 22            [24]  760 	mov	r0,_dumpCODE_indirizzo_131072_33
      0000FD AC 23            [24]  761 	mov	r4,(_dumpCODE_indirizzo_131072_33 + 1)
      0000FF C0 07            [24]  762 	push	ar7
      000101 C0 06            [24]  763 	push	ar6
      000103 C0 05            [24]  764 	push	ar5
      000105 C0 00            [24]  765 	push	ar0
      000107 C0 04            [24]  766 	push	ar4
      000109 74 15            [12]  767 	mov	a,#___str_66
      00010B C0 E0            [24]  768 	push	acc
      00010D 74 16            [12]  769 	mov	a,#(___str_66 >> 8)
      00010F C0 E0            [24]  770 	push	acc
      000111 12 0C DD         [24]  771 	lcall	_printf_tiny
      000114 E5 81            [12]  772 	mov	a,sp
      000116 24 FC            [12]  773 	add	a,#0xfc
      000118 F5 81            [12]  774 	mov	sp,a
      00011A D0 05            [24]  775 	pop	ar5
      00011C D0 06            [24]  776 	pop	ar6
      00011E D0 07            [24]  777 	pop	ar7
      000120 02 01 B4         [24]  778 	ljmp	00136$
      000123                        779 00108$:
                                    780 ;	8052Explorer.c:321: } else if (indirizzo < 0x100) {
      000123 C3               [12]  781 	clr	c
      000124 E5 23            [12]  782 	mov	a,(_dumpCODE_indirizzo_131072_33 + 1)
      000126 94 01            [12]  783 	subb	a,#0x01
      000128 E5 24            [12]  784 	mov	a,(_dumpCODE_indirizzo_131072_33 + 2)
      00012A 94 00            [12]  785 	subb	a,#0x00
      00012C E5 25            [12]  786 	mov	a,(_dumpCODE_indirizzo_131072_33 + 3)
      00012E 94 00            [12]  787 	subb	a,#0x00
      000130 50 27            [24]  788 	jnc	00105$
                                    789 ;	8052Explorer.c:322: printf_tiny("00%x  ", (unsigned int)indirizzo);
      000132 A9 22            [24]  790 	mov	r1,_dumpCODE_indirizzo_131072_33
      000134 AA 23            [24]  791 	mov	r2,(_dumpCODE_indirizzo_131072_33 + 1)
      000136 C0 07            [24]  792 	push	ar7
      000138 C0 06            [24]  793 	push	ar6
      00013A C0 05            [24]  794 	push	ar5
      00013C C0 01            [24]  795 	push	ar1
      00013E C0 02            [24]  796 	push	ar2
      000140 74 1D            [12]  797 	mov	a,#___str_67
      000142 C0 E0            [24]  798 	push	acc
      000144 74 16            [12]  799 	mov	a,#(___str_67 >> 8)
      000146 C0 E0            [24]  800 	push	acc
      000148 12 0C DD         [24]  801 	lcall	_printf_tiny
      00014B E5 81            [12]  802 	mov	a,sp
      00014D 24 FC            [12]  803 	add	a,#0xfc
      00014F F5 81            [12]  804 	mov	sp,a
      000151 D0 05            [24]  805 	pop	ar5
      000153 D0 06            [24]  806 	pop	ar6
      000155 D0 07            [24]  807 	pop	ar7
      000157 80 5B            [24]  808 	sjmp	00136$
      000159                        809 00105$:
                                    810 ;	8052Explorer.c:323: } else if (indirizzo < 0x1000) {
      000159 C3               [12]  811 	clr	c
      00015A E5 23            [12]  812 	mov	a,(_dumpCODE_indirizzo_131072_33 + 1)
      00015C 94 10            [12]  813 	subb	a,#0x10
      00015E E5 24            [12]  814 	mov	a,(_dumpCODE_indirizzo_131072_33 + 2)
      000160 94 00            [12]  815 	subb	a,#0x00
      000162 E5 25            [12]  816 	mov	a,(_dumpCODE_indirizzo_131072_33 + 3)
      000164 94 00            [12]  817 	subb	a,#0x00
      000166 50 27            [24]  818 	jnc	00102$
                                    819 ;	8052Explorer.c:324: printf_tiny("0%x  ", (unsigned int)indirizzo);
      000168 A9 22            [24]  820 	mov	r1,_dumpCODE_indirizzo_131072_33
      00016A AA 23            [24]  821 	mov	r2,(_dumpCODE_indirizzo_131072_33 + 1)
      00016C C0 07            [24]  822 	push	ar7
      00016E C0 06            [24]  823 	push	ar6
      000170 C0 05            [24]  824 	push	ar5
      000172 C0 01            [24]  825 	push	ar1
      000174 C0 02            [24]  826 	push	ar2
      000176 74 24            [12]  827 	mov	a,#___str_68
      000178 C0 E0            [24]  828 	push	acc
      00017A 74 16            [12]  829 	mov	a,#(___str_68 >> 8)
      00017C C0 E0            [24]  830 	push	acc
      00017E 12 0C DD         [24]  831 	lcall	_printf_tiny
      000181 E5 81            [12]  832 	mov	a,sp
      000183 24 FC            [12]  833 	add	a,#0xfc
      000185 F5 81            [12]  834 	mov	sp,a
      000187 D0 05            [24]  835 	pop	ar5
      000189 D0 06            [24]  836 	pop	ar6
      00018B D0 07            [24]  837 	pop	ar7
      00018D 80 25            [24]  838 	sjmp	00136$
      00018F                        839 00102$:
                                    840 ;	8052Explorer.c:326: printf_tiny("%x  ", (unsigned int)indirizzo);
      00018F A9 22            [24]  841 	mov	r1,_dumpCODE_indirizzo_131072_33
      000191 AA 23            [24]  842 	mov	r2,(_dumpCODE_indirizzo_131072_33 + 1)
      000193 C0 07            [24]  843 	push	ar7
      000195 C0 06            [24]  844 	push	ar6
      000197 C0 05            [24]  845 	push	ar5
      000199 C0 01            [24]  846 	push	ar1
      00019B C0 02            [24]  847 	push	ar2
      00019D 74 2A            [12]  848 	mov	a,#___str_69
      00019F C0 E0            [24]  849 	push	acc
      0001A1 74 16            [12]  850 	mov	a,#(___str_69 >> 8)
      0001A3 C0 E0            [24]  851 	push	acc
      0001A5 12 0C DD         [24]  852 	lcall	_printf_tiny
      0001A8 E5 81            [12]  853 	mov	a,sp
      0001AA 24 FC            [12]  854 	add	a,#0xfc
      0001AC F5 81            [12]  855 	mov	sp,a
      0001AE D0 05            [24]  856 	pop	ar5
      0001B0 D0 06            [24]  857 	pop	ar6
      0001B2 D0 07            [24]  858 	pop	ar7
                                    859 ;	8052Explorer.c:328: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0001B4                        860 00136$:
      0001B4 8D 02            [24]  861 	mov	ar2,r5
      0001B6 8E 03            [24]  862 	mov	ar3,r6
      0001B8 8F 04            [24]  863 	mov	ar4,r7
      0001BA E4               [12]  864 	clr	a
      0001BB F5 26            [12]  865 	mov	_dumpCODE_posto_262144_39,a
      0001BD F5 27            [12]  866 	mov	(_dumpCODE_posto_262144_39 + 1),a
      0001BF                        867 00120$:
      0001BF C3               [12]  868 	clr	c
      0001C0 E5 26            [12]  869 	mov	a,_dumpCODE_posto_262144_39
      0001C2 94 10            [12]  870 	subb	a,#0x10
      0001C4 E5 27            [12]  871 	mov	a,(_dumpCODE_posto_262144_39 + 1)
      0001C6 94 00            [12]  872 	subb	a,#0x00
      0001C8 50 5F            [24]  873 	jnc	00112$
                                    874 ;	8052Explorer.c:329: if ( *puntatore < 16 ) {
      0001CA 8A 82            [24]  875 	mov	dpl,r2
      0001CC 8B 83            [24]  876 	mov	dph,r3
      0001CE 8C F0            [24]  877 	mov	b,r4
      0001D0 12 0E 73         [24]  878 	lcall	__gptrget
      0001D3 F9               [12]  879 	mov	r1,a
      0001D4 B9 10 00         [24]  880 	cjne	r1,#0x10,00193$
      0001D7                        881 00193$:
      0001D7 50 12            [24]  882 	jnc	00111$
                                    883 ;	8052Explorer.c:330: putchar('0');
      0001D9 90 00 30         [24]  884 	mov	dptr,#0x0030
      0001DC C0 04            [24]  885 	push	ar4
      0001DE C0 03            [24]  886 	push	ar3
      0001E0 C0 02            [24]  887 	push	ar2
      0001E2 12 0C 1E         [24]  888 	lcall	_putchar
      0001E5 D0 02            [24]  889 	pop	ar2
      0001E7 D0 03            [24]  890 	pop	ar3
      0001E9 D0 04            [24]  891 	pop	ar4
      0001EB                        892 00111$:
                                    893 ;	8052Explorer.c:332: printf_tiny("%x ", *puntatore);
      0001EB 8A 82            [24]  894 	mov	dpl,r2
      0001ED 8B 83            [24]  895 	mov	dph,r3
      0001EF 8C F0            [24]  896 	mov	b,r4
      0001F1 12 0E 73         [24]  897 	lcall	__gptrget
      0001F4 F9               [12]  898 	mov	r1,a
      0001F5 A3               [24]  899 	inc	dptr
      0001F6 AA 82            [24]  900 	mov	r2,dpl
      0001F8 AB 83            [24]  901 	mov	r3,dph
      0001FA 89 00            [24]  902 	mov	ar0,r1
      0001FC 79 00            [12]  903 	mov	r1,#0x00
      0001FE C0 04            [24]  904 	push	ar4
      000200 C0 03            [24]  905 	push	ar3
      000202 C0 02            [24]  906 	push	ar2
      000204 C0 00            [24]  907 	push	ar0
      000206 C0 01            [24]  908 	push	ar1
      000208 74 2F            [12]  909 	mov	a,#___str_70
      00020A C0 E0            [24]  910 	push	acc
      00020C 74 16            [12]  911 	mov	a,#(___str_70 >> 8)
      00020E C0 E0            [24]  912 	push	acc
      000210 12 0C DD         [24]  913 	lcall	_printf_tiny
      000213 E5 81            [12]  914 	mov	a,sp
      000215 24 FC            [12]  915 	add	a,#0xfc
      000217 F5 81            [12]  916 	mov	sp,a
      000219 D0 02            [24]  917 	pop	ar2
      00021B D0 03            [24]  918 	pop	ar3
      00021D D0 04            [24]  919 	pop	ar4
                                    920 ;	8052Explorer.c:333: puntatore++;
                                    921 ;	8052Explorer.c:328: for (unsigned int posto = 0; posto < 16; posto++ ) {
      00021F 05 26            [12]  922 	inc	_dumpCODE_posto_262144_39
      000221 E4               [12]  923 	clr	a
      000222 B5 26 9A         [24]  924 	cjne	a,_dumpCODE_posto_262144_39,00120$
      000225 05 27            [12]  925 	inc	(_dumpCODE_posto_262144_39 + 1)
      000227 80 96            [24]  926 	sjmp	00120$
      000229                        927 00112$:
                                    928 ;	8052Explorer.c:335: printf_tiny(" |");
      000229 C0 04            [24]  929 	push	ar4
      00022B C0 03            [24]  930 	push	ar3
      00022D C0 02            [24]  931 	push	ar2
      00022F 74 33            [12]  932 	mov	a,#___str_71
      000231 C0 E0            [24]  933 	push	acc
      000233 74 16            [12]  934 	mov	a,#(___str_71 >> 8)
      000235 C0 E0            [24]  935 	push	acc
      000237 12 0C DD         [24]  936 	lcall	_printf_tiny
      00023A 15 81            [12]  937 	dec	sp
      00023C 15 81            [12]  938 	dec	sp
      00023E D0 02            [24]  939 	pop	ar2
      000240 D0 03            [24]  940 	pop	ar3
      000242 D0 04            [24]  941 	pop	ar4
                                    942 ;	8052Explorer.c:336: puntatore -= 16;
      000244 EA               [12]  943 	mov	a,r2
      000245 24 F0            [12]  944 	add	a,#0xf0
      000247 FA               [12]  945 	mov	r2,a
      000248 EB               [12]  946 	mov	a,r3
      000249 34 FF            [12]  947 	addc	a,#0xff
      00024B FB               [12]  948 	mov	r3,a
                                    949 ;	8052Explorer.c:337: for (unsigned char posto = 0; posto < 16; posto++ ) {
      00024C 75 28 00         [24]  950 	mov	_dumpCODE_posto_262144_42,#0x00
      00024F                        951 00123$:
      00024F 74 F0            [12]  952 	mov	a,#0x100 - 0x10
      000251 25 28            [12]  953 	add	a,_dumpCODE_posto_262144_42
      000253 40 54            [24]  954 	jc	00142$
                                    955 ;	8052Explorer.c:338: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      000255 8A 82            [24]  956 	mov	dpl,r2
      000257 8B 83            [24]  957 	mov	dph,r3
      000259 8C F0            [24]  958 	mov	b,r4
      00025B 12 0E 73         [24]  959 	lcall	__gptrget
      00025E F8               [12]  960 	mov	r0,a
      00025F B8 20 00         [24]  961 	cjne	r0,#0x20,00197$
      000262                        962 00197$:
      000262 40 05            [24]  963 	jc	00113$
      000264 E8               [12]  964 	mov	a,r0
      000265 24 81            [12]  965 	add	a,#0xff - 0x7e
      000267 50 14            [24]  966 	jnc	00114$
      000269                        967 00113$:
                                    968 ;	8052Explorer.c:339: putchar('.');
      000269 90 00 2E         [24]  969 	mov	dptr,#0x002e
      00026C C0 04            [24]  970 	push	ar4
      00026E C0 03            [24]  971 	push	ar3
      000270 C0 02            [24]  972 	push	ar2
      000272 12 0C 1E         [24]  973 	lcall	_putchar
      000275 D0 02            [24]  974 	pop	ar2
      000277 D0 03            [24]  975 	pop	ar3
      000279 D0 04            [24]  976 	pop	ar4
      00027B 80 23            [24]  977 	sjmp	00115$
      00027D                        978 00114$:
                                    979 ;	8052Explorer.c:341: printf_tiny("%c", *puntatore);
      00027D 79 00            [12]  980 	mov	r1,#0x00
      00027F C0 04            [24]  981 	push	ar4
      000281 C0 03            [24]  982 	push	ar3
      000283 C0 02            [24]  983 	push	ar2
      000285 C0 00            [24]  984 	push	ar0
      000287 C0 01            [24]  985 	push	ar1
      000289 74 36            [12]  986 	mov	a,#___str_72
      00028B C0 E0            [24]  987 	push	acc
      00028D 74 16            [12]  988 	mov	a,#(___str_72 >> 8)
      00028F C0 E0            [24]  989 	push	acc
      000291 12 0C DD         [24]  990 	lcall	_printf_tiny
      000294 E5 81            [12]  991 	mov	a,sp
      000296 24 FC            [12]  992 	add	a,#0xfc
      000298 F5 81            [12]  993 	mov	sp,a
      00029A D0 02            [24]  994 	pop	ar2
      00029C D0 03            [24]  995 	pop	ar3
      00029E D0 04            [24]  996 	pop	ar4
      0002A0                        997 00115$:
                                    998 ;	8052Explorer.c:343: puntatore++;
      0002A0 0A               [12]  999 	inc	r2
      0002A1 BA 00 01         [24] 1000 	cjne	r2,#0x00,00200$
      0002A4 0B               [12] 1001 	inc	r3
      0002A5                       1002 00200$:
                                   1003 ;	8052Explorer.c:337: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0002A5 05 28            [12] 1004 	inc	_dumpCODE_posto_262144_42
      0002A7 80 A6            [24] 1005 	sjmp	00123$
      0002A9                       1006 00142$:
      0002A9 8A 05            [24] 1007 	mov	ar5,r2
      0002AB 8B 06            [24] 1008 	mov	ar6,r3
      0002AD 8C 07            [24] 1009 	mov	ar7,r4
                                   1010 ;	8052Explorer.c:345: putchar('|');
      0002AF 90 00 7C         [24] 1011 	mov	dptr,#0x007c
      0002B2 C0 07            [24] 1012 	push	ar7
      0002B4 C0 06            [24] 1013 	push	ar6
      0002B6 C0 05            [24] 1014 	push	ar5
      0002B8 12 0C 1E         [24] 1015 	lcall	_putchar
                                   1016 ;	8052Explorer.c:346: putchar('\r');
      0002BB 90 00 0D         [24] 1017 	mov	dptr,#0x000d
      0002BE 12 0C 1E         [24] 1018 	lcall	_putchar
      0002C1 D0 05            [24] 1019 	pop	ar5
      0002C3 D0 06            [24] 1020 	pop	ar6
      0002C5 D0 07            [24] 1021 	pop	ar7
                                   1022 ;	8052Explorer.c:318: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0002C7 74 10            [12] 1023 	mov	a,#0x10
      0002C9 25 22            [12] 1024 	add	a,_dumpCODE_indirizzo_131072_33
      0002CB F5 22            [12] 1025 	mov	_dumpCODE_indirizzo_131072_33,a
      0002CD E4               [12] 1026 	clr	a
      0002CE 35 23            [12] 1027 	addc	a,(_dumpCODE_indirizzo_131072_33 + 1)
      0002D0 F5 23            [12] 1028 	mov	(_dumpCODE_indirizzo_131072_33 + 1),a
      0002D2 E4               [12] 1029 	clr	a
      0002D3 35 24            [12] 1030 	addc	a,(_dumpCODE_indirizzo_131072_33 + 2)
      0002D5 F5 24            [12] 1031 	mov	(_dumpCODE_indirizzo_131072_33 + 2),a
      0002D7 E4               [12] 1032 	clr	a
      0002D8 35 25            [12] 1033 	addc	a,(_dumpCODE_indirizzo_131072_33 + 3)
      0002DA F5 25            [12] 1034 	mov	(_dumpCODE_indirizzo_131072_33 + 3),a
      0002DC 02 00 D4         [24] 1035 	ljmp	00126$
      0002DF                       1036 00118$:
                                   1037 ;	8052Explorer.c:348: putchar('\r');
      0002DF 90 00 0D         [24] 1038 	mov	dptr,#0x000d
                                   1039 ;	8052Explorer.c:350: }
      0002E2 02 0C 1E         [24] 1040 	ljmp	_putchar
                                   1041 ;------------------------------------------------------------
                                   1042 ;Allocation info for local variables in function 'dumpRAM'
                                   1043 ;------------------------------------------------------------
                                   1044 ;puntatore                 Allocated to registers 
                                   1045 ;indirizzo                 Allocated with name '_dumpRAM_indirizzo_131072_47'
                                   1046 ;posto                     Allocated with name '_dumpRAM_posto_262144_53'
                                   1047 ;posto                     Allocated with name '_dumpRAM_posto_262144_56'
                                   1048 ;------------------------------------------------------------
                                   1049 ;	8052Explorer.c:352: void dumpRAM () {
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function dumpRAM
                                   1052 ;	-----------------------------------------
      0002E5                       1053 _dumpRAM:
                                   1054 ;	8052Explorer.c:353: unsigned char *puntatore = dati;
      0002E5 7D 00            [12] 1055 	mov	r5,#_dati
      0002E7 7E 00            [12] 1056 	mov	r6,#0x00
      0002E9 7F 40            [12] 1057 	mov	r7,#0x40
                                   1058 ;	8052Explorer.c:355: puts("Dumping ram memory:");
      0002EB 90 16 39         [24] 1059 	mov	dptr,#___str_73
      0002EE 75 F0 80         [24] 1060 	mov	b,#0x80
      0002F1 C0 07            [24] 1061 	push	ar7
      0002F3 C0 06            [24] 1062 	push	ar6
      0002F5 C0 05            [24] 1063 	push	ar5
      0002F7 12 0E 33         [24] 1064 	lcall	_puts
      0002FA D0 05            [24] 1065 	pop	ar5
      0002FC D0 06            [24] 1066 	pop	ar6
      0002FE D0 07            [24] 1067 	pop	ar7
                                   1068 ;	8052Explorer.c:356: for (unsigned int indirizzo = 0; indirizzo <= RAMSIZE; indirizzo += 16 ) {
      000300 E4               [12] 1069 	clr	a
      000301 F5 29            [12] 1070 	mov	_dumpRAM_indirizzo_131072_47,a
      000303 F5 2A            [12] 1071 	mov	(_dumpRAM_indirizzo_131072_47 + 1),a
      000305                       1072 00126$:
      000305 C3               [12] 1073 	clr	c
      000306 74 FF            [12] 1074 	mov	a,#0xff
      000308 95 29            [12] 1075 	subb	a,_dumpRAM_indirizzo_131072_47
      00030A 74 03            [12] 1076 	mov	a,#0x03
      00030C 95 2A            [12] 1077 	subb	a,(_dumpRAM_indirizzo_131072_47 + 1)
      00030E 50 03            [24] 1078 	jnc	00188$
      000310 02 04 D3         [24] 1079 	ljmp	00118$
      000313                       1080 00188$:
                                   1081 ;	8052Explorer.c:357: if (indirizzo < 0x10) {
      000313 C3               [12] 1082 	clr	c
      000314 E5 29            [12] 1083 	mov	a,_dumpRAM_indirizzo_131072_47
      000316 94 10            [12] 1084 	subb	a,#0x10
      000318 E5 2A            [12] 1085 	mov	a,(_dumpRAM_indirizzo_131072_47 + 1)
      00031A 94 00            [12] 1086 	subb	a,#0x00
      00031C 50 23            [24] 1087 	jnc	00108$
                                   1088 ;	8052Explorer.c:358: printf_tiny("000%x  ", indirizzo);
      00031E C0 07            [24] 1089 	push	ar7
      000320 C0 06            [24] 1090 	push	ar6
      000322 C0 05            [24] 1091 	push	ar5
      000324 C0 29            [24] 1092 	push	_dumpRAM_indirizzo_131072_47
      000326 C0 2A            [24] 1093 	push	(_dumpRAM_indirizzo_131072_47 + 1)
      000328 74 15            [12] 1094 	mov	a,#___str_66
      00032A C0 E0            [24] 1095 	push	acc
      00032C 74 16            [12] 1096 	mov	a,#(___str_66 >> 8)
      00032E C0 E0            [24] 1097 	push	acc
      000330 12 0C DD         [24] 1098 	lcall	_printf_tiny
      000333 E5 81            [12] 1099 	mov	a,sp
      000335 24 FC            [12] 1100 	add	a,#0xfc
      000337 F5 81            [12] 1101 	mov	sp,a
      000339 D0 05            [24] 1102 	pop	ar5
      00033B D0 06            [24] 1103 	pop	ar6
      00033D D0 07            [24] 1104 	pop	ar7
      00033F 80 73            [24] 1105 	sjmp	00136$
      000341                       1106 00108$:
                                   1107 ;	8052Explorer.c:359: } else if (indirizzo < 0x100) {
      000341 74 FF            [12] 1108 	mov	a,#0x100 - 0x01
      000343 25 2A            [12] 1109 	add	a,(_dumpRAM_indirizzo_131072_47 + 1)
      000345 40 23            [24] 1110 	jc	00105$
                                   1111 ;	8052Explorer.c:360: printf_tiny("00%x  ", indirizzo);
      000347 C0 07            [24] 1112 	push	ar7
      000349 C0 06            [24] 1113 	push	ar6
      00034B C0 05            [24] 1114 	push	ar5
      00034D C0 29            [24] 1115 	push	_dumpRAM_indirizzo_131072_47
      00034F C0 2A            [24] 1116 	push	(_dumpRAM_indirizzo_131072_47 + 1)
      000351 74 1D            [12] 1117 	mov	a,#___str_67
      000353 C0 E0            [24] 1118 	push	acc
      000355 74 16            [12] 1119 	mov	a,#(___str_67 >> 8)
      000357 C0 E0            [24] 1120 	push	acc
      000359 12 0C DD         [24] 1121 	lcall	_printf_tiny
      00035C E5 81            [12] 1122 	mov	a,sp
      00035E 24 FC            [12] 1123 	add	a,#0xfc
      000360 F5 81            [12] 1124 	mov	sp,a
      000362 D0 05            [24] 1125 	pop	ar5
      000364 D0 06            [24] 1126 	pop	ar6
      000366 D0 07            [24] 1127 	pop	ar7
      000368 80 4A            [24] 1128 	sjmp	00136$
      00036A                       1129 00105$:
                                   1130 ;	8052Explorer.c:361: } else if (indirizzo < 0x1000) {
      00036A 74 F0            [12] 1131 	mov	a,#0x100 - 0x10
      00036C 25 2A            [12] 1132 	add	a,(_dumpRAM_indirizzo_131072_47 + 1)
      00036E 40 23            [24] 1133 	jc	00102$
                                   1134 ;	8052Explorer.c:362: printf_tiny("0%x  ", indirizzo);
      000370 C0 07            [24] 1135 	push	ar7
      000372 C0 06            [24] 1136 	push	ar6
      000374 C0 05            [24] 1137 	push	ar5
      000376 C0 29            [24] 1138 	push	_dumpRAM_indirizzo_131072_47
      000378 C0 2A            [24] 1139 	push	(_dumpRAM_indirizzo_131072_47 + 1)
      00037A 74 24            [12] 1140 	mov	a,#___str_68
      00037C C0 E0            [24] 1141 	push	acc
      00037E 74 16            [12] 1142 	mov	a,#(___str_68 >> 8)
      000380 C0 E0            [24] 1143 	push	acc
      000382 12 0C DD         [24] 1144 	lcall	_printf_tiny
      000385 E5 81            [12] 1145 	mov	a,sp
      000387 24 FC            [12] 1146 	add	a,#0xfc
      000389 F5 81            [12] 1147 	mov	sp,a
      00038B D0 05            [24] 1148 	pop	ar5
      00038D D0 06            [24] 1149 	pop	ar6
      00038F D0 07            [24] 1150 	pop	ar7
      000391 80 21            [24] 1151 	sjmp	00136$
      000393                       1152 00102$:
                                   1153 ;	8052Explorer.c:364: printf_tiny("%x  ", indirizzo);
      000393 C0 07            [24] 1154 	push	ar7
      000395 C0 06            [24] 1155 	push	ar6
      000397 C0 05            [24] 1156 	push	ar5
      000399 C0 29            [24] 1157 	push	_dumpRAM_indirizzo_131072_47
      00039B C0 2A            [24] 1158 	push	(_dumpRAM_indirizzo_131072_47 + 1)
      00039D 74 2A            [12] 1159 	mov	a,#___str_69
      00039F C0 E0            [24] 1160 	push	acc
      0003A1 74 16            [12] 1161 	mov	a,#(___str_69 >> 8)
      0003A3 C0 E0            [24] 1162 	push	acc
      0003A5 12 0C DD         [24] 1163 	lcall	_printf_tiny
      0003A8 E5 81            [12] 1164 	mov	a,sp
      0003AA 24 FC            [12] 1165 	add	a,#0xfc
      0003AC F5 81            [12] 1166 	mov	sp,a
      0003AE D0 05            [24] 1167 	pop	ar5
      0003B0 D0 06            [24] 1168 	pop	ar6
      0003B2 D0 07            [24] 1169 	pop	ar7
                                   1170 ;	8052Explorer.c:366: for (unsigned int posto = 0; posto < 16; posto++ ) {
      0003B4                       1171 00136$:
      0003B4 8D 00            [24] 1172 	mov	ar0,r5
      0003B6 8E 01            [24] 1173 	mov	ar1,r6
      0003B8 8F 02            [24] 1174 	mov	ar2,r7
      0003BA E4               [12] 1175 	clr	a
      0003BB F5 2B            [12] 1176 	mov	_dumpRAM_posto_262144_53,a
      0003BD F5 2C            [12] 1177 	mov	(_dumpRAM_posto_262144_53 + 1),a
      0003BF                       1178 00120$:
      0003BF C3               [12] 1179 	clr	c
      0003C0 E5 2B            [12] 1180 	mov	a,_dumpRAM_posto_262144_53
      0003C2 94 10            [12] 1181 	subb	a,#0x10
      0003C4 E5 2C            [12] 1182 	mov	a,(_dumpRAM_posto_262144_53 + 1)
      0003C6 94 00            [12] 1183 	subb	a,#0x00
      0003C8 50 5D            [24] 1184 	jnc	00112$
                                   1185 ;	8052Explorer.c:367: if ( *puntatore < 16 ) {
      0003CA 88 82            [24] 1186 	mov	dpl,r0
      0003CC 89 83            [24] 1187 	mov	dph,r1
      0003CE 8A F0            [24] 1188 	mov	b,r2
      0003D0 12 0E 73         [24] 1189 	lcall	__gptrget
      0003D3 FC               [12] 1190 	mov	r4,a
      0003D4 BC 10 00         [24] 1191 	cjne	r4,#0x10,00193$
      0003D7                       1192 00193$:
      0003D7 50 12            [24] 1193 	jnc	00111$
                                   1194 ;	8052Explorer.c:368: putchar('0');
      0003D9 90 00 30         [24] 1195 	mov	dptr,#0x0030
      0003DC C0 02            [24] 1196 	push	ar2
      0003DE C0 01            [24] 1197 	push	ar1
      0003E0 C0 00            [24] 1198 	push	ar0
      0003E2 12 0C 1E         [24] 1199 	lcall	_putchar
      0003E5 D0 00            [24] 1200 	pop	ar0
      0003E7 D0 01            [24] 1201 	pop	ar1
      0003E9 D0 02            [24] 1202 	pop	ar2
      0003EB                       1203 00111$:
                                   1204 ;	8052Explorer.c:370: printf_tiny("%x ", *puntatore);
      0003EB 88 82            [24] 1205 	mov	dpl,r0
      0003ED 89 83            [24] 1206 	mov	dph,r1
      0003EF 8A F0            [24] 1207 	mov	b,r2
      0003F1 12 0E 73         [24] 1208 	lcall	__gptrget
      0003F4 FC               [12] 1209 	mov	r4,a
      0003F5 A3               [24] 1210 	inc	dptr
      0003F6 A8 82            [24] 1211 	mov	r0,dpl
      0003F8 A9 83            [24] 1212 	mov	r1,dph
      0003FA 7B 00            [12] 1213 	mov	r3,#0x00
      0003FC C0 02            [24] 1214 	push	ar2
      0003FE C0 01            [24] 1215 	push	ar1
      000400 C0 00            [24] 1216 	push	ar0
      000402 C0 04            [24] 1217 	push	ar4
      000404 C0 03            [24] 1218 	push	ar3
      000406 74 2F            [12] 1219 	mov	a,#___str_70
      000408 C0 E0            [24] 1220 	push	acc
      00040A 74 16            [12] 1221 	mov	a,#(___str_70 >> 8)
      00040C C0 E0            [24] 1222 	push	acc
      00040E 12 0C DD         [24] 1223 	lcall	_printf_tiny
      000411 E5 81            [12] 1224 	mov	a,sp
      000413 24 FC            [12] 1225 	add	a,#0xfc
      000415 F5 81            [12] 1226 	mov	sp,a
      000417 D0 00            [24] 1227 	pop	ar0
      000419 D0 01            [24] 1228 	pop	ar1
      00041B D0 02            [24] 1229 	pop	ar2
                                   1230 ;	8052Explorer.c:371: puntatore++;
                                   1231 ;	8052Explorer.c:366: for (unsigned int posto = 0; posto < 16; posto++ ) {
      00041D 05 2B            [12] 1232 	inc	_dumpRAM_posto_262144_53
      00041F E4               [12] 1233 	clr	a
      000420 B5 2B 9C         [24] 1234 	cjne	a,_dumpRAM_posto_262144_53,00120$
      000423 05 2C            [12] 1235 	inc	(_dumpRAM_posto_262144_53 + 1)
      000425 80 98            [24] 1236 	sjmp	00120$
      000427                       1237 00112$:
                                   1238 ;	8052Explorer.c:373: printf_tiny(" |");
      000427 C0 02            [24] 1239 	push	ar2
      000429 C0 01            [24] 1240 	push	ar1
      00042B C0 00            [24] 1241 	push	ar0
      00042D 74 33            [12] 1242 	mov	a,#___str_71
      00042F C0 E0            [24] 1243 	push	acc
      000431 74 16            [12] 1244 	mov	a,#(___str_71 >> 8)
      000433 C0 E0            [24] 1245 	push	acc
      000435 12 0C DD         [24] 1246 	lcall	_printf_tiny
      000438 15 81            [12] 1247 	dec	sp
      00043A 15 81            [12] 1248 	dec	sp
      00043C D0 00            [24] 1249 	pop	ar0
      00043E D0 01            [24] 1250 	pop	ar1
      000440 D0 02            [24] 1251 	pop	ar2
                                   1252 ;	8052Explorer.c:374: puntatore -= 16;
      000442 E8               [12] 1253 	mov	a,r0
      000443 24 F0            [12] 1254 	add	a,#0xf0
      000445 FC               [12] 1255 	mov	r4,a
      000446 E9               [12] 1256 	mov	a,r1
      000447 34 FF            [12] 1257 	addc	a,#0xff
      000449 FB               [12] 1258 	mov	r3,a
                                   1259 ;	8052Explorer.c:375: for (unsigned char posto = 0; posto < 16; posto++ ) {
      00044A 75 2D 00         [24] 1260 	mov	_dumpRAM_posto_262144_56,#0x00
      00044D                       1261 00123$:
      00044D 74 F0            [12] 1262 	mov	a,#0x100 - 0x10
      00044F 25 2D            [12] 1263 	add	a,_dumpRAM_posto_262144_56
      000451 40 54            [24] 1264 	jc	00142$
                                   1265 ;	8052Explorer.c:376: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
      000453 8C 82            [24] 1266 	mov	dpl,r4
      000455 8B 83            [24] 1267 	mov	dph,r3
      000457 8A F0            [24] 1268 	mov	b,r2
      000459 12 0E 73         [24] 1269 	lcall	__gptrget
      00045C F8               [12] 1270 	mov	r0,a
      00045D B8 20 00         [24] 1271 	cjne	r0,#0x20,00197$
      000460                       1272 00197$:
      000460 40 05            [24] 1273 	jc	00113$
      000462 E8               [12] 1274 	mov	a,r0
      000463 24 81            [12] 1275 	add	a,#0xff - 0x7e
      000465 50 14            [24] 1276 	jnc	00114$
      000467                       1277 00113$:
                                   1278 ;	8052Explorer.c:377: putchar('.');
      000467 90 00 2E         [24] 1279 	mov	dptr,#0x002e
      00046A C0 04            [24] 1280 	push	ar4
      00046C C0 03            [24] 1281 	push	ar3
      00046E C0 02            [24] 1282 	push	ar2
      000470 12 0C 1E         [24] 1283 	lcall	_putchar
      000473 D0 02            [24] 1284 	pop	ar2
      000475 D0 03            [24] 1285 	pop	ar3
      000477 D0 04            [24] 1286 	pop	ar4
      000479 80 23            [24] 1287 	sjmp	00115$
      00047B                       1288 00114$:
                                   1289 ;	8052Explorer.c:379: printf_tiny("%c", *puntatore);
      00047B 79 00            [12] 1290 	mov	r1,#0x00
      00047D C0 04            [24] 1291 	push	ar4
      00047F C0 03            [24] 1292 	push	ar3
      000481 C0 02            [24] 1293 	push	ar2
      000483 C0 00            [24] 1294 	push	ar0
      000485 C0 01            [24] 1295 	push	ar1
      000487 74 36            [12] 1296 	mov	a,#___str_72
      000489 C0 E0            [24] 1297 	push	acc
      00048B 74 16            [12] 1298 	mov	a,#(___str_72 >> 8)
      00048D C0 E0            [24] 1299 	push	acc
      00048F 12 0C DD         [24] 1300 	lcall	_printf_tiny
      000492 E5 81            [12] 1301 	mov	a,sp
      000494 24 FC            [12] 1302 	add	a,#0xfc
      000496 F5 81            [12] 1303 	mov	sp,a
      000498 D0 02            [24] 1304 	pop	ar2
      00049A D0 03            [24] 1305 	pop	ar3
      00049C D0 04            [24] 1306 	pop	ar4
      00049E                       1307 00115$:
                                   1308 ;	8052Explorer.c:381: puntatore++;
      00049E 0C               [12] 1309 	inc	r4
      00049F BC 00 01         [24] 1310 	cjne	r4,#0x00,00200$
      0004A2 0B               [12] 1311 	inc	r3
      0004A3                       1312 00200$:
                                   1313 ;	8052Explorer.c:375: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0004A3 05 2D            [12] 1314 	inc	_dumpRAM_posto_262144_56
      0004A5 80 A6            [24] 1315 	sjmp	00123$
      0004A7                       1316 00142$:
      0004A7 8C 05            [24] 1317 	mov	ar5,r4
      0004A9 8B 06            [24] 1318 	mov	ar6,r3
      0004AB 8A 07            [24] 1319 	mov	ar7,r2
                                   1320 ;	8052Explorer.c:383: putchar('|');
      0004AD 90 00 7C         [24] 1321 	mov	dptr,#0x007c
      0004B0 C0 07            [24] 1322 	push	ar7
      0004B2 C0 06            [24] 1323 	push	ar6
      0004B4 C0 05            [24] 1324 	push	ar5
      0004B6 12 0C 1E         [24] 1325 	lcall	_putchar
                                   1326 ;	8052Explorer.c:384: putchar('\r');
      0004B9 90 00 0D         [24] 1327 	mov	dptr,#0x000d
      0004BC 12 0C 1E         [24] 1328 	lcall	_putchar
      0004BF D0 05            [24] 1329 	pop	ar5
      0004C1 D0 06            [24] 1330 	pop	ar6
      0004C3 D0 07            [24] 1331 	pop	ar7
                                   1332 ;	8052Explorer.c:356: for (unsigned int indirizzo = 0; indirizzo <= RAMSIZE; indirizzo += 16 ) {
      0004C5 74 10            [12] 1333 	mov	a,#0x10
      0004C7 25 29            [12] 1334 	add	a,_dumpRAM_indirizzo_131072_47
      0004C9 F5 29            [12] 1335 	mov	_dumpRAM_indirizzo_131072_47,a
      0004CB E4               [12] 1336 	clr	a
      0004CC 35 2A            [12] 1337 	addc	a,(_dumpRAM_indirizzo_131072_47 + 1)
      0004CE F5 2A            [12] 1338 	mov	(_dumpRAM_indirizzo_131072_47 + 1),a
      0004D0 02 03 05         [24] 1339 	ljmp	00126$
      0004D3                       1340 00118$:
                                   1341 ;	8052Explorer.c:386: putchar('\r');
      0004D3 90 00 0D         [24] 1342 	mov	dptr,#0x000d
                                   1343 ;	8052Explorer.c:388: }
      0004D6 02 0C 1E         [24] 1344 	ljmp	_putchar
                                   1345 ;------------------------------------------------------------
                                   1346 ;Allocation info for local variables in function 'hexCODE'
                                   1347 ;------------------------------------------------------------
                                   1348 ;puntatore                 Allocated with name '_hexCODE_puntatore_65536_60'
                                   1349 ;checksum                  Allocated with name '_hexCODE_checksum_65537_61'
                                   1350 ;indirizzo                 Allocated with name '_hexCODE_indirizzo_131073_62'
                                   1351 ;posto                     Allocated with name '_hexCODE_posto_262145_68'
                                   1352 ;------------------------------------------------------------
                                   1353 ;	8052Explorer.c:390: void hexCODE(){
                                   1354 ;	-----------------------------------------
                                   1355 ;	 function hexCODE
                                   1356 ;	-----------------------------------------
      0004D9                       1357 _hexCODE:
                                   1358 ;	8052Explorer.c:391: unsigned char *puntatore = codice;
      0004D9 75 2E 00         [24] 1359 	mov	_hexCODE_puntatore_65536_60,#_codice
      0004DC 75 2F 00         [24] 1360 	mov	(_hexCODE_puntatore_65536_60 + 1),#(_codice >> 8)
      0004DF 75 30 80         [24] 1361 	mov	(_hexCODE_puntatore_65536_60 + 2),#0x80
                                   1362 ;	8052Explorer.c:395: puts("Dumping code in hex file format:");
      0004E2 90 16 4D         [24] 1363 	mov	dptr,#___str_74
      0004E5 75 F0 80         [24] 1364 	mov	b,#0x80
      0004E8 12 0E 33         [24] 1365 	lcall	_puts
                                   1366 ;	8052Explorer.c:398: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0004EB E4               [12] 1367 	clr	a
      0004EC F5 33            [12] 1368 	mov	_hexCODE_indirizzo_131073_62,a
      0004EE F5 34            [12] 1369 	mov	(_hexCODE_indirizzo_131073_62 + 1),a
      0004F0 F5 35            [12] 1370 	mov	(_hexCODE_indirizzo_131073_62 + 2),a
      0004F2 F5 36            [12] 1371 	mov	(_hexCODE_indirizzo_131073_62 + 3),a
      0004F4                       1372 00120$:
      0004F4 C3               [12] 1373 	clr	c
      0004F5 74 FF            [12] 1374 	mov	a,#0xff
      0004F7 95 33            [12] 1375 	subb	a,_hexCODE_indirizzo_131073_62
      0004F9 74 FF            [12] 1376 	mov	a,#0xff
      0004FB 95 34            [12] 1377 	subb	a,(_hexCODE_indirizzo_131073_62 + 1)
      0004FD E4               [12] 1378 	clr	a
      0004FE 95 35            [12] 1379 	subb	a,(_hexCODE_indirizzo_131073_62 + 2)
      000500 E4               [12] 1380 	clr	a
      000501 95 36            [12] 1381 	subb	a,(_hexCODE_indirizzo_131073_62 + 3)
      000503 50 03            [24] 1382 	jnc	00171$
      000505 02 06 D6         [24] 1383 	ljmp	00115$
      000508                       1384 00171$:
                                   1385 ;	8052Explorer.c:399: printf_tiny(":10");
      000508 74 6E            [12] 1386 	mov	a,#___str_75
      00050A C0 E0            [24] 1387 	push	acc
      00050C 74 16            [12] 1388 	mov	a,#(___str_75 >> 8)
      00050E C0 E0            [24] 1389 	push	acc
      000510 12 0C DD         [24] 1390 	lcall	_printf_tiny
      000513 15 81            [12] 1391 	dec	sp
      000515 15 81            [12] 1392 	dec	sp
                                   1393 ;	8052Explorer.c:400: checksum = 0x10;
      000517 78 10            [12] 1394 	mov	r0,#0x10
      000519 7F 00            [12] 1395 	mov	r7,#0x00
                                   1396 ;	8052Explorer.c:401: if (indirizzo < 0x10) {
      00051B C3               [12] 1397 	clr	c
      00051C E5 33            [12] 1398 	mov	a,_hexCODE_indirizzo_131073_62
      00051E 94 10            [12] 1399 	subb	a,#0x10
      000520 E5 34            [12] 1400 	mov	a,(_hexCODE_indirizzo_131073_62 + 1)
      000522 94 00            [12] 1401 	subb	a,#0x00
      000524 E5 35            [12] 1402 	mov	a,(_hexCODE_indirizzo_131073_62 + 2)
      000526 94 00            [12] 1403 	subb	a,#0x00
      000528 E5 36            [12] 1404 	mov	a,(_hexCODE_indirizzo_131073_62 + 3)
      00052A 94 00            [12] 1405 	subb	a,#0x00
      00052C 50 24            [24] 1406 	jnc	00108$
                                   1407 ;	8052Explorer.c:402: printf_tiny("000%x", (unsigned int)indirizzo);
      00052E AD 33            [24] 1408 	mov	r5,_hexCODE_indirizzo_131073_62
      000530 AE 34            [24] 1409 	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
      000532 C0 07            [24] 1410 	push	ar7
      000534 C0 00            [24] 1411 	push	ar0
      000536 C0 05            [24] 1412 	push	ar5
      000538 C0 06            [24] 1413 	push	ar6
      00053A 74 72            [12] 1414 	mov	a,#___str_76
      00053C C0 E0            [24] 1415 	push	acc
      00053E 74 16            [12] 1416 	mov	a,#(___str_76 >> 8)
      000540 C0 E0            [24] 1417 	push	acc
      000542 12 0C DD         [24] 1418 	lcall	_printf_tiny
      000545 E5 81            [12] 1419 	mov	a,sp
      000547 24 FC            [12] 1420 	add	a,#0xfc
      000549 F5 81            [12] 1421 	mov	sp,a
      00054B D0 00            [24] 1422 	pop	ar0
      00054D D0 07            [24] 1423 	pop	ar7
      00054F 02 05 D7         [24] 1424 	ljmp	00109$
      000552                       1425 00108$:
                                   1426 ;	8052Explorer.c:403: } else if (indirizzo < 0x100) {
      000552 C3               [12] 1427 	clr	c
      000553 E5 34            [12] 1428 	mov	a,(_hexCODE_indirizzo_131073_62 + 1)
      000555 94 01            [12] 1429 	subb	a,#0x01
      000557 E5 35            [12] 1430 	mov	a,(_hexCODE_indirizzo_131073_62 + 2)
      000559 94 00            [12] 1431 	subb	a,#0x00
      00055B E5 36            [12] 1432 	mov	a,(_hexCODE_indirizzo_131073_62 + 3)
      00055D 94 00            [12] 1433 	subb	a,#0x00
      00055F 50 23            [24] 1434 	jnc	00105$
                                   1435 ;	8052Explorer.c:404: printf_tiny("00%x", (unsigned int)indirizzo);
      000561 AD 33            [24] 1436 	mov	r5,_hexCODE_indirizzo_131073_62
      000563 AE 34            [24] 1437 	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
      000565 C0 07            [24] 1438 	push	ar7
      000567 C0 00            [24] 1439 	push	ar0
      000569 C0 05            [24] 1440 	push	ar5
      00056B C0 06            [24] 1441 	push	ar6
      00056D 74 78            [12] 1442 	mov	a,#___str_77
      00056F C0 E0            [24] 1443 	push	acc
      000571 74 16            [12] 1444 	mov	a,#(___str_77 >> 8)
      000573 C0 E0            [24] 1445 	push	acc
      000575 12 0C DD         [24] 1446 	lcall	_printf_tiny
      000578 E5 81            [12] 1447 	mov	a,sp
      00057A 24 FC            [12] 1448 	add	a,#0xfc
      00057C F5 81            [12] 1449 	mov	sp,a
      00057E D0 00            [24] 1450 	pop	ar0
      000580 D0 07            [24] 1451 	pop	ar7
      000582 80 53            [24] 1452 	sjmp	00109$
      000584                       1453 00105$:
                                   1454 ;	8052Explorer.c:405: } else if (indirizzo < 0x1000) {
      000584 C3               [12] 1455 	clr	c
      000585 E5 34            [12] 1456 	mov	a,(_hexCODE_indirizzo_131073_62 + 1)
      000587 94 10            [12] 1457 	subb	a,#0x10
      000589 E5 35            [12] 1458 	mov	a,(_hexCODE_indirizzo_131073_62 + 2)
      00058B 94 00            [12] 1459 	subb	a,#0x00
      00058D E5 36            [12] 1460 	mov	a,(_hexCODE_indirizzo_131073_62 + 3)
      00058F 94 00            [12] 1461 	subb	a,#0x00
      000591 50 23            [24] 1462 	jnc	00102$
                                   1463 ;	8052Explorer.c:406: printf_tiny("0%x", (unsigned int)indirizzo);
      000593 AD 33            [24] 1464 	mov	r5,_hexCODE_indirizzo_131073_62
      000595 AE 34            [24] 1465 	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
      000597 C0 07            [24] 1466 	push	ar7
      000599 C0 00            [24] 1467 	push	ar0
      00059B C0 05            [24] 1468 	push	ar5
      00059D C0 06            [24] 1469 	push	ar6
      00059F 74 7D            [12] 1470 	mov	a,#___str_78
      0005A1 C0 E0            [24] 1471 	push	acc
      0005A3 74 16            [12] 1472 	mov	a,#(___str_78 >> 8)
      0005A5 C0 E0            [24] 1473 	push	acc
      0005A7 12 0C DD         [24] 1474 	lcall	_printf_tiny
      0005AA E5 81            [12] 1475 	mov	a,sp
      0005AC 24 FC            [12] 1476 	add	a,#0xfc
      0005AE F5 81            [12] 1477 	mov	sp,a
      0005B0 D0 00            [24] 1478 	pop	ar0
      0005B2 D0 07            [24] 1479 	pop	ar7
      0005B4 80 21            [24] 1480 	sjmp	00109$
      0005B6                       1481 00102$:
                                   1482 ;	8052Explorer.c:408: printf_tiny("%x", (unsigned int)indirizzo);
      0005B6 AD 33            [24] 1483 	mov	r5,_hexCODE_indirizzo_131073_62
      0005B8 AE 34            [24] 1484 	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
      0005BA C0 07            [24] 1485 	push	ar7
      0005BC C0 00            [24] 1486 	push	ar0
      0005BE C0 05            [24] 1487 	push	ar5
      0005C0 C0 06            [24] 1488 	push	ar6
      0005C2 74 81            [12] 1489 	mov	a,#___str_79
      0005C4 C0 E0            [24] 1490 	push	acc
      0005C6 74 16            [12] 1491 	mov	a,#(___str_79 >> 8)
      0005C8 C0 E0            [24] 1492 	push	acc
      0005CA 12 0C DD         [24] 1493 	lcall	_printf_tiny
      0005CD E5 81            [12] 1494 	mov	a,sp
      0005CF 24 FC            [12] 1495 	add	a,#0xfc
      0005D1 F5 81            [12] 1496 	mov	sp,a
      0005D3 D0 00            [24] 1497 	pop	ar0
      0005D5 D0 07            [24] 1498 	pop	ar7
      0005D7                       1499 00109$:
                                   1500 ;	8052Explorer.c:410: checksum += (indirizzo >> 8 ) & 0xFF ;
      0005D7 AE 34            [24] 1501 	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
      0005D9 7D 00            [12] 1502 	mov	r5,#0x00
      0005DB EE               [12] 1503 	mov	a,r6
      0005DC 28               [12] 1504 	add	a,r0
      0005DD FE               [12] 1505 	mov	r6,a
      0005DE ED               [12] 1506 	mov	a,r5
      0005DF 3F               [12] 1507 	addc	a,r7
      0005E0 FD               [12] 1508 	mov	r5,a
                                   1509 ;	8052Explorer.c:411: checksum += (indirizzo & 0xFF);
      0005E1 A8 33            [24] 1510 	mov	r0,_hexCODE_indirizzo_131073_62
      0005E3 7F 00            [12] 1511 	mov	r7,#0x00
      0005E5 E8               [12] 1512 	mov	a,r0
      0005E6 2E               [12] 1513 	add	a,r6
      0005E7 F5 31            [12] 1514 	mov	_hexCODE_checksum_65537_61,a
      0005E9 EF               [12] 1515 	mov	a,r7
      0005EA 3D               [12] 1516 	addc	a,r5
      0005EB F5 32            [12] 1517 	mov	(_hexCODE_checksum_65537_61 + 1),a
                                   1518 ;	8052Explorer.c:412: printf_tiny("00");
      0005ED 74 84            [12] 1519 	mov	a,#___str_80
      0005EF C0 E0            [24] 1520 	push	acc
      0005F1 74 16            [12] 1521 	mov	a,#(___str_80 >> 8)
      0005F3 C0 E0            [24] 1522 	push	acc
      0005F5 12 0C DD         [24] 1523 	lcall	_printf_tiny
      0005F8 15 81            [12] 1524 	dec	sp
      0005FA 15 81            [12] 1525 	dec	sp
                                   1526 ;	8052Explorer.c:414: for (unsigned char posto = 0; posto < 16; posto++ ) {
      0005FC AD 2E            [24] 1527 	mov	r5,_hexCODE_puntatore_65536_60
      0005FE A8 2F            [24] 1528 	mov	r0,(_hexCODE_puntatore_65536_60 + 1)
      000600 AF 30            [24] 1529 	mov	r7,(_hexCODE_puntatore_65536_60 + 2)
      000602 75 37 00         [24] 1530 	mov	_hexCODE_posto_262145_68,#0x00
      000605                       1531 00117$:
      000605 74 F0            [12] 1532 	mov	a,#0x100 - 0x10
      000607 25 37            [12] 1533 	add	a,_hexCODE_posto_262145_68
      000609 40 6D            [24] 1534 	jc	00133$
                                   1535 ;	8052Explorer.c:415: if ( *puntatore < 16 ) {
      00060B 8D 82            [24] 1536 	mov	dpl,r5
      00060D 88 83            [24] 1537 	mov	dph,r0
      00060F 8F F0            [24] 1538 	mov	b,r7
      000611 12 0E 73         [24] 1539 	lcall	__gptrget
      000614 FE               [12] 1540 	mov	r6,a
      000615 BE 10 00         [24] 1541 	cjne	r6,#0x10,00176$
      000618                       1542 00176$:
      000618 50 12            [24] 1543 	jnc	00111$
                                   1544 ;	8052Explorer.c:416: putchar('0');
      00061A 90 00 30         [24] 1545 	mov	dptr,#0x0030
      00061D C0 07            [24] 1546 	push	ar7
      00061F C0 05            [24] 1547 	push	ar5
      000621 C0 00            [24] 1548 	push	ar0
      000623 12 0C 1E         [24] 1549 	lcall	_putchar
      000626 D0 00            [24] 1550 	pop	ar0
      000628 D0 05            [24] 1551 	pop	ar5
      00062A D0 07            [24] 1552 	pop	ar7
      00062C                       1553 00111$:
                                   1554 ;	8052Explorer.c:418: printf_tiny("%x", *puntatore);
      00062C 8D 82            [24] 1555 	mov	dpl,r5
      00062E 88 83            [24] 1556 	mov	dph,r0
      000630 8F F0            [24] 1557 	mov	b,r7
      000632 12 0E 73         [24] 1558 	lcall	__gptrget
      000635 FC               [12] 1559 	mov	r4,a
      000636 7E 00            [12] 1560 	mov	r6,#0x00
      000638 C0 07            [24] 1561 	push	ar7
      00063A C0 05            [24] 1562 	push	ar5
      00063C C0 00            [24] 1563 	push	ar0
      00063E C0 04            [24] 1564 	push	ar4
      000640 C0 06            [24] 1565 	push	ar6
      000642 74 81            [12] 1566 	mov	a,#___str_79
      000644 C0 E0            [24] 1567 	push	acc
      000646 74 16            [12] 1568 	mov	a,#(___str_79 >> 8)
      000648 C0 E0            [24] 1569 	push	acc
      00064A 12 0C DD         [24] 1570 	lcall	_printf_tiny
      00064D E5 81            [12] 1571 	mov	a,sp
      00064F 24 FC            [12] 1572 	add	a,#0xfc
      000651 F5 81            [12] 1573 	mov	sp,a
      000653 D0 00            [24] 1574 	pop	ar0
      000655 D0 05            [24] 1575 	pop	ar5
      000657 D0 07            [24] 1576 	pop	ar7
                                   1577 ;	8052Explorer.c:419: checksum += *puntatore;
      000659 8D 82            [24] 1578 	mov	dpl,r5
      00065B 88 83            [24] 1579 	mov	dph,r0
      00065D 8F F0            [24] 1580 	mov	b,r7
      00065F 12 0E 73         [24] 1581 	lcall	__gptrget
      000662 FE               [12] 1582 	mov	r6,a
      000663 A3               [24] 1583 	inc	dptr
      000664 AD 82            [24] 1584 	mov	r5,dpl
      000666 A8 83            [24] 1585 	mov	r0,dph
      000668 7C 00            [12] 1586 	mov	r4,#0x00
      00066A EE               [12] 1587 	mov	a,r6
      00066B 25 31            [12] 1588 	add	a,_hexCODE_checksum_65537_61
      00066D F5 31            [12] 1589 	mov	_hexCODE_checksum_65537_61,a
      00066F EC               [12] 1590 	mov	a,r4
      000670 35 32            [12] 1591 	addc	a,(_hexCODE_checksum_65537_61 + 1)
      000672 F5 32            [12] 1592 	mov	(_hexCODE_checksum_65537_61 + 1),a
                                   1593 ;	8052Explorer.c:420: puntatore++;
                                   1594 ;	8052Explorer.c:414: for (unsigned char posto = 0; posto < 16; posto++ ) {
      000674 05 37            [12] 1595 	inc	_hexCODE_posto_262145_68
      000676 80 8D            [24] 1596 	sjmp	00117$
      000678                       1597 00133$:
      000678 8D 2E            [24] 1598 	mov	_hexCODE_puntatore_65536_60,r5
      00067A 88 2F            [24] 1599 	mov	(_hexCODE_puntatore_65536_60 + 1),r0
      00067C 8F 30            [24] 1600 	mov	(_hexCODE_puntatore_65536_60 + 2),r7
                                   1601 ;	8052Explorer.c:422: checksum = ((~checksum) & 0xFF);
      00067E E5 31            [12] 1602 	mov	a,_hexCODE_checksum_65537_61
      000680 F4               [12] 1603 	cpl	a
      000681 FE               [12] 1604 	mov	r6,a
      000682 E5 32            [12] 1605 	mov	a,(_hexCODE_checksum_65537_61 + 1)
      000684 F4               [12] 1606 	cpl	a
      000685 7F 00            [12] 1607 	mov	r7,#0x00
                                   1608 ;	8052Explorer.c:423: checksum++;
      000687 0E               [12] 1609 	inc	r6
      000688 BE 00 01         [24] 1610 	cjne	r6,#0x00,00178$
      00068B 0F               [12] 1611 	inc	r7
      00068C                       1612 00178$:
                                   1613 ;	8052Explorer.c:424: if ( (checksum & 0xFF) < 16 ) {
      00068C 8E 04            [24] 1614 	mov	ar4,r6
      00068E 7D 00            [12] 1615 	mov	r5,#0x00
      000690 C3               [12] 1616 	clr	c
      000691 EC               [12] 1617 	mov	a,r4
      000692 94 10            [12] 1618 	subb	a,#0x10
      000694 ED               [12] 1619 	mov	a,r5
      000695 94 00            [12] 1620 	subb	a,#0x00
      000697 50 0E            [24] 1621 	jnc	00114$
                                   1622 ;	8052Explorer.c:425: putchar('0');
      000699 90 00 30         [24] 1623 	mov	dptr,#0x0030
      00069C C0 07            [24] 1624 	push	ar7
      00069E C0 06            [24] 1625 	push	ar6
      0006A0 12 0C 1E         [24] 1626 	lcall	_putchar
      0006A3 D0 06            [24] 1627 	pop	ar6
      0006A5 D0 07            [24] 1628 	pop	ar7
      0006A7                       1629 00114$:
                                   1630 ;	8052Explorer.c:427: printf_tiny("%x\r", checksum & 0xFF);
      0006A7 7F 00            [12] 1631 	mov	r7,#0x00
      0006A9 C0 06            [24] 1632 	push	ar6
      0006AB C0 07            [24] 1633 	push	ar7
      0006AD 74 87            [12] 1634 	mov	a,#___str_81
      0006AF C0 E0            [24] 1635 	push	acc
      0006B1 74 16            [12] 1636 	mov	a,#(___str_81 >> 8)
      0006B3 C0 E0            [24] 1637 	push	acc
      0006B5 12 0C DD         [24] 1638 	lcall	_printf_tiny
      0006B8 E5 81            [12] 1639 	mov	a,sp
      0006BA 24 FC            [12] 1640 	add	a,#0xfc
      0006BC F5 81            [12] 1641 	mov	sp,a
                                   1642 ;	8052Explorer.c:398: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      0006BE 74 10            [12] 1643 	mov	a,#0x10
      0006C0 25 33            [12] 1644 	add	a,_hexCODE_indirizzo_131073_62
      0006C2 F5 33            [12] 1645 	mov	_hexCODE_indirizzo_131073_62,a
      0006C4 E4               [12] 1646 	clr	a
      0006C5 35 34            [12] 1647 	addc	a,(_hexCODE_indirizzo_131073_62 + 1)
      0006C7 F5 34            [12] 1648 	mov	(_hexCODE_indirizzo_131073_62 + 1),a
      0006C9 E4               [12] 1649 	clr	a
      0006CA 35 35            [12] 1650 	addc	a,(_hexCODE_indirizzo_131073_62 + 2)
      0006CC F5 35            [12] 1651 	mov	(_hexCODE_indirizzo_131073_62 + 2),a
      0006CE E4               [12] 1652 	clr	a
      0006CF 35 36            [12] 1653 	addc	a,(_hexCODE_indirizzo_131073_62 + 3)
      0006D1 F5 36            [12] 1654 	mov	(_hexCODE_indirizzo_131073_62 + 3),a
      0006D3 02 04 F4         [24] 1655 	ljmp	00120$
      0006D6                       1656 00115$:
                                   1657 ;	8052Explorer.c:429: printf_tiny("%s", ":00000001FF");
      0006D6 74 8E            [12] 1658 	mov	a,#___str_83
      0006D8 C0 E0            [24] 1659 	push	acc
      0006DA 74 16            [12] 1660 	mov	a,#(___str_83 >> 8)
      0006DC C0 E0            [24] 1661 	push	acc
      0006DE 74 80            [12] 1662 	mov	a,#0x80
      0006E0 C0 E0            [24] 1663 	push	acc
      0006E2 74 8B            [12] 1664 	mov	a,#___str_82
      0006E4 C0 E0            [24] 1665 	push	acc
      0006E6 74 16            [12] 1666 	mov	a,#(___str_82 >> 8)
      0006E8 C0 E0            [24] 1667 	push	acc
      0006EA 12 0C DD         [24] 1668 	lcall	_printf_tiny
      0006ED E5 81            [12] 1669 	mov	a,sp
      0006EF 24 FB            [12] 1670 	add	a,#0xfb
      0006F1 F5 81            [12] 1671 	mov	sp,a
                                   1672 ;	8052Explorer.c:431: putchar('\r');
      0006F3 90 00 0D         [24] 1673 	mov	dptr,#0x000d
      0006F6 12 0C 1E         [24] 1674 	lcall	_putchar
                                   1675 ;	8052Explorer.c:432: putchar('\r');
      0006F9 90 00 0D         [24] 1676 	mov	dptr,#0x000d
                                   1677 ;	8052Explorer.c:433: }
      0006FC 02 0C 1E         [24] 1678 	ljmp	_putchar
                                   1679 ;------------------------------------------------------------
                                   1680 ;Allocation info for local variables in function 'reset'
                                   1681 ;------------------------------------------------------------
                                   1682 ;	8052Explorer.c:435: void reset( void ) {
                                   1683 ;	-----------------------------------------
                                   1684 ;	 function reset
                                   1685 ;	-----------------------------------------
      0006FF                       1686 _reset:
                                   1687 ;	8052Explorer.c:436: puts("Resetting the micro.");
      0006FF 90 16 9A         [24] 1688 	mov	dptr,#___str_84
      000702 75 F0 80         [24] 1689 	mov	b,#0x80
      000705 12 0E 33         [24] 1690 	lcall	_puts
                                   1691 ;	8052Explorer.c:442: while ( 1 );
      000708                       1692 00102$:
                                   1693 ;	8052Explorer.c:443: }
      000708 80 FE            [24] 1694 	sjmp	00102$
                                   1695 ;------------------------------------------------------------
                                   1696 ;Allocation info for local variables in function 'start'
                                   1697 ;------------------------------------------------------------
                                   1698 ;	8052Explorer.c:445: void start( void )
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function start
                                   1701 ;	-----------------------------------------
      00070A                       1702 _start:
                                   1703 ;	8052Explorer.c:461: P0=0xFF;
      00070A 75 80 FF         [24] 1704 	mov	_P0,#0xff
                                   1705 ;	8052Explorer.c:462: P1=0xFF;
      00070D 75 90 FF         [24] 1706 	mov	_P1,#0xff
                                   1707 ;	8052Explorer.c:463: P2=0xFF;
      000710 75 A0 FF         [24] 1708 	mov	_P2,#0xff
                                   1709 ;	8052Explorer.c:464: P3=0xFF;
      000713 75 B0 FF         [24] 1710 	mov	_P3,#0xff
                                   1711 ;	8052Explorer.c:465: init_ser(MYTH2, MYTL2);
      000716 75 0E FD         [24] 1712 	mov	_init_ser_PARM_2,#0xfd
      000719 75 82 FF         [24] 1713 	mov	dpl,#0xff
      00071C 12 0B 53         [24] 1714 	lcall	_init_ser
                                   1715 ;	8052Explorer.c:466: felix();
      00071F 12 00 9B         [24] 1716 	lcall	_felix
                                   1717 ;	8052Explorer.c:467: printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
      000722 74 D1            [12] 1718 	mov	a,#___str_87
      000724 C0 E0            [24] 1719 	push	acc
      000726 74 16            [12] 1720 	mov	a,#(___str_87 >> 8)
      000728 C0 E0            [24] 1721 	push	acc
      00072A 74 80            [12] 1722 	mov	a,#0x80
      00072C C0 E0            [24] 1723 	push	acc
      00072E 74 C8            [12] 1724 	mov	a,#___str_86
      000730 C0 E0            [24] 1725 	push	acc
      000732 74 16            [12] 1726 	mov	a,#(___str_86 >> 8)
      000734 C0 E0            [24] 1727 	push	acc
      000736 74 80            [12] 1728 	mov	a,#0x80
      000738 C0 E0            [24] 1729 	push	acc
      00073A 74 AF            [12] 1730 	mov	a,#___str_85
      00073C C0 E0            [24] 1731 	push	acc
      00073E 74 16            [12] 1732 	mov	a,#(___str_85 >> 8)
      000740 C0 E0            [24] 1733 	push	acc
      000742 12 0C DD         [24] 1734 	lcall	_printf_tiny
      000745 E5 81            [12] 1735 	mov	a,sp
      000747 24 F8            [12] 1736 	add	a,#0xf8
      000749 F5 81            [12] 1737 	mov	sp,a
                                   1738 ;	8052Explorer.c:485: fourclockmultiplier();
      00074B 12 00 8C         [24] 1739 	lcall	_fourclockmultiplier
                                   1740 ;	8052Explorer.c:486: puts("Enabled four time clock multiplier");
      00074E 90 16 D9         [24] 1741 	mov	dptr,#___str_88
      000751 75 F0 80         [24] 1742 	mov	b,#0x80
      000754 12 0E 33         [24] 1743 	lcall	_puts
                                   1744 ;	8052Explorer.c:488: printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
      000757 74 FD            [12] 1745 	mov	a,#0xfd
      000759 C0 E0            [24] 1746 	push	acc
      00075B E4               [12] 1747 	clr	a
      00075C C0 E0            [24] 1748 	push	acc
      00075E 14               [12] 1749 	dec	a
      00075F C0 E0            [24] 1750 	push	acc
      000761 E4               [12] 1751 	clr	a
      000762 C0 E0            [24] 1752 	push	acc
      000764 74 FC            [12] 1753 	mov	a,#___str_89
      000766 C0 E0            [24] 1754 	push	acc
      000768 74 16            [12] 1755 	mov	a,#(___str_89 >> 8)
      00076A C0 E0            [24] 1756 	push	acc
      00076C 12 0C DD         [24] 1757 	lcall	_printf_tiny
      00076F E5 81            [12] 1758 	mov	a,sp
      000771 24 FA            [12] 1759 	add	a,#0xfa
      000773 F5 81            [12] 1760 	mov	sp,a
                                   1761 ;	8052Explorer.c:489: printf_tiny("Started serial at %s bps\r", BPS);
      000775 74 40            [12] 1762 	mov	a,#___str_91
      000777 C0 E0            [24] 1763 	push	acc
      000779 74 17            [12] 1764 	mov	a,#(___str_91 >> 8)
      00077B C0 E0            [24] 1765 	push	acc
      00077D 74 80            [12] 1766 	mov	a,#0x80
      00077F C0 E0            [24] 1767 	push	acc
      000781 74 26            [12] 1768 	mov	a,#___str_90
      000783 C0 E0            [24] 1769 	push	acc
      000785 74 17            [12] 1770 	mov	a,#(___str_90 >> 8)
      000787 C0 E0            [24] 1771 	push	acc
      000789 12 0C DD         [24] 1772 	lcall	_printf_tiny
      00078C E5 81            [12] 1773 	mov	a,sp
      00078E 24 FB            [12] 1774 	add	a,#0xfb
      000790 F5 81            [12] 1775 	mov	sp,a
                                   1776 ;	8052Explorer.c:490: init_timer0(0xDE, 0xED);
      000792 75 0E ED         [24] 1777 	mov	_init_timer0_PARM_2,#0xed
      000795 75 82 DE         [24] 1778 	mov	dpl,#0xde
      000798 12 0C 3A         [24] 1779 	lcall	_init_timer0
                                   1780 ;	8052Explorer.c:491: printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
      00079B 74 ED            [12] 1781 	mov	a,#0xed
      00079D C0 E0            [24] 1782 	push	acc
      00079F E4               [12] 1783 	clr	a
      0007A0 C0 E0            [24] 1784 	push	acc
      0007A2 74 DE            [12] 1785 	mov	a,#0xde
      0007A4 C0 E0            [24] 1786 	push	acc
      0007A6 E4               [12] 1787 	clr	a
      0007A7 C0 E0            [24] 1788 	push	acc
      0007A9 74 47            [12] 1789 	mov	a,#___str_92
      0007AB C0 E0            [24] 1790 	push	acc
      0007AD 74 17            [12] 1791 	mov	a,#(___str_92 >> 8)
      0007AF C0 E0            [24] 1792 	push	acc
      0007B1 12 0C DD         [24] 1793 	lcall	_printf_tiny
      0007B4 E5 81            [12] 1794 	mov	a,sp
      0007B6 24 FA            [12] 1795 	add	a,#0xfa
      0007B8 F5 81            [12] 1796 	mov	sp,a
                                   1797 ;	8052Explorer.c:493: puts("Print a string from code memory:");
      0007BA 90 17 71         [24] 1798 	mov	dptr,#___str_95
      0007BD 75 F0 80         [24] 1799 	mov	b,#0x80
      0007C0 12 0E 33         [24] 1800 	lcall	_puts
                                   1801 ;	8052Explorer.c:494: puts(acTestString); 
      0007C3 90 0E 8F         [24] 1802 	mov	dptr,#_acTestString
      0007C6 75 F0 80         [24] 1803 	mov	b,#0x80
                                   1804 ;	8052Explorer.c:495: }
      0007C9 02 0E 33         [24] 1805 	ljmp	_puts
                                   1806 ;------------------------------------------------------------
                                   1807 ;Allocation info for local variables in function 'p'
                                   1808 ;------------------------------------------------------------
                                   1809 ;porta                     Allocated to registers r7 
                                   1810 ;pin                       Allocated with name '_p_pin_65537_82'
                                   1811 ;action                    Allocated to registers r5 
                                   1812 ;------------------------------------------------------------
                                   1813 ;	8052Explorer.c:497: void p( unsigned char porta ) {
                                   1814 ;	-----------------------------------------
                                   1815 ;	 function p
                                   1816 ;	-----------------------------------------
      0007CC                       1817 _p:
      0007CC AF 82            [24] 1818 	mov	r7,dpl
                                   1819 ;	8052Explorer.c:498: if (porta == 3 ) {
      0007CE E4               [12] 1820 	clr	a
      0007CF BF 03 01         [24] 1821 	cjne	r7,#0x03,00255$
      0007D2 04               [12] 1822 	inc	a
      0007D3                       1823 00255$:
      0007D3 FE               [12] 1824 	mov	r6,a
      0007D4 60 23            [24] 1825 	jz	00105$
                                   1826 ;	8052Explorer.c:499: printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
      0007D6 8F 04            [24] 1827 	mov	ar4,r7
      0007D8 7D 00            [12] 1828 	mov	r5,#0x00
      0007DA C0 07            [24] 1829 	push	ar7
      0007DC C0 06            [24] 1830 	push	ar6
      0007DE C0 04            [24] 1831 	push	ar4
      0007E0 C0 05            [24] 1832 	push	ar5
      0007E2 74 B8            [12] 1833 	mov	a,#___str_96
      0007E4 C0 E0            [24] 1834 	push	acc
      0007E6 74 17            [12] 1835 	mov	a,#(___str_96 >> 8)
      0007E8 C0 E0            [24] 1836 	push	acc
      0007EA 12 0C DD         [24] 1837 	lcall	_printf_tiny
      0007ED E5 81            [12] 1838 	mov	a,sp
      0007EF 24 FC            [12] 1839 	add	a,#0xfc
      0007F1 F5 81            [12] 1840 	mov	sp,a
      0007F3 D0 06            [24] 1841 	pop	ar6
      0007F5 D0 07            [24] 1842 	pop	ar7
      0007F7 80 47            [24] 1843 	sjmp	00107$
      0007F9                       1844 00105$:
                                   1845 ;	8052Explorer.c:500: } else if (porta == 2 ) {
      0007F9 BF 02 23         [24] 1846 	cjne	r7,#0x02,00102$
                                   1847 ;	8052Explorer.c:501: printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
      0007FC 8F 04            [24] 1848 	mov	ar4,r7
      0007FE 7D 00            [12] 1849 	mov	r5,#0x00
      000800 C0 07            [24] 1850 	push	ar7
      000802 C0 06            [24] 1851 	push	ar6
      000804 C0 04            [24] 1852 	push	ar4
      000806 C0 05            [24] 1853 	push	ar5
      000808 74 DB            [12] 1854 	mov	a,#___str_97
      00080A C0 E0            [24] 1855 	push	acc
      00080C 74 17            [12] 1856 	mov	a,#(___str_97 >> 8)
      00080E C0 E0            [24] 1857 	push	acc
      000810 12 0C DD         [24] 1858 	lcall	_printf_tiny
      000813 E5 81            [12] 1859 	mov	a,sp
      000815 24 FC            [12] 1860 	add	a,#0xfc
      000817 F5 81            [12] 1861 	mov	sp,a
      000819 D0 06            [24] 1862 	pop	ar6
      00081B D0 07            [24] 1863 	pop	ar7
      00081D 80 21            [24] 1864 	sjmp	00107$
      00081F                       1865 00102$:
                                   1866 ;	8052Explorer.c:503: printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
      00081F 8F 04            [24] 1867 	mov	ar4,r7
      000821 7D 00            [12] 1868 	mov	r5,#0x00
      000823 C0 07            [24] 1869 	push	ar7
      000825 C0 06            [24] 1870 	push	ar6
      000827 C0 04            [24] 1871 	push	ar4
      000829 C0 05            [24] 1872 	push	ar5
      00082B 74 FE            [12] 1873 	mov	a,#___str_98
      00082D C0 E0            [24] 1874 	push	acc
      00082F 74 17            [12] 1875 	mov	a,#(___str_98 >> 8)
      000831 C0 E0            [24] 1876 	push	acc
      000833 12 0C DD         [24] 1877 	lcall	_printf_tiny
      000836 E5 81            [12] 1878 	mov	a,sp
      000838 24 FC            [12] 1879 	add	a,#0xfc
      00083A F5 81            [12] 1880 	mov	sp,a
      00083C D0 06            [24] 1881 	pop	ar6
      00083E D0 07            [24] 1882 	pop	ar7
                                   1883 ;	8052Explorer.c:505: while (!ser_byte_avail()){
      000840                       1884 00107$:
      000840 C0 07            [24] 1885 	push	ar7
      000842 C0 06            [24] 1886 	push	ar6
      000844 12 0B F3         [24] 1887 	lcall	_ser_byte_avail
      000847 E5 82            [12] 1888 	mov	a,dpl
      000849 D0 06            [24] 1889 	pop	ar6
      00084B D0 07            [24] 1890 	pop	ar7
      00084D 60 F1            [24] 1891 	jz	00107$
                                   1892 ;	8052Explorer.c:508: unsigned char pin = getchar();
      00084F C0 07            [24] 1893 	push	ar7
      000851 C0 06            [24] 1894 	push	ar6
      000853 12 0C 32         [24] 1895 	lcall	_getchar
      000856 AC 82            [24] 1896 	mov	r4,dpl
      000858 D0 06            [24] 1897 	pop	ar6
      00085A D0 07            [24] 1898 	pop	ar7
                                   1899 ;	8052Explorer.c:509: pin = pin - 48;
      00085C EC               [12] 1900 	mov	a,r4
      00085D 24 D0            [12] 1901 	add	a,#0xd0
      00085F F5 38            [12] 1902 	mov	_p_pin_65537_82,a
                                   1903 ;	8052Explorer.c:510: printf_tiny("Pin %u of port %u: ", pin, porta );
      000861 8F 03            [24] 1904 	mov	ar3,r7
      000863 7C 00            [12] 1905 	mov	r4,#0x00
      000865 A9 38            [24] 1906 	mov	r1,_p_pin_65537_82
      000867 7A 00            [12] 1907 	mov	r2,#0x00
      000869 C0 07            [24] 1908 	push	ar7
      00086B C0 06            [24] 1909 	push	ar6
      00086D C0 04            [24] 1910 	push	ar4
      00086F C0 03            [24] 1911 	push	ar3
      000871 C0 02            [24] 1912 	push	ar2
      000873 C0 01            [24] 1913 	push	ar1
      000875 C0 03            [24] 1914 	push	ar3
      000877 C0 04            [24] 1915 	push	ar4
      000879 C0 01            [24] 1916 	push	ar1
      00087B C0 02            [24] 1917 	push	ar2
      00087D 74 21            [12] 1918 	mov	a,#___str_99
      00087F C0 E0            [24] 1919 	push	acc
      000881 74 18            [12] 1920 	mov	a,#(___str_99 >> 8)
      000883 C0 E0            [24] 1921 	push	acc
      000885 12 0C DD         [24] 1922 	lcall	_printf_tiny
      000888 E5 81            [12] 1923 	mov	a,sp
      00088A 24 FA            [12] 1924 	add	a,#0xfa
      00088C F5 81            [12] 1925 	mov	sp,a
      00088E D0 01            [24] 1926 	pop	ar1
      000890 D0 02            [24] 1927 	pop	ar2
      000892 D0 03            [24] 1928 	pop	ar3
      000894 D0 04            [24] 1929 	pop	ar4
      000896 D0 06            [24] 1930 	pop	ar6
      000898 D0 07            [24] 1931 	pop	ar7
                                   1932 ;	8052Explorer.c:511: if ( pin >= 0 && pin <= 8 ) {
      00089A E5 38            [12] 1933 	mov	a,_p_pin_65537_82
      00089C 24 F7            [12] 1934 	add	a,#0xff - 0x08
      00089E 50 03            [24] 1935 	jnc	00261$
      0008A0 02 09 F7         [24] 1936 	ljmp	00150$
      0008A3                       1937 00261$:
                                   1938 ;	8052Explorer.c:512: if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
      0008A3 EE               [12] 1939 	mov	a,r6
      0008A4 60 0F            [24] 1940 	jz	00144$
      0008A6 E5 38            [12] 1941 	mov	a,_p_pin_65537_82
      0008A8 70 03            [24] 1942 	jnz	00263$
      0008AA 02 09 EE         [24] 1943 	ljmp	00145$
      0008AD                       1944 00263$:
      0008AD 74 01            [12] 1945 	mov	a,#0x01
      0008AF B5 38 03         [24] 1946 	cjne	a,_p_pin_65537_82,00264$
      0008B2 02 09 EE         [24] 1947 	ljmp	00145$
      0008B5                       1948 00264$:
      0008B5                       1949 00144$:
                                   1950 ;	8052Explorer.c:513: if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
      0008B5 E4               [12] 1951 	clr	a
      0008B6 BF 02 01         [24] 1952 	cjne	r7,#0x02,00265$
      0008B9 04               [12] 1953 	inc	a
      0008BA                       1954 00265$:
      0008BA FE               [12] 1955 	mov	r6,a
      0008BB 60 17            [24] 1956 	jz	00138$
      0008BD E5 38            [12] 1957 	mov	a,_p_pin_65537_82
      0008BF 70 03            [24] 1958 	jnz	00268$
      0008C1 02 09 E5         [24] 1959 	ljmp	00139$
      0008C4                       1960 00268$:
      0008C4 74 01            [12] 1961 	mov	a,#0x01
      0008C6 B5 38 03         [24] 1962 	cjne	a,_p_pin_65537_82,00269$
      0008C9 02 09 E5         [24] 1963 	ljmp	00139$
      0008CC                       1964 00269$:
      0008CC 74 02            [12] 1965 	mov	a,#0x02
      0008CE B5 38 03         [24] 1966 	cjne	a,_p_pin_65537_82,00270$
      0008D1 02 09 E5         [24] 1967 	ljmp	00139$
      0008D4                       1968 00270$:
      0008D4                       1969 00138$:
                                   1970 ;	8052Explorer.c:514: puts("0 off, 1 on.");
      0008D4 90 18 35         [24] 1971 	mov	dptr,#___str_100
      0008D7 75 F0 80         [24] 1972 	mov	b,#0x80
      0008DA C0 07            [24] 1973 	push	ar7
      0008DC C0 06            [24] 1974 	push	ar6
      0008DE C0 04            [24] 1975 	push	ar4
      0008E0 C0 03            [24] 1976 	push	ar3
      0008E2 C0 02            [24] 1977 	push	ar2
      0008E4 C0 01            [24] 1978 	push	ar1
      0008E6 12 0E 33         [24] 1979 	lcall	_puts
      0008E9 D0 01            [24] 1980 	pop	ar1
      0008EB D0 02            [24] 1981 	pop	ar2
      0008ED D0 03            [24] 1982 	pop	ar3
      0008EF D0 04            [24] 1983 	pop	ar4
      0008F1 D0 06            [24] 1984 	pop	ar6
      0008F3 D0 07            [24] 1985 	pop	ar7
                                   1986 ;	8052Explorer.c:515: while (!ser_byte_avail()){
      0008F5                       1987 00110$:
      0008F5 C0 07            [24] 1988 	push	ar7
      0008F7 C0 06            [24] 1989 	push	ar6
      0008F9 C0 04            [24] 1990 	push	ar4
      0008FB C0 03            [24] 1991 	push	ar3
      0008FD C0 02            [24] 1992 	push	ar2
      0008FF C0 01            [24] 1993 	push	ar1
      000901 12 0B F3         [24] 1994 	lcall	_ser_byte_avail
      000904 E5 82            [12] 1995 	mov	a,dpl
      000906 D0 01            [24] 1996 	pop	ar1
      000908 D0 02            [24] 1997 	pop	ar2
      00090A D0 03            [24] 1998 	pop	ar3
      00090C D0 04            [24] 1999 	pop	ar4
      00090E D0 06            [24] 2000 	pop	ar6
      000910 D0 07            [24] 2001 	pop	ar7
      000912 60 E1            [24] 2002 	jz	00110$
                                   2003 ;	8052Explorer.c:518: unsigned char action = getchar();
      000914 C0 07            [24] 2004 	push	ar7
      000916 C0 06            [24] 2005 	push	ar6
      000918 C0 04            [24] 2006 	push	ar4
      00091A C0 03            [24] 2007 	push	ar3
      00091C C0 02            [24] 2008 	push	ar2
      00091E C0 01            [24] 2009 	push	ar1
      000920 12 0C 32         [24] 2010 	lcall	_getchar
      000923 A8 82            [24] 2011 	mov	r0,dpl
      000925 D0 01            [24] 2012 	pop	ar1
      000927 D0 02            [24] 2013 	pop	ar2
      000929 D0 03            [24] 2014 	pop	ar3
      00092B D0 04            [24] 2015 	pop	ar4
      00092D D0 06            [24] 2016 	pop	ar6
      00092F D0 07            [24] 2017 	pop	ar7
                                   2018 ;	8052Explorer.c:519: action = action -48;
      000931 E8               [12] 2019 	mov	a,r0
      000932 24 D0            [12] 2020 	add	a,#0xd0
                                   2021 ;	8052Explorer.c:520: if (action == 0 || action == 1) {
      000934 FD               [12] 2022 	mov	r5,a
      000935 60 08            [24] 2023 	jz	00134$
      000937 BD 01 02         [24] 2024 	cjne	r5,#0x01,00273$
      00093A 80 03            [24] 2025 	sjmp	00274$
      00093C                       2026 00273$:
      00093C 02 09 DC         [24] 2027 	ljmp	00135$
      00093F                       2028 00274$:
      00093F                       2029 00134$:
                                   2030 ;	8052Explorer.c:521: if (action == 1) {
      00093F BD 01 4D         [24] 2031 	cjne	r5,#0x01,00132$
                                   2032 ;	8052Explorer.c:522: action = action << pin;
      000942 85 38 F0         [24] 2033 	mov	b,_p_pin_65537_82
      000945 05 F0            [12] 2034 	inc	b
      000947 ED               [12] 2035 	mov	a,r5
      000948 80 02            [24] 2036 	sjmp	00279$
      00094A                       2037 00277$:
      00094A 25 E0            [12] 2038 	add	a,acc
      00094C                       2039 00279$:
      00094C D5 F0 FB         [24] 2040 	djnz	b,00277$
                                   2041 ;	8052Explorer.c:523: action = ~action;
      00094F F4               [12] 2042 	cpl	a
      000950 FD               [12] 2043 	mov	r5,a
                                   2044 ;	8052Explorer.c:525: printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
      000951 C0 07            [24] 2045 	push	ar7
      000953 C0 06            [24] 2046 	push	ar6
      000955 C0 05            [24] 2047 	push	ar5
      000957 C0 03            [24] 2048 	push	ar3
      000959 C0 04            [24] 2049 	push	ar4
      00095B C0 01            [24] 2050 	push	ar1
      00095D C0 02            [24] 2051 	push	ar2
      00095F 74 42            [12] 2052 	mov	a,#___str_101
      000961 C0 E0            [24] 2053 	push	acc
      000963 74 18            [12] 2054 	mov	a,#(___str_101 >> 8)
      000965 C0 E0            [24] 2055 	push	acc
      000967 12 0C DD         [24] 2056 	lcall	_printf_tiny
      00096A E5 81            [12] 2057 	mov	a,sp
      00096C 24 FA            [12] 2058 	add	a,#0xfa
      00096E F5 81            [12] 2059 	mov	sp,a
      000970 D0 05            [24] 2060 	pop	ar5
      000972 D0 06            [24] 2061 	pop	ar6
      000974 D0 07            [24] 2062 	pop	ar7
                                   2063 ;	8052Explorer.c:526: if (0 == porta) {
      000976 EF               [12] 2064 	mov	a,r7
      000977 70 04            [24] 2065 	jnz	00120$
                                   2066 ;	8052Explorer.c:527: P0 &= action;
      000979 ED               [12] 2067 	mov	a,r5
      00097A 52 80            [12] 2068 	anl	_P0,a
      00097C 22               [24] 2069 	ret
      00097D                       2070 00120$:
                                   2071 ;	8052Explorer.c:528: } else if (1 == porta) {
      00097D BF 01 04         [24] 2072 	cjne	r7,#0x01,00117$
                                   2073 ;	8052Explorer.c:529: P1 &= action;
      000980 ED               [12] 2074 	mov	a,r5
      000981 52 90            [12] 2075 	anl	_P1,a
      000983 22               [24] 2076 	ret
      000984                       2077 00117$:
                                   2078 ;	8052Explorer.c:530: } else if (2 == porta) {
      000984 EE               [12] 2079 	mov	a,r6
      000985 60 04            [24] 2080 	jz	00114$
                                   2081 ;	8052Explorer.c:531: P2 &= action;
      000987 ED               [12] 2082 	mov	a,r5
      000988 52 A0            [12] 2083 	anl	_P2,a
      00098A 22               [24] 2084 	ret
      00098B                       2085 00114$:
                                   2086 ;	8052Explorer.c:533: P3 &= action;
      00098B ED               [12] 2087 	mov	a,r5
      00098C 52 B0            [12] 2088 	anl	_P3,a
      00098E 22               [24] 2089 	ret
      00098F                       2090 00132$:
                                   2091 ;	8052Explorer.c:538: action = action << pin;
      00098F 85 38 F0         [24] 2092 	mov	b,_p_pin_65537_82
      000992 05 F0            [12] 2093 	inc	b
      000994 74 01            [12] 2094 	mov	a,#0x01
      000996 80 02            [24] 2095 	sjmp	00286$
      000998                       2096 00284$:
      000998 25 E0            [12] 2097 	add	a,acc
      00099A                       2098 00286$:
      00099A D5 F0 FB         [24] 2099 	djnz	b,00284$
      00099D FD               [12] 2100 	mov	r5,a
                                   2101 ;	8052Explorer.c:540: printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
      00099E C0 07            [24] 2102 	push	ar7
      0009A0 C0 06            [24] 2103 	push	ar6
      0009A2 C0 05            [24] 2104 	push	ar5
      0009A4 C0 03            [24] 2105 	push	ar3
      0009A6 C0 04            [24] 2106 	push	ar4
      0009A8 C0 01            [24] 2107 	push	ar1
      0009AA C0 02            [24] 2108 	push	ar2
      0009AC 74 61            [12] 2109 	mov	a,#___str_102
      0009AE C0 E0            [24] 2110 	push	acc
      0009B0 74 18            [12] 2111 	mov	a,#(___str_102 >> 8)
      0009B2 C0 E0            [24] 2112 	push	acc
      0009B4 12 0C DD         [24] 2113 	lcall	_printf_tiny
      0009B7 E5 81            [12] 2114 	mov	a,sp
      0009B9 24 FA            [12] 2115 	add	a,#0xfa
      0009BB F5 81            [12] 2116 	mov	sp,a
      0009BD D0 05            [24] 2117 	pop	ar5
      0009BF D0 06            [24] 2118 	pop	ar6
      0009C1 D0 07            [24] 2119 	pop	ar7
                                   2120 ;	8052Explorer.c:541: if (0 == porta) {
      0009C3 EF               [12] 2121 	mov	a,r7
      0009C4 70 04            [24] 2122 	jnz	00129$
                                   2123 ;	8052Explorer.c:542: P0 |= action;
      0009C6 ED               [12] 2124 	mov	a,r5
      0009C7 42 80            [12] 2125 	orl	_P0,a
      0009C9 22               [24] 2126 	ret
      0009CA                       2127 00129$:
                                   2128 ;	8052Explorer.c:543: } else if (1 == porta) {
      0009CA BF 01 04         [24] 2129 	cjne	r7,#0x01,00126$
                                   2130 ;	8052Explorer.c:544: P1 |= action;
      0009CD ED               [12] 2131 	mov	a,r5
      0009CE 42 90            [12] 2132 	orl	_P1,a
      0009D0 22               [24] 2133 	ret
      0009D1                       2134 00126$:
                                   2135 ;	8052Explorer.c:545: } else if (2 == porta) {
      0009D1 EE               [12] 2136 	mov	a,r6
      0009D2 60 04            [24] 2137 	jz	00123$
                                   2138 ;	8052Explorer.c:546: P2 |= action;
      0009D4 ED               [12] 2139 	mov	a,r5
      0009D5 42 A0            [12] 2140 	orl	_P2,a
      0009D7 22               [24] 2141 	ret
      0009D8                       2142 00123$:
                                   2143 ;	8052Explorer.c:548: P3 |= action;
      0009D8 ED               [12] 2144 	mov	a,r5
      0009D9 42 B0            [12] 2145 	orl	_P3,a
      0009DB 22               [24] 2146 	ret
      0009DC                       2147 00135$:
                                   2148 ;	8052Explorer.c:553: puts("Invalid action!");
      0009DC 90 18 81         [24] 2149 	mov	dptr,#___str_103
      0009DF 75 F0 80         [24] 2150 	mov	b,#0x80
      0009E2 02 0E 33         [24] 2151 	ljmp	_puts
      0009E5                       2152 00139$:
                                   2153 ;	8052Explorer.c:558: puts("the pin 2 is the serial character receive blink.");
      0009E5 90 18 D8         [24] 2154 	mov	dptr,#___str_110
      0009E8 75 F0 80         [24] 2155 	mov	b,#0x80
      0009EB 02 0E 33         [24] 2156 	ljmp	_puts
      0009EE                       2157 00145$:
                                   2158 ;	8052Explorer.c:561: puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
      0009EE 90 18 91         [24] 2159 	mov	dptr,#___str_107
      0009F1 75 F0 80         [24] 2160 	mov	b,#0x80
      0009F4 02 0E 33         [24] 2161 	ljmp	_puts
      0009F7                       2162 00150$:
                                   2163 ;	8052Explorer.c:564: puts("Invalid pin!");
      0009F7 90 18 CB         [24] 2164 	mov	dptr,#___str_108
      0009FA 75 F0 80         [24] 2165 	mov	b,#0x80
                                   2166 ;	8052Explorer.c:566: }
      0009FD 02 0E 33         [24] 2167 	ljmp	_puts
                                   2168 ;------------------------------------------------------------
                                   2169 ;Allocation info for local variables in function 'HELP'
                                   2170 ;------------------------------------------------------------
                                   2171 ;	8052Explorer.c:568: void HELP ( void ) {
                                   2172 ;	-----------------------------------------
                                   2173 ;	 function HELP
                                   2174 ;	-----------------------------------------
      000A00                       2175 _HELP:
                                   2176 ;	8052Explorer.c:582: puts("h print this help.");
      000A00 90 19 6A         [24] 2177 	mov	dptr,#___str_123
      000A03 75 F0 80         [24] 2178 	mov	b,#0x80
                                   2179 ;	8052Explorer.c:583: }
      000A06 02 0E 33         [24] 2180 	ljmp	_puts
                                   2181 ;------------------------------------------------------------
                                   2182 ;Allocation info for local variables in function 'main'
                                   2183 ;------------------------------------------------------------
                                   2184 ;carattere                 Allocated to registers r6 
                                   2185 ;------------------------------------------------------------
                                   2186 ;	8052Explorer.c:585: void main( void ) {
                                   2187 ;	-----------------------------------------
                                   2188 ;	 function main
                                   2189 ;	-----------------------------------------
      000A09                       2190 _main:
                                   2191 ;	8052Explorer.c:586: start();
      000A09 12 07 0A         [24] 2192 	lcall	_start
                                   2193 ;	8052Explorer.c:587: puts("Insert command, h for help.");
      000A0C 90 1A 15         [24] 2194 	mov	dptr,#___str_124
      000A0F 75 F0 80         [24] 2195 	mov	b,#0x80
      000A12 12 0E 33         [24] 2196 	lcall	_puts
                                   2197 ;	8052Explorer.c:589: while( 1 )							// forever.
      000A15                       2198 00125$:
                                   2199 ;	8052Explorer.c:595: if ( ser_byte_avail() )	{				// if data coming in...
      000A15 12 0B F3         [24] 2200 	lcall	_ser_byte_avail
      000A18 E5 82            [12] 2201 	mov	a,dpl
      000A1A 60 F9            [24] 2202 	jz	00125$
                                   2203 ;	8052Explorer.c:596: carattere = getchar();
      000A1C 12 0C 32         [24] 2204 	lcall	_getchar
      000A1F AE 82            [24] 2205 	mov	r6,dpl
                                   2206 ;	8052Explorer.c:602: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000A21 BE 30 00         [24] 2207 	cjne	r6,#0x30,00202$
      000A24                       2208 00202$:
      000A24 92 00            [24] 2209 	mov	_main_sloc0_1_0,c
      000A26 40 14            [24] 2210 	jc	00102$
      000A28 EE               [12] 2211 	mov	a,r6
      000A29 24 85            [12] 2212 	add	a,#0xff - 0x7a
      000A2B 40 0F            [24] 2213 	jc	00102$
                                   2214 ;	8052Explorer.c:603: putchar(carattere);
      000A2D 8E 05            [24] 2215 	mov	ar5,r6
      000A2F 7F 00            [12] 2216 	mov	r7,#0x00
      000A31 8D 82            [24] 2217 	mov	dpl,r5
      000A33 8F 83            [24] 2218 	mov	dph,r7
      000A35 C0 06            [24] 2219 	push	ar6
      000A37 12 0C 1E         [24] 2220 	lcall	_putchar
      000A3A D0 06            [24] 2221 	pop	ar6
      000A3C                       2222 00102$:
                                   2223 ;	8052Explorer.c:605: putchar('\r');
      000A3C 90 00 0D         [24] 2224 	mov	dptr,#0x000d
      000A3F C0 06            [24] 2225 	push	ar6
      000A41 12 0C 1E         [24] 2226 	lcall	_putchar
      000A44 D0 06            [24] 2227 	pop	ar6
                                   2228 ;	8052Explorer.c:606: switch (carattere)
      000A46 BE 30 02         [24] 2229 	cjne	r6,#0x30,00205$
      000A49 80 46            [24] 2230 	sjmp	00110$
      000A4B                       2231 00205$:
      000A4B BE 31 02         [24] 2232 	cjne	r6,#0x31,00206$
      000A4E 80 49            [24] 2233 	sjmp	00111$
      000A50                       2234 00206$:
      000A50 BE 32 02         [24] 2235 	cjne	r6,#0x32,00207$
      000A53 80 4C            [24] 2236 	sjmp	00112$
      000A55                       2237 00207$:
      000A55 BE 33 02         [24] 2238 	cjne	r6,#0x33,00208$
      000A58 80 4F            [24] 2239 	sjmp	00113$
      000A5A                       2240 00208$:
      000A5A BE 43 02         [24] 2241 	cjne	r6,#0x43,00209$
      000A5D 80 1E            [24] 2242 	sjmp	00105$
      000A5F                       2243 00209$:
      000A5F BE 48 02         [24] 2244 	cjne	r6,#0x48,00210$
      000A62 80 28            [24] 2245 	sjmp	00109$
      000A64                       2246 00210$:
      000A64 BE 63 02         [24] 2247 	cjne	r6,#0x63,00211$
      000A67 80 0F            [24] 2248 	sjmp	00104$
      000A69                       2249 00211$:
      000A69 BE 66 02         [24] 2250 	cjne	r6,#0x66,00212$
      000A6C 80 14            [24] 2251 	sjmp	00106$
      000A6E                       2252 00212$:
      000A6E BE 68 02         [24] 2253 	cjne	r6,#0x68,00213$
      000A71 80 19            [24] 2254 	sjmp	00109$
      000A73                       2255 00213$:
                                   2256 ;	8052Explorer.c:608: case 'c':
      000A73 BE 6D 3B         [24] 2257 	cjne	r6,#0x6d,00114$
      000A76 80 0F            [24] 2258 	sjmp	00107$
      000A78                       2259 00104$:
                                   2260 ;	8052Explorer.c:609: dumpCODE();
      000A78 12 00 B0         [24] 2261 	lcall	_dumpCODE
                                   2262 ;	8052Explorer.c:610: break;
                                   2263 ;	8052Explorer.c:611: case 'C':
      000A7B 80 53            [24] 2264 	sjmp	00119$
      000A7D                       2265 00105$:
                                   2266 ;	8052Explorer.c:612: hexCODE();
      000A7D 12 04 D9         [24] 2267 	lcall	_hexCODE
                                   2268 ;	8052Explorer.c:613: break;
                                   2269 ;	8052Explorer.c:622: case 'f':
      000A80 80 4E            [24] 2270 	sjmp	00119$
      000A82                       2271 00106$:
                                   2272 ;	8052Explorer.c:623: felix();
      000A82 12 00 9B         [24] 2273 	lcall	_felix
                                   2274 ;	8052Explorer.c:624: break;
                                   2275 ;	8052Explorer.c:625: case 'm':
      000A85 80 49            [24] 2276 	sjmp	00119$
      000A87                       2277 00107$:
                                   2278 ;	8052Explorer.c:626: dumpRAM();
      000A87 12 02 E5         [24] 2279 	lcall	_dumpRAM
                                   2280 ;	8052Explorer.c:627: break;
                                   2281 ;	8052Explorer.c:634: case 'H':
      000A8A 80 44            [24] 2282 	sjmp	00119$
      000A8C                       2283 00109$:
                                   2284 ;	8052Explorer.c:635: HELP();
      000A8C 12 0A 00         [24] 2285 	lcall	_HELP
                                   2286 ;	8052Explorer.c:636: break;
                                   2287 ;	8052Explorer.c:637: case '0':
      000A8F 80 3F            [24] 2288 	sjmp	00119$
      000A91                       2289 00110$:
                                   2290 ;	8052Explorer.c:638: p(0);
      000A91 75 82 00         [24] 2291 	mov	dpl,#0x00
      000A94 12 07 CC         [24] 2292 	lcall	_p
                                   2293 ;	8052Explorer.c:639: break;
                                   2294 ;	8052Explorer.c:640: case '1':
      000A97 80 37            [24] 2295 	sjmp	00119$
      000A99                       2296 00111$:
                                   2297 ;	8052Explorer.c:641: p(1);
      000A99 75 82 01         [24] 2298 	mov	dpl,#0x01
      000A9C 12 07 CC         [24] 2299 	lcall	_p
                                   2300 ;	8052Explorer.c:642: break;
                                   2301 ;	8052Explorer.c:643: case '2':
      000A9F 80 2F            [24] 2302 	sjmp	00119$
      000AA1                       2303 00112$:
                                   2304 ;	8052Explorer.c:644: p(2);
      000AA1 75 82 02         [24] 2305 	mov	dpl,#0x02
      000AA4 12 07 CC         [24] 2306 	lcall	_p
                                   2307 ;	8052Explorer.c:645: break;
                                   2308 ;	8052Explorer.c:646: case '3':
      000AA7 80 27            [24] 2309 	sjmp	00119$
      000AA9                       2310 00113$:
                                   2311 ;	8052Explorer.c:647: p(3);
      000AA9 75 82 03         [24] 2312 	mov	dpl,#0x03
      000AAC 12 07 CC         [24] 2313 	lcall	_p
                                   2314 ;	8052Explorer.c:648: break;
                                   2315 ;	8052Explorer.c:649: default:
      000AAF 80 1F            [24] 2316 	sjmp	00119$
      000AB1                       2317 00114$:
                                   2318 ;	8052Explorer.c:650: if ( carattere >= 0x30 && carattere <= 0x7A ) {
      000AB1 20 00 1C         [24] 2319 	jb	_main_sloc0_1_0,00119$
      000AB4 EE               [12] 2320 	mov	a,r6
      000AB5 24 85            [12] 2321 	add	a,#0xff - 0x7a
      000AB7 40 17            [24] 2322 	jc	00119$
                                   2323 ;	8052Explorer.c:651: printf_tiny("Invalid command %c.\r", carattere );
      000AB9 7F 00            [12] 2324 	mov	r7,#0x00
      000ABB C0 06            [24] 2325 	push	ar6
      000ABD C0 07            [24] 2326 	push	ar7
      000ABF 74 31            [12] 2327 	mov	a,#___str_125
      000AC1 C0 E0            [24] 2328 	push	acc
      000AC3 74 1A            [12] 2329 	mov	a,#(___str_125 >> 8)
      000AC5 C0 E0            [24] 2330 	push	acc
      000AC7 12 0C DD         [24] 2331 	lcall	_printf_tiny
      000ACA E5 81            [12] 2332 	mov	a,sp
      000ACC 24 FC            [12] 2333 	add	a,#0xfc
      000ACE F5 81            [12] 2334 	mov	sp,a
                                   2335 ;	8052Explorer.c:654: while ( ser_byte_avail() )	{				// if data coming in...
      000AD0                       2336 00119$:
      000AD0 12 0B F3         [24] 2337 	lcall	_ser_byte_avail
      000AD3 E5 82            [12] 2338 	mov	a,dpl
      000AD5 60 05            [24] 2339 	jz	00121$
                                   2340 ;	8052Explorer.c:655: carattere = getchar();
      000AD7 12 0C 32         [24] 2341 	lcall	_getchar
      000ADA 80 F4            [24] 2342 	sjmp	00119$
      000ADC                       2343 00121$:
                                   2344 ;	8052Explorer.c:657: puts("Insert command, h for help:");
      000ADC 90 1A 46         [24] 2345 	mov	dptr,#___str_126
      000ADF 75 F0 80         [24] 2346 	mov	b,#0x80
      000AE2 12 0E 33         [24] 2347 	lcall	_puts
                                   2348 ;	8052Explorer.c:661: }
      000AE5 02 0A 15         [24] 2349 	ljmp	00125$
                                   2350 	.area CSEG    (CODE)
                                   2351 	.area CONST   (CODE)
      000E8F                       2352 _acTestString:
      000E8F 48 65 6C 6C 6F 20 57  2353 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      000E9D 0D                    2354 	.db 0x0d
      000E9E 54 68 69 73 20 69 73  2355 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      000EB4 0D                    2356 	.db 0x0d
      000EB5 00                    2357 	.db 0x00
                           000000  2358 _codice	=	0x0000
                                   2359 	.area CONST   (CODE)
      000EB6                       2360 ___str_64:
      000EB6 20 20 20 20 20 20 20  2361 	.ascii "              iWs                                 ,W["
             20 20 20 20 20 20 20
             69 57 73 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 2C 57 5B
      000EEB 0A                    2362 	.db 0x0a
      000EEC 20 20 20 20 20 20 20  2363 	.ascii "              W@@W.                              g@@["
             20 20 20 20 20 20 20
             57 40 40 57 2E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             67 40 40 5B
      000F21 0A                    2364 	.db 0x0a
      000F22 20 20 20 20 20 20 20  2365 	.ascii "             i@@@@@s                           g@@@@W"
             20 20 20 20 20 20 69
             40 40 40 40 40 73 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 57
      000F57 0A                    2366 	.db 0x0a
      000F58 20 20 20 20 20 20 20  2367 	.ascii "             @@@@@@@W.                       ,W@@@@@@"
             20 20 20 20 20 20 40
             40 40 40 40 40 40 57
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      000F8D 0A                    2368 	.db 0x0a
      000F8E 20 20 20 20 20 20 20  2369 	.ascii "            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i"
             20 20 20 20 20 5D 40
             40 40 40 40 40 40 40
             40 57 2E 20 20 20 2C
             5F 5F 5F 5F 5F 5F 5F
             2E 20 20 20 20 20 20
             20 2C 6D 40 40 40 40
             40 40 40 40 69
      000FC4 0A                    2370 	.db 0x0a
      000FC5 20 20 20 20 20 20 20  2371 	.ascii "           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@["
             20 20 20 20 2C 40 40
             40 40 40 40 40 40 40
             40 40 40 57 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 6D 6D 5F
             67 40 40 40 40 40 40
             40 40 40 40 5B
      000FFB 0A                    2372 	.db 0x0a
      000FFC 20 20 20 20 20 20 20  2373 	.ascii "           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
             20 20 20 20 64 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40 40 40
             40 40 40 40 40
      001032 0A                    2374 	.db 0x0a
      001033 20 20 20 20 20 20 20  2375 	.ascii "          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i"
             20 20 20 69 40 40 40
             40 40 40 40 41 2A 7E
             7E 7E 7E 7E 56 4D 40
             40 40 40 40 40 40 40
             40 40 41 66 7E 7E 7E
             7E 56 2A 40 40 40 40
             40 40 40 40 40 69
      00106A 0A                    2376 	.db 0x0a
      00106B 20 20 20 20 20 20 20  2377 	.ascii "          @@@@@A~          'M@@@@@@A`         'V@@@@@@b"
             20 20 20 40 40 40 40
             40 41 7E 20 20 20 20
             20 20 20 20 20 20 27
             4D 40 40 40 40 40 40
             41 60 20 20 20 20 20
             20 20 20 20 27 56 40
             40 40 40 40 40 62
      0010A2 0A                    2378 	.db 0x0a
      0010A3 20 20 20 20 20 20 20  2379 	.ascii "         d@@@*`              Y@@@@f              V@@@@@."
             20 20 64 40 40 40 2A
             60 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 59 40 40 40 40 66
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             56 40 40 40 40 40 2E
      0010DB 0A                    2380 	.db 0x0a
      0010DC 20 20 20 20 20 20 20  2381 	.ascii "        i@@A`                 M@@P                 V@@@b"
             20 69 40 40 41 60 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 4D 40 40 50 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 56 40 40 40 62
      001114 0A                    2382 	.db 0x0a
      001115 20 20 20 20 20 20 20  2383 	.ascii "       ,@@A                   '@@                   !@@@."
             2C 40 40 41 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 27 40 40 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 21 40 40 40
             2E
      00114E 0A                    2384 	.db 0x0a
      00114F 20 20 20 20 20 20 20  2385 	.ascii "       W@P                     @[                    '@@W"
             57 40 50 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 40 40
             57
      001188 0A                    2386 	.db 0x0a
      001189 20 20 20 20 20 20 64  2387 	.ascii "      d@@            ,         ]!                     ]@@b"
             40 40 20 20 20 20 20
             20 20 20 20 20 20 20
             2C 20 20 20 20 20 20
             20 20 20 5D 21 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 62
      0011C3 0A                    2388 	.db 0x0a
      0011C4 20 20 20 20 20 67 40  2389 	.ascii "     g@@[          ,W@@s       ]       ,W@@s           @@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 2C 57
             40 40 73 20 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 2C 57 40
             40 73 20 20 20 20 20
             20 20 20 20 20 20 40
             40 40 69
      0011FF 0A                    2390 	.db 0x0a
      001200 20 20 20 20 69 40 40  2391 	.ascii "    i@@@[          W@@@@i      ]       W@@@@i          @@@@i"
             40 5B 20 20 20 20 20
             20 20 20 20 20 57 40
             40 40 40 69 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 57 40 40
             40 40 69 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 69
      00123C 0A                    2392 	.db 0x0a
      00123D 20 20 20 69 40 40 40  2393 	.ascii "   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 5B 20 20 20
             20 20 20 5D 20 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      001279 69                    2394 	.ascii "i"
      00127A 0A                    2395 	.db 0x0a
      00127B 20 20 67 40 40 40 40  2396 	.ascii "  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@"
             40 5B 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 21 20 20 20
             20 20 20 40 5B 20 20
             20 20 20 20 40 40 40
             40 40 5B 20 20 20 20
             20 20 20 20 20 20 40
             40 40 40 40
      0012B7 40 69                 2397 	.ascii "@i"
      0012B9 0A                    2398 	.db 0x0a
      0012BA 20 64 40 40 40 40 40  2399 	.ascii " d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@"
             40 40 20 20 20 20 20
             20 20 20 20 20 21 40
             40 40 50 20 20 20 20
             20 20 69 41 57 20 20
             20 20 20 20 21 40 40
             40 41 20 20 20 20 20
             20 20 20 20 20 5D 40
             40 40 40 40
      0012F6 40 40 69              2400 	.ascii "@@i"
      0012F9 0A                    2401 	.db 0x0a
      0012FA 57 40 40 40 40 40 40  2402 	.ascii "W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@"
             40 40 62 20 20 20 20
             20 20 20 20 20 20 27
             7E 7E 20 20 20 20 20
             20 2C 5A 20 59 69 20
             20 20 20 20 20 27 7E
             7E 20 20 20 20 20 20
             20 20 20 20 2C 40 40
             40 40 40 40
      001336 40 40 40              2403 	.ascii "@@@"
      001339 0A                    2404 	.db 0x0a
      00133A 27 2A 40 40 40 40 40  2405 	.ascii "'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@"
             40 40 40 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 5A 60 20 20 59 2E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 2C 57 40 40
             40 40 40 40
      001376 40 40 41              2406 	.ascii "@@A"
      001379 0A                    2407 	.db 0x0a
      00137A 20 20 27 4D 40 40 40  2408 	.ascii "  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@"
             2A 66 2A 2A 57 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 2C
             5A 20 20 20 20 20 56
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 57 2A 7E 7E
             7E 4D 40 40
      0013B6 40 66                 2409 	.ascii "@f"
      0013B8 0A                    2410 	.db 0x0a
      0013B9 20 20 20 20 27 4D 40  2411 	.ascii "    'M@    'Vs.          ,z~       'N_           ,Z~     d@P"
             20 20 20 20 27 56 73
             2E 20 20 20 20 20 20
             20 20 20 20 2C 7A 7E
             20 20 20 20 20 20 20
             27 4E 5F 20 20 20 20
             20 20 20 20 20 20 20
             2C 5A 7E 20 20 20 20
             20 64 40 50
      0013F5 0A                    2412 	.db 0x0a
      0013F6 20 20 20 4D 40 40 40  2413 	.ascii "   M@@@       ~-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@"
             20 20 20 20 20 20 20
             7E 2D 5F 5F 20 20 5F
             5F 7A 2F 60 20 2C 67
             6D 57 40 40 6D 6D 5F
             20 27 2B 65 5F 2E 20
             20 20 5F 5F 3D 2F 60
             20 20 20 20 20 20 2C
             40 40 40 40
      001432 0A                    2414 	.db 0x0a
      001433 20 20 20 20 27 56 4D  2415 	.ascii "    'VMW                  g@@@@@@@@@W     ~~~          ,WAf"
             57 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 67 40
             40 40 40 40 40 40 40
             40 57 20 20 20 20 20
             7E 7E 7E 20 20 20 20
             20 20 20 20 20 20 2C
             57 41 66
      00146E 0A                    2416 	.db 0x0a
      00146F 20 20 20 20 20 20 20  2417 	.ascii "       ~N.                @@@@@@@@@@@!                ,Z`"
             7E 4E 2E 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 40 40
             40 40 40 40 40 40 40
             40 40 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 2C 5A
             60
      0014A8 0A                    2418 	.db 0x0a
      0014A9 20 20 20 20 20 20 20  2419 	.ascii "         V.               !M@@@@@@@@f                gf-"
             20 20 56 2E 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 21 4D
             40 40 40 40 40 40 40
             40 66 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 67 66 2D
      0014E1 0A                    2420 	.db 0x0a
      0014E2 20 20 20 20 20 20 20  2421 	.ascii "          'N.               '~***f~                ,Z`"
             20 20 20 27 4E 2E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             27 7E 2A 2A 2A 66 7E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 2C 5A 60
      001518 0A                    2422 	.db 0x0a
      001519 20 20 20 20 20 20 20  2423 	.ascii "            Vc.                                  _Zf"
             20 20 20 20 20 56 63
             2E 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             5F 5A 66
      00154D 0A                    2424 	.db 0x0a
      00154E 20 20 20 20 20 20 20  2425 	.ascii "              ~e_                             ,gY~"
             20 20 20 20 20 20 20
             7E 65 5F 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 2C 67 59
             7E
      001580 0A                    2426 	.db 0x0a
      001581 20 20 20 20 20 20 20  2427 	.ascii "                'V=_          -@@D         ,gY~ '"
             20 20 20 20 20 20 20
             20 20 27 56 3D 5F 20
             20 20 20 20 20 20 20
             20 20 2D 40 40 44 20
             20 20 20 20 20 20 20
             20 2C 67 59 7E 20 27
      0015B2 0A                    2428 	.db 0x0a
      0015B3 20 20 20 20 20 20 20  2429 	.ascii "                    ~=__.           ,__z=~`"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7E
             3D 5F 5F 2E 20 20 20
             20 20 20 20 20 20 20
             20 2C 5F 5F 7A 3D 7E
             60
      0015DE 0A                    2430 	.db 0x0a
      0015DF 20 20 20 20 20 20 20  2431 	.ascii "                         '~~~*==Y*f~~~ "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 27 7E 7E
             7E 2A 3D 3D 59 2A 66
             7E 7E 7E 20
      001606 00                    2432 	.db 0x00
                                   2433 	.area CSEG    (CODE)
                                   2434 	.area CONST   (CODE)
      001607                       2435 ___str_65:
      001607 44 75 6D 70 69 6E 67  2436 	.ascii "Dumping code:"
             20 63 6F 64 65 3A
      001614 00                    2437 	.db 0x00
                                   2438 	.area CSEG    (CODE)
                                   2439 	.area CONST   (CODE)
      001615                       2440 ___str_66:
      001615 30 30 30 25 78 20 20  2441 	.ascii "000%x  "
      00161C 00                    2442 	.db 0x00
                                   2443 	.area CSEG    (CODE)
                                   2444 	.area CONST   (CODE)
      00161D                       2445 ___str_67:
      00161D 30 30 25 78 20 20     2446 	.ascii "00%x  "
      001623 00                    2447 	.db 0x00
                                   2448 	.area CSEG    (CODE)
                                   2449 	.area CONST   (CODE)
      001624                       2450 ___str_68:
      001624 30 25 78 20 20        2451 	.ascii "0%x  "
      001629 00                    2452 	.db 0x00
                                   2453 	.area CSEG    (CODE)
                                   2454 	.area CONST   (CODE)
      00162A                       2455 ___str_69:
      00162A 25 78 20 20           2456 	.ascii "%x  "
      00162E 00                    2457 	.db 0x00
                                   2458 	.area CSEG    (CODE)
                                   2459 	.area CONST   (CODE)
      00162F                       2460 ___str_70:
      00162F 25 78 20              2461 	.ascii "%x "
      001632 00                    2462 	.db 0x00
                                   2463 	.area CSEG    (CODE)
                                   2464 	.area CONST   (CODE)
      001633                       2465 ___str_71:
      001633 20 7C                 2466 	.ascii " |"
      001635 00                    2467 	.db 0x00
                                   2468 	.area CSEG    (CODE)
                                   2469 	.area CONST   (CODE)
      001636                       2470 ___str_72:
      001636 25 63                 2471 	.ascii "%c"
      001638 00                    2472 	.db 0x00
                                   2473 	.area CSEG    (CODE)
                                   2474 	.area CONST   (CODE)
      001639                       2475 ___str_73:
      001639 44 75 6D 70 69 6E 67  2476 	.ascii "Dumping ram memory:"
             20 72 61 6D 20 6D 65
             6D 6F 72 79 3A
      00164C 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CONST   (CODE)
      00164D                       2480 ___str_74:
      00164D 44 75 6D 70 69 6E 67  2481 	.ascii "Dumping code in hex file format:"
             20 63 6F 64 65 20 69
             6E 20 68 65 78 20 66
             69 6C 65 20 66 6F 72
             6D 61 74 3A
      00166D 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      00166E                       2485 ___str_75:
      00166E 3A 31 30              2486 	.ascii ":10"
      001671 00                    2487 	.db 0x00
                                   2488 	.area CSEG    (CODE)
                                   2489 	.area CONST   (CODE)
      001672                       2490 ___str_76:
      001672 30 30 30 25 78        2491 	.ascii "000%x"
      001677 00                    2492 	.db 0x00
                                   2493 	.area CSEG    (CODE)
                                   2494 	.area CONST   (CODE)
      001678                       2495 ___str_77:
      001678 30 30 25 78           2496 	.ascii "00%x"
      00167C 00                    2497 	.db 0x00
                                   2498 	.area CSEG    (CODE)
                                   2499 	.area CONST   (CODE)
      00167D                       2500 ___str_78:
      00167D 30 25 78              2501 	.ascii "0%x"
      001680 00                    2502 	.db 0x00
                                   2503 	.area CSEG    (CODE)
                                   2504 	.area CONST   (CODE)
      001681                       2505 ___str_79:
      001681 25 78                 2506 	.ascii "%x"
      001683 00                    2507 	.db 0x00
                                   2508 	.area CSEG    (CODE)
                                   2509 	.area CONST   (CODE)
      001684                       2510 ___str_80:
      001684 30 30                 2511 	.ascii "00"
      001686 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      001687                       2515 ___str_81:
      001687 25 78                 2516 	.ascii "%x"
      001689 0D                    2517 	.db 0x0d
      00168A 00                    2518 	.db 0x00
                                   2519 	.area CSEG    (CODE)
                                   2520 	.area CONST   (CODE)
      00168B                       2521 ___str_82:
      00168B 25 73                 2522 	.ascii "%s"
      00168D 00                    2523 	.db 0x00
                                   2524 	.area CSEG    (CODE)
                                   2525 	.area CONST   (CODE)
      00168E                       2526 ___str_83:
      00168E 3A 30 30 30 30 30 30  2527 	.ascii ":00000001FF"
             30 31 46 46
      001699 00                    2528 	.db 0x00
                                   2529 	.area CSEG    (CODE)
                                   2530 	.area CONST   (CODE)
      00169A                       2531 ___str_84:
      00169A 52 65 73 65 74 74 69  2532 	.ascii "Resetting the micro."
             6E 67 20 74 68 65 20
             6D 69 63 72 6F 2E
      0016AE 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      0016AF                       2536 ___str_85:
      0016AF 43 70 75 20 25 73 20  2537 	.ascii "Cpu %s running at %sMHz"
             72 75 6E 6E 69 6E 67
             20 61 74 20 25 73 4D
             48 7A
      0016C6 0D                    2538 	.db 0x0d
      0016C7 00                    2539 	.db 0x00
                                   2540 	.area CSEG    (CODE)
                                   2541 	.area CONST   (CODE)
      0016C8                       2542 ___str_86:
      0016C8 44 53 38 39 43 34 35  2543 	.ascii "DS89C450"
             30
      0016D0 00                    2544 	.db 0x00
                                   2545 	.area CSEG    (CODE)
                                   2546 	.area CONST   (CODE)
      0016D1                       2547 ___str_87:
      0016D1 31 31 2E 30 35 39 32  2548 	.ascii "11.0592"
      0016D8 00                    2549 	.db 0x00
                                   2550 	.area CSEG    (CODE)
                                   2551 	.area CONST   (CODE)
      0016D9                       2552 ___str_88:
      0016D9 45 6E 61 62 6C 65 64  2553 	.ascii "Enabled four time clock multiplier"
             20 66 6F 75 72 20 74
             69 6D 65 20 63 6C 6F
             63 6B 20 6D 75 6C 74
             69 70 6C 69 65 72
      0016FB 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area CONST   (CODE)
      0016FC                       2557 ___str_89:
      0016FC 53 74 61 72 74 65 64  2558 	.ascii "Started timer 2 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             32 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      001724 0D                    2559 	.db 0x0d
      001725 00                    2560 	.db 0x00
                                   2561 	.area CSEG    (CODE)
                                   2562 	.area CONST   (CODE)
      001726                       2563 ___str_90:
      001726 53 74 61 72 74 65 64  2564 	.ascii "Started serial at %s bps"
             20 73 65 72 69 61 6C
             20 61 74 20 25 73 20
             62 70 73
      00173E 0D                    2565 	.db 0x0d
      00173F 00                    2566 	.db 0x00
                                   2567 	.area CSEG    (CODE)
                                   2568 	.area CONST   (CODE)
      001740                       2569 ___str_91:
      001740 31 31 35 32 30 30     2570 	.ascii "115200"
      001746 00                    2571 	.db 0x00
                                   2572 	.area CSEG    (CODE)
                                   2573 	.area CONST   (CODE)
      001747                       2574 ___str_92:
      001747 53 74 61 72 74 65 64  2575 	.ascii "Started timer 0 with th = %x and tl = %x"
             20 74 69 6D 65 72 20
             30 20 77 69 74 68 20
             74 68 20 3D 20 25 78
             20 61 6E 64 20 74 6C
             20 3D 20 25 78
      00176F 0D                    2576 	.db 0x0d
      001770 00                    2577 	.db 0x00
                                   2578 	.area CSEG    (CODE)
                                   2579 	.area CONST   (CODE)
      001771                       2580 ___str_95:
      001771 48 65 6C 6C 6F 20 57  2581 	.ascii "Hello World..."
             6F 72 6C 64 2E 2E 2E
      00177F 0D                    2582 	.db 0x0d
      001780 54 68 69 73 20 69 73  2583 	.ascii "This is a test string."
             20 61 20 74 65 73 74
             20 73 74 72 69 6E 67
             2E
      001796 0A                    2584 	.db 0x0a
      001797 50 72 69 6E 74 20 61  2585 	.ascii "Print a string from code memory:"
             20 73 74 72 69 6E 67
             20 66 72 6F 6D 20 63
             6F 64 65 20 6D 65 6D
             6F 72 79 3A
      0017B7 00                    2586 	.db 0x00
                                   2587 	.area CSEG    (CODE)
                                   2588 	.area CONST   (CODE)
      0017B8                       2589 ___str_96:
      0017B8 57 68 69 63 68 20 70  2590 	.ascii "Which pin from 2 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 32 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      0017D9 0D                    2591 	.db 0x0d
      0017DA 00                    2592 	.db 0x00
                                   2593 	.area CSEG    (CODE)
                                   2594 	.area CONST   (CODE)
      0017DB                       2595 ___str_97:
      0017DB 57 68 69 63 68 20 70  2596 	.ascii "Which pin from 3 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 33 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      0017FC 0D                    2597 	.db 0x0d
      0017FD 00                    2598 	.db 0x00
                                   2599 	.area CSEG    (CODE)
                                   2600 	.area CONST   (CODE)
      0017FE                       2601 ___str_98:
      0017FE 57 68 69 63 68 20 70  2602 	.ascii "Which pin from 0 to 7 of port %u?"
             69 6E 20 66 72 6F 6D
             20 30 20 74 6F 20 37
             20 6F 66 20 70 6F 72
             74 20 25 75 3F
      00181F 0D                    2603 	.db 0x0d
      001820 00                    2604 	.db 0x00
                                   2605 	.area CSEG    (CODE)
                                   2606 	.area CONST   (CODE)
      001821                       2607 ___str_99:
      001821 50 69 6E 20 25 75 20  2608 	.ascii "Pin %u of port %u: "
             6F 66 20 70 6F 72 74
             20 25 75 3A 20
      001834 00                    2609 	.db 0x00
                                   2610 	.area CSEG    (CODE)
                                   2611 	.area CONST   (CODE)
      001835                       2612 ___str_100:
      001835 30 20 6F 66 66 2C 20  2613 	.ascii "0 off, 1 on."
             31 20 6F 6E 2E
      001841 00                    2614 	.db 0x00
                                   2615 	.area CSEG    (CODE)
                                   2616 	.area CONST   (CODE)
      001842                       2617 ___str_101:
      001842 53 65 74 74 69 6E 67  2618 	.ascii "Setting pin %u of port %u on."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 6E
             2E
      00185F 0D                    2619 	.db 0x0d
      001860 00                    2620 	.db 0x00
                                   2621 	.area CSEG    (CODE)
                                   2622 	.area CONST   (CODE)
      001861                       2623 ___str_102:
      001861 53 65 74 74 69 6E 67  2624 	.ascii "Setting pin %u of port %u off."
             20 70 69 6E 20 25 75
             20 6F 66 20 70 6F 72
             74 20 25 75 20 6F 66
             66 2E
      00187F 0D                    2625 	.db 0x0d
      001880 00                    2626 	.db 0x00
                                   2627 	.area CSEG    (CODE)
                                   2628 	.area CONST   (CODE)
      001881                       2629 ___str_103:
      001881 49 6E 76 61 6C 69 64  2630 	.ascii "Invalid action!"
             20 61 63 74 69 6F 6E
             21
      001890 00                    2631 	.db 0x00
                                   2632 	.area CSEG    (CODE)
                                   2633 	.area CONST   (CODE)
      001891                       2634 ___str_107:
      001891 53 6F 72 72 79 20 74  2635 	.ascii "Sorry the pins 0 and 1 of port 3 are used by serial port."
             68 65 20 70 69 6E 73
             20 30 20 61 6E 64 20
             31 20 6F 66 20 70 6F
             72 74 20 33 20 61 72
             65 20 75 73 65 64 20
             62 79 20 73 65 72 69
             61 6C 20 70 6F 72 74
             2E
      0018CA 00                    2636 	.db 0x00
                                   2637 	.area CSEG    (CODE)
                                   2638 	.area CONST   (CODE)
      0018CB                       2639 ___str_108:
      0018CB 49 6E 76 61 6C 69 64  2640 	.ascii "Invalid pin!"
             20 70 69 6E 21
      0018D7 00                    2641 	.db 0x00
                                   2642 	.area CSEG    (CODE)
                                   2643 	.area CONST   (CODE)
      0018D8                       2644 ___str_110:
      0018D8 53 6F 72 72 79 20 74  2645 	.ascii "Sorry the pin 0 on port 2 is the blinking led,"
             68 65 20 70 69 6E 20
             30 20 6F 6E 20 70 6F
             72 74 20 32 20 69 73
             20 74 68 65 20 62 6C
             69 6E 6B 69 6E 67 20
             6C 65 64 2C
      001906 0A                    2646 	.db 0x0a
      001907 74 68 65 20 70 69 6E  2647 	.ascii "the pin 1 is the serial character transmit blink,"
             20 31 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 74
             72 61 6E 73 6D 69 74
             20 62 6C 69 6E 6B 2C
      001938 0A                    2648 	.db 0x0a
      001939 74 68 65 20 70 69 6E  2649 	.ascii "the pin 2 is the serial character receive blink."
             20 32 20 69 73 20 74
             68 65 20 73 65 72 69
             61 6C 20 63 68 61 72
             61 63 74 65 72 20 72
             65 63 65 69 76 65 20
             62 6C 69 6E 6B 2E
      001969 00                    2650 	.db 0x00
                                   2651 	.area CSEG    (CODE)
                                   2652 	.area CONST   (CODE)
      00196A                       2653 ___str_123:
      00196A 41 76 61 69 6C 61 62  2654 	.ascii "Available commands are:"
             6C 65 20 63 6F 6D 6D
             61 6E 64 73 20 61 72
             65 3A
      001981 0A                    2655 	.db 0x0a
      001982 30 2C 20 31 2C 20 32  2656 	.ascii "0, 1, 2 or 3 to change pin ports status."
             20 6F 72 20 33 20 74
             6F 20 63 68 61 6E 67
             65 20 70 69 6E 20 70
             6F 72 74 73 20 73 74
             61 74 75 73 2E
      0019AA 0A                    2657 	.db 0x0a
      0019AB 63 20 64 75 6D 70 20  2658 	.ascii "c dump code memory."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 2E
      0019BE 0A                    2659 	.db 0x0a
      0019BF 43 20 64 75 6D 70 20  2660 	.ascii "C dump code memory in hex format."
             63 6F 64 65 20 6D 65
             6D 6F 72 79 20 69 6E
             20 68 65 78 20 66 6F
             72 6D 61 74 2E
      0019E0 0A                    2661 	.db 0x0a
      0019E1 6D 20 64 75 6D 70 20  2662 	.ascii "m dump ram memory."
             72 61 6D 20 6D 65 6D
             6F 72 79 2E
      0019F3 0A                    2663 	.db 0x0a
      0019F4 66 20 70 72 69 6E 74  2664 	.ascii "f print felix"
             20 66 65 6C 69 78
      001A01 0A                    2665 	.db 0x0a
      001A02 68 20 70 72 69 6E 74  2666 	.ascii "h print this help."
             20 74 68 69 73 20 68
             65 6C 70 2E
      001A14 00                    2667 	.db 0x00
                                   2668 	.area CSEG    (CODE)
                                   2669 	.area CONST   (CODE)
      001A15                       2670 ___str_124:
      001A15 49 6E 73 65 72 74 20  2671 	.ascii "Insert command, h for help."
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 2E
      001A30 00                    2672 	.db 0x00
                                   2673 	.area CSEG    (CODE)
                                   2674 	.area CONST   (CODE)
      001A31                       2675 ___str_125:
      001A31 49 6E 76 61 6C 69 64  2676 	.ascii "Invalid command %c."
             20 63 6F 6D 6D 61 6E
             64 20 25 63 2E
      001A44 0D                    2677 	.db 0x0d
      001A45 00                    2678 	.db 0x00
                                   2679 	.area CSEG    (CODE)
                                   2680 	.area CONST   (CODE)
      001A46                       2681 ___str_126:
      001A46 49 6E 73 65 72 74 20  2682 	.ascii "Insert command, h for help:"
             63 6F 6D 6D 61 6E 64
             2C 20 68 20 66 6F 72
             20 68 65 6C 70 3A
      001A61 00                    2683 	.db 0x00
                                   2684 	.area CSEG    (CODE)
                                   2685 	.area XINIT   (CODE)
                                   2686 	.area CABS    (ABS,CODE)
