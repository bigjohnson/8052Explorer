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
	.globl _felix
	.globl _fourclockmultiplier
	.globl __sdcc_external_startup
	.globl _printf_tiny
	.globl _putchar
	.globl _getchar
	.globl _puts
	.globl _init_timer0
	.globl _ser_byte_avail
	.globl _init_ser
	.globl _SMOD_1
	.globl _POR
	.globl _EPFI
	.globl _PFI
	.globl _WDIF
	.globl _WTRF
	.globl _EWT
	.globl _RWT
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _SM0_FE_1
	.globl _FE_1
	.globl _SM0_1
	.globl _SM1_1
	.globl _SM2_1
	.globl _REN_1
	.globl _TB8_1
	.globl _RB8_1
	.globl _TI_1
	.globl _RI_1
	.globl _SM0_FE_0
	.globl _FE_0
	.globl _SM0_0
	.globl _SM1_0
	.globl _SM2_0
	.globl _REN_0
	.globl _TB8_0
	.globl _RB8_0
	.globl _TI_0
	.globl _RI_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _INT5
	.globl _INT4
	.globl _INT3
	.globl _INT2
	.globl _TXD1
	.globl _RXD1
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
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _LPS1
	.globl _LPT2
	.globl _LPS0
	.globl _LPT1
	.globl _LPX1
	.globl _LPT0
	.globl _LPX0
	.globl _PS1
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES1
	.globl _ET2
	.globl _ES0
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _LPWDI
	.globl _LPX5
	.globl _LPX4
	.globl _LPX3
	.globl _LPX2
	.globl _EWDI
	.globl _EX5
	.globl _EX4
	.globl _EX3
	.globl _EX2
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _FL
	.globl _SCK
	.globl _MISO
	.globl _MOSI
	.globl _SS
	.globl _WDCON
	.globl _TMOD
	.globl _TL2
	.globl _TL1
	.globl _TL0
	.globl _TH2
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _TA
	.globl _T2MOD
	.globl _T2CON
	.globl _STATUS
	.globl _SP
	.globl _SCON1
	.globl _SCON0
	.globl _SCON
	.globl _SBUF1
	.globl _SBUF0
	.globl _SBUF
	.globl _SADEN1
	.globl _SADEN0
	.globl _SADDR1
	.globl _SADDR0
	.globl _ROMSIZE
	.globl _RCAP2L
	.globl _RCAP2H
	.globl _PSW
	.globl _PMR
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _MD2
	.globl _MD1
	.globl _MD0
	.globl _IP1
	.globl _IP0
	.globl _IP
	.globl _IE
	.globl _FCNTL
	.globl _EXIF
	.globl _EIP1
	.globl _EIP0
	.globl _EIE
	.globl _DPS
	.globl _DP1L
	.globl _DPL1
	.globl _DP0L
	.globl _DPL
	.globl _DP1H
	.globl _DPH1
	.globl _DP0H
	.globl _DPH
	.globl _CKMOD
	.globl _CKCON
	.globl _B
	.globl _ACON
	.globl _ACC
	.globl _ALE
	.globl _A
	.globl _SPCR
	.globl _SADEN
	.globl _IPH
	.globl _SPSR
	.globl _SADDR
	.globl _WDTCON
	.globl _WDTRST
	.globl _EECON
	.globl _CLKREG
	.globl _AUXR
	.globl _SPDR
	.globl _dati
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SPDR	=	0x0086
_AUXR	=	0x008e
_CLKREG	=	0x008f
_EECON	=	0x0096
_WDTRST	=	0x00a6
_WDTCON	=	0x00a7
_SADDR	=	0x00a9
_SPSR	=	0x00aa
_IPH	=	0x00b7
_SADEN	=	0x00b9
_SPCR	=	0x00d5
_A	=	0x00e0
_ALE	=	0x008e
_ACC	=	0x00e0
_ACON	=	0x009d
_B	=	0x00f0
_CKCON	=	0x008e
_CKMOD	=	0x0096
_DPH	=	0x0083
_DP0H	=	0x0083
_DPH1	=	0x0085
_DP1H	=	0x0085
_DPL	=	0x0082
_DP0L	=	0x0082
_DPL1	=	0x0084
_DP1L	=	0x0084
_DPS	=	0x0086
_EIE	=	0x00e8
_EIP0	=	0x00f8
_EIP1	=	0x00f1
_EXIF	=	0x0091
_FCNTL	=	0x00d5
_IE	=	0x00a8
_IP	=	0x00b8
_IP0	=	0x00b8
_IP1	=	0x00b1
_MD0	=	0x00e9
_MD1	=	0x00ea
_MD2	=	0x00eb
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PMR	=	0x00c4
_PSW	=	0x00d0
_RCAP2H	=	0x00cb
_RCAP2L	=	0x00ca
_ROMSIZE	=	0x00c2
_SADDR0	=	0x00a9
_SADDR1	=	0x00aa
_SADEN0	=	0x00b9
_SADEN1	=	0x00ba
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SBUF1	=	0x00c1
_SCON	=	0x0098
_SCON0	=	0x0098
_SCON1	=	0x00c0
_SP	=	0x0081
_STATUS	=	0x00c5
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_TA	=	0x00c7
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TH2	=	0x00cd
_TL0	=	0x008a
_TL1	=	0x008b
_TL2	=	0x00cc
_TMOD	=	0x0089
_WDCON	=	0x00d8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SS	=	0x0094
_MOSI	=	0x0095
_MISO	=	0x0096
_SCK	=	0x0097
_FL	=	0x00d1
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX2	=	0x00e8
_EX3	=	0x00e9
_EX4	=	0x00ea
_EX5	=	0x00eb
_EWDI	=	0x00ec
_LPX2	=	0x00f8
_LPX3	=	0x00f9
_LPX4	=	0x00fa
_LPX5	=	0x00fb
_LPWDI	=	0x00fc
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ES0	=	0x00ac
_ET2	=	0x00ad
_ES1	=	0x00ae
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_PS1	=	0x00be
_LPX0	=	0x00b8
_LPT0	=	0x00b9
_LPX1	=	0x00ba
_LPT1	=	0x00bb
_LPS0	=	0x00bc
_LPT2	=	0x00bd
_LPS1	=	0x00be
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
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
_RXD1	=	0x0092
_TXD1	=	0x0093
_INT2	=	0x0094
_INT3	=	0x0095
_INT4	=	0x0096
_INT5	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_RI_0	=	0x0098
_TI_0	=	0x0099
_RB8_0	=	0x009a
_TB8_0	=	0x009b
_REN_0	=	0x009c
_SM2_0	=	0x009d
_SM1_0	=	0x009e
_SM0_0	=	0x009f
_FE_0	=	0x009f
_SM0_FE_0	=	0x009f
_RI_1	=	0x00c0
_TI_1	=	0x00c1
_RB8_1	=	0x00c2
_TB8_1	=	0x00c3
_REN_1	=	0x00c4
_SM2_1	=	0x00c5
_SM1_1	=	0x00c6
_SM0_1	=	0x00c7
_FE_1	=	0x00c7
_SM0_FE_1	=	0x00c7
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_RWT	=	0x00d8
_EWT	=	0x00d9
_WTRF	=	0x00da
_WDIF	=	0x00db
_PFI	=	0x00dc
_EPFI	=	0x00dd
_POR	=	0x00de
_SMOD_1	=	0x00df
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
_dumpCODE_indirizzo_131072_33:
	.ds 4
