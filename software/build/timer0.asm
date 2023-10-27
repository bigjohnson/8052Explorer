;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module timer0
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _init_timer0_PARM_2
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
	.globl _prima
	.globl _millisx
	.globl _init_timer0
	.globl _millis
	.globl _it_timer0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_millisx::
	.ds 2
_prima::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_init_timer0_PARM_2:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer0'
;------------------------------------------------------------
;tl                        Allocated with name '_init_timer0_PARM_2'
;th                        Allocated to registers r7 
;------------------------------------------------------------
;	library/timer0.c:6: void init_timer0(unsigned char th, unsigned char tl) {
;	-----------------------------------------
;	 function init_timer0
;	-----------------------------------------
_init_timer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	library/timer0.c:7: TMOD &= 0xF0; /* Timer 0 mode 0 with software gate */
	anl	_TMOD,#0xf0
;	library/timer0.c:12: TH0 = th; /* init values */
	mov	_TH0,r7
;	library/timer0.c:13: TL0 = tl;
	mov	_TL0,_init_timer0_PARM_2
;	library/timer0.c:17: ET0 = 1; /* enable timer0 interrupt */
;	assignBit
	setb	_ET0
;	library/timer0.c:18: EA = 1; /* enable interrupts */
;	assignBit
	setb	_EA
;	library/timer0.c:19: TR0 = 1; /* timer0 run */
;	assignBit
	setb	_TR0
;	library/timer0.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'millis'
;------------------------------------------------------------
;	library/timer0.c:22: unsigned int millis(void) {
;	-----------------------------------------
;	 function millis
;	-----------------------------------------
_millis:
;	library/timer0.c:23: return millisx;
	mov	dpl,_millisx
	mov	dph,(_millisx + 1)
;	library/timer0.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'it_timer0'
;------------------------------------------------------------
;	library/timer0.c:26: void it_timer0(void) __interrupt 1 __using 3 /* interrupt address is 0x000b */
;	-----------------------------------------
;	 function it_timer0
;	-----------------------------------------
_it_timer0:
	ar7 = 0x1f
	ar6 = 0x1e
	ar5 = 0x1d
	ar4 = 0x1c
	ar3 = 0x1b
	ar2 = 0x1a
	ar1 = 0x19
	ar0 = 0x18
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x18
;	library/timer0.c:33: millisx++;
	mov	r6,_millisx
	mov	r7,(_millisx + 1)
	mov	a,#0x01
	add	a,r6
	mov	_millisx,a
	clr	a
	addc	a,r7
	mov	(_millisx + 1),a
;	library/timer0.c:35: if ( millisx < prima ) {
	clr	c
	mov	a,_millisx
	subb	a,_prima
	mov	a,(_millisx + 1)
	subb	a,(_prima + 1)
	jnc	00102$
;	library/timer0.c:36: prima = millisx;
	mov	_prima,_millisx
	mov	(_prima + 1),(_millisx + 1)
00102$:
;	library/timer0.c:38: if (millisx % ONE_SECOND_DIVISOR == 0 && millisx > prima) {
	mov	__moduint_PARM_2,#0x97
	mov	(__moduint_PARM_2 + 1),#0x01
	mov	dpl,_millisx
	mov	dph,(_millisx + 1)
	mov	psw,#0x00
	lcall	__moduint
	mov	psw,#0x18
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
	clr	c
	mov	a,_prima
	subb	a,_millisx
	mov	a,(_prima + 1)
	subb	a,(_millisx + 1)
	jnc	00106$
;	library/timer0.c:39: prima = millisx;
	mov	_prima,_millisx
	mov	(_prima + 1),(_millisx + 1)
;	library/timer0.c:40: P2_0 = !P2_0;
	cpl	_P2_0
00106$:
;	library/timer0.c:43: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
