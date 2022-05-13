;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module serial
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _init_ser_PARM_2
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
	.globl _tx_head
	.globl _rx_tail
	.globl _rx_head
	.globl _tx_tail
	.globl _init_ser
	.globl _SerInt
	.globl _ser_write_byte
	.globl _ser_byte_avail
	.globl _ser_read_byte
	.globl _putchar
	.globl _getchar
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
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tx_tail::
	.ds 1
_rx_head::
	.ds 1
_rx_tail::
	.ds 1
_tx_head::
	.ds 1
_rx_buf:
	.ds 16
_tx_buf:
	.ds 16
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_init_ser_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_is_txing:
	.ds 1
_ser_byte_avail_sloc0_1_0:
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
;Allocation info for local variables in function 'init_ser'
;------------------------------------------------------------
;tl2                       Allocated with name '_init_ser_PARM_2'
;th2                       Allocated to registers r7 
;------------------------------------------------------------
;	library/serial.c:19: void init_ser( unsigned char th2, unsigned char tl2 )
;	-----------------------------------------
;	 function init_ser
;	-----------------------------------------
_init_ser:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	library/serial.c:21: P2 = 0;
	mov	_P2,#0x00
;	library/serial.c:22: rx_head = 0;                  	// Default head/tail pointers.
	mov	_rx_head,#0x00
;	library/serial.c:23: rx_tail = 0;
	mov	_rx_tail,#0x00
;	library/serial.c:24: tx_tail = 0;
	mov	_tx_tail,#0x00
;	library/serial.c:25: tx_head = 0;
	mov	_tx_head,#0x00
;	library/serial.c:26: is_txing = FALSE;				// Not transmitting.
;	assignBit
	clr	_is_txing
;	library/serial.c:28: SER_RX_PORT = HIGH;          	// Set Txd & Rxd to high
;	assignBit
	setb	_P3_0
;	library/serial.c:29: SER_TX_PORT = HIGH;
;	assignBit
	setb	_P3_1
;	library/serial.c:31: SCON = 0x50;               		// Mode 1.
	mov	_SCON,#0x50
;	library/serial.c:37: T2CON &= 0xF0; /* EXEN2=0; TR2=0; C/T2#=0; CP/RL2#=0; */
	anl	_T2CON,#0xf0
;	library/serial.c:38: T2CON |= 0x30; /* RCLK = 1; TCLK=1; */
	orl	_T2CON,#0x30
;	library/serial.c:55: TH2 = th2; /* init value */
	mov	_TH2,r7
;	library/serial.c:56: TL2 = tl2; /* init value */
	mov	_TL2,_init_ser_PARM_2
;	library/serial.c:57: RCAP2H = th2; /* reload value, 115200 Bds at 11.059MHz */
	mov	_RCAP2H,r7
;	library/serial.c:58: RCAP2L = tl2; /* reload value, 115200 Bds at 11.059MHz */
	mov	_RCAP2L,_init_ser_PARM_2
;	library/serial.c:60: TR2 = 1;                     		// Timer 2 run.
;	assignBit
	setb	_TR2
;	library/serial.c:64: PS = TRUE;                    	// Low priority.
;	assignBit
	setb	_PS
;	library/serial.c:66: EA = 1;													// Enable interrupts.
;	assignBit
	setb	_EA
;	library/serial.c:67: ES = TRUE;                     	// Enable serial interrupt.
;	assignBit
	setb	_ES
;	library/serial.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerInt'
;------------------------------------------------------------
;	library/serial.c:74: void SerInt( void ) __interrupt 4 __using 2
;	-----------------------------------------
;	 function SerInt
;	-----------------------------------------
_SerInt:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	acc
	push	psw
	mov	psw,#0x10
;	library/serial.c:76: if( RI )							// Receive character?
;	library/serial.c:78: RI = 0;							// clear receive flag
;	assignBit
	jbc	_RI,00134$
	sjmp	00104$
00134$:
;	library/serial.c:79: rx_buf[ rx_head++ ] = SBUF;    	// Get character from serial port and put into fifo.
	mov	a,_rx_head
	mov	r7,a
	inc	a
	mov	_rx_head,a
	mov	a,r7
	add	a,#_rx_buf
	mov	r0,a
	mov	@r0,_SBUF
;	library/serial.c:80: if( rx_head >= BUFFER_SIZE)		// Wrap pointer to beginning of buffer if at end.
	mov	a,#0x100 - 0x10
	add	a,_rx_head
	jnc	00104$
;	library/serial.c:81: rx_head = 0;
	mov	_rx_head,#0x00
00104$:
;	library/serial.c:84: if( TI )							// Transmit character?
;	library/serial.c:86: TI = 0;							// Clear transmitter flag.
;	assignBit
	jbc	_TI,00136$
	sjmp	00111$
00136$:
;	library/serial.c:87: if( tx_head == tx_tail )      	// Check to see if anymore characters to send?
	mov	a,_tx_tail
	cjne	a,_tx_head,00108$
;	library/serial.c:88: is_txing = FALSE;         	// No, indicate to ser_write_byte to set TI next time.
;	assignBit
	clr	_is_txing
	sjmp	00111$
