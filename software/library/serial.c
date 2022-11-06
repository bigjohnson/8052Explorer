#include "serial.h"

// ---------------------------------------------------------------------------
//  Function definitions.
// ---------------------------------------------------------------------------
// ---------------------------------------------------------------------------
//  Initialize serial operations.
// ---------------------------------------------------------------------------

//volatile lets you see the variable in sdcdb/ddd.
volatile unsigned char tx_tail;	// Transmit interrupt index.
volatile unsigned char rx_head;	// Receive interrupt index.
volatile unsigned char rx_tail;	// Receive read index.
volatile unsigned char tx_head;	// Transmit write index.
static __bit is_txing;  					// True when transmitting a character.
static unsigned char rx_buf[ BUFFER_SIZE ]; // Receive queue.
static unsigned char tx_buf[ BUFFER_SIZE ]; // Transmit queue.

void init_ser( unsigned char th2, unsigned char tl2 )
{
	//P2 = 0;
	rx_head = 0;                  	// Default head/tail pointers.
	rx_tail = 0;
	tx_tail = 0;
	tx_head = 0;
	is_txing = FALSE;				// Not transmitting.

	SER_RX_PORT = HIGH;          	// Set Txd & Rxd to high
	SER_TX_PORT = HIGH;

  SCON = 0x50;               		// Mode 1.
                                // 0101 0000
                                // SSSR TRTR
                                // MMME BBII
                                // 012N 88
	//TMOD = (TMOD & 0x0F) | 0x20;	// Timer 1, mode 2, 8-bit reload.
	T2CON &= 0xF0; /* EXEN2=0; TR2=0; C/T2#=0; CP/RL2#=0; */
	T2CON |= 0x30; /* RCLK = 1; TCLK=1; */

                                // 0010 0000
                                // GCMM GCMM
                                // A/10 A/10
                                // TT   TT
                                // E    E
	//PCON |= 0x80;                 // Double baud rate.
	                              // 1000 0000
                                // S--- GGPI
                                // M    FFDD
                                // O    10 L
                                // D
//  TH1 = 0xFD;                   // 9600 baud * 2 = 19200 baud. 11.0592 MHz oscillator
//  TH1 = 0xF5;                   // 9600 baud * 2 = 19200 baud. 40 MHz oscillator
//  TH1=0xF9;                     // 14400 * 2 = 28800, 40 MHz oscillator
	//TH1 = reload;
	TH2 = th2; /* init value */
	TL2 = tl2; /* init value */
	RCAP2H = th2; /* reload value, 115200 Bds at 11.059MHz */
	RCAP2L = tl2; /* reload value, 115200 Bds at 11.059MHz */

	TR2 = 1;                     		// Timer 2 run.
	//REN_0 = TRUE;                 // Receive characters.
  //REN = TRUE;                   // Receive characters.
	//LPS0 = TRUE;                  // Low priority.
  PS = TRUE;                    	// Low priority.
	//ES0 = TRUE;                   // Enable serial interrupt.
  EA = 1;													// Enable interrupts.
  ES = TRUE;                     	// Enable serial interrupt.
}
//
//
//// ---------------------------------------------------------------------------
// // Serial interrupt handler.
// // ---------------------------------------------------------------------------
void SerInt( void ) __interrupt 4 __using 2
{
	if( RI )							// Receive character?
	{
		RI = 0;							// clear receive flag
		rx_buf[ rx_head++ ] = SBUF;    	// Get character from serial port and put into fifo.
		if( rx_head >= BUFFER_SIZE)		// Wrap pointer to beginning of buffer if at end.
			rx_head = 0;
	}

	if( TI )							// Transmit character?
	{
		TI = 0;							// Clear transmitter flag.
		if( tx_head == tx_tail )      	// Check to see if anymore characters to send?
			is_txing = FALSE;         	// No, indicate to ser_write_byte to set TI next time.
		else
		{
			is_txing = TRUE;          	// TI interrupt will occur at end of this character.
			SBUF = tx_buf[ tx_tail++ ];	// Transmit character out serial port.
			if( tx_tail >= BUFFER_SIZE)	// Wrap pointer to beginning of buffer if at end.
				tx_tail = 0;
     	}
  	}
	#ifdef HASWATCHDOG
		WDTRST = 0x1E;
		WDTRST = 0xE1;
	#endif
}
//
//// ---------------------------------------------------------------------------
// // Transmits the character in buf out the serial port.
// // ---------------------------------------------------------------------------
char ser_write_byte( unsigned char buf )
{
	//WDTRST = 0x1E;
  //WDTRST = 0xE1;
	unsigned char next_head;

	tx_buf[ tx_head ] = buf;
	next_head = tx_head + 1;

	if( next_head >= BUFFER_SIZE)
		next_head = 0;

	// Wait until we can stick the next character into the queue.
	// prevent buffer over write
	while( next_head == tx_tail );

	tx_head = next_head;
	if( is_txing == FALSE )
		TI = TRUE;

		P2_1 = !P2_1;
		return buf;
}

// ---------------------------------------------------------------------------
// Checks to see if any characters are available to be read from the
// receive queue.
// ---------------------------------------------------------------------------
char ser_byte_avail( void )
{
	#ifdef HASWATCHDOG
		WDTRST = 0x1E;
  		WDTRST = 0xE1;
	#endif
	return(rx_head != rx_tail);
/*
	if( rx_head == rx_tail )	// return(rx_head != rx_tail);
		return( FALSE );
	else
		return( TRUE );
*/
}

// ---------------------------------------------------------------------------
// Gets one character from the receive queue.
// if we get here we know we have a character available.
// ---------------------------------------------------------------------------
unsigned char ser_read_byte( void )
{
	//WDTRST = 0x1E;
  //WDTRST = 0xE1;
	unsigned char buf;

	buf = rx_buf[ rx_tail++ ];

	if( rx_tail >= BUFFER_SIZE)		// rx_tail %= BUFFER_SIZE;
		rx_tail = 0;

	P2_2 = !P2_2;
	return( buf );
}

int putchar(int buf) {
	ser_write_byte((char)buf);
	return buf;
}

int getchar(void) {
	int buf=ser_read_byte();
	return buf;
}