_dumpCODE_posto_262144_39:
	.ds 2
_dumpCODE_posto_262144_42:
	.ds 1
_dumpRAM_indirizzo_131072_47:
	.ds 2
_dumpRAM_posto_262144_53:
	.ds 2
_dumpRAM_posto_262144_56:
	.ds 1
_hexCODE_puntatore_65536_60:
	.ds 3
_hexCODE_checksum_65537_61:
	.ds 2
_hexCODE_indirizzo_131073_62:
	.ds 4
_hexCODE_posto_262145_68:
	.ds 1
_p_pin_65537_82:
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
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	8052Explorer.c:117: _sdcc_external_startup() {
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	8052Explorer.c:118: PMR |= 1; //Enable internal SRAM Data Memory at adress 0000
	orl	_PMR,#0x01
;	8052Explorer.c:119: return 0;
	mov	dptr,#0x0000
;	8052Explorer.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fourclockmultiplier'
;------------------------------------------------------------
;	8052Explorer.c:122: void fourclockmultiplier(void) {
;	-----------------------------------------
;	 function fourclockmultiplier
;	-----------------------------------------
_fourclockmultiplier:
;	8052Explorer.c:124: PMR |= 8; /* Clock Multiplier Selection. This bit selects the clock multiplication factor as shown. 4X/2X = 0
	orl	_PMR,#0x08
;	8052Explorer.c:132: PMR |= 16; /* Crystal Multiplier Enable. This bit enables (= 1) or disables (= 0) the crystal multiplier function.
	orl	_PMR,#0x10
;	8052Explorer.c:142: while (!(EXIF & 8)) {}; /* Clock Ready. This bit indicates the status of the startup period for the crystal oscillator or crystal
00101$:
	mov	a,_EXIF
	jnb	acc.3,00101$
;	8052Explorer.c:149: PMR &= 63; // enable Crystal multiplier (4X or 2X mode as determined by PMR.3)
	anl	_PMR,#0x3f
;	8052Explorer.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'felix'
;------------------------------------------------------------
;	8052Explorer.c:185: void felix (void) {
;	-----------------------------------------
;	 function felix
;	-----------------------------------------
_felix:
;	8052Explorer.c:186: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	8052Explorer.c:219: puts("                         '~~~*==Y*f~~~ ");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:220: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:221: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'dumpCODE'
;------------------------------------------------------------
;puntatore                 Allocated to registers 
;indirizzo                 Allocated with name '_dumpCODE_indirizzo_131072_33'
;posto                     Allocated with name '_dumpCODE_posto_262144_39'
;posto                     Allocated with name '_dumpCODE_posto_262144_42'
;------------------------------------------------------------
;	8052Explorer.c:314: void dumpCODE () {
;	-----------------------------------------
;	 function dumpCODE
;	-----------------------------------------
_dumpCODE:
;	8052Explorer.c:315: unsigned char *puntatore = codice;
	mov	r5,#_codice
	mov	r6,#(_codice >> 8)
	mov	r7,#0x80
;	8052Explorer.c:317: puts("Dumping code:");
	mov	dptr,#___str_65
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_puts
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:318: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	clr	a
	mov	_dumpCODE_indirizzo_131072_33,a
	mov	(_dumpCODE_indirizzo_131072_33 + 1),a
	mov	(_dumpCODE_indirizzo_131072_33 + 2),a
	mov	(_dumpCODE_indirizzo_131072_33 + 3),a
00126$:
	clr	c
	mov	a,#0xff
	subb	a,_dumpCODE_indirizzo_131072_33
	mov	a,#0xff
	subb	a,(_dumpCODE_indirizzo_131072_33 + 1)
	clr	a
	subb	a,(_dumpCODE_indirizzo_131072_33 + 2)
	clr	a
	subb	a,(_dumpCODE_indirizzo_131072_33 + 3)
	jnc	00188$
	ljmp	00118$
00188$:
;	8052Explorer.c:319: if (indirizzo < 0x10) {
	clr	c
	mov	a,_dumpCODE_indirizzo_131072_33
	subb	a,#0x10
	mov	a,(_dumpCODE_indirizzo_131072_33 + 1)
	subb	a,#0x00
	mov	a,(_dumpCODE_indirizzo_131072_33 + 2)
	subb	a,#0x00
	mov	a,(_dumpCODE_indirizzo_131072_33 + 3)
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:320: printf_tiny("000%x  ", (unsigned int)indirizzo);
	mov	r0,_dumpCODE_indirizzo_131072_33
	mov	r4,(_dumpCODE_indirizzo_131072_33 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	push	ar4
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
	ljmp	00136$
00108$:
;	8052Explorer.c:321: } else if (indirizzo < 0x100) {
	clr	c
	mov	a,(_dumpCODE_indirizzo_131072_33 + 1)
	subb	a,#0x01
	mov	a,(_dumpCODE_indirizzo_131072_33 + 2)
	subb	a,#0x00
	mov	a,(_dumpCODE_indirizzo_131072_33 + 3)
	subb	a,#0x00
	jnc	00105$
;	8052Explorer.c:322: printf_tiny("00%x  ", (unsigned int)indirizzo);
	mov	r1,_dumpCODE_indirizzo_131072_33
	mov	r2,(_dumpCODE_indirizzo_131072_33 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar2
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
;	8052Explorer.c:323: } else if (indirizzo < 0x1000) {
	clr	c
	mov	a,(_dumpCODE_indirizzo_131072_33 + 1)
	subb	a,#0x10
	mov	a,(_dumpCODE_indirizzo_131072_33 + 2)
	subb	a,#0x00
	mov	a,(_dumpCODE_indirizzo_131072_33 + 3)
	subb	a,#0x00
	jnc	00102$
;	8052Explorer.c:324: printf_tiny("0%x  ", (unsigned int)indirizzo);
	mov	r1,_dumpCODE_indirizzo_131072_33
	mov	r2,(_dumpCODE_indirizzo_131072_33 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar2
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
;	8052Explorer.c:326: printf_tiny("%x  ", (unsigned int)indirizzo);
	mov	r1,_dumpCODE_indirizzo_131072_33
	mov	r2,(_dumpCODE_indirizzo_131072_33 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar2
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
;	8052Explorer.c:328: for (unsigned int posto = 0; posto < 16; posto++ ) {
00136$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	clr	a
	mov	_dumpCODE_posto_262144_39,a
	mov	(_dumpCODE_posto_262144_39 + 1),a
00120$:
	clr	c
	mov	a,_dumpCODE_posto_262144_39
	subb	a,#0x10
	mov	a,(_dumpCODE_posto_262144_39 + 1)
	subb	a,#0x00
	jnc	00112$
;	8052Explorer.c:329: if ( *puntatore < 16 ) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x10,00193$
00193$:
	jnc	00111$
;	8052Explorer.c:330: putchar('0');
	mov	dptr,#0x0030
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
00111$:
;	8052Explorer.c:332: printf_tiny("%x ", *puntatore);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	ar0,r1
	mov	r1,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	8052Explorer.c:333: puntatore++;
;	8052Explorer.c:328: for (unsigned int posto = 0; posto < 16; posto++ ) {
	inc	_dumpCODE_posto_262144_39
	clr	a
	cjne	a,_dumpCODE_posto_262144_39,00120$
	inc	(_dumpCODE_posto_262144_39 + 1)
	sjmp	00120$
00112$:
;	8052Explorer.c:335: printf_tiny(" |");
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	8052Explorer.c:336: puntatore -= 16;
	mov	a,r2
	add	a,#0xf0
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
;	8052Explorer.c:337: for (unsigned char posto = 0; posto < 16; posto++ ) {
	mov	_dumpCODE_posto_262144_42,#0x00
00123$:
	mov	a,#0x100 - 0x10
	add	a,_dumpCODE_posto_262144_42
	jc	00142$
;	8052Explorer.c:338: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x20,00197$
00197$:
	jc	00113$
	mov	a,r0
	add	a,#0xff - 0x7e
	jnc	00114$
00113$:
;	8052Explorer.c:339: putchar('.');
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
;	8052Explorer.c:341: printf_tiny("%c", *puntatore);
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
;	8052Explorer.c:343: puntatore++;
	inc	r2
	cjne	r2,#0x00,00200$
	inc	r3
00200$:
;	8052Explorer.c:337: for (unsigned char posto = 0; posto < 16; posto++ ) {
	inc	_dumpCODE_posto_262144_42
	sjmp	00123$
00142$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	8052Explorer.c:345: putchar('|');
	mov	dptr,#0x007c
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	8052Explorer.c:346: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:318: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	mov	a,#0x10
	add	a,_dumpCODE_indirizzo_131072_33
	mov	_dumpCODE_indirizzo_131072_33,a
	clr	a
	addc	a,(_dumpCODE_indirizzo_131072_33 + 1)
	mov	(_dumpCODE_indirizzo_131072_33 + 1),a
	clr	a
	addc	a,(_dumpCODE_indirizzo_131072_33 + 2)
	mov	(_dumpCODE_indirizzo_131072_33 + 2),a
	clr	a
	addc	a,(_dumpCODE_indirizzo_131072_33 + 3)
	mov	(_dumpCODE_indirizzo_131072_33 + 3),a
	ljmp	00126$
00118$:
;	8052Explorer.c:348: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:350: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'dumpRAM'
;------------------------------------------------------------
;puntatore                 Allocated to registers 
;indirizzo                 Allocated with name '_dumpRAM_indirizzo_131072_47'
;posto                     Allocated with name '_dumpRAM_posto_262144_53'
;posto                     Allocated with name '_dumpRAM_posto_262144_56'
;------------------------------------------------------------
;	8052Explorer.c:352: void dumpRAM () {
;	-----------------------------------------
;	 function dumpRAM
;	-----------------------------------------
_dumpRAM:
;	8052Explorer.c:353: unsigned char *puntatore = dati;
	mov	r5,#_dati
	mov	r6,#0x00
	mov	r7,#0x40
;	8052Explorer.c:355: puts("Dumping ram memory:");
	mov	dptr,#___str_73
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_puts
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:356: for (unsigned int indirizzo = 0; indirizzo <= RAMSIZE; indirizzo += 16 ) {
	clr	a
	mov	_dumpRAM_indirizzo_131072_47,a
	mov	(_dumpRAM_indirizzo_131072_47 + 1),a
00126$:
	clr	c
	mov	a,#0xff
	subb	a,_dumpRAM_indirizzo_131072_47
	mov	a,#0x03
	subb	a,(_dumpRAM_indirizzo_131072_47 + 1)
	jnc	00188$
	ljmp	00118$
00188$:
;	8052Explorer.c:357: if (indirizzo < 0x10) {
	clr	c
	mov	a,_dumpRAM_indirizzo_131072_47
	subb	a,#0x10
	mov	a,(_dumpRAM_indirizzo_131072_47 + 1)
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:358: printf_tiny("000%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_47
	push	(_dumpRAM_indirizzo_131072_47 + 1)
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
;	8052Explorer.c:359: } else if (indirizzo < 0x100) {
	mov	a,#0x100 - 0x01
	add	a,(_dumpRAM_indirizzo_131072_47 + 1)
	jc	00105$
;	8052Explorer.c:360: printf_tiny("00%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_47
	push	(_dumpRAM_indirizzo_131072_47 + 1)
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
;	8052Explorer.c:361: } else if (indirizzo < 0x1000) {
	mov	a,#0x100 - 0x10
	add	a,(_dumpRAM_indirizzo_131072_47 + 1)
	jc	00102$
;	8052Explorer.c:362: printf_tiny("0%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_47
	push	(_dumpRAM_indirizzo_131072_47 + 1)
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
;	8052Explorer.c:364: printf_tiny("%x  ", indirizzo);
	push	ar7
	push	ar6
	push	ar5
	push	_dumpRAM_indirizzo_131072_47
	push	(_dumpRAM_indirizzo_131072_47 + 1)
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
;	8052Explorer.c:366: for (unsigned int posto = 0; posto < 16; posto++ ) {
00136$:
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	clr	a
	mov	_dumpRAM_posto_262144_53,a
	mov	(_dumpRAM_posto_262144_53 + 1),a
00120$:
	clr	c
	mov	a,_dumpRAM_posto_262144_53
	subb	a,#0x10
	mov	a,(_dumpRAM_posto_262144_53 + 1)
	subb	a,#0x00
	jnc	00112$
;	8052Explorer.c:367: if ( *puntatore < 16 ) {
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x10,00193$
00193$:
	jnc	00111$
;	8052Explorer.c:368: putchar('0');
	mov	dptr,#0x0030
	push	ar2
	push	ar1
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar1
	pop	ar2
00111$:
;	8052Explorer.c:370: printf_tiny("%x ", *puntatore);
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
;	8052Explorer.c:371: puntatore++;
;	8052Explorer.c:366: for (unsigned int posto = 0; posto < 16; posto++ ) {
	inc	_dumpRAM_posto_262144_53
	clr	a
	cjne	a,_dumpRAM_posto_262144_53,00120$
	inc	(_dumpRAM_posto_262144_53 + 1)
	sjmp	00120$
00112$:
;	8052Explorer.c:373: printf_tiny(" |");
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
;	8052Explorer.c:374: puntatore -= 16;
	mov	a,r0
	add	a,#0xf0
	mov	r4,a
	mov	a,r1
	addc	a,#0xff
	mov	r3,a
;	8052Explorer.c:375: for (unsigned char posto = 0; posto < 16; posto++ ) {
	mov	_dumpRAM_posto_262144_56,#0x00
00123$:
	mov	a,#0x100 - 0x10
	add	a,_dumpRAM_posto_262144_56
	jc	00142$
;	8052Explorer.c:376: if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
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
;	8052Explorer.c:377: putchar('.');
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
;	8052Explorer.c:379: printf_tiny("%c", *puntatore);
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
;	8052Explorer.c:381: puntatore++;
	inc	r4
	cjne	r4,#0x00,00200$
	inc	r3
00200$:
;	8052Explorer.c:375: for (unsigned char posto = 0; posto < 16; posto++ ) {
	inc	_dumpRAM_posto_262144_56
	sjmp	00123$
00142$:
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
;	8052Explorer.c:383: putchar('|');
	mov	dptr,#0x007c
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	8052Explorer.c:384: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:356: for (unsigned int indirizzo = 0; indirizzo <= RAMSIZE; indirizzo += 16 ) {
	mov	a,#0x10
	add	a,_dumpRAM_indirizzo_131072_47
	mov	_dumpRAM_indirizzo_131072_47,a
	clr	a
	addc	a,(_dumpRAM_indirizzo_131072_47 + 1)
	mov	(_dumpRAM_indirizzo_131072_47 + 1),a
	ljmp	00126$
00118$:
;	8052Explorer.c:386: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:388: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'hexCODE'
;------------------------------------------------------------
;puntatore                 Allocated with name '_hexCODE_puntatore_65536_60'
;checksum                  Allocated with name '_hexCODE_checksum_65537_61'
;indirizzo                 Allocated with name '_hexCODE_indirizzo_131073_62'
;posto                     Allocated with name '_hexCODE_posto_262145_68'
;------------------------------------------------------------
;	8052Explorer.c:390: void hexCODE(){
;	-----------------------------------------
;	 function hexCODE
;	-----------------------------------------
_hexCODE:
;	8052Explorer.c:391: unsigned char *puntatore = codice;
	mov	_hexCODE_puntatore_65536_60,#_codice
	mov	(_hexCODE_puntatore_65536_60 + 1),#(_codice >> 8)
	mov	(_hexCODE_puntatore_65536_60 + 2),#0x80
;	8052Explorer.c:395: puts("Dumping code in hex file format:");
	mov	dptr,#___str_74
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:398: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	clr	a
	mov	_hexCODE_indirizzo_131073_62,a
	mov	(_hexCODE_indirizzo_131073_62 + 1),a
	mov	(_hexCODE_indirizzo_131073_62 + 2),a
	mov	(_hexCODE_indirizzo_131073_62 + 3),a
00120$:
	clr	c
	mov	a,#0xff
	subb	a,_hexCODE_indirizzo_131073_62
	mov	a,#0xff
	subb	a,(_hexCODE_indirizzo_131073_62 + 1)
	clr	a
	subb	a,(_hexCODE_indirizzo_131073_62 + 2)
	clr	a
	subb	a,(_hexCODE_indirizzo_131073_62 + 3)
	jnc	00171$
	ljmp	00115$
00171$:
;	8052Explorer.c:399: printf_tiny(":10");
	mov	a,#___str_75
	push	acc
	mov	a,#(___str_75 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	8052Explorer.c:400: checksum = 0x10;
	mov	r0,#0x10
	mov	r7,#0x00
;	8052Explorer.c:401: if (indirizzo < 0x10) {
	clr	c
	mov	a,_hexCODE_indirizzo_131073_62
	subb	a,#0x10
	mov	a,(_hexCODE_indirizzo_131073_62 + 1)
	subb	a,#0x00
	mov	a,(_hexCODE_indirizzo_131073_62 + 2)
	subb	a,#0x00
	mov	a,(_hexCODE_indirizzo_131073_62 + 3)
	subb	a,#0x00
	jnc	00108$
;	8052Explorer.c:402: printf_tiny("000%x", (unsigned int)indirizzo);
	mov	r5,_hexCODE_indirizzo_131073_62
	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
	push	ar7
	push	ar0
	push	ar5
	push	ar6
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	ljmp	00109$
00108$:
;	8052Explorer.c:403: } else if (indirizzo < 0x100) {
	clr	c
	mov	a,(_hexCODE_indirizzo_131073_62 + 1)
	subb	a,#0x01
	mov	a,(_hexCODE_indirizzo_131073_62 + 2)
	subb	a,#0x00
	mov	a,(_hexCODE_indirizzo_131073_62 + 3)
	subb	a,#0x00
	jnc	00105$
;	8052Explorer.c:404: printf_tiny("00%x", (unsigned int)indirizzo);
	mov	r5,_hexCODE_indirizzo_131073_62
	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
	push	ar7
	push	ar0
	push	ar5
	push	ar6
	mov	a,#___str_77
	push	acc
	mov	a,#(___str_77 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	sjmp	00109$
00105$:
;	8052Explorer.c:405: } else if (indirizzo < 0x1000) {
	clr	c
	mov	a,(_hexCODE_indirizzo_131073_62 + 1)
	subb	a,#0x10
	mov	a,(_hexCODE_indirizzo_131073_62 + 2)
	subb	a,#0x00
	mov	a,(_hexCODE_indirizzo_131073_62 + 3)
	subb	a,#0x00
	jnc	00102$
;	8052Explorer.c:406: printf_tiny("0%x", (unsigned int)indirizzo);
	mov	r5,_hexCODE_indirizzo_131073_62
	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
	push	ar7
	push	ar0
	push	ar5
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
	pop	ar7
	sjmp	00109$
00102$:
;	8052Explorer.c:408: printf_tiny("%x", (unsigned int)indirizzo);
	mov	r5,_hexCODE_indirizzo_131073_62
	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
	push	ar7
	push	ar0
	push	ar5
	push	ar6
	mov	a,#___str_79
	push	acc
	mov	a,#(___str_79 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
00109$:
;	8052Explorer.c:410: checksum += (indirizzo >> 8 ) & 0xFF ;
	mov	r6,(_hexCODE_indirizzo_131073_62 + 1)
	mov	r5,#0x00
	mov	a,r6
	add	a,r0
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r5,a
;	8052Explorer.c:411: checksum += (indirizzo & 0xFF);
	mov	r0,_hexCODE_indirizzo_131073_62
	mov	r7,#0x00
	mov	a,r0
	add	a,r6
	mov	_hexCODE_checksum_65537_61,a
	mov	a,r7
	addc	a,r5
	mov	(_hexCODE_checksum_65537_61 + 1),a
;	8052Explorer.c:412: printf_tiny("00");
	mov	a,#___str_80
	push	acc
	mov	a,#(___str_80 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	8052Explorer.c:414: for (unsigned char posto = 0; posto < 16; posto++ ) {
	mov	r5,_hexCODE_puntatore_65536_60
	mov	r0,(_hexCODE_puntatore_65536_60 + 1)
	mov	r7,(_hexCODE_puntatore_65536_60 + 2)
	mov	_hexCODE_posto_262145_68,#0x00
00117$:
	mov	a,#0x100 - 0x10
	add	a,_hexCODE_posto_262145_68
	jc	00133$
;	8052Explorer.c:415: if ( *puntatore < 16 ) {
	mov	dpl,r5
	mov	dph,r0
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x10,00176$
00176$:
	jnc	00111$
;	8052Explorer.c:416: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	push	ar5
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar5
	pop	ar7
00111$:
;	8052Explorer.c:418: printf_tiny("%x", *puntatore);
	mov	dpl,r5
	mov	dph,r0
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar0
	push	ar4
	push	ar6
	mov	a,#___str_79
	push	acc
	mov	a,#(___str_79 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar5
	pop	ar7
;	8052Explorer.c:419: checksum += *puntatore;
	mov	dpl,r5
	mov	dph,r0
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r5,dpl
	mov	r0,dph
	mov	r4,#0x00
	mov	a,r6
	add	a,_hexCODE_checksum_65537_61
	mov	_hexCODE_checksum_65537_61,a
	mov	a,r4
	addc	a,(_hexCODE_checksum_65537_61 + 1)
	mov	(_hexCODE_checksum_65537_61 + 1),a
;	8052Explorer.c:420: puntatore++;
;	8052Explorer.c:414: for (unsigned char posto = 0; posto < 16; posto++ ) {
	inc	_hexCODE_posto_262145_68
	sjmp	00117$
00133$:
	mov	_hexCODE_puntatore_65536_60,r5
	mov	(_hexCODE_puntatore_65536_60 + 1),r0
	mov	(_hexCODE_puntatore_65536_60 + 2),r7
;	8052Explorer.c:422: checksum = ((~checksum) & 0xFF);
	mov	a,_hexCODE_checksum_65537_61
	cpl	a
	mov	r6,a
	mov	a,(_hexCODE_checksum_65537_61 + 1)
	cpl	a
	mov	r7,#0x00
;	8052Explorer.c:423: checksum++;
	inc	r6
	cjne	r6,#0x00,00178$
	inc	r7
00178$:
;	8052Explorer.c:424: if ( (checksum & 0xFF) < 16 ) {
	mov	ar4,r6
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	subb	a,#0x00
	jnc	00114$
;	8052Explorer.c:425: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
00114$:
;	8052Explorer.c:427: printf_tiny("%x\r", checksum & 0xFF);
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_81
	push	acc
	mov	a,#(___str_81 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	8052Explorer.c:398: for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
	mov	a,#0x10
	add	a,_hexCODE_indirizzo_131073_62
	mov	_hexCODE_indirizzo_131073_62,a
	clr	a
	addc	a,(_hexCODE_indirizzo_131073_62 + 1)
	mov	(_hexCODE_indirizzo_131073_62 + 1),a
	clr	a
	addc	a,(_hexCODE_indirizzo_131073_62 + 2)
	mov	(_hexCODE_indirizzo_131073_62 + 2),a
	clr	a
	addc	a,(_hexCODE_indirizzo_131073_62 + 3)
	mov	(_hexCODE_indirizzo_131073_62 + 3),a
	ljmp	00120$
00115$:
;	8052Explorer.c:429: printf_tiny("%s", ":00000001FF");
	mov	a,#___str_83
	push	acc
	mov	a,#(___str_83 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_82
	push	acc
	mov	a,#(___str_82 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8052Explorer.c:431: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	8052Explorer.c:432: putchar('\r');
	mov	dptr,#0x000d
;	8052Explorer.c:433: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;	8052Explorer.c:435: void reset( void ) {
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	8052Explorer.c:436: puts("Resetting the micro.");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:442: while ( 1 );
00102$:
;	8052Explorer.c:443: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'start'
;------------------------------------------------------------
;	8052Explorer.c:445: void start( void )
;	-----------------------------------------
;	 function start
;	-----------------------------------------
_start:
;	8052Explorer.c:461: P0=0xFF;
	mov	_P0,#0xff
;	8052Explorer.c:462: P1=0xFF;
	mov	_P1,#0xff
;	8052Explorer.c:463: P2=0xFF;
	mov	_P2,#0xff
;	8052Explorer.c:464: P3=0xFF;
	mov	_P3,#0xff
;	8052Explorer.c:465: init_ser(MYTH2, MYTL2);
	mov	_init_ser_PARM_2,#0xfd
	mov	dpl,#0xff
	lcall	_init_ser
;	8052Explorer.c:466: felix();
	lcall	_felix
;	8052Explorer.c:467: printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
	mov	a,#___str_87
	push	acc
	mov	a,#(___str_87 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_86
	push	acc
	mov	a,#(___str_86 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_85
	push	acc
	mov	a,#(___str_85 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	8052Explorer.c:485: fourclockmultiplier();
	lcall	_fourclockmultiplier
;	8052Explorer.c:486: puts("Enabled four time clock multiplier");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:488: printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
	mov	a,#0xfd
	push	acc
	clr	a
	push	acc
	dec	a
	push	acc
	clr	a
	push	acc
	mov	a,#___str_89
	push	acc
	mov	a,#(___str_89 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	8052Explorer.c:489: printf_tiny("Started serial at %s bps\r", BPS);
	mov	a,#___str_91
	push	acc
	mov	a,#(___str_91 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_90
	push	acc
	mov	a,#(___str_90 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8052Explorer.c:490: init_timer0(0xDE, 0xED);
	mov	_init_timer0_PARM_2,#0xed
	mov	dpl,#0xde
	lcall	_init_timer0
;	8052Explorer.c:491: printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
	mov	a,#0xed
	push	acc
	clr	a
	push	acc
	mov	a,#0xde
	push	acc
	clr	a
	push	acc
	mov	a,#___str_92
	push	acc
	mov	a,#(___str_92 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	8052Explorer.c:493: puts("Print a string from code memory:");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:494: puts(acTestString); 
	mov	dptr,#_acTestString
	mov	b,#0x80
;	8052Explorer.c:495: }
	ljmp	_puts
;------------------------------------------------------------
;Allocation info for local variables in function 'p'
;------------------------------------------------------------
;porta                     Allocated to registers r7 
;pin                       Allocated with name '_p_pin_65537_82'
;action                    Allocated to registers r5 
;------------------------------------------------------------
;	8052Explorer.c:497: void p( unsigned char porta ) {
;	-----------------------------------------
;	 function p
;	-----------------------------------------
_p:
	mov	r7,dpl
;	8052Explorer.c:498: if (porta == 3 ) {
	clr	a
	cjne	r7,#0x03,00255$
	inc	a
00255$:
	mov	r6,a
	jz	00105$
;	8052Explorer.c:499: printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_96
	push	acc
	mov	a,#(___str_96 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00107$
00105$:
;	8052Explorer.c:500: } else if (porta == 2 ) {
	cjne	r7,#0x02,00102$
;	8052Explorer.c:501: printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_97
	push	acc
	mov	a,#(___str_97 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00107$
00102$:
;	8052Explorer.c:503: printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_98
	push	acc
	mov	a,#(___str_98 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	8052Explorer.c:505: while (!ser_byte_avail()){
00107$:
	push	ar7
	push	ar6
	lcall	_ser_byte_avail
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00107$
;	8052Explorer.c:508: unsigned char pin = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	8052Explorer.c:509: pin = pin - 48;
	mov	a,r4
	add	a,#0xd0
	mov	_p_pin_65537_82,a
;	8052Explorer.c:510: printf_tiny("Pin %u of port %u: ", pin, porta );
	mov	ar3,r7
	mov	r4,#0x00
	mov	r1,_p_pin_65537_82
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
	mov	a,#___str_99
	push	acc
	mov	a,#(___str_99 >> 8)
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
;	8052Explorer.c:511: if ( pin >= 0 && pin <= 8 ) {
	mov	a,_p_pin_65537_82
	add	a,#0xff - 0x08
	jnc	00261$
	ljmp	00150$
00261$:
;	8052Explorer.c:512: if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
	mov	a,r6
	jz	00144$
	mov	a,_p_pin_65537_82
	jnz	00263$
	ljmp	00145$
00263$:
	mov	a,#0x01
	cjne	a,_p_pin_65537_82,00264$
	ljmp	00145$
00264$:
00144$:
;	8052Explorer.c:513: if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
	clr	a
	cjne	r7,#0x02,00265$
	inc	a
00265$:
	mov	r6,a
	jz	00138$
	mov	a,_p_pin_65537_82
	jnz	00268$
	ljmp	00139$
00268$:
	mov	a,#0x01
	cjne	a,_p_pin_65537_82,00269$
	ljmp	00139$
00269$:
	mov	a,#0x02
	cjne	a,_p_pin_65537_82,00270$
	ljmp	00139$
00270$:
00138$:
;	8052Explorer.c:514: puts("0 off, 1 on.");
	mov	dptr,#___str_100
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
;	8052Explorer.c:515: while (!ser_byte_avail()){
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
;	8052Explorer.c:518: unsigned char action = getchar();
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
;	8052Explorer.c:519: action = action -48;
	mov	a,r0
	add	a,#0xd0
;	8052Explorer.c:520: if (action == 0 || action == 1) {
	mov	r5,a
	jz	00134$
	cjne	r5,#0x01,00273$
	sjmp	00274$
00273$:
	ljmp	00135$
00274$:
00134$:
;	8052Explorer.c:521: if (action == 1) {
	cjne	r5,#0x01,00132$
;	8052Explorer.c:522: action = action << pin;
	mov	b,_p_pin_65537_82
	inc	b
	mov	a,r5
	sjmp	00279$
00277$:
	add	a,acc
00279$:
	djnz	b,00277$
;	8052Explorer.c:523: action = ~action;
	cpl	a
	mov	r5,a
;	8052Explorer.c:525: printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	push	ar1
	push	ar2
	mov	a,#___str_101
	push	acc
	mov	a,#(___str_101 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:526: if (0 == porta) {
	mov	a,r7
	jnz	00120$
;	8052Explorer.c:527: P0 &= action;
	mov	a,r5
	anl	_P0,a
	ret
00120$:
;	8052Explorer.c:528: } else if (1 == porta) {
	cjne	r7,#0x01,00117$
;	8052Explorer.c:529: P1 &= action;
	mov	a,r5
	anl	_P1,a
	ret
00117$:
;	8052Explorer.c:530: } else if (2 == porta) {
	mov	a,r6
	jz	00114$
;	8052Explorer.c:531: P2 &= action;
	mov	a,r5
	anl	_P2,a
	ret
00114$:
;	8052Explorer.c:533: P3 &= action;
	mov	a,r5
	anl	_P3,a
	ret
00132$:
;	8052Explorer.c:538: action = action << pin;
	mov	b,_p_pin_65537_82
	inc	b
	mov	a,#0x01
	sjmp	00286$
00284$:
	add	a,acc
00286$:
	djnz	b,00284$
	mov	r5,a
;	8052Explorer.c:540: printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	push	ar1
	push	ar2
	mov	a,#___str_102
	push	acc
	mov	a,#(___str_102 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	8052Explorer.c:541: if (0 == porta) {
	mov	a,r7
	jnz	00129$
;	8052Explorer.c:542: P0 |= action;
	mov	a,r5
	orl	_P0,a
	ret
00129$:
;	8052Explorer.c:543: } else if (1 == porta) {
	cjne	r7,#0x01,00126$
;	8052Explorer.c:544: P1 |= action;
	mov	a,r5
	orl	_P1,a
	ret
00126$:
;	8052Explorer.c:545: } else if (2 == porta) {
	mov	a,r6
	jz	00123$
;	8052Explorer.c:546: P2 |= action;
	mov	a,r5
	orl	_P2,a
	ret
00123$:
;	8052Explorer.c:548: P3 |= action;
	mov	a,r5
	orl	_P3,a
	ret
00135$:
;	8052Explorer.c:553: puts("Invalid action!");
	mov	dptr,#___str_103
	mov	b,#0x80
	ljmp	_puts
00139$:
;	8052Explorer.c:558: puts("the pin 2 is the serial character receive blink.");
	mov	dptr,#___str_110
	mov	b,#0x80
	ljmp	_puts
00145$:
;	8052Explorer.c:561: puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
	mov	dptr,#___str_107
	mov	b,#0x80
	ljmp	_puts
00150$:
;	8052Explorer.c:564: puts("Invalid pin!");
	mov	dptr,#___str_108
	mov	b,#0x80
;	8052Explorer.c:566: }
	ljmp	_puts
;------------------------------------------------------------
;Allocation info for local variables in function 'HELP'
;------------------------------------------------------------
;	8052Explorer.c:568: void HELP ( void ) {
;	-----------------------------------------
;	 function HELP
;	-----------------------------------------
_HELP:
;	8052Explorer.c:582: puts("h print this help.");
	mov	dptr,#___str_123
	mov	b,#0x80
;	8052Explorer.c:583: }
	ljmp	_puts
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;carattere                 Allocated to registers r6 
;------------------------------------------------------------
;	8052Explorer.c:585: void main( void ) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	8052Explorer.c:586: start();
	lcall	_start
;	8052Explorer.c:587: puts("Insert command, h for help.");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:589: while( 1 )							// forever.
00125$:
;	8052Explorer.c:595: if ( ser_byte_avail() )	{				// if data coming in...
	lcall	_ser_byte_avail
	mov	a,dpl
	jz	00125$
;	8052Explorer.c:596: carattere = getchar();
	lcall	_getchar
	mov	r6,dpl
;	8052Explorer.c:602: if ( carattere >= 0x30 && carattere <= 0x7A ) {
	cjne	r6,#0x30,00202$
00202$:
	mov	_main_sloc0_1_0,c
	jc	00102$
	mov	a,r6
	add	a,#0xff - 0x7a
	jc	00102$
;	8052Explorer.c:603: putchar(carattere);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
00102$:
;	8052Explorer.c:605: putchar('\r');
	mov	dptr,#0x000d
	push	ar6
	lcall	_putchar
	pop	ar6
;	8052Explorer.c:606: switch (carattere)
	cjne	r6,#0x30,00205$
	sjmp	00110$
00205$:
	cjne	r6,#0x31,00206$
	sjmp	00111$
00206$:
	cjne	r6,#0x32,00207$
	sjmp	00112$
00207$:
	cjne	r6,#0x33,00208$
	sjmp	00113$
00208$:
	cjne	r6,#0x43,00209$
	sjmp	00105$
00209$:
	cjne	r6,#0x48,00210$
	sjmp	00109$
00210$:
	cjne	r6,#0x63,00211$
	sjmp	00104$
00211$:
	cjne	r6,#0x66,00212$
	sjmp	00106$
00212$:
	cjne	r6,#0x68,00213$
	sjmp	00109$
00213$:
;	8052Explorer.c:608: case 'c':
	cjne	r6,#0x6d,00114$
	sjmp	00107$
00104$:
;	8052Explorer.c:609: dumpCODE();
	lcall	_dumpCODE
;	8052Explorer.c:610: break;
;	8052Explorer.c:611: case 'C':
	sjmp	00119$
00105$:
;	8052Explorer.c:612: hexCODE();
	lcall	_hexCODE
;	8052Explorer.c:613: break;
;	8052Explorer.c:622: case 'f':
	sjmp	00119$
00106$:
;	8052Explorer.c:623: felix();
	lcall	_felix
;	8052Explorer.c:624: break;
;	8052Explorer.c:625: case 'm':
	sjmp	00119$
00107$:
;	8052Explorer.c:626: dumpRAM();
	lcall	_dumpRAM
;	8052Explorer.c:627: break;
;	8052Explorer.c:634: case 'H':
	sjmp	00119$
00109$:
;	8052Explorer.c:635: HELP();
	lcall	_HELP
;	8052Explorer.c:636: break;
;	8052Explorer.c:637: case '0':
	sjmp	00119$
00110$:
;	8052Explorer.c:638: p(0);
	mov	dpl,#0x00
	lcall	_p
;	8052Explorer.c:639: break;
;	8052Explorer.c:640: case '1':
	sjmp	00119$
00111$:
;	8052Explorer.c:641: p(1);
	mov	dpl,#0x01
	lcall	_p
;	8052Explorer.c:642: break;
;	8052Explorer.c:643: case '2':
	sjmp	00119$
00112$:
;	8052Explorer.c:644: p(2);
	mov	dpl,#0x02
	lcall	_p
;	8052Explorer.c:645: break;
;	8052Explorer.c:646: case '3':
	sjmp	00119$
00113$:
;	8052Explorer.c:647: p(3);
	mov	dpl,#0x03
	lcall	_p
;	8052Explorer.c:648: break;
;	8052Explorer.c:649: default:
	sjmp	00119$
00114$:
;	8052Explorer.c:650: if ( carattere >= 0x30 && carattere <= 0x7A ) {
	jb	_main_sloc0_1_0,00119$
	mov	a,r6
	add	a,#0xff - 0x7a
	jc	00119$
;	8052Explorer.c:651: printf_tiny("Invalid command %c.\r", carattere );
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_125
	push	acc
	mov	a,#(___str_125 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	8052Explorer.c:654: while ( ser_byte_avail() )	{				// if data coming in...
00119$:
	lcall	_ser_byte_avail
	mov	a,dpl
	jz	00121$
;	8052Explorer.c:655: carattere = getchar();
	lcall	_getchar
	sjmp	00119$
00121$:
;	8052Explorer.c:657: puts("Insert command, h for help:");
	mov	dptr,#___str_126
	mov	b,#0x80
	lcall	_puts
;	8052Explorer.c:661: }
	ljmp	00125$
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
	.ascii "Dumping code:"
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
	.ascii "Dumping ram memory:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "Dumping code in hex file format:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii ":10"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii "000%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "00%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.ascii "0%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.ascii "%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii "00"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_81:
	.ascii "%x"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_82:
	.ascii "%s"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_83:
	.ascii ":00000001FF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_84:
	.ascii "Resetting the micro."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_85:
	.ascii "Cpu %s running at %sMHz"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_86:
	.ascii "DS89C450"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_87:
	.ascii "11.0592"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_88:
	.ascii "Enabled four time clock multiplier"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_89:
	.ascii "Started timer 2 with th = %x and tl = %x"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_90:
	.ascii "Started serial at %s bps"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_91:
	.ascii "115200"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_92:
	.ascii "Started timer 0 with th = %x and tl = %x"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_95:
	.ascii "Hello World..."
	.db 0x0d
	.ascii "This is a test string."
	.db 0x0a
	.ascii "Print a string from code memory:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_96:
	.ascii "Which pin from 2 to 7 of port %u?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_97:
	.ascii "Which pin from 3 to 7 of port %u?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_98:
	.ascii "Which pin from 0 to 7 of port %u?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_99:
	.ascii "Pin %u of port %u: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_100:
	.ascii "0 off, 1 on."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_101:
	.ascii "Setting pin %u of port %u on."
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_102:
	.ascii "Setting pin %u of port %u off."
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_103:
	.ascii "Invalid action!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_107:
	.ascii "Sorry the pins 0 and 1 of port 3 are used by serial port."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_108:
	.ascii "Invalid pin!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_110:
	.ascii "Sorry the pin 0 on port 2 is the blinking led,"
	.db 0x0a
	.ascii "the pin 1 is the serial character transmit blink,"
	.db 0x0a
	.ascii "the pin 2 is the serial character receive blink."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_123:
	.ascii "Available commands are:"
	.db 0x0a
	.ascii "0, 1, 2 or 3 to change pin ports status."
	.db 0x0a
	.ascii "c dump code memory."
	.db 0x0a
	.ascii "C dump code memory in hex format."
	.db 0x0a
	.ascii "m dump ram memory."
	.db 0x0a
	.ascii "f print felix"
	.db 0x0a
	.ascii "h print this help."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_124:
	.ascii "Insert command, h for help."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_125:
	.ascii "Invalid command %c."
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_126:
	.ascii "Insert command, h for help:"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
