;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module 8052Explorer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _codice
	.globl _acTestString
	.globl _main
	.globl _HELP
	.globl _p
	.globl _start
	.globl _reset
	.globl _hexCODE
	.globl _dumpRAM
	.globl _dumpCODE
	.globl _hexEEPROM
	.globl _dumpEEPROM
	.globl _felix
	.globl _watchdogRESET
	.globl _printf_tiny
	.globl _putchar
	.globl _getchar
	.globl _puts
	.globl _init_timer0
	.globl _ser_byte_avail
	.globl _init_ser
	.globl _writeEeprom
	.globl _readEeprom
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _SCK
	.globl _MISO
	.globl _MOSI
	.globl _SS
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _ALE
	.globl _B
	.globl _A
	.globl _ACC
	.globl _SPCR
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _SADEN
	.globl _IP
	.globl _IPH
	.globl _P3
	.globl _SPSR
	.globl _SADDR
	.globl _IE
	.globl _WDTCON
	.globl _WDTRST
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _EECON
	.globl _P1
	.globl _CLKREG
	.globl _AUXR
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _SPDR
	.globl _DP1H
	.globl _DP1L
	.globl _DP0H
	.globl _DPH
	.globl _DP0L
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _dati
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DP0L	=	0x0082
_DPH	=	0x0083
_DP0H	=	0x0083
_DP1L	=	0x0084
_DP1H	=	0x0085
_SPDR	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_AUXR	=	0x008e
_CLKREG	=	0x008f
_P1	=	0x0090
_EECON	=	0x0096
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_WDTRST	=	0x00a6
_WDTCON	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_SPSR	=	0x00aa
_P3	=	0x00b0
_IPH	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_SPCR	=	0x00d5
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
_ALE	=	0x008e
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_SS	=	0x0094
_MOSI	=	0x0095
_MISO	=	0x0096
_SCK	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_dati	=	0x0000
_dumpCODE_indirizzo_131072_58:
	.ds 2
_dumpCODE_posto_262144_64:
	.ds 2
_dumpCODE_posto_262144_67:
	.ds 1
_dumpRAM_indirizzo_131072_72:
	.ds 2
_dumpRAM_posto_262144_78:
	.ds 2
_dumpRAM_posto_262144_81:
	.ds 1
_hexCODE_puntatore_65536_85:
	.ds 3
_hexCODE_checksum_65537_86:
	.ds 2