00108$:
;	library/serial.c:91: is_txing = TRUE;          	// TI interrupt will occur at end of this character.
;	assignBit
	setb	_is_txing
;	library/serial.c:92: SBUF = tx_buf[ tx_tail++ ];	// Transmit character out serial port.
	mov	a,_tx_tail
	mov	r7,a
	inc	a
	mov	_tx_tail,a
	mov	a,r7
	add	a,#_tx_buf
	mov	r1,a
	mov	_SBUF,@r1
;	library/serial.c:93: if( tx_tail >= BUFFER_SIZE)	// Wrap pointer to beginning of buffer if at end.
	mov	a,#0x100 - 0x10
	add	a,_tx_tail
	jnc	00111$
;	library/serial.c:94: tx_tail = 0;
	mov	_tx_tail,#0x00
00111$:
;	library/serial.c:97: WDTRST = 0x1E;
	mov	_WDTRST,#0x1e
;	library/serial.c:98: WDTRST = 0xE1;
	mov	_WDTRST,#0xe1
;	library/serial.c:99: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_write_byte'
;------------------------------------------------------------
;buf                       Allocated to registers r7 
;next_head                 Allocated to registers r6 
;------------------------------------------------------------
;	library/serial.c:104: char ser_write_byte( unsigned char buf )
;	-----------------------------------------
;	 function ser_write_byte
;	-----------------------------------------
_ser_write_byte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	library/serial.c:110: tx_buf[ tx_head ] = buf;
	mov	a,_tx_head
	add	a,#_tx_buf
	mov	r0,a
	mov	@r0,ar7
;	library/serial.c:111: next_head = tx_head + 1;
	mov	r6,_tx_head
	inc	r6
;	library/serial.c:113: if( next_head >= BUFFER_SIZE)
	cjne	r6,#0x10,00126$
00126$:
	jc	00103$
;	library/serial.c:114: next_head = 0;
	mov	r6,#0x00
;	library/serial.c:118: while( next_head == tx_tail );
00103$:
	mov	a,r6
	cjne	a,_tx_tail,00128$
	sjmp	00103$
00128$:
;	library/serial.c:120: tx_head = next_head;
	mov	_tx_head,r6
;	library/serial.c:121: if( is_txing == FALSE )
	jb	_is_txing,00107$
;	library/serial.c:122: TI = TRUE;
;	assignBit
	setb	_TI
00107$:
;	library/serial.c:124: P2_1 = !P2_1;
	cpl	_P2_1
;	library/serial.c:125: return buf;
	mov	dpl,r7
;	library/serial.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_byte_avail'
;------------------------------------------------------------
;	library/serial.c:132: char ser_byte_avail( void )
;	-----------------------------------------
;	 function ser_byte_avail
;	-----------------------------------------
_ser_byte_avail:
;	library/serial.c:134: WDTRST = 0x1E;
	mov	_WDTRST,#0x1e
;	library/serial.c:135: WDTRST = 0xE1;
	mov	_WDTRST,#0xe1
;	library/serial.c:136: return(rx_head != rx_tail);
	mov	a,_rx_tail
	cjne	a,_rx_head,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	_ser_byte_avail_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	library/serial.c:143: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_read_byte'
;------------------------------------------------------------
;buf                       Allocated to registers r7 
;------------------------------------------------------------
;	library/serial.c:149: unsigned char ser_read_byte( void )
;	-----------------------------------------
;	 function ser_read_byte
;	-----------------------------------------
_ser_read_byte:
;	library/serial.c:155: buf = rx_buf[ rx_tail++ ];
	mov	a,_rx_tail
	mov	r7,a
	inc	a
	mov	_rx_tail,a
	mov	a,r7
	add	a,#_rx_buf
	mov	r1,a
	mov	ar7,@r1
;	library/serial.c:157: if( rx_tail >= BUFFER_SIZE)		// rx_tail %= BUFFER_SIZE;
	mov	a,#0x100 - 0x10
	add	a,_rx_tail
	jnc	00102$
;	library/serial.c:158: rx_tail = 0;
	mov	_rx_tail,#0x00
00102$:
;	library/serial.c:160: P2_2 = !P2_2;
	cpl	_P2_2
;	library/serial.c:161: return( buf );
	mov	dpl,r7
;	library/serial.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;buf                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	library/serial.c:164: int putchar(int buf) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	library/serial.c:165: ser_write_byte((char)buf);
	mov	r6,dpl
	mov	r7,dph
	push	ar7
	push	ar6
	lcall	_ser_write_byte
	pop	ar6
	pop	ar7
;	library/serial.c:166: return buf;
	mov	dpl,r6
	mov	dph,r7
;	library/serial.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;buf                       Allocated to registers r7 r6 
;------------------------------------------------------------
;	library/serial.c:169: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	library/serial.c:170: int buf=ser_read_byte();
	lcall	_ser_read_byte
;	library/serial.c:171: return buf;
	mov	r6,#0x00
	mov	dph,r6
;	library/serial.c:172: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
