#ifndef __SERIAL_H
#define __SERIAL_H 1

#include "../microsetup.h"

#define FALSE 0
#define TRUE  1
#define LOW   0
#define HIGH  1

#define SER_RX_PORT P3_0	// define the pins for the serial port.
#define SER_TX_PORT P3_1

#define BUFFER_SIZE 16		// Transmit and Receive buffer size

extern void init_ser( unsigned char th2, unsigned char tl2 );
extern char ser_write_byte( unsigned char Buf );
extern int putchar( int Buf );
extern char ser_byte_avail( void );
extern unsigned char ser_read_byte( void );
extern int getchar( void );
extern void SerInt( void ) __interrupt 4 __using 2;

#endif