_p_pin_65537_110:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_it_timer0
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_SerInt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdogRESET'
;------------------------------------------------------------
;	8052Explorer.c:120: void watchdogRESET ( void ) {
;	-----------------------------------------
;	 function watchdogRESET
;	-----------------------------------------
_watchdogRESET:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	8052Explorer.c:121: WDTRST = 0x1E;
	mov	_WDTRST,#0x1e
;	8052Explorer.c:122: WDTRST = 0xE1;
	mov	_WDTRST,#0xe1
;	8052Explorer.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'felix'
;------------------------------------------------------------
;	8052Explorer.c:126: void felix (void) {
;	-----------------------------------------
;	 function felix
;	-----------------------------------------
_felix:
;	8052Explorer.c:127: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	8052Explorer.c:160: puts("                         '~~~*==Y*f~~~ ");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:161: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:162: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'dumpEEPROM'
;------------------------------------------------------------
;eepromchar                Allocated to registers r7 
;indirizzo                 Allocated to registers r6 r7 
;posto                     Allocated to registers r5 
;lettura                   Allocated to registers r4 
;lettura                   Allocated to registers r4 
;posto                     Allocated to registers r5 
;------------------------------------------------------------
;	8052Explorer.c:165: void dumpEEPROM () {
;	-----------------------------------------
;	 function dumpEEPROM
;	-----------------------------------------
_dumpEEPROM:
;	8052Explorer.c:166: puts("Dumping eeprom content and changing first character:");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:168: unsigned char eepromchar = readEeprom(0);
	mov	dptr,#0x0000
	lcall	_readEeprom
	mov	a,dpl
;	8052Explorer.c:169: eepromchar++;
	inc	a
	mov	r7,a
;	8052Explorer.c:170: if (0x5B == eepromchar) {
	cjne	r7,#0x5b,00102$
;	8052Explorer.c:171: eepromchar = 0x41;
	mov	r7,#0x41
00102$:
;	8052Explorer.c:173: writeEeprom (eepromchar, 0);
	clr	a
	mov	_writeEeprom_PARM_2,a
	mov	(_writeEeprom_PARM_2 + 1),a
	mov	dpl,r7
	lcall	_writeEeprom
;	8052Explorer.c:175: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00195$
	ljmp	00119$
00195$:
;	8052Explorer.c:176: if (indirizzo < 0x10) {
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	subb	a,#0x00
	jnc	00110$
;	8052Explorer.c:177: printf_tiny("000%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00138$
00110$:
;	8052Explorer.c:178: } else if (indirizzo < 0x100) {
	mov	a,#0x100 - 0x01
	add	a,r5
	jc	00107$
;	8052Explorer.c:179: printf_tiny("00%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00138$
00107$:
;	8052Explorer.c:180: } else if (indirizzo < 0x1000) {
	mov	a,#0x100 - 0x10
	add	a,r5
	jc	00104$
;	8052Explorer.c:181: printf_tiny("0%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00138$
00104$:
;	8052Explorer.c:183: printf_tiny("%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	8052Explorer.c:185: for (unsigned char posto = 0; posto < 16; posto++) {
00138$:
	mov	r5,#0x00
00121$:
	cjne	r5,#0x10,00199$
00199$:
	jnc	00114$
;	8052Explorer.c:186: unsigned char lettura = readEeprom(indirizzo + (unsigned int)posto);
	mov	ar3,r5
	mov	r4,#0x00
	mov	ar1,r6
	mov	ar2,r7
	mov	a,r3
	add	a,r1
	mov	r3,a
	mov	a,r4
	addc	a,r2
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_readEeprom
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:187: if ( lettura < 0x10 ) {
	cjne	r4,#0x10,00201$
00201$:
	jnc	00113$
;	8052Explorer.c:188: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00113$:
;	8052Explorer.c:190: printf_tiny("%x ", lettura);
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:185: for (unsigned char posto = 0; posto < 16; posto++) {
	inc	r5
	sjmp	00121$
00114$:
;	8052Explorer.c:193: printf_tiny(" |");
	push	ar7
	push	ar6
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	8052Explorer.c:195: for (unsigned char posto=0; posto < 16; posto++) {
	mov	r5,#0x00
00124$:
	cjne	r5,#0x10,00203$
00203$:
	jnc	00118$
;	8052Explorer.c:196: lettura = readEeprom(indirizzo+(short)posto);
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r7
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_readEeprom
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:197: if ( lettura < 0x20 || lettura > 0x7E ) {
	cjne	r4,#0x20,00205$
00205$:
	jc	00115$
	mov	a,r4
	add	a,#0xff - 0x7e
	jnc	00116$
00115$:
;	8052Explorer.c:198: lettura = '.';
	mov	r4,#0x2e
00116$:
;	8052Explorer.c:200: printf_tiny("%c", lettura);
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#___str_72
	push	acc
	mov	a,#(___str_72 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:195: for (unsigned char posto=0; posto < 16; posto++) {
	inc	r5
	sjmp	00124$
00118$:
;	8052Explorer.c:203: putchar('|');
	mov	dptr,#0x007c
	push	ar7
	push	ar6
	lcall	_putchar
;	8052Explorer.c:204: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
	pop	ar6
	pop	ar7
;	8052Explorer.c:175: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	ljmp	00127$
00119$:
;	8052Explorer.c:207: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	8052Explorer.c:208: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:210: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'hexEEPROM'
;------------------------------------------------------------
;checksum                  Allocated to registers r5 r4 
;indirizzo                 Allocated to registers r6 r7 
;posto                     Allocated to registers r3 
;lettura                   Allocated to registers r2 
;------------------------------------------------------------
;	8052Explorer.c:212: void hexEEPROM () {
;	-----------------------------------------
;	 function hexEEPROM
;	-----------------------------------------
_hexEEPROM:
;	8052Explorer.c:214: puts("Dumping eeprom content in hex format:");
	mov	dptr,#___str_73
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:215: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
	mov	r6,#0x00
	mov	r7,#0x00
00120$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00170$
	ljmp	00115$
00170$:
;	8052Explorer.c:216: printf_tiny(":10");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_74
	push	acc
	mov	a,#(___str_74 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:217: checksum = 0x10;
	mov	r2,#0x10
	mov	r3,#0x00
;	8052Explorer.c:218: if (indirizzo < 0x10) {
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:219: printf_tiny("000%x", indirizzo);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_75
	push	acc
	mov	a,#(___str_75 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	ljmp	00109$
00108$:
;	8052Explorer.c:220: } else if (indirizzo < 0x100) {
	mov	a,#0x100 - 0x01
	add	a,r5
	jc	00105$
;	8052Explorer.c:221: printf_tiny("00%x", indirizzo);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	sjmp	00109$
00105$:
;	8052Explorer.c:222: } else if (indirizzo < 0x1000) {
	mov	a,#0x100 - 0x10
	add	a,r5
	jc	00102$
;	8052Explorer.c:223: printf_tiny("0%x", indirizzo);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_77
	push	acc
	mov	a,#(___str_77 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	sjmp	00109$
00102$:
;	8052Explorer.c:225: printf_tiny("%x", indirizzo);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_78
	push	acc
	mov	a,#(___str_78 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
00109$:
;	8052Explorer.c:227: checksum += (indirizzo >> 8 ) & 0xFF ;
	mov	ar5,r7
	mov	r4,#0x00
	mov	a,r5
	add	a,r2
	mov	r5,a
	mov	a,r4
	addc	a,r3
	mov	r4,a
;	8052Explorer.c:228: checksum += (indirizzo & 0xFF);
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
;	8052Explorer.c:229: printf_tiny("00");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_79
	push	acc
	mov	a,#(___str_79 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:232: for (unsigned char posto = 0; posto < 16; posto++) {
	mov	r3,#0x00
00117$:
	cjne	r3,#0x10,00174$
00174$:
	jc	00175$
	ljmp	00112$
00175$:
;	8052Explorer.c:233: unsigned char lettura = readEeprom(indirizzo+(unsigned short)posto);
	mov	ar1,r3
	mov	r2,#0x00
	mov	a,r1
	add	a,r6
	mov	dpl,a
	mov	a,r2
	addc	a,r7
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_readEeprom
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:234: if ( lettura < 0x10 ) {
	cjne	r2,#0x10,00176$
00176$:
	jnc	00111$
;	8052Explorer.c:235: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00111$:
;	8052Explorer.c:237: printf_tiny("%x", lettura);
	mov	ar1,r2
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar1
	push	ar2
	mov	a,#___str_78
	push	acc
	mov	a,#(___str_78 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:238: checksum += lettura;
	mov	a,r1
	add	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
;	8052Explorer.c:232: for (unsigned char posto = 0; posto < 16; posto++) {
	inc	r3
	ljmp	00117$
00112$:
;	8052Explorer.c:241: checksum = ((~checksum) & 0xFF);
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,r4
	cpl	a
	mov	r4,#0x00
;	8052Explorer.c:242: checksum++;
	inc	r5
	cjne	r5,#0x00,00178$
	inc	r4
00178$:
;	8052Explorer.c:243: if ( (checksum & 0xFF) < 16 ) {
	mov	ar2,r5
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	subb	a,#0x00
	jnc	00114$
;	8052Explorer.c:244: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00114$:
;	8052Explorer.c:246: printf_tiny("%x\r", checksum & 0xFF);
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_80
	push	acc
	mov	a,#(___str_80 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	8052Explorer.c:215: for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	ljmp	00120$
00115$:
;	8052Explorer.c:248: printf_tiny("%s", ":00000001FF");
	mov	a,#___str_82
	push	acc
	mov	a,#(___str_82 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_81
	push	acc
	mov	a,#(___str_81 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8052Explorer.c:249: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	8052Explorer.c:250: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:252: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'dumpCODE'
;------------------------------------------------------------
;puntatore                 Allocated to registers 
;indirizzo                 Allocated with name '_dumpCODE_indirizzo_131072_58'
;posto                     Allocated with name '_dumpCODE_posto_262144_64'
;posto                     Allocated with name '_dumpCODE_posto_262144_67'
;------------------------------------------------------------
;	8052Explorer.c:255: void dumpCODE () {
;	-----------------------------------------
;	 function dumpCODE
;	-----------------------------------------
_dumpCODE:
;	8052Explorer.c:256: unsigned char *puntatore = codice;
	mov	r5,#_codice
	mov	r6,#(_codice >> 8)
	mov	r7,#0x80
;	8052Explorer.c:258: puts("Dumping code:");
	mov	dptr,#___str_83
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_puts
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:259: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	clr	a
	mov	_dumpCODE_indirizzo_131072_58,a
	mov	(_dumpCODE_indirizzo_131072_58 + 1),a
00126$:
	clr	c
	mov	a,#0xff
	subb	a,_dumpCODE_indirizzo_131072_58
	mov	a,#0x2f
	subb	a,(_dumpCODE_indirizzo_131072_58 + 1)
	jnc	00188$
	ljmp	00118$
00188$:
;	8052Explorer.c:260: if (indirizzo < 0x10) {
	clr	c
	mov	a,_dumpCODE_indirizzo_131072_58
	subb	a,#0x10
	mov	a,(_dumpCODE_indirizzo_131072_58 + 1)
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:261: printf_tiny("000%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpCODE_indirizzo_131072_58
	push	(_dumpCODE_indirizzo_131072_58 + 1)
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00108$:
;	8052Explorer.c:262: } else if (indirizzo < 0x100) {
	mov	a,#0x100 - 0x01
	add	a,(_dumpCODE_indirizzo_131072_58 + 1)
	jc	00105$
;	8052Explorer.c:263: printf_tiny("00%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpCODE_indirizzo_131072_58
	push	(_dumpCODE_indirizzo_131072_58 + 1)
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00105$:
;	8052Explorer.c:264: } else if (indirizzo < 0x1000) {
	mov	a,#0x100 - 0x10
	add	a,(_dumpCODE_indirizzo_131072_58 + 1)
	jc	00102$
;	8052Explorer.c:265: printf_tiny("0%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpCODE_indirizzo_131072_58
	push	(_dumpCODE_indirizzo_131072_58 + 1)
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00102$:
;	8052Explorer.c:267: printf_tiny("%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpCODE_indirizzo_131072_58
	push	(_dumpCODE_indirizzo_131072_58 + 1)
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:269: for (unsigned int posto = 0; posto < 16; posto++ ) {
00136$:
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	clr	a
	mov	_dumpCODE_posto_262144_64,a
	mov	(_dumpCODE_posto_262144_64 + 1),a
00120$:
	clr	c
	mov	a,_dumpCODE_posto_262144_64
	subb	a,#0x10
	mov	a,(_dumpCODE_posto_262144_64 + 1)
	subb	a,#0x00
	jnc	00112$
;	8052Explorer.c:270: if ( *puntatore < 16 ) {
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x10,00193$
00193$:
	jnc	00111$
;	8052Explorer.c:271: putchar('0');
	mov	dptr,#0x0030
	push	ar2
	push	ar1
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar1
	pop	ar2
00111$:
;	8052Explorer.c:273: printf_tiny("%x ", *puntatore);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	r3,#0x00
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar3
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
;	8052Explorer.c:274: puntatore++;
;	8052Explorer.c:269: for (unsigned int posto = 0; posto < 16; posto++ ) {
	inc	_dumpCODE_posto_262144_64
	clr	a
	cjne	a,_dumpCODE_posto_262144_64,00120$
	inc	(_dumpCODE_posto_262144_64 + 1)
	sjmp	00120$
00112$:
;	8052Explorer.c:276: printf_tiny(" |");
	push	ar2
	push	ar1
	push	ar0
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
;	8052Explorer.c:277: puntatore -= 16;
	mov	a,r0
	add	a,#0xf0
	mov	r4,a
	mov	a,r1
	addc	a,#0xff
	mov	r3,a
;	8052Explorer.c:278: for (unsigned char posto = 0; posto < 16; posto++ ) {
	mov	_dumpCODE_posto_262144_67,#0x00
00123$:
	mov	a,#0x100 - 0x10
	add	a,_dumpCODE_posto_262144_67
	jc	00142$
;	8052Explorer.c:279: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x20,00197$
00197$:
	jc	00113$
	mov	a,r0
	add	a,#0xff - 0x7e
	jnc	00114$
00113$:
;	8052Explorer.c:280: putchar('.');
	mov	dptr,#0x002e
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00115$
00114$:
;	8052Explorer.c:282: printf_tiny("%c", *puntatore);
	mov	r1,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_72
	push	acc
	mov	a,#(___str_72 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
00115$:
;	8052Explorer.c:284: puntatore++;
	inc	r4
	cjne	r4,#0x00,00200$
	inc	r3
00200$:
;	8052Explorer.c:278: for (unsigned char posto = 0; posto < 16; posto++ ) {
	inc	_dumpCODE_posto_262144_67
	sjmp	00123$
00142$:
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
;	8052Explorer.c:286: putchar('|');
	mov	dptr,#0x007c
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	8052Explorer.c:287: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:259: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	mov	a,#0x10
	add	a,_dumpCODE_indirizzo_131072_58
	mov	_dumpCODE_indirizzo_131072_58,a
	clr	a
	addc	a,(_dumpCODE_indirizzo_131072_58 + 1)
	mov	(_dumpCODE_indirizzo_131072_58 + 1),a
	ljmp	00126$
00118$:
;	8052Explorer.c:289: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:291: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'dumpRAM'
;------------------------------------------------------------
;puntatore                 Allocated to registers 
;indirizzo                 Allocated with name '_dumpRAM_indirizzo_131072_72'
;posto                     Allocated with name '_dumpRAM_posto_262144_78'
;posto                     Allocated with name '_dumpRAM_posto_262144_81'
;------------------------------------------------------------
;	8052Explorer.c:293: void dumpRAM () {
;	-----------------------------------------
;	 function dumpRAM
;	-----------------------------------------
_dumpRAM:
;	8052Explorer.c:294: unsigned char *puntatore = dati;
	mov	r5,#_dati
	mov	r6,#0x00
	mov	r7,#0x40
;	8052Explorer.c:296: puts("Dumping ram memory:");
	mov	dptr,#___str_84
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_puts
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:297: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
	clr	a
	mov	_dumpRAM_indirizzo_131072_72,a
	mov	(_dumpRAM_indirizzo_131072_72 + 1),a
00126$:
	clr	c
	mov	a,#0xff
	subb	a,_dumpRAM_indirizzo_131072_72
	clr	a
	subb	a,(_dumpRAM_indirizzo_131072_72 + 1)
	jnc	00188$
	ljmp	00118$
00188$:
;	8052Explorer.c:298: if (indirizzo < 0x10) {
	clr	c
	mov	a,_dumpRAM_indirizzo_131072_72
	subb	a,#0x10
	mov	a,(_dumpRAM_indirizzo_131072_72 + 1)
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:299: printf_tiny("000%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_72
	push	(_dumpRAM_indirizzo_131072_72 + 1)
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00108$:
;	8052Explorer.c:300: } else if (indirizzo < 0x100) {
	mov	a,#0x100 - 0x01
	add	a,(_dumpRAM_indirizzo_131072_72 + 1)
	jc	00105$
;	8052Explorer.c:301: printf_tiny("00%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_72
	push	(_dumpRAM_indirizzo_131072_72 + 1)
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00105$:
;	8052Explorer.c:302: } else if (indirizzo < 0x1000) {
	mov	a,#0x100 - 0x10
	add	a,(_dumpRAM_indirizzo_131072_72 + 1)
	jc	00102$
;	8052Explorer.c:303: printf_tiny("0%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_72
	push	(_dumpRAM_indirizzo_131072_72 + 1)
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00102$:
;	8052Explorer.c:305: printf_tiny("%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_72
	push	(_dumpRAM_indirizzo_131072_72 + 1)
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:307: for (unsigned int posto = 0; posto < 16; posto++ ) {
00136$:
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	clr	a
	mov	_dumpRAM_posto_262144_78,a
	mov	(_dumpRAM_posto_262144_78 + 1),a
00120$:
	clr	c
	mov	a,_dumpRAM_posto_262144_78
	subb	a,#0x10
	mov	a,(_dumpRAM_posto_262144_78 + 1)
	subb	a,#0x00
	jnc	00112$
;	8052Explorer.c:308: if ( *puntatore < 16 ) {
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x10,00193$
00193$:
	jnc	00111$
;	8052Explorer.c:309: putchar('0');
	mov	dptr,#0x0030
	push	ar2
	push	ar1
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar1
	pop	ar2
00111$:
;	8052Explorer.c:311: printf_tiny("%x ", *puntatore);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	r3,#0x00
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar3
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
;	8052Explorer.c:312: puntatore++;
;	8052Explorer.c:307: for (unsigned int posto = 0; posto < 16; posto++ ) {
	inc	_dumpRAM_posto_262144_78
	clr	a
	cjne	a,_dumpRAM_posto_262144_78,00120$
	inc	(_dumpRAM_posto_262144_78 + 1)
	sjmp	00120$
00112$:
;	8052Explorer.c:314: printf_tiny(" |");
	push	ar2
	push	ar1
	push	ar0
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
;	8052Explorer.c:315: puntatore -= 16;
	mov	a,r0
	add	a,#0xf0
	mov	r4,a
	mov	a,r1
	addc	a,#0xff
	mov	r3,a
;	8052Explorer.c:316: for (unsigned char posto = 0; posto < 16; posto++ ) {
	mov	_dumpRAM_posto_262144_81,#0x00
00123$:
	mov	a,#0x100 - 0x10
	add	a,_dumpRAM_posto_262144_81
	jc	00142$
;	8052Explorer.c:317: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x20,00197$
00197$:
	jc	00113$
	mov	a,r0
	add	a,#0xff - 0x7e
	jnc	00114$
00113$:
;	8052Explorer.c:318: putchar('.');
	mov	dptr,#0x002e
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00115$
00114$:
;	8052Explorer.c:320: printf_tiny("%c", *puntatore);
	mov	r1,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_72
	push	acc
	mov	a,#(___str_72 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
00115$:
;	8052Explorer.c:322: puntatore++;
	inc	r4
	cjne	r4,#0x00,00200$
	inc	r3
00200$:
;	8052Explorer.c:316: for (unsigned char posto = 0; posto < 16; posto++ ) {
	inc	_dumpRAM_posto_262144_81
	sjmp	00123$
00142$:
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
;	8052Explorer.c:324: putchar('|');
	mov	dptr,#0x007c
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	8052Explorer.c:325: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:297: for (unsigned int indirizzo = 0; indirizzo <= 0xFF; indirizzo += 16 ) {
	mov	a,#0x10
	add	a,_dumpRAM_indirizzo_131072_72
	mov	_dumpRAM_indirizzo_131072_72,a
	clr	a
	addc	a,(_dumpRAM_indirizzo_131072_72 + 1)
	mov	(_dumpRAM_indirizzo_131072_72 + 1),a
	ljmp	00126$
00118$:
;	8052Explorer.c:327: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:329: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'hexCODE'
;------------------------------------------------------------
;puntatore                 Allocated with name '_hexCODE_puntatore_65536_85'
;checksum                  Allocated with name '_hexCODE_checksum_65537_86'
;indirizzo                 Allocated to registers r3 r4 
;posto                     Allocated to registers r0 
;------------------------------------------------------------
;	8052Explorer.c:331: void hexCODE(){
;	-----------------------------------------
;	 function hexCODE
;	-----------------------------------------
_hexCODE:
;	8052Explorer.c:332: unsigned char *puntatore = codice;
	mov	_hexCODE_puntatore_65536_85,#_codice
	mov	(_hexCODE_puntatore_65536_85 + 1),#(_codice >> 8)
	mov	(_hexCODE_puntatore_65536_85 + 2),#0x80
;	8052Explorer.c:336: puts("Dumping code in hex file format:");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:339: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	mov	r3,#0x00
	mov	r4,#0x00
00120$:
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0x2f
	subb	a,r4
	jnc	00171$
	ljmp	00115$
00171$:
;	8052Explorer.c:340: printf_tiny(":10");
	push	ar4
	push	ar3
	mov	a,#___str_74
	push	acc
	mov	a,#(___str_74 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
;	8052Explorer.c:341: checksum = 0x10;
	mov	r1,#0x10
	mov	r2,#0x00
;	8052Explorer.c:342: if (indirizzo < 0x10) {
	clr	c
	mov	a,r3
	subb	a,#0x10
	mov	a,r4
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:343: printf_tiny("000%x", indirizzo);
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar3
	push	ar4
	mov	a,#___str_75
	push	acc
	mov	a,#(___str_75 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	ljmp	00109$
00108$:
;	8052Explorer.c:344: } else if (indirizzo < 0x100) {
	mov	a,#0x100 - 0x01
	add	a,r4
	jc	00105$
;	8052Explorer.c:345: printf_tiny("00%x", indirizzo);
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar3
	push	ar4
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00109$
00105$:
;	8052Explorer.c:346: } else if (indirizzo < 0x1000) {
	mov	a,#0x100 - 0x10
	add	a,r4
	jc	00102$
;	8052Explorer.c:347: printf_tiny("0%x", indirizzo);
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar3
	push	ar4
	mov	a,#___str_77
	push	acc
	mov	a,#(___str_77 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00109$
00102$:
;	8052Explorer.c:349: printf_tiny("%x", indirizzo);
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar3
	push	ar4
	mov	a,#___str_78
	push	acc
	mov	a,#(___str_78 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00109$:
;	8052Explorer.c:351: checksum += (indirizzo >> 8 ) & 0xFF ;
	mov	ar0,r4
	mov	ar7,r0
	mov	r0,#0x00
	mov	a,r7
	add	a,r1
	mov	r7,a
	mov	a,r0
	addc	a,r2
	mov	r0,a
;	8052Explorer.c:352: checksum += (indirizzo & 0xFF);
	mov	ar5,r3
	mov	r6,#0x00
	mov	a,r5
	add	a,r7
	mov	_hexCODE_checksum_65537_86,a
	mov	a,r6
	addc	a,r0
	mov	(_hexCODE_checksum_65537_86 + 1),a
;	8052Explorer.c:353: printf_tiny("00");
	push	ar4
	push	ar3
	mov	a,#___str_79
	push	acc
	mov	a,#(___str_79 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
;	8052Explorer.c:355: for (unsigned char posto = 0; posto < 16; posto++ ) {
	mov	r5,_hexCODE_puntatore_65536_85
	mov	r2,(_hexCODE_puntatore_65536_85 + 1)
	mov	r1,(_hexCODE_puntatore_65536_85 + 2)
	mov	r0,#0x00
00117$:
	cjne	r0,#0x10,00175$
00175$:
	jc	00176$
	ljmp	00133$
00176$:
;	8052Explorer.c:356: if ( *puntatore < 16 ) {
	mov	dpl,r5
	mov	dph,r2
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x10,00177$
00177$:
	jnc	00111$
;	8052Explorer.c:357: putchar('0');
	mov	dptr,#0x0030
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00111$:
;	8052Explorer.c:359: printf_tiny("%x", *puntatore);
	mov	dpl,r5
	mov	dph,r2
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar7
	push	ar6
	mov	a,#___str_78
	push	acc
	mov	a,#(___str_78 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	8052Explorer.c:360: checksum += *puntatore;
	mov	dpl,r5
	mov	dph,r2
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r5,dpl
	mov	r2,dph
	mov	r6,#0x00
	mov	a,r7
	add	a,_hexCODE_checksum_65537_86
	mov	_hexCODE_checksum_65537_86,a
	mov	a,r6
	addc	a,(_hexCODE_checksum_65537_86 + 1)
	mov	(_hexCODE_checksum_65537_86 + 1),a
;	8052Explorer.c:361: puntatore++;
;	8052Explorer.c:355: for (unsigned char posto = 0; posto < 16; posto++ ) {
	inc	r0
	ljmp	00117$
00133$:
	mov	_hexCODE_puntatore_65536_85,r5
	mov	(_hexCODE_puntatore_65536_85 + 1),r2
	mov	(_hexCODE_puntatore_65536_85 + 2),r1
;	8052Explorer.c:363: checksum = ((~checksum) & 0xFF);
	mov	a,_hexCODE_checksum_65537_86
	cpl	a
	mov	r6,a
	mov	a,(_hexCODE_checksum_65537_86 + 1)
	cpl	a
	mov	r7,#0x00
;	8052Explorer.c:364: checksum++;
	inc	r6
	cjne	r6,#0x00,00179$
	inc	r7
00179$:
;	8052Explorer.c:365: if ( (checksum & 0xFF) < 16 ) {
	mov	ar2,r6
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r5
	subb	a,#0x00
	jnc	00114$
;	8052Explorer.c:366: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
00114$:
;	8052Explorer.c:368: printf_tiny("%x\r", checksum & 0xFF);
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_80
	push	acc
	mov	a,#(___str_80 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
;	8052Explorer.c:339: for (unsigned int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	ljmp	00120$
00115$:
;	8052Explorer.c:370: printf_tiny("%s", ":00000001FF");
	mov	a,#___str_82
	push	acc
	mov	a,#(___str_82 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_81
	push	acc
	mov	a,#(___str_81 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8052Explorer.c:372: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	8052Explorer.c:373: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:374: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;	8052Explorer.c:376: void reset( void ) {
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	8052Explorer.c:377: puts("Resetting the micro.");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:383: while ( 1 );
00102$:
;	8052Explorer.c:384: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'start'
;------------------------------------------------------------
;	8052Explorer.c:386: void start( void )
;	-----------------------------------------
;	 function start
;	-----------------------------------------
_start:
;	8052Explorer.c:389: WDTCON |= 0xE0; // 2048 ms at 12MHz
	orl	_WDTCON,#0xe0
;	8052Explorer.c:390: WDTCON |= 0x8; // no hardware pin low on reset
	orl	_WDTCON,#0x08
;	8052Explorer.c:391: WDTCON |= 0x4; // enable Watchdog
	orl	_WDTCON,#0x04
;	8052Explorer.c:392: WDTRST = 0x1E;
	mov	_WDTRST,#0x1e
;	8052Explorer.c:393: WDTRST = 0xE1;
	mov	_WDTRST,#0xe1
;	8052Explorer.c:397: CLKREG |= CLKREG_X2;
	orl	_CLKREG,#0x01
;	8052Explorer.c:402: P0=0xFF;
	mov	_P0,#0xff
;	8052Explorer.c:403: P1=0xFF;
	mov	_P1,#0xff
;	8052Explorer.c:404: P2=0xFF;
	mov	_P2,#0xff
;	8052Explorer.c:405: P3=0xFF;
	mov	_P3,#0xff
;	8052Explorer.c:406: init_ser(MYTH2, MYTL2);
	mov	_init_ser_PARM_2,#0xfa
	mov	dpl,#0xff
	lcall	_init_ser
;	8052Explorer.c:407: felix();
	lcall	_felix
;	8052Explorer.c:408: printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
	mov	a,#___str_89
	push	acc
	mov	a,#(___str_89 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_88
	push	acc
	mov	a,#(___str_88 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_87
	push	acc
	mov	a,#(___str_87 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	8052Explorer.c:410: if (CLKREG & CLKREG_X2) {
	mov	a,_CLKREG
	jnb	acc.0,00102$
;	8052Explorer.c:411: puts("Double system clock");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_puts
00102$:
;	8052Explorer.c:415: if (PCON & 0x10) {
	mov	a,_PCON
	jnb	acc.4,00104$
;	8052Explorer.c:416: puts("Cold reset");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:417: PCON &= ~0x10;
	anl	_PCON,#0xef
	sjmp	00105$
00104$:
;	8052Explorer.c:419: puts("Warm reset");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_puts
00105$:
;	8052Explorer.c:423: puts("Enabled watchdog");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:425: printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
	mov	a,#0xfa
	push	acc
	clr	a
	push	acc
	dec	a
	push	acc
	clr	a
	push	acc
	mov	a,#___str_94
	push	acc
	mov	a,#(___str_94 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	8052Explorer.c:426: printf_tiny("Started serial at %s bps\r", BPS);
	mov	a,#___str_96
	push	acc
	mov	a,#(___str_96 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_95
	push	acc
	mov	a,#(___str_95 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8052Explorer.c:427: init_timer0(0xDE, 0xED);
	mov	_init_timer0_PARM_2,#0xed
	mov	dpl,#0xde
	lcall	_init_timer0
;	8052Explorer.c:428: printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
	mov	a,#0xed
	push	acc
	clr	a
	push	acc
	mov	a,#0xde
	push	acc
	clr	a
	push	acc
	mov	a,#___str_97
	push	acc
	mov	a,#(___str_97 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	8052Explorer.c:430: puts("Print a string from code memory:");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:431: puts(acTestString); 
	mov	dptr,#_acTestString
	mov	b,#0x80
;	8052Explorer.c:432: }
	ljmp	_puts
;------------------------------------------------------------
;Allocation info for local variables in function 'p'
;------------------------------------------------------------
;porta                     Allocated to registers r7 
;pin                       Allocated with name '_p_pin_65537_110'
;action                    Allocated to registers r5 
;------------------------------------------------------------
;	8052Explorer.c:434: void p( unsigned char porta ) {
;	-----------------------------------------
;	 function p
;	-----------------------------------------
_p:
	mov	r7,dpl
;	8052Explorer.c:435: if (porta == 3 ) {
	clr	a
	cjne	r7,#0x03,00255$
	inc	a
00255$:
	mov	r6,a
	jz	00105$
;	8052Explorer.c:436: printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_101
	push	acc
	mov	a,#(___str_101 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00107$
00105$:
;	8052Explorer.c:437: } else if (porta == 2 ) {
	cjne	r7,#0x02,00102$
;	8052Explorer.c:438: printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_102
	push	acc
	mov	a,#(___str_102 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00107$
00102$:
;	8052Explorer.c:440: printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_103
	push	acc
	mov	a,#(___str_103 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	8052Explorer.c:442: while (!ser_byte_avail()){
00107$:
	push	ar7
	push	ar6
	lcall	_ser_byte_avail
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00107$
;	8052Explorer.c:445: unsigned char pin = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	8052Explorer.c:446: pin = pin - 48;
	mov	a,r4
	add	a,#0xd0
	mov	_p_pin_65537_110,a
;	8052Explorer.c:447: printf_tiny("Pin %u of port %u: ", pin, porta );
	mov	ar3,r7
	mov	r4,#0x00
	mov	r1,_p_pin_65537_110
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar3
	push	ar4
	push	ar1
	push	ar2
	mov	a,#___str_104
	push	acc
	mov	a,#(___str_104 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	8052Explorer.c:448: if ( pin >= 0 && pin <= 8 ) {
	mov	a,_p_pin_65537_110
	add	a,#0xff - 0x08
	jnc	00261$
	ljmp	00150$
00261$:
;	8052Explorer.c:449: if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
	mov	a,r6
	jz	00144$
	mov	a,_p_pin_65537_110
	jnz	00263$
	ljmp	00145$
00263$:
	mov	a,#0x01
	cjne	a,_p_pin_65537_110,00264$
	ljmp	00145$
00264$:
00144$:
;	8052Explorer.c:450: if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
	clr	a
	cjne	r7,#0x02,00265$
	inc	a
00265$:
	mov	r6,a
	jz	00138$
	mov	a,_p_pin_65537_110
	jnz	00268$
	ljmp	00139$
00268$:
	mov	a,#0x01
	cjne	a,_p_pin_65537_110,00269$
	ljmp	00139$
00269$:
	mov	a,#0x02
	cjne	a,_p_pin_65537_110,00270$
	ljmp	00139$
00270$:
00138$:
;	8052Explorer.c:451: puts("0 off, 1 on.");
	mov	dptr,#___str_105
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_puts
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	8052Explorer.c:452: while (!ser_byte_avail()){
00110$:
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_ser_byte_avail
	mov	a,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	jz	00110$
;	8052Explorer.c:455: unsigned char action = getchar();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_getchar
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	8052Explorer.c:456: action = action -48;
	mov	a,r0
	add	a,#0xd0
;	8052Explorer.c:457: if (action == 0 || action == 1) {
	mov	r5,a
	jz	00134$
	cjne	r5,#0x01,00273$
	sjmp	00274$
00273$:
	ljmp	00135$
00274$:
00134$:
;	8052Explorer.c:458: if (action == 1) {
	cjne	r5,#0x01,00132$
;	8052Explorer.c:459: action = action << pin;
	mov	b,_p_pin_65537_110
	inc	b
	mov	a,r5
	sjmp	00279$
00277$:
	add	a,acc
00279$:
	djnz	b,00277$
;	8052Explorer.c:460: action = ~action;
	cpl	a
	mov	r5,a
;	8052Explorer.c:462: printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	push	ar1
	push	ar2
	mov	a,#___str_106
	push	acc
	mov	a,#(___str_106 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:463: if (0 == porta) {
	mov	a,r7
	jnz	00120$
;	8052Explorer.c:464: P0 &= action;
	mov	a,r5
	anl	_P0,a
	ret
00120$:
;	8052Explorer.c:465: } else if (1 == porta) {
	cjne	r7,#0x01,00117$
;	8052Explorer.c:466: P1 &= action;
	mov	a,r5
	anl	_P1,a
	ret
00117$:
;	8052Explorer.c:467: } else if (2 == porta) {
	mov	a,r6
	jz	00114$
;	8052Explorer.c:468: P2 &= action;
	mov	a,r5
	anl	_P2,a
	ret
00114$:
;	8052Explorer.c:470: P3 &= action;
	mov	a,r5
	anl	_P3,a
	ret
00132$:
;	8052Explorer.c:475: action = action << pin;
	mov	b,_p_pin_65537_110
	inc	b
	mov	a,#0x01
	sjmp	00286$
00284$:
	add	a,acc
00286$:
	djnz	b,00284$
	mov	r5,a
;	8052Explorer.c:477: printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	push	ar1
	push	ar2
	mov	a,#___str_107
	push	acc
	mov	a,#(___str_107 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:478: if (0 == porta) {
	mov	a,r7
	jnz	00129$
;	8052Explorer.c:479: P0 |= action;
	mov	a,r5
	orl	_P0,a
	ret
00129$:
;	8052Explorer.c:480: } else if (1 == porta) {
	cjne	r7,#0x01,00126$
;	8052Explorer.c:481: P1 |= action;
	mov	a,r5
	orl	_P1,a
	ret
00126$:
;	8052Explorer.c:482: } else if (2 == porta) {
	mov	a,r6
	jz	00123$
;	8052Explorer.c:483: P2 |= action;
	mov	a,r5
	orl	_P2,a
	ret
00123$:
;	8052Explorer.c:485: P3 |= action;
	mov	a,r5
	orl	_P3,a
	ret
00135$:
;	8052Explorer.c:490: puts("Invalid action!");
	mov	dptr,#___str_108
	mov	b,#0x80
	ljmp	_puts
00139$:
;	8052Explorer.c:495: puts("the pin 2 is the serial character receive blink.");
	mov	dptr,#___str_115
	mov	b,#0x80
	ljmp	_puts
00145$:
;	8052Explorer.c:498: puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
	mov	dptr,#___str_112
	mov	b,#0x80
	ljmp	_puts
00150$:
;	8052Explorer.c:501: puts("Invalid pin!");
	mov	dptr,#___str_113
	mov	b,#0x80
;	8052Explorer.c:503: }
	ljmp	_puts
;------------------------------------------------------------
;Allocation info for local variables in function 'HELP'
;------------------------------------------------------------
;	8052Explorer.c:505: void HELP ( void ) {
;	-----------------------------------------
;	 function HELP
;	-----------------------------------------
_HELP:
;	8052Explorer.c:519: puts("h print this help.");
	mov	dptr,#___str_134
	mov	b,#0x80
;	8052Explorer.c:520: }
	ljmp	_puts
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;carattere                 Allocated to registers r6 
;------------------------------------------------------------
;	8052Explorer.c:522: void main( void ) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	8052Explorer.c:523: start();
	lcall	_start
;	8052Explorer.c:524: puts("Insert command, h for help.");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:526: while( 1 )							// forever.
00128$:
;	8052Explorer.c:529: watchdogRESET();
	lcall	_watchdogRESET
;	8052Explorer.c:532: if ( ser_byte_avail() )	{				// if data coming in...
	lcall	_ser_byte_avail
	mov	a,dpl
	jz	00128$
;	8052Explorer.c:533: carattere = getchar();
	lcall	_getchar
	mov	r6,dpl
;	8052Explorer.c:539: if ( carattere >= 0x30 && carattere <= 0x7A ) {
	cjne	r6,#0x30,00217$
00217$:
	mov	_main_sloc0_1_0,c
	jc	00102$
	mov	a,r6
	add	a,#0xff - 0x7a
	jc	00102$
;	8052Explorer.c:540: putchar(carattere);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
00102$:
;	8052Explorer.c:542: putchar('\r');
	mov	dptr,#0x000d
	push	ar6
	lcall	_putchar
	pop	ar6
;	8052Explorer.c:543: switch (carattere)
	cjne	r6,#0x30,00220$
	sjmp	00113$
00220$:
	cjne	r6,#0x31,00221$
	ljmp	00114$
00221$:
	cjne	r6,#0x32,00222$
	ljmp	00115$
00222$:
	cjne	r6,#0x33,00223$
	ljmp	00116$
00223$:
	cjne	r6,#0x43,00224$
	sjmp	00105$
00224$:
	cjne	r6,#0x45,00225$
	sjmp	00107$
00225$:
	cjne	r6,#0x48,00226$
	sjmp	00112$
00226$:
	cjne	r6,#0x63,00227$
	sjmp	00104$
00227$:
	cjne	r6,#0x65,00228$
	sjmp	00106$
00228$:
	cjne	r6,#0x66,00229$
	sjmp	00108$
00229$:
	cjne	r6,#0x68,00230$
	sjmp	00112$
00230$:
	cjne	r6,#0x6d,00231$
	sjmp	00109$
00231$:
;	8052Explorer.c:545: case 'c':
	cjne	r6,#0x72,00117$
	sjmp	00110$
00104$:
;	8052Explorer.c:546: dumpCODE();
	lcall	_dumpCODE
;	8052Explorer.c:547: break;
;	8052Explorer.c:548: case 'C':
	sjmp	00122$
00105$:
;	8052Explorer.c:549: hexCODE();
	lcall	_hexCODE
;	8052Explorer.c:550: break;
;	8052Explorer.c:552: case 'e':
	sjmp	00122$
00106$:
;	8052Explorer.c:553: dumpEEPROM();
	lcall	_dumpEEPROM
;	8052Explorer.c:554: break;
;	8052Explorer.c:555: case 'E':
	sjmp	00122$
00107$:
;	8052Explorer.c:556: hexEEPROM();
	lcall	_hexEEPROM
;	8052Explorer.c:557: break;
;	8052Explorer.c:559: case 'f':
	sjmp	00122$
00108$:
;	8052Explorer.c:560: felix();
	lcall	_felix
;	8052Explorer.c:561: break;
;	8052Explorer.c:562: case 'm':
	sjmp	00122$
00109$:
;	8052Explorer.c:563: dumpRAM();
	lcall	_dumpRAM
;	8052Explorer.c:564: break;
;	8052Explorer.c:566: case 'r':
	sjmp	00122$
00110$:
;	8052Explorer.c:567: reset();
	lcall	_reset
;	8052Explorer.c:568: break;
;	8052Explorer.c:571: case 'H':
	sjmp	00122$
00112$:
;	8052Explorer.c:572: HELP();
	lcall	_HELP
;	8052Explorer.c:573: break;
;	8052Explorer.c:574: case '0':
	sjmp	00122$
00113$:
;	8052Explorer.c:575: p(0);
	mov	dpl,#0x00
	lcall	_p
;	8052Explorer.c:576: break;
;	8052Explorer.c:577: case '1':
	sjmp	00122$
00114$:
;	8052Explorer.c:578: p(1);
	mov	dpl,#0x01
	lcall	_p
;	8052Explorer.c:579: break;
;	8052Explorer.c:580: case '2':
	sjmp	00122$
00115$:
;	8052Explorer.c:581: p(2);
	mov	dpl,#0x02
	lcall	_p
;	8052Explorer.c:582: break;
;	8052Explorer.c:583: case '3':
	sjmp	00122$
00116$:
;	8052Explorer.c:584: p(3);
	mov	dpl,#0x03
	lcall	_p
;	8052Explorer.c:585: break;
;	8052Explorer.c:586: default:
	sjmp	00122$
00117$:
;	8052Explorer.c:587: if ( carattere >= 0x30 && carattere <= 0x7A ) {
	jb	_main_sloc0_1_0,00122$
	mov	a,r6
	add	a,#0xff - 0x7a
	jc	00122$
;	8052Explorer.c:588: printf_tiny("Invalid command %c.\r", carattere );
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_136
	push	acc
	mov	a,#(___str_136 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	8052Explorer.c:591: while ( ser_byte_avail() )	{				// if data coming in...
00122$:
	lcall	_ser_byte_avail
	mov	a,dpl
	jz	00124$
;	8052Explorer.c:592: carattere = getchar();
	lcall	_getchar
	sjmp	00122$
00124$:
;	8052Explorer.c:594: puts("Insert command, h for help:");
	mov	dptr,#___str_137
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:598: }
	ljmp	00128$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_acTestString:
	.ascii "Hello World..."
	.db 0x0d
	.ascii "This is a test string."
	.db 0x0d
	.db 0x00
_codice	=	0x0000
	.area CONST   (CODE)
___str_64:
	.ascii "              iWs                                 ,W["
	.db 0x0a
	.ascii "              W@@W.                              g@@["
	.db 0x0a
	.ascii "             i@@@@@s                           g@@@@W"
	.db 0x0a
	.ascii "             @@@@@@@W.                       ,W@@@@@@"
	.db 0x0a
	.ascii "            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i"
	.db 0x0a
	.ascii "           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@["
	.db 0x0a
	.ascii "           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	.db 0x0a
	.ascii "          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i"
	.db 0x0a
	.ascii "          @@@@@A~          'M@@@@@@A`         'V@@@@@@b"
	.db 0x0a
	.ascii "         d@@@*`              Y@@@@f              V@@@@@."
	.db 0x0a
	.ascii "        i@@A`                 M@@P                 V@@@b"
	.db 0x0a
	.ascii "       ,@@A                   '@@                   !@@@."
	.db 0x0a
	.ascii "       W@P                     @[                    '@@W"
	.db 0x0a
	.ascii "      d@@            ,         ]!                     ]@@b"
	.db 0x0a
	.ascii "     g@@[          ,W@@s       ]       ,W@@s           @@@i"
	.db 0x0a
	.ascii "    i@@@[          W@@@@i      ]       W@@@@i          @@@@i"
	.db 0x0a
	.ascii "   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@"
	.ascii "i"
	.db 0x0a
	.ascii "  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@"
	.ascii "@i"
	.db 0x0a
	.ascii " d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@"
	.ascii "@@i"
	.db 0x0a
	.ascii "W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@"
	.ascii "@@@"
	.db 0x0a
	.ascii "'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@"
	.ascii "@@A"
	.db 0x0a
	.ascii "  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@"
	.ascii "@f"
	.db 0x0a
	.ascii "    'M@    'Vs.          ,z~       'N_           ,Z~     d@P"
	.db 0x0a
	.ascii "   M@@@       ~-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@"
	.db 0x0a
	.ascii "    'VMW                  g@@@@@@@@@W     ~~~          ,WAf"
	.db 0x0a
	.ascii "       ~N.                @@@@@@@@@@@!                ,Z`"
	.db 0x0a
	.ascii "         V.               !M@@@@@@@@f                gf-"
	.db 0x0a
	.ascii "          'N.               '~***f~                ,Z`"
	.db 0x0a
	.ascii "            Vc.                                  _Zf"
	.db 0x0a
	.ascii "              ~e_                             ,gY~"
	.db 0x0a
	.ascii "                'V=_          -@@D         ,gY~ '"
	.db 0x0a
	.ascii "                    ~=__.           ,__z=~`"
	.db 0x0a
	.ascii "                         '~~~*==Y*f~~~ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "Dumping eeprom content and changing first character:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "000%x  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.ascii "00%x  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "0%x  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.ascii "%x  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.ascii "%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.ascii " |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "Dumping eeprom content in hex format:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii ":10"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii "000%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii "00%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "0%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.ascii "%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.ascii "00"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii "%x"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_81:
	.ascii "%s"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_82:
	.ascii ":00000001FF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_83:
	.ascii "Dumping code:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_84:
	.ascii "Dumping ram memory:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_85:
	.ascii "Dumping code in hex file format:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_86:
	.ascii "Resetting the micro."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_87:
	.ascii "Cpu %s running at %sMHz"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_88:
	.ascii "89S8253"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_89:
	.ascii "11.0592"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_90:
	.ascii "Double system clock"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_91:
	.ascii "Cold reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_92:
	.ascii "Warm reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_93:
	.ascii "Enabled watchdog"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_94:
	.ascii "Started timer 2 with th = %x and tl = %x"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_95:
	.ascii "Started serial at %s bps"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_96:
	.ascii "115200"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_97:
	.ascii "Started timer 0 with th = %x and tl = %x"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_100:
	.ascii "Hello World..."
	.db 0x0d
	.ascii "This is a test string."
	.db 0x0a
	.ascii "Print a string from code memory:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_101:
	.ascii "Which pin from 2 to 7 of port %u?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_102:
	.ascii "Which pin from 3 to 7 of port %u?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_103:
	.ascii "Which pin from 0 to 7 of port %u?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_104:
	.ascii "Pin %u of port %u: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_105:
	.ascii "0 off, 1 on."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_106:
	.ascii "Setting pin %u of port %u on."
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_107:
	.ascii "Setting pin %u of port %u off."
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_108:
	.ascii "Invalid action!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_112:
	.ascii "Sorry the pins 0 and 1 of port 3 are used by serial port."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_113:
	.ascii "Invalid pin!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_115:
	.ascii "Sorry the pin 0 on port 2 is the blinking led,"
	.db 0x0a
	.ascii "the pin 1 is the serial character transmit blink,"
	.db 0x0a
	.ascii "the pin 2 is the serial character receive blink."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_134:
	.ascii "Available comamnds are:"
	.db 0x0a
	.ascii "0, 1, 2 or 3 to change pin ports status."
	.db 0x0a
	.ascii "c dump code memory."
	.db 0x0a
	.ascii "C dump code memory in hex format."
	.db 0x0a
	.ascii "e dump eeprom memory."
	.db 0x0a
	.ascii "E dump eeprom memory in hex format."
	.db 0x0a
	.ascii "m dump ram memory."
	.db 0x0a
	.ascii "f print felix"
	.db 0x0a
	.ascii "r reset the microcontroller."
	.db 0x0a
	.ascii "h print this help."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_135:
	.ascii "Insert command, h for help."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_136:
	.ascii "Invalid command %c."
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_137:
	.ascii "Insert command, h for help:"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
