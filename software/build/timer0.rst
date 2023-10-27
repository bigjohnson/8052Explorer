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
                                    231 	.globl _prima
                                    232 	.globl _millisx
                                    233 	.globl _init_timer0
                                    234 	.globl _millis
                                    235 	.globl _it_timer0
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           0000E0   241 _ACC	=	0x00e0
                           00009D   242 _ACON	=	0x009d
                           0000F0   243 _B	=	0x00f0
                           00008E   244 _CKCON	=	0x008e
                           000096   245 _CKMOD	=	0x0096
                           000083   246 _DPH	=	0x0083
                           000083   247 _DP0H	=	0x0083
                           000085   248 _DPH1	=	0x0085
                           000085   249 _DP1H	=	0x0085
                           000082   250 _DPL	=	0x0082
                           000082   251 _DP0L	=	0x0082
                           000084   252 _DPL1	=	0x0084
                           000084   253 _DP1L	=	0x0084
                           000086   254 _DPS	=	0x0086
                           0000E8   255 _EIE	=	0x00e8
                           0000F8   256 _EIP0	=	0x00f8
                           0000F1   257 _EIP1	=	0x00f1
                           000091   258 _EXIF	=	0x0091
                           0000D5   259 _FCNTL	=	0x00d5
                           0000A8   260 _IE	=	0x00a8
                           0000B8   261 _IP	=	0x00b8
                           0000B8   262 _IP0	=	0x00b8
                           0000B1   263 _IP1	=	0x00b1
                           0000E9   264 _MD0	=	0x00e9
                           0000EA   265 _MD1	=	0x00ea
                           0000EB   266 _MD2	=	0x00eb
                           000080   267 _P0	=	0x0080
                           000090   268 _P1	=	0x0090
                           0000A0   269 _P2	=	0x00a0
                           0000B0   270 _P3	=	0x00b0
                           000087   271 _PCON	=	0x0087
                           0000C4   272 _PMR	=	0x00c4
                           0000D0   273 _PSW	=	0x00d0
                           0000CB   274 _RCAP2H	=	0x00cb
                           0000CA   275 _RCAP2L	=	0x00ca
                           0000C2   276 _ROMSIZE	=	0x00c2
                           0000A9   277 _SADDR0	=	0x00a9
                           0000AA   278 _SADDR1	=	0x00aa
                           0000B9   279 _SADEN0	=	0x00b9
                           0000BA   280 _SADEN1	=	0x00ba
                           000099   281 _SBUF	=	0x0099
                           000099   282 _SBUF0	=	0x0099
                           0000C1   283 _SBUF1	=	0x00c1
                           000098   284 _SCON	=	0x0098
                           000098   285 _SCON0	=	0x0098
                           0000C0   286 _SCON1	=	0x00c0
                           000081   287 _SP	=	0x0081
                           0000C5   288 _STATUS	=	0x00c5
                           0000C8   289 _T2CON	=	0x00c8
                           0000C9   290 _T2MOD	=	0x00c9
                           0000C7   291 _TA	=	0x00c7
                           000088   292 _TCON	=	0x0088
                           00008C   293 _TH0	=	0x008c
                           00008D   294 _TH1	=	0x008d
                           0000CD   295 _TH2	=	0x00cd
                           00008A   296 _TL0	=	0x008a
                           00008B   297 _TL1	=	0x008b
                           0000CC   298 _TL2	=	0x00cc
                           000089   299 _TMOD	=	0x0089
                           0000D8   300 _WDCON	=	0x00d8
                                    301 ;--------------------------------------------------------
                                    302 ; special function bits
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           0000F0   306 _BREG_F0	=	0x00f0
                           0000F1   307 _BREG_F1	=	0x00f1
                           0000F2   308 _BREG_F2	=	0x00f2
                           0000F3   309 _BREG_F3	=	0x00f3
                           0000F4   310 _BREG_F4	=	0x00f4
                           0000F5   311 _BREG_F5	=	0x00f5
                           0000F6   312 _BREG_F6	=	0x00f6
                           0000F7   313 _BREG_F7	=	0x00f7
                           0000E8   314 _EX2	=	0x00e8
                           0000E9   315 _EX3	=	0x00e9
                           0000EA   316 _EX4	=	0x00ea
                           0000EB   317 _EX5	=	0x00eb
                           0000EC   318 _EWDI	=	0x00ec
                           0000F8   319 _LPX2	=	0x00f8
                           0000F9   320 _LPX3	=	0x00f9
                           0000FA   321 _LPX4	=	0x00fa
                           0000FB   322 _LPX5	=	0x00fb
                           0000FC   323 _LPWDI	=	0x00fc
                           0000A8   324 _EX0	=	0x00a8
                           0000A9   325 _ET0	=	0x00a9
                           0000AA   326 _EX1	=	0x00aa
                           0000AB   327 _ET1	=	0x00ab
                           0000AC   328 _ES	=	0x00ac
                           0000AC   329 _ES0	=	0x00ac
                           0000AD   330 _ET2	=	0x00ad
                           0000AE   331 _ES1	=	0x00ae
                           0000AF   332 _EA	=	0x00af
                           0000B8   333 _PX0	=	0x00b8
                           0000B9   334 _PT0	=	0x00b9
                           0000BA   335 _PX1	=	0x00ba
                           0000BB   336 _PT1	=	0x00bb
                           0000BC   337 _PS	=	0x00bc
                           0000BD   338 _PT2	=	0x00bd
                           0000BE   339 _PS1	=	0x00be
                           0000B8   340 _LPX0	=	0x00b8
                           0000B9   341 _LPT0	=	0x00b9
                           0000BA   342 _LPX1	=	0x00ba
                           0000BB   343 _LPT1	=	0x00bb
                           0000BC   344 _LPS0	=	0x00bc
                           0000BD   345 _LPT2	=	0x00bd
                           0000BE   346 _LPS1	=	0x00be
                           000080   347 _P0_0	=	0x0080
                           000081   348 _P0_1	=	0x0081
                           000082   349 _P0_2	=	0x0082
                           000083   350 _P0_3	=	0x0083
                           000084   351 _P0_4	=	0x0084
                           000085   352 _P0_5	=	0x0085
                           000086   353 _P0_6	=	0x0086
                           000087   354 _P0_7	=	0x0087
                           000090   355 _P1_0	=	0x0090
                           000091   356 _P1_1	=	0x0091
                           000092   357 _P1_2	=	0x0092
                           000093   358 _P1_3	=	0x0093
                           000094   359 _P1_4	=	0x0094
                           000095   360 _P1_5	=	0x0095
                           000096   361 _P1_6	=	0x0096
                           000097   362 _P1_7	=	0x0097
                           000090   363 _T2	=	0x0090
                           000091   364 _T2EX	=	0x0091
                           000092   365 _RXD1	=	0x0092
                           000093   366 _TXD1	=	0x0093
                           000094   367 _INT2	=	0x0094
                           000095   368 _INT3	=	0x0095
                           000096   369 _INT4	=	0x0096
                           000097   370 _INT5	=	0x0097
                           0000A0   371 _P2_0	=	0x00a0
                           0000A1   372 _P2_1	=	0x00a1
                           0000A2   373 _P2_2	=	0x00a2
                           0000A3   374 _P2_3	=	0x00a3
                           0000A4   375 _P2_4	=	0x00a4
                           0000A5   376 _P2_5	=	0x00a5
                           0000A6   377 _P2_6	=	0x00a6
                           0000A7   378 _P2_7	=	0x00a7
                           0000B0   379 _P3_0	=	0x00b0
                           0000B1   380 _P3_1	=	0x00b1
                           0000B2   381 _P3_2	=	0x00b2
                           0000B3   382 _P3_3	=	0x00b3
                           0000B4   383 _P3_4	=	0x00b4
                           0000B5   384 _P3_5	=	0x00b5
                           0000B6   385 _P3_6	=	0x00b6
                           0000B7   386 _P3_7	=	0x00b7
                           0000B0   387 _RXD	=	0x00b0
                           0000B0   388 _RXD0	=	0x00b0
                           0000B1   389 _TXD	=	0x00b1
                           0000B1   390 _TXD0	=	0x00b1
                           0000B2   391 _INT0	=	0x00b2
                           0000B3   392 _INT1	=	0x00b3
                           0000B4   393 _T0	=	0x00b4
                           0000B5   394 _T1	=	0x00b5
                           0000B6   395 _WR	=	0x00b6
                           0000B7   396 _RD	=	0x00b7
                           0000D0   397 _P	=	0x00d0
                           0000D1   398 _F1	=	0x00d1
                           0000D2   399 _OV	=	0x00d2
                           0000D3   400 _RS0	=	0x00d3
                           0000D4   401 _RS1	=	0x00d4
                           0000D5   402 _F0	=	0x00d5
                           0000D6   403 _AC	=	0x00d6
                           0000D7   404 _CY	=	0x00d7
                           000098   405 _RI	=	0x0098
                           000099   406 _TI	=	0x0099
                           00009A   407 _RB8	=	0x009a
                           00009B   408 _TB8	=	0x009b
                           00009C   409 _REN	=	0x009c
                           00009D   410 _SM2	=	0x009d
                           00009E   411 _SM1	=	0x009e
                           00009F   412 _SM0	=	0x009f
                           000098   413 _RI_0	=	0x0098
                           000099   414 _TI_0	=	0x0099
                           00009A   415 _RB8_0	=	0x009a
                           00009B   416 _TB8_0	=	0x009b
                           00009C   417 _REN_0	=	0x009c
                           00009D   418 _SM2_0	=	0x009d
                           00009E   419 _SM1_0	=	0x009e
                           00009F   420 _SM0_0	=	0x009f
                           00009F   421 _FE_0	=	0x009f
                           00009F   422 _SM0_FE_0	=	0x009f
                           0000C0   423 _RI_1	=	0x00c0
                           0000C1   424 _TI_1	=	0x00c1
                           0000C2   425 _RB8_1	=	0x00c2
                           0000C3   426 _TB8_1	=	0x00c3
                           0000C4   427 _REN_1	=	0x00c4
                           0000C5   428 _SM2_1	=	0x00c5
                           0000C6   429 _SM1_1	=	0x00c6
                           0000C7   430 _SM0_1	=	0x00c7
                           0000C7   431 _FE_1	=	0x00c7
                           0000C7   432 _SM0_FE_1	=	0x00c7
                           0000C8   433 _CP_RL2	=	0x00c8
                           0000C9   434 _C_T2	=	0x00c9
                           0000CA   435 _TR2	=	0x00ca
                           0000CB   436 _EXEN2	=	0x00cb
                           0000CC   437 _TCLK	=	0x00cc
                           0000CD   438 _RCLK	=	0x00cd
                           0000CE   439 _EXF2	=	0x00ce
                           0000CF   440 _TF2	=	0x00cf
                           0000C8   441 _T2CON_0	=	0x00c8
                           0000C9   442 _T2CON_1	=	0x00c9
                           0000CA   443 _T2CON_2	=	0x00ca
                           0000CB   444 _T2CON_3	=	0x00cb
                           0000CC   445 _T2CON_4	=	0x00cc
                           0000CD   446 _T2CON_5	=	0x00cd
                           0000CE   447 _T2CON_6	=	0x00ce
                           0000CF   448 _T2CON_7	=	0x00cf
                           000088   449 _IT0	=	0x0088
                           000089   450 _IE0	=	0x0089
                           00008A   451 _IT1	=	0x008a
                           00008B   452 _IE1	=	0x008b
                           00008C   453 _TR0	=	0x008c
                           00008D   454 _TF0	=	0x008d
                           00008E   455 _TR1	=	0x008e
                           00008F   456 _TF1	=	0x008f
                           0000D8   457 _RWT	=	0x00d8
                           0000D9   458 _EWT	=	0x00d9
                           0000DA   459 _WTRF	=	0x00da
                           0000DB   460 _WDIF	=	0x00db
                           0000DC   461 _PFI	=	0x00dc
                           0000DD   462 _EPFI	=	0x00dd
                           0000DE   463 _POR	=	0x00de
                           0000DF   464 _SMOD_1	=	0x00df
                                    465 ;--------------------------------------------------------
                                    466 ; overlayable register banks
                                    467 ;--------------------------------------------------------
                                    468 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        469 	.ds 8
                                    470 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        471 	.ds 8
                                    472 ;--------------------------------------------------------
                                    473 ; overlayable bit register bank
                                    474 ;--------------------------------------------------------
                                    475 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        476 bits:
      000021                        477 	.ds 1
                           008000   478 	b0 = bits[0]
                           008100   479 	b1 = bits[1]
                           008200   480 	b2 = bits[2]
                           008300   481 	b3 = bits[3]
                           008400   482 	b4 = bits[4]
                           008500   483 	b5 = bits[5]
                           008600   484 	b6 = bits[6]
                           008700   485 	b7 = bits[7]
                                    486 ;--------------------------------------------------------
                                    487 ; internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area DSEG    (DATA)
      00005D                        490 _millisx::
      00005D                        491 	.ds 2
      00005F                        492 _prima::
      00005F                        493 	.ds 2
                                    494 ;--------------------------------------------------------
                                    495 ; overlayable items in internal ram
                                    496 ;--------------------------------------------------------
                                    497 	.area	OSEG    (OVR,DATA)
      00000E                        498 _init_timer0_PARM_2:
      00000E                        499 	.ds 1
                                    500 ;--------------------------------------------------------
                                    501 ; indirectly addressable internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area ISEG    (DATA)
                                    504 ;--------------------------------------------------------
                                    505 ; absolute internal ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area IABS    (ABS,DATA)
                                    508 	.area IABS    (ABS,DATA)
                                    509 ;--------------------------------------------------------
                                    510 ; bit data
                                    511 ;--------------------------------------------------------
                                    512 	.area BSEG    (BIT)
                                    513 ;--------------------------------------------------------
                                    514 ; paged external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area PSEG    (PAG,XDATA)
                                    517 ;--------------------------------------------------------
                                    518 ; external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XSEG    (XDATA)
                                    521 ;--------------------------------------------------------
                                    522 ; absolute external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XABS    (ABS,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; external initialized ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XISEG   (XDATA)
                                    529 	.area HOME    (CODE)
                                    530 	.area GSINIT0 (CODE)
                                    531 	.area GSINIT1 (CODE)
                                    532 	.area GSINIT2 (CODE)
                                    533 	.area GSINIT3 (CODE)
                                    534 	.area GSINIT4 (CODE)
                                    535 	.area GSINIT5 (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area CSEG    (CODE)
                                    539 ;--------------------------------------------------------
                                    540 ; global & static initialisations
                                    541 ;--------------------------------------------------------
                                    542 	.area HOME    (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; Home
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area HOME    (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; code
                                    553 ;--------------------------------------------------------
                                    554 	.area CSEG    (CODE)
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'init_timer0'
                                    557 ;------------------------------------------------------------
                                    558 ;tl                        Allocated with name '_init_timer0_PARM_2'
                                    559 ;th                        Allocated to registers r7 
                                    560 ;------------------------------------------------------------
                                    561 ;	library/timer0.c:6: void init_timer0(unsigned char th, unsigned char tl) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function init_timer0
                                    564 ;	-----------------------------------------
      000C3A                        565 _init_timer0:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
      000C3A AF 82            [24]  574 	mov	r7,dpl
                                    575 ;	library/timer0.c:7: TMOD &= 0xF0; /* Timer 0 mode 0 with software gate */
      000C3C 53 89 F0         [24]  576 	anl	_TMOD,#0xf0
                                    577 ;	library/timer0.c:12: TH0 = th; /* init values */
      000C3F 8F 8C            [24]  578 	mov	_TH0,r7
                                    579 ;	library/timer0.c:13: TL0 = tl;
      000C41 85 0E 8A         [24]  580 	mov	_TL0,_init_timer0_PARM_2
                                    581 ;	library/timer0.c:17: ET0 = 1; /* enable timer0 interrupt */
                                    582 ;	assignBit
      000C44 D2 A9            [12]  583 	setb	_ET0
                                    584 ;	library/timer0.c:18: EA = 1; /* enable interrupts */
                                    585 ;	assignBit
      000C46 D2 AF            [12]  586 	setb	_EA
                                    587 ;	library/timer0.c:19: TR0 = 1; /* timer0 run */
                                    588 ;	assignBit
      000C48 D2 8C            [12]  589 	setb	_TR0
                                    590 ;	library/timer0.c:20: }
      000C4A 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'millis'
                                    594 ;------------------------------------------------------------
                                    595 ;	library/timer0.c:22: unsigned int millis(void) {
                                    596 ;	-----------------------------------------
                                    597 ;	 function millis
                                    598 ;	-----------------------------------------
      000C4B                        599 _millis:
                                    600 ;	library/timer0.c:23: return millisx;
      000C4B 85 5D 82         [24]  601 	mov	dpl,_millisx
      000C4E 85 5E 83         [24]  602 	mov	dph,(_millisx + 1)
                                    603 ;	library/timer0.c:24: }
      000C51 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'it_timer0'
                                    607 ;------------------------------------------------------------
                                    608 ;	library/timer0.c:26: void it_timer0(void) __interrupt 1 __using 3 /* interrupt address is 0x000b */
                                    609 ;	-----------------------------------------
                                    610 ;	 function it_timer0
                                    611 ;	-----------------------------------------
      000C52                        612 _it_timer0:
                           00001F   613 	ar7 = 0x1f
                           00001E   614 	ar6 = 0x1e
                           00001D   615 	ar5 = 0x1d
                           00001C   616 	ar4 = 0x1c
                           00001B   617 	ar3 = 0x1b
                           00001A   618 	ar2 = 0x1a
                           000019   619 	ar1 = 0x19
                           000018   620 	ar0 = 0x18
      000C52 C0 21            [24]  621 	push	bits
      000C54 C0 E0            [24]  622 	push	acc
      000C56 C0 F0            [24]  623 	push	b
      000C58 C0 82            [24]  624 	push	dpl
      000C5A C0 83            [24]  625 	push	dph
      000C5C C0 07            [24]  626 	push	(0+7)
      000C5E C0 06            [24]  627 	push	(0+6)
      000C60 C0 05            [24]  628 	push	(0+5)
      000C62 C0 04            [24]  629 	push	(0+4)
      000C64 C0 03            [24]  630 	push	(0+3)
      000C66 C0 02            [24]  631 	push	(0+2)
      000C68 C0 01            [24]  632 	push	(0+1)
      000C6A C0 00            [24]  633 	push	(0+0)
      000C6C C0 D0            [24]  634 	push	psw
      000C6E 75 D0 18         [24]  635 	mov	psw,#0x18
                                    636 ;	library/timer0.c:33: millisx++;
      000C71 AE 5D            [24]  637 	mov	r6,_millisx
      000C73 AF 5E            [24]  638 	mov	r7,(_millisx + 1)
      000C75 74 01            [12]  639 	mov	a,#0x01
      000C77 2E               [12]  640 	add	a,r6
      000C78 F5 5D            [12]  641 	mov	_millisx,a
      000C7A E4               [12]  642 	clr	a
      000C7B 3F               [12]  643 	addc	a,r7
      000C7C F5 5E            [12]  644 	mov	(_millisx + 1),a
                                    645 ;	library/timer0.c:35: if ( millisx < prima ) {
      000C7E C3               [12]  646 	clr	c
      000C7F E5 5D            [12]  647 	mov	a,_millisx
      000C81 95 5F            [12]  648 	subb	a,_prima
      000C83 E5 5E            [12]  649 	mov	a,(_millisx + 1)
      000C85 95 60            [12]  650 	subb	a,(_prima + 1)
      000C87 50 06            [24]  651 	jnc	00102$
                                    652 ;	library/timer0.c:36: prima = millisx;
      000C89 85 5D 5F         [24]  653 	mov	_prima,_millisx
      000C8C 85 5E 60         [24]  654 	mov	(_prima + 1),(_millisx + 1)
      000C8F                        655 00102$:
                                    656 ;	library/timer0.c:38: if (millisx % ONE_SECOND_DIVISOR == 0 && millisx > prima) {
      000C8F 75 0E 97         [24]  657 	mov	__moduint_PARM_2,#0x97
      000C92 75 0F 01         [24]  658 	mov	(__moduint_PARM_2 + 1),#0x01
      000C95 85 5D 82         [24]  659 	mov	dpl,_millisx
      000C98 85 5E 83         [24]  660 	mov	dph,(_millisx + 1)
      000C9B 75 D0 00         [24]  661 	mov	psw,#0x00
      000C9E 12 0D E6         [24]  662 	lcall	__moduint
      000CA1 75 D0 18         [24]  663 	mov	psw,#0x18
      000CA4 E5 82            [12]  664 	mov	a,dpl
      000CA6 85 83 F0         [24]  665 	mov	b,dph
      000CA9 45 F0            [12]  666 	orl	a,b
      000CAB 70 13            [24]  667 	jnz	00106$
      000CAD C3               [12]  668 	clr	c
      000CAE E5 5F            [12]  669 	mov	a,_prima
      000CB0 95 5D            [12]  670 	subb	a,_millisx
      000CB2 E5 60            [12]  671 	mov	a,(_prima + 1)
      000CB4 95 5E            [12]  672 	subb	a,(_millisx + 1)
      000CB6 50 08            [24]  673 	jnc	00106$
                                    674 ;	library/timer0.c:39: prima = millisx;
      000CB8 85 5D 5F         [24]  675 	mov	_prima,_millisx
      000CBB 85 5E 60         [24]  676 	mov	(_prima + 1),(_millisx + 1)
                                    677 ;	library/timer0.c:40: P2_0 = !P2_0;
      000CBE B2 A0            [12]  678 	cpl	_P2_0
      000CC0                        679 00106$:
                                    680 ;	library/timer0.c:43: }
      000CC0 D0 D0            [24]  681 	pop	psw
      000CC2 D0 00            [24]  682 	pop	(0+0)
      000CC4 D0 01            [24]  683 	pop	(0+1)
      000CC6 D0 02            [24]  684 	pop	(0+2)
      000CC8 D0 03            [24]  685 	pop	(0+3)
      000CCA D0 04            [24]  686 	pop	(0+4)
      000CCC D0 05            [24]  687 	pop	(0+5)
      000CCE D0 06            [24]  688 	pop	(0+6)
      000CD0 D0 07            [24]  689 	pop	(0+7)
      000CD2 D0 83            [24]  690 	pop	dph
      000CD4 D0 82            [24]  691 	pop	dpl
      000CD6 D0 F0            [24]  692 	pop	b
      000CD8 D0 E0            [24]  693 	pop	acc
      000CDA D0 21            [24]  694 	pop	bits
      000CDC 32               [24]  695 	reti
                                    696 	.area CSEG    (CODE)
                                    697 	.area CONST   (CODE)
                                    698 	.area XINIT   (CODE)
                                    699 	.area CABS    (ABS,CODE)
