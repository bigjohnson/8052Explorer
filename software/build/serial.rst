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
                                     12 	.globl _SMOD_1
                                     13 	.globl _POR
                                     14 	.globl _EPFI
                                     15 	.globl _PFI
                                     16 	.globl _WDIF
                                     17 	.globl _WTRF
                                     18 	.globl _EWT
                                     19 	.globl _RWT
                                     20 	.globl _TF1
                                     21 	.globl _TR1
                                     22 	.globl _TF0
                                     23 	.globl _TR0
                                     24 	.globl _IE1
                                     25 	.globl _IT1
                                     26 	.globl _IE0
                                     27 	.globl _IT0
                                     28 	.globl _T2CON_7
                                     29 	.globl _T2CON_6
                                     30 	.globl _T2CON_5
                                     31 	.globl _T2CON_4
                                     32 	.globl _T2CON_3
                                     33 	.globl _T2CON_2
                                     34 	.globl _T2CON_1
                                     35 	.globl _T2CON_0
                                     36 	.globl _TF2
                                     37 	.globl _EXF2
                                     38 	.globl _RCLK
                                     39 	.globl _TCLK
                                     40 	.globl _EXEN2
                                     41 	.globl _TR2
                                     42 	.globl _C_T2
                                     43 	.globl _CP_RL2
                                     44 	.globl _SM0_FE_1
                                     45 	.globl _FE_1
                                     46 	.globl _SM0_1
                                     47 	.globl _SM1_1
                                     48 	.globl _SM2_1
                                     49 	.globl _REN_1
                                     50 	.globl _TB8_1
                                     51 	.globl _RB8_1
                                     52 	.globl _TI_1
                                     53 	.globl _RI_1
                                     54 	.globl _SM0_FE_0
                                     55 	.globl _FE_0
                                     56 	.globl _SM0_0
                                     57 	.globl _SM1_0
                                     58 	.globl _SM2_0
                                     59 	.globl _REN_0
                                     60 	.globl _TB8_0
                                     61 	.globl _RB8_0
                                     62 	.globl _TI_0
                                     63 	.globl _RI_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _CY
                                     73 	.globl _AC
                                     74 	.globl _F0
                                     75 	.globl _RS1
                                     76 	.globl _RS0
                                     77 	.globl _OV
                                     78 	.globl _F1
                                     79 	.globl _P
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD0
                                     87 	.globl _TXD
                                     88 	.globl _RXD0
                                     89 	.globl _RXD
                                     90 	.globl _P3_7
                                     91 	.globl _P3_6
                                     92 	.globl _P3_5
                                     93 	.globl _P3_4
                                     94 	.globl _P3_3
                                     95 	.globl _P3_2
                                     96 	.globl _P3_1
                                     97 	.globl _P3_0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _INT5
                                    107 	.globl _INT4
                                    108 	.globl _INT3
                                    109 	.globl _INT2
                                    110 	.globl _TXD1
                                    111 	.globl _RXD1
                                    112 	.globl _T2EX
                                    113 	.globl _T2
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _P0_7
                                    123 	.globl _P0_6
                                    124 	.globl _P0_5
                                    125 	.globl _P0_4
                                    126 	.globl _P0_3
                                    127 	.globl _P0_2
                                    128 	.globl _P0_1
                                    129 	.globl _P0_0
                                    130 	.globl _LPS1
                                    131 	.globl _LPT2
                                    132 	.globl _LPS0
                                    133 	.globl _LPT1
                                    134 	.globl _LPX1
                                    135 	.globl _LPT0
                                    136 	.globl _LPX0
                                    137 	.globl _PS1
                                    138 	.globl _PT2
                                    139 	.globl _PS
                                    140 	.globl _PT1
                                    141 	.globl _PX1
                                    142 	.globl _PT0
                                    143 	.globl _PX0
                                    144 	.globl _EA
                                    145 	.globl _ES1
                                    146 	.globl _ET2
                                    147 	.globl _ES0
                                    148 	.globl _ES
                                    149 	.globl _ET1
                                    150 	.globl _EX1
                                    151 	.globl _ET0
                                    152 	.globl _EX0
                                    153 	.globl _LPWDI
                                    154 	.globl _LPX5
                                    155 	.globl _LPX4
                                    156 	.globl _LPX3
                                    157 	.globl _LPX2
                                    158 	.globl _EWDI
                                    159 	.globl _EX5
                                    160 	.globl _EX4
                                    161 	.globl _EX3
                                    162 	.globl _EX2
                                    163 	.globl _BREG_F7
                                    164 	.globl _BREG_F6
                                    165 	.globl _BREG_F5
                                    166 	.globl _BREG_F4
                                    167 	.globl _BREG_F3
                                    168 	.globl _BREG_F2
                                    169 	.globl _BREG_F1
                                    170 	.globl _BREG_F0
                                    171 	.globl _WDCON
                                    172 	.globl _TMOD
                                    173 	.globl _TL2
                                    174 	.globl _TL1
                                    175 	.globl _TL0
                                    176 	.globl _TH2
                                    177 	.globl _TH1
                                    178 	.globl _TH0
                                    179 	.globl _TCON
                                    180 	.globl _TA
                                    181 	.globl _T2MOD
                                    182 	.globl _T2CON
                                    183 	.globl _STATUS
                                    184 	.globl _SP
                                    185 	.globl _SCON1
                                    186 	.globl _SCON0
                                    187 	.globl _SCON
                                    188 	.globl _SBUF1
                                    189 	.globl _SBUF0
                                    190 	.globl _SBUF
                                    191 	.globl _SADEN1
                                    192 	.globl _SADEN0
                                    193 	.globl _SADDR1
                                    194 	.globl _SADDR0
                                    195 	.globl _ROMSIZE
                                    196 	.globl _RCAP2L
                                    197 	.globl _RCAP2H
                                    198 	.globl _PSW
                                    199 	.globl _PMR
                                    200 	.globl _PCON
                                    201 	.globl _P3
                                    202 	.globl _P2
                                    203 	.globl _P1
                                    204 	.globl _P0
                                    205 	.globl _MD2
                                    206 	.globl _MD1
                                    207 	.globl _MD0
                                    208 	.globl _IP1
                                    209 	.globl _IP0
                                    210 	.globl _IP
                                    211 	.globl _IE
                                    212 	.globl _FCNTL
                                    213 	.globl _EXIF
                                    214 	.globl _EIP1
                                    215 	.globl _EIP0
                                    216 	.globl _EIE
                                    217 	.globl _DPS
                                    218 	.globl _DP1L
                                    219 	.globl _DPL1
                                    220 	.globl _DP0L
                                    221 	.globl _DPL
                                    222 	.globl _DP1H
                                    223 	.globl _DPH1
                                    224 	.globl _DP0H
                                    225 	.globl _DPH
                                    226 	.globl _CKMOD
                                    227 	.globl _CKCON
                                    228 	.globl _B
                                    229 	.globl _ACON
                                    230 	.globl _ACC
                                    231 	.globl _tx_head
                                    232 	.globl _rx_tail
                                    233 	.globl _rx_head
                                    234 	.globl _tx_tail
                                    235 	.globl _init_ser
                                    236 	.globl _SerInt
                                    237 	.globl _ser_write_byte
                                    238 	.globl _ser_byte_avail
                                    239 	.globl _ser_read_byte
                                    240 	.globl _putchar
                                    241 	.globl _getchar
                                    242 ;--------------------------------------------------------
                                    243 ; special function registers
                                    244 ;--------------------------------------------------------
                                    245 	.area RSEG    (ABS,DATA)
      000000                        246 	.org 0x0000
                           0000E0   247 _ACC	=	0x00e0
                           00009D   248 _ACON	=	0x009d
                           0000F0   249 _B	=	0x00f0
                           00008E   250 _CKCON	=	0x008e
                           000096   251 _CKMOD	=	0x0096
                           000083   252 _DPH	=	0x0083
                           000083   253 _DP0H	=	0x0083
                           000085   254 _DPH1	=	0x0085
                           000085   255 _DP1H	=	0x0085
                           000082   256 _DPL	=	0x0082
                           000082   257 _DP0L	=	0x0082
                           000084   258 _DPL1	=	0x0084
                           000084   259 _DP1L	=	0x0084
                           000086   260 _DPS	=	0x0086
                           0000E8   261 _EIE	=	0x00e8
                           0000F8   262 _EIP0	=	0x00f8
                           0000F1   263 _EIP1	=	0x00f1
                           000091   264 _EXIF	=	0x0091
                           0000D5   265 _FCNTL	=	0x00d5
                           0000A8   266 _IE	=	0x00a8
                           0000B8   267 _IP	=	0x00b8
                           0000B8   268 _IP0	=	0x00b8
                           0000B1   269 _IP1	=	0x00b1
                           0000E9   270 _MD0	=	0x00e9
                           0000EA   271 _MD1	=	0x00ea
                           0000EB   272 _MD2	=	0x00eb
                           000080   273 _P0	=	0x0080
                           000090   274 _P1	=	0x0090
                           0000A0   275 _P2	=	0x00a0
                           0000B0   276 _P3	=	0x00b0
                           000087   277 _PCON	=	0x0087
                           0000C4   278 _PMR	=	0x00c4
                           0000D0   279 _PSW	=	0x00d0
                           0000CB   280 _RCAP2H	=	0x00cb
                           0000CA   281 _RCAP2L	=	0x00ca
                           0000C2   282 _ROMSIZE	=	0x00c2
                           0000A9   283 _SADDR0	=	0x00a9
                           0000AA   284 _SADDR1	=	0x00aa
                           0000B9   285 _SADEN0	=	0x00b9
                           0000BA   286 _SADEN1	=	0x00ba
                           000099   287 _SBUF	=	0x0099
                           000099   288 _SBUF0	=	0x0099
                           0000C1   289 _SBUF1	=	0x00c1
                           000098   290 _SCON	=	0x0098
                           000098   291 _SCON0	=	0x0098
                           0000C0   292 _SCON1	=	0x00c0
                           000081   293 _SP	=	0x0081
                           0000C5   294 _STATUS	=	0x00c5
                           0000C8   295 _T2CON	=	0x00c8
                           0000C9   296 _T2MOD	=	0x00c9
                           0000C7   297 _TA	=	0x00c7
                           000088   298 _TCON	=	0x0088
                           00008C   299 _TH0	=	0x008c
                           00008D   300 _TH1	=	0x008d
                           0000CD   301 _TH2	=	0x00cd
                           00008A   302 _TL0	=	0x008a
                           00008B   303 _TL1	=	0x008b
                           0000CC   304 _TL2	=	0x00cc
                           000089   305 _TMOD	=	0x0089
                           0000D8   306 _WDCON	=	0x00d8
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           0000F0   312 _BREG_F0	=	0x00f0
                           0000F1   313 _BREG_F1	=	0x00f1
                           0000F2   314 _BREG_F2	=	0x00f2
                           0000F3   315 _BREG_F3	=	0x00f3
                           0000F4   316 _BREG_F4	=	0x00f4
                           0000F5   317 _BREG_F5	=	0x00f5
                           0000F6   318 _BREG_F6	=	0x00f6
                           0000F7   319 _BREG_F7	=	0x00f7
                           0000E8   320 _EX2	=	0x00e8
                           0000E9   321 _EX3	=	0x00e9
                           0000EA   322 _EX4	=	0x00ea
                           0000EB   323 _EX5	=	0x00eb
                           0000EC   324 _EWDI	=	0x00ec
                           0000F8   325 _LPX2	=	0x00f8
                           0000F9   326 _LPX3	=	0x00f9
                           0000FA   327 _LPX4	=	0x00fa
                           0000FB   328 _LPX5	=	0x00fb
                           0000FC   329 _LPWDI	=	0x00fc
                           0000A8   330 _EX0	=	0x00a8
                           0000A9   331 _ET0	=	0x00a9
                           0000AA   332 _EX1	=	0x00aa
                           0000AB   333 _ET1	=	0x00ab
                           0000AC   334 _ES	=	0x00ac
                           0000AC   335 _ES0	=	0x00ac
                           0000AD   336 _ET2	=	0x00ad
                           0000AE   337 _ES1	=	0x00ae
                           0000AF   338 _EA	=	0x00af
                           0000B8   339 _PX0	=	0x00b8
                           0000B9   340 _PT0	=	0x00b9
                           0000BA   341 _PX1	=	0x00ba
                           0000BB   342 _PT1	=	0x00bb
                           0000BC   343 _PS	=	0x00bc
                           0000BD   344 _PT2	=	0x00bd
                           0000BE   345 _PS1	=	0x00be
                           0000B8   346 _LPX0	=	0x00b8
                           0000B9   347 _LPT0	=	0x00b9
                           0000BA   348 _LPX1	=	0x00ba
                           0000BB   349 _LPT1	=	0x00bb
                           0000BC   350 _LPS0	=	0x00bc
                           0000BD   351 _LPT2	=	0x00bd
                           0000BE   352 _LPS1	=	0x00be
                           000080   353 _P0_0	=	0x0080
                           000081   354 _P0_1	=	0x0081
                           000082   355 _P0_2	=	0x0082
                           000083   356 _P0_3	=	0x0083
                           000084   357 _P0_4	=	0x0084
                           000085   358 _P0_5	=	0x0085
                           000086   359 _P0_6	=	0x0086
                           000087   360 _P0_7	=	0x0087
                           000090   361 _P1_0	=	0x0090
                           000091   362 _P1_1	=	0x0091
                           000092   363 _P1_2	=	0x0092
                           000093   364 _P1_3	=	0x0093
                           000094   365 _P1_4	=	0x0094
                           000095   366 _P1_5	=	0x0095
                           000096   367 _P1_6	=	0x0096
                           000097   368 _P1_7	=	0x0097
                           000090   369 _T2	=	0x0090
                           000091   370 _T2EX	=	0x0091
                           000092   371 _RXD1	=	0x0092
                           000093   372 _TXD1	=	0x0093
                           000094   373 _INT2	=	0x0094
                           000095   374 _INT3	=	0x0095
                           000096   375 _INT4	=	0x0096
                           000097   376 _INT5	=	0x0097
                           0000A0   377 _P2_0	=	0x00a0
                           0000A1   378 _P2_1	=	0x00a1
                           0000A2   379 _P2_2	=	0x00a2
                           0000A3   380 _P2_3	=	0x00a3
                           0000A4   381 _P2_4	=	0x00a4
                           0000A5   382 _P2_5	=	0x00a5
                           0000A6   383 _P2_6	=	0x00a6
                           0000A7   384 _P2_7	=	0x00a7
                           0000B0   385 _P3_0	=	0x00b0
                           0000B1   386 _P3_1	=	0x00b1
                           0000B2   387 _P3_2	=	0x00b2
                           0000B3   388 _P3_3	=	0x00b3
                           0000B4   389 _P3_4	=	0x00b4
                           0000B5   390 _P3_5	=	0x00b5
                           0000B6   391 _P3_6	=	0x00b6
                           0000B7   392 _P3_7	=	0x00b7
                           0000B0   393 _RXD	=	0x00b0
                           0000B0   394 _RXD0	=	0x00b0
                           0000B1   395 _TXD	=	0x00b1
                           0000B1   396 _TXD0	=	0x00b1
                           0000B2   397 _INT0	=	0x00b2
                           0000B3   398 _INT1	=	0x00b3
                           0000B4   399 _T0	=	0x00b4
                           0000B5   400 _T1	=	0x00b5
                           0000B6   401 _WR	=	0x00b6
                           0000B7   402 _RD	=	0x00b7
                           0000D0   403 _P	=	0x00d0
                           0000D1   404 _F1	=	0x00d1
                           0000D2   405 _OV	=	0x00d2
                           0000D3   406 _RS0	=	0x00d3
                           0000D4   407 _RS1	=	0x00d4
                           0000D5   408 _F0	=	0x00d5
                           0000D6   409 _AC	=	0x00d6
                           0000D7   410 _CY	=	0x00d7
                           000098   411 _RI	=	0x0098
                           000099   412 _TI	=	0x0099
                           00009A   413 _RB8	=	0x009a
                           00009B   414 _TB8	=	0x009b
                           00009C   415 _REN	=	0x009c
                           00009D   416 _SM2	=	0x009d
                           00009E   417 _SM1	=	0x009e
                           00009F   418 _SM0	=	0x009f
                           000098   419 _RI_0	=	0x0098
                           000099   420 _TI_0	=	0x0099
                           00009A   421 _RB8_0	=	0x009a
                           00009B   422 _TB8_0	=	0x009b
                           00009C   423 _REN_0	=	0x009c
                           00009D   424 _SM2_0	=	0x009d
                           00009E   425 _SM1_0	=	0x009e
                           00009F   426 _SM0_0	=	0x009f
                           00009F   427 _FE_0	=	0x009f
                           00009F   428 _SM0_FE_0	=	0x009f
                           0000C0   429 _RI_1	=	0x00c0
                           0000C1   430 _TI_1	=	0x00c1
                           0000C2   431 _RB8_1	=	0x00c2
                           0000C3   432 _TB8_1	=	0x00c3
                           0000C4   433 _REN_1	=	0x00c4
                           0000C5   434 _SM2_1	=	0x00c5
                           0000C6   435 _SM1_1	=	0x00c6
                           0000C7   436 _SM0_1	=	0x00c7
                           0000C7   437 _FE_1	=	0x00c7
                           0000C7   438 _SM0_FE_1	=	0x00c7
                           0000C8   439 _CP_RL2	=	0x00c8
                           0000C9   440 _C_T2	=	0x00c9
                           0000CA   441 _TR2	=	0x00ca
                           0000CB   442 _EXEN2	=	0x00cb
                           0000CC   443 _TCLK	=	0x00cc
                           0000CD   444 _RCLK	=	0x00cd
                           0000CE   445 _EXF2	=	0x00ce
                           0000CF   446 _TF2	=	0x00cf
                           0000C8   447 _T2CON_0	=	0x00c8
                           0000C9   448 _T2CON_1	=	0x00c9
                           0000CA   449 _T2CON_2	=	0x00ca
                           0000CB   450 _T2CON_3	=	0x00cb
                           0000CC   451 _T2CON_4	=	0x00cc
                           0000CD   452 _T2CON_5	=	0x00cd
                           0000CE   453 _T2CON_6	=	0x00ce
                           0000CF   454 _T2CON_7	=	0x00cf
                           000088   455 _IT0	=	0x0088
                           000089   456 _IE0	=	0x0089
                           00008A   457 _IT1	=	0x008a
                           00008B   458 _IE1	=	0x008b
                           00008C   459 _TR0	=	0x008c
                           00008D   460 _TF0	=	0x008d
                           00008E   461 _TR1	=	0x008e
                           00008F   462 _TF1	=	0x008f
                           0000D8   463 _RWT	=	0x00d8
                           0000D9   464 _EWT	=	0x00d9
                           0000DA   465 _WTRF	=	0x00da
                           0000DB   466 _WDIF	=	0x00db
                           0000DC   467 _PFI	=	0x00dc
                           0000DD   468 _EPFI	=	0x00dd
                           0000DE   469 _POR	=	0x00de
                           0000DF   470 _SMOD_1	=	0x00df
                                    471 ;--------------------------------------------------------
                                    472 ; overlayable register banks
                                    473 ;--------------------------------------------------------
                                    474 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        475 	.ds 8
                                    476 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        477 	.ds 8
                                    478 ;--------------------------------------------------------
                                    479 ; internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area DSEG    (DATA)
      000039                        482 _tx_tail::
      000039                        483 	.ds 1
      00003A                        484 _rx_head::
      00003A                        485 	.ds 1
      00003B                        486 _rx_tail::
      00003B                        487 	.ds 1
      00003C                        488 _tx_head::
      00003C                        489 	.ds 1
      00003D                        490 _rx_buf:
      00003D                        491 	.ds 16
      00004D                        492 _tx_buf:
      00004D                        493 	.ds 16
                                    494 ;--------------------------------------------------------
                                    495 ; overlayable items in internal ram
                                    496 ;--------------------------------------------------------
                                    497 	.area	OSEG    (OVR,DATA)
      00000E                        498 _init_ser_PARM_2:
      00000E                        499 	.ds 1
                                    500 	.area	OSEG    (OVR,DATA)
                                    501 	.area	OSEG    (OVR,DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; indirectly addressable internal ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area ISEG    (DATA)
                                    506 ;--------------------------------------------------------
                                    507 ; absolute internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area IABS    (ABS,DATA)
                                    510 	.area IABS    (ABS,DATA)
                                    511 ;--------------------------------------------------------
                                    512 ; bit data
                                    513 ;--------------------------------------------------------
                                    514 	.area BSEG    (BIT)
      000001                        515 _is_txing:
      000001                        516 	.ds 1
      000002                        517 _ser_byte_avail_sloc0_1_0:
      000002                        518 	.ds 1
                                    519 ;--------------------------------------------------------
                                    520 ; paged external ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area PSEG    (PAG,XDATA)
                                    523 ;--------------------------------------------------------
                                    524 ; external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area XSEG    (XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; absolute external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XABS    (ABS,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; external initialized ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XISEG   (XDATA)
                                    535 	.area HOME    (CODE)
                                    536 	.area GSINIT0 (CODE)
                                    537 	.area GSINIT1 (CODE)
                                    538 	.area GSINIT2 (CODE)
                                    539 	.area GSINIT3 (CODE)
                                    540 	.area GSINIT4 (CODE)
                                    541 	.area GSINIT5 (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area CSEG    (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; global & static initialisations
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area GSINIT  (CODE)
                                    550 	.area GSFINAL (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 ;--------------------------------------------------------
                                    553 ; Home
                                    554 ;--------------------------------------------------------
                                    555 	.area HOME    (CODE)
                                    556 	.area HOME    (CODE)
                                    557 ;--------------------------------------------------------
                                    558 ; code
                                    559 ;--------------------------------------------------------
                                    560 	.area CSEG    (CODE)
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'init_ser'
                                    563 ;------------------------------------------------------------
                                    564 ;tl2                       Allocated with name '_init_ser_PARM_2'
                                    565 ;th2                       Allocated to registers r7 
                                    566 ;------------------------------------------------------------
                                    567 ;	library/serial.c:19: void init_ser( unsigned char th2, unsigned char tl2 )
                                    568 ;	-----------------------------------------
                                    569 ;	 function init_ser
                                    570 ;	-----------------------------------------
      000B53                        571 _init_ser:
                           000007   572 	ar7 = 0x07
                           000006   573 	ar6 = 0x06
                           000005   574 	ar5 = 0x05
                           000004   575 	ar4 = 0x04
                           000003   576 	ar3 = 0x03
                           000002   577 	ar2 = 0x02
                           000001   578 	ar1 = 0x01
                           000000   579 	ar0 = 0x00
      000B53 AF 82            [24]  580 	mov	r7,dpl
                                    581 ;	library/serial.c:22: rx_head = 0;                  	// Default head/tail pointers.
      000B55 75 3A 00         [24]  582 	mov	_rx_head,#0x00
                                    583 ;	library/serial.c:23: rx_tail = 0;
      000B58 75 3B 00         [24]  584 	mov	_rx_tail,#0x00
                                    585 ;	library/serial.c:24: tx_tail = 0;
      000B5B 75 39 00         [24]  586 	mov	_tx_tail,#0x00
                                    587 ;	library/serial.c:25: tx_head = 0;
      000B5E 75 3C 00         [24]  588 	mov	_tx_head,#0x00
                                    589 ;	library/serial.c:26: is_txing = FALSE;				// Not transmitting.
                                    590 ;	assignBit
      000B61 C2 01            [12]  591 	clr	_is_txing
                                    592 ;	library/serial.c:28: SER_RX_PORT = HIGH;          	// Set Txd & Rxd to high
                                    593 ;	assignBit
      000B63 D2 B0            [12]  594 	setb	_P3_0
                                    595 ;	library/serial.c:29: SER_TX_PORT = HIGH;
                                    596 ;	assignBit
      000B65 D2 B1            [12]  597 	setb	_P3_1
                                    598 ;	library/serial.c:31: SCON = 0x50;               		// Mode 1.
      000B67 75 98 50         [24]  599 	mov	_SCON,#0x50
                                    600 ;	library/serial.c:37: T2CON &= 0xF0; /* EXEN2=0; TR2=0; C/T2#=0; CP/RL2#=0; */
      000B6A 53 C8 F0         [24]  601 	anl	_T2CON,#0xf0
                                    602 ;	library/serial.c:38: T2CON |= 0x30; /* RCLK = 1; TCLK=1; */
      000B6D 43 C8 30         [24]  603 	orl	_T2CON,#0x30
                                    604 ;	library/serial.c:55: TH2 = th2; /* init value */
      000B70 8F CD            [24]  605 	mov	_TH2,r7
                                    606 ;	library/serial.c:56: TL2 = tl2; /* init value */
      000B72 85 0E CC         [24]  607 	mov	_TL2,_init_ser_PARM_2
                                    608 ;	library/serial.c:57: RCAP2H = th2; /* reload value, 115200 Bds at 11.059MHz */
      000B75 8F CB            [24]  609 	mov	_RCAP2H,r7
                                    610 ;	library/serial.c:58: RCAP2L = tl2; /* reload value, 115200 Bds at 11.059MHz */
      000B77 85 0E CA         [24]  611 	mov	_RCAP2L,_init_ser_PARM_2
                                    612 ;	library/serial.c:60: TR2 = 1;                     		// Timer 2 run.
                                    613 ;	assignBit
      000B7A D2 CA            [12]  614 	setb	_TR2
                                    615 ;	library/serial.c:64: PS = TRUE;                    	// Low priority.
                                    616 ;	assignBit
      000B7C D2 BC            [12]  617 	setb	_PS
                                    618 ;	library/serial.c:66: EA = 1;													// Enable interrupts.
                                    619 ;	assignBit
      000B7E D2 AF            [12]  620 	setb	_EA
                                    621 ;	library/serial.c:67: ES = TRUE;                     	// Enable serial interrupt.
                                    622 ;	assignBit
      000B80 D2 AC            [12]  623 	setb	_ES
                                    624 ;	library/serial.c:68: }
      000B82 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'SerInt'
                                    628 ;------------------------------------------------------------
                                    629 ;	library/serial.c:74: void SerInt( void ) __interrupt 4 __using 2
                                    630 ;	-----------------------------------------
                                    631 ;	 function SerInt
                                    632 ;	-----------------------------------------
      000B83                        633 _SerInt:
                           000017   634 	ar7 = 0x17
                           000016   635 	ar6 = 0x16
                           000015   636 	ar5 = 0x15
                           000014   637 	ar4 = 0x14
                           000013   638 	ar3 = 0x13
                           000012   639 	ar2 = 0x12
                           000011   640 	ar1 = 0x11
                           000010   641 	ar0 = 0x10
      000B83 C0 E0            [24]  642 	push	acc
      000B85 C0 D0            [24]  643 	push	psw
      000B87 75 D0 10         [24]  644 	mov	psw,#0x10
                                    645 ;	library/serial.c:76: if( RI )							// Receive character?
                                    646 ;	library/serial.c:78: RI = 0;							// clear receive flag
                                    647 ;	assignBit
      000B8A 10 98 02         [24]  648 	jbc	_RI,00134$
      000B8D 80 15            [24]  649 	sjmp	00104$
      000B8F                        650 00134$:
                                    651 ;	library/serial.c:79: rx_buf[ rx_head++ ] = SBUF;    	// Get character from serial port and put into fifo.
      000B8F E5 3A            [12]  652 	mov	a,_rx_head
      000B91 FF               [12]  653 	mov	r7,a
      000B92 04               [12]  654 	inc	a
      000B93 F5 3A            [12]  655 	mov	_rx_head,a
      000B95 EF               [12]  656 	mov	a,r7
      000B96 24 3D            [12]  657 	add	a,#_rx_buf
      000B98 F8               [12]  658 	mov	r0,a
      000B99 A6 99            [24]  659 	mov	@r0,_SBUF
                                    660 ;	library/serial.c:80: if( rx_head >= BUFFER_SIZE)		// Wrap pointer to beginning of buffer if at end.
      000B9B 74 F0            [12]  661 	mov	a,#0x100 - 0x10
      000B9D 25 3A            [12]  662 	add	a,_rx_head
      000B9F 50 03            [24]  663 	jnc	00104$
                                    664 ;	library/serial.c:81: rx_head = 0;
      000BA1 75 3A 00         [24]  665 	mov	_rx_head,#0x00
      000BA4                        666 00104$:
                                    667 ;	library/serial.c:84: if( TI )							// Transmit character?
                                    668 ;	library/serial.c:86: TI = 0;							// Clear transmitter flag.
                                    669 ;	assignBit
      000BA4 10 99 02         [24]  670 	jbc	_TI,00136$
      000BA7 80 20            [24]  671 	sjmp	00112$
      000BA9                        672 00136$:
                                    673 ;	library/serial.c:87: if( tx_head == tx_tail )      	// Check to see if anymore characters to send?
      000BA9 E5 39            [12]  674 	mov	a,_tx_tail
      000BAB B5 3C 04         [24]  675 	cjne	a,_tx_head,00108$
                                    676 ;	library/serial.c:88: is_txing = FALSE;         	// No, indicate to ser_write_byte to set TI next time.
                                    677 ;	assignBit
      000BAE C2 01            [12]  678 	clr	_is_txing
      000BB0 80 17            [24]  679 	sjmp	00112$
      000BB2                        680 00108$:
                                    681 ;	library/serial.c:91: is_txing = TRUE;          	// TI interrupt will occur at end of this character.
                                    682 ;	assignBit
      000BB2 D2 01            [12]  683 	setb	_is_txing
                                    684 ;	library/serial.c:92: SBUF = tx_buf[ tx_tail++ ];	// Transmit character out serial port.
      000BB4 E5 39            [12]  685 	mov	a,_tx_tail
      000BB6 FF               [12]  686 	mov	r7,a
      000BB7 04               [12]  687 	inc	a
      000BB8 F5 39            [12]  688 	mov	_tx_tail,a
      000BBA EF               [12]  689 	mov	a,r7
      000BBB 24 4D            [12]  690 	add	a,#_tx_buf
      000BBD F9               [12]  691 	mov	r1,a
      000BBE 87 99            [24]  692 	mov	_SBUF,@r1
                                    693 ;	library/serial.c:93: if( tx_tail >= BUFFER_SIZE)	// Wrap pointer to beginning of buffer if at end.
      000BC0 74 F0            [12]  694 	mov	a,#0x100 - 0x10
      000BC2 25 39            [12]  695 	add	a,_tx_tail
      000BC4 50 03            [24]  696 	jnc	00112$
                                    697 ;	library/serial.c:94: tx_tail = 0;
      000BC6 75 39 00         [24]  698 	mov	_tx_tail,#0x00
      000BC9                        699 00112$:
                                    700 ;	library/serial.c:101: }
      000BC9 D0 D0            [24]  701 	pop	psw
      000BCB D0 E0            [24]  702 	pop	acc
      000BCD 32               [24]  703 	reti
                                    704 ;	eliminated unneeded push/pop dpl
                                    705 ;	eliminated unneeded push/pop dph
                                    706 ;	eliminated unneeded push/pop b
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'ser_write_byte'
                                    709 ;------------------------------------------------------------
                                    710 ;buf                       Allocated to registers r7 
                                    711 ;next_head                 Allocated to registers r6 
                                    712 ;------------------------------------------------------------
                                    713 ;	library/serial.c:106: char ser_write_byte( unsigned char buf )
                                    714 ;	-----------------------------------------
                                    715 ;	 function ser_write_byte
                                    716 ;	-----------------------------------------
      000BCE                        717 _ser_write_byte:
                           000007   718 	ar7 = 0x07
                           000006   719 	ar6 = 0x06
                           000005   720 	ar5 = 0x05
                           000004   721 	ar4 = 0x04
                           000003   722 	ar3 = 0x03
                           000002   723 	ar2 = 0x02
                           000001   724 	ar1 = 0x01
                           000000   725 	ar0 = 0x00
      000BCE AF 82            [24]  726 	mov	r7,dpl
                                    727 ;	library/serial.c:112: tx_buf[ tx_head ] = buf;
      000BD0 E5 3C            [12]  728 	mov	a,_tx_head
      000BD2 24 4D            [12]  729 	add	a,#_tx_buf
      000BD4 F8               [12]  730 	mov	r0,a
      000BD5 A6 07            [24]  731 	mov	@r0,ar7
                                    732 ;	library/serial.c:113: next_head = tx_head + 1;
      000BD7 AE 3C            [24]  733 	mov	r6,_tx_head
      000BD9 0E               [12]  734 	inc	r6
                                    735 ;	library/serial.c:115: if( next_head >= BUFFER_SIZE)
      000BDA BE 10 00         [24]  736 	cjne	r6,#0x10,00126$
      000BDD                        737 00126$:
      000BDD 40 02            [24]  738 	jc	00103$
                                    739 ;	library/serial.c:116: next_head = 0;
      000BDF 7E 00            [12]  740 	mov	r6,#0x00
                                    741 ;	library/serial.c:120: while( next_head == tx_tail );
      000BE1                        742 00103$:
      000BE1 EE               [12]  743 	mov	a,r6
      000BE2 B5 39 02         [24]  744 	cjne	a,_tx_tail,00128$
      000BE5 80 FA            [24]  745 	sjmp	00103$
      000BE7                        746 00128$:
                                    747 ;	library/serial.c:122: tx_head = next_head;
      000BE7 8E 3C            [24]  748 	mov	_tx_head,r6
                                    749 ;	library/serial.c:123: if( is_txing == FALSE )
      000BE9 20 01 02         [24]  750 	jb	_is_txing,00107$
                                    751 ;	library/serial.c:124: TI = TRUE;
                                    752 ;	assignBit
      000BEC D2 99            [12]  753 	setb	_TI
      000BEE                        754 00107$:
                                    755 ;	library/serial.c:126: P2_1 = !P2_1;
      000BEE B2 A1            [12]  756 	cpl	_P2_1
                                    757 ;	library/serial.c:127: return buf;
      000BF0 8F 82            [24]  758 	mov	dpl,r7
                                    759 ;	library/serial.c:128: }
      000BF2 22               [24]  760 	ret
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'ser_byte_avail'
                                    763 ;------------------------------------------------------------
                                    764 ;	library/serial.c:134: char ser_byte_avail( void )
                                    765 ;	-----------------------------------------
                                    766 ;	 function ser_byte_avail
                                    767 ;	-----------------------------------------
      000BF3                        768 _ser_byte_avail:
                                    769 ;	library/serial.c:140: return(rx_head != rx_tail);
      000BF3 E5 3B            [12]  770 	mov	a,_rx_tail
      000BF5 B5 3A 03         [24]  771 	cjne	a,_rx_head,00103$
      000BF8 D3               [12]  772 	setb	c
      000BF9 80 01            [24]  773 	sjmp	00104$
      000BFB                        774 00103$:
      000BFB C3               [12]  775 	clr	c
      000BFC                        776 00104$:
      000BFC B3               [12]  777 	cpl	c
      000BFD 92 02            [24]  778 	mov	_ser_byte_avail_sloc0_1_0,c
      000BFF E4               [12]  779 	clr	a
      000C00 33               [12]  780 	rlc	a
      000C01 F5 82            [12]  781 	mov	dpl,a
                                    782 ;	library/serial.c:147: }
      000C03 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'ser_read_byte'
                                    786 ;------------------------------------------------------------
                                    787 ;buf                       Allocated to registers r7 
                                    788 ;------------------------------------------------------------
                                    789 ;	library/serial.c:153: unsigned char ser_read_byte( void )
                                    790 ;	-----------------------------------------
                                    791 ;	 function ser_read_byte
                                    792 ;	-----------------------------------------
      000C04                        793 _ser_read_byte:
                                    794 ;	library/serial.c:159: buf = rx_buf[ rx_tail++ ];
      000C04 E5 3B            [12]  795 	mov	a,_rx_tail
      000C06 FF               [12]  796 	mov	r7,a
      000C07 04               [12]  797 	inc	a
      000C08 F5 3B            [12]  798 	mov	_rx_tail,a
      000C0A EF               [12]  799 	mov	a,r7
      000C0B 24 3D            [12]  800 	add	a,#_rx_buf
      000C0D F9               [12]  801 	mov	r1,a
      000C0E 87 07            [24]  802 	mov	ar7,@r1
                                    803 ;	library/serial.c:161: if( rx_tail >= BUFFER_SIZE)		// rx_tail %= BUFFER_SIZE;
      000C10 74 F0            [12]  804 	mov	a,#0x100 - 0x10
      000C12 25 3B            [12]  805 	add	a,_rx_tail
      000C14 50 03            [24]  806 	jnc	00102$
                                    807 ;	library/serial.c:162: rx_tail = 0;
      000C16 75 3B 00         [24]  808 	mov	_rx_tail,#0x00
      000C19                        809 00102$:
                                    810 ;	library/serial.c:164: P2_2 = !P2_2;
      000C19 B2 A2            [12]  811 	cpl	_P2_2
                                    812 ;	library/serial.c:165: return( buf );
      000C1B 8F 82            [24]  813 	mov	dpl,r7
                                    814 ;	library/serial.c:166: }
      000C1D 22               [24]  815 	ret
                                    816 ;------------------------------------------------------------
                                    817 ;Allocation info for local variables in function 'putchar'
                                    818 ;------------------------------------------------------------
                                    819 ;buf                       Allocated to registers r6 r7 
                                    820 ;------------------------------------------------------------
                                    821 ;	library/serial.c:168: int putchar(int buf) {
                                    822 ;	-----------------------------------------
                                    823 ;	 function putchar
                                    824 ;	-----------------------------------------
      000C1E                        825 _putchar:
                                    826 ;	library/serial.c:169: ser_write_byte((char)buf);
      000C1E AE 82            [24]  827 	mov	r6,dpl
      000C20 AF 83            [24]  828 	mov	r7,dph
      000C22 C0 07            [24]  829 	push	ar7
      000C24 C0 06            [24]  830 	push	ar6
      000C26 12 0B CE         [24]  831 	lcall	_ser_write_byte
      000C29 D0 06            [24]  832 	pop	ar6
      000C2B D0 07            [24]  833 	pop	ar7
                                    834 ;	library/serial.c:170: return buf;
      000C2D 8E 82            [24]  835 	mov	dpl,r6
      000C2F 8F 83            [24]  836 	mov	dph,r7
                                    837 ;	library/serial.c:171: }
      000C31 22               [24]  838 	ret
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'getchar'
                                    841 ;------------------------------------------------------------
                                    842 ;buf                       Allocated to registers r7 r6 
                                    843 ;------------------------------------------------------------
                                    844 ;	library/serial.c:173: int getchar(void) {
                                    845 ;	-----------------------------------------
                                    846 ;	 function getchar
                                    847 ;	-----------------------------------------
      000C32                        848 _getchar:
                                    849 ;	library/serial.c:174: int buf=ser_read_byte();
      000C32 12 0C 04         [24]  850 	lcall	_ser_read_byte
                                    851 ;	library/serial.c:175: return buf;
      000C35 7E 00            [12]  852 	mov	r6,#0x00
      000C37 8E 83            [24]  853 	mov	dph,r6
                                    854 ;	library/serial.c:176: }
      000C39 22               [24]  855 	ret
                                    856 	.area CSEG    (CODE)
                                    857 	.area CONST   (CODE)
                                    858 	.area XINIT   (CODE)
                                    859 	.area CABS    (ABS,CODE)
