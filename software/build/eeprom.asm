;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _writeEepromAssembler
	.globl _readEepromAssembler
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
	.globl _writeEeprom_PARM_2
	.globl _tempc
	.globl _tempb
	.globl _tempa
	.globl _readEeprom
	.globl _writeEeprom
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
_tempa::
	.ds 1
_tempb::
	.ds 1
_tempc::
	.ds 1
_writeEeprom_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'readEepromAssembler'
;------------------------------------------------------------
;	library/eeprom.c:7: void readEepromAssembler (void) __naked
;	-----------------------------------------
;	 function readEepromAssembler
;	-----------------------------------------
_readEepromAssembler:
;	naked function: no prologue.
;	library/eeprom.c:25: __endasm;
	push	acc
	push	b
	push	dpl
	push	dph
	mov	dpl, _tempa
	mov	dph, _tempb
	movx	a, @dptr
	mov	_tempc, a
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;	library/eeprom.c:26: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'readEeprom'
;------------------------------------------------------------
;addres                    Allocated to registers r6 r7 
;returnvalue               Allocated to registers 
;------------------------------------------------------------
;	library/eeprom.c:28: unsigned char readEeprom (unsigned short addres)
;	-----------------------------------------
;	 function readEeprom
;	-----------------------------------------
_readEeprom:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	library/eeprom.c:37: EECON |= 8;
	orl	_EECON,#0x08
;	library/eeprom.c:39: tempa = (unsigned char) (addres & 255);
	mov	_tempa,r6
;	library/eeprom.c:40: tempb = (unsigned char) ((addres >> 8) & 255);
	mov	_tempb,r7
;	library/eeprom.c:43: readEepromAssembler();
	lcall	_readEepromAssembler
;	library/eeprom.c:45: returnvalue = tempc;
	mov	dpl,_tempc
;	library/eeprom.c:49: EECON &= ~8;
	anl	_EECON,#0xf7
;	library/eeprom.c:51: return returnvalue;
;	library/eeprom.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeEepromAssembler'
;------------------------------------------------------------
;	library/eeprom.c:54: void writeEepromAssembler (void) __naked
;	-----------------------------------------
;	 function writeEepromAssembler
;	-----------------------------------------
_writeEepromAssembler:
;	naked function: no prologue.
;	library/eeprom.c:72: __endasm;
	push	acc
	push	b
	push	dpl
	push	dph
	mov	dpl, _tempa
	mov	dph, _tempb
	mov	a, _tempc
	movx	@dptr, a
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;	library/eeprom.c:73: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'writeEeprom'
;------------------------------------------------------------
;addres                    Allocated with name '_writeEeprom_PARM_2'
;datavalue                 Allocated to registers r7 
;------------------------------------------------------------
;	library/eeprom.c:75: unsigned char writeEeprom (unsigned char datavalue, unsigned short addres)
;	-----------------------------------------
;	 function writeEeprom
;	-----------------------------------------
_writeEeprom:
	mov	r7,dpl
;	library/eeprom.c:79: EECON |= 8;
	orl	_EECON,#0x08
;	library/eeprom.c:83: EECON |= 16;
	orl	_EECON,#0x10
;	library/eeprom.c:89: tempa = (unsigned char) (addres & 255);
	mov	_tempa,_writeEeprom_PARM_2
;	library/eeprom.c:90: tempb = (unsigned char) ((addres >> 8) & 255);
	mov	_tempb,(_writeEeprom_PARM_2 + 1)
;	library/eeprom.c:91: tempc = datavalue;
	mov	_tempc,r7
;	library/eeprom.c:94: writeEepromAssembler();
	lcall	_writeEepromAssembler
;	library/eeprom.c:97: while ((EECON | 2) == 0);
;	library/eeprom.c:101: EECON &= ~16;
	anl	_EECON,#0xef
;	library/eeprom.c:105: EECON &= ~8;
	anl	_EECON,#0xf7
;	library/eeprom.c:109: return readEeprom(addres);
	mov	dpl,_writeEeprom_PARM_2
	mov	dph,(_writeEeprom_PARM_2 + 1)
;	library/eeprom.c:110: }
	ljmp	_readEeprom
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
