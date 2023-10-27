//	vs5.c  - Serial code, interrupt driven.
//	Original code by Rod Boyce (rod@boyce.net.nz)
//	03/30/2000 - 2021 PST.
//	translated/re-arranged for sdcc by Victoria Welch (vikki@oz.net)
//
//	Utilizes the ATMEL 89S8252 UART and Timer1.
//
// ---------------------------------------------------------------------------
// Includes.
// ---------------------------------------------------------------------------
//
#include "library/eeprom.h"
#include "library/serial.h"
#include "library/timer0.h"
#define MAINFILE
#include "microsetup.h"
#include <stdio.h>
//#include <stdlib.h>

//unsigned int prima;
//unsigned int __data adesso;
//unsigned int __data mio;
//__bit fai;

//#define CLOCK_20000000
//#define DOUBLECLOCK
//#define CLOCK_40000000
//#define BPS9600
//#define BPS14400
//#define BPS19200
//#define BPS28800


//#include <ds420.h>
//#include <mcs51reg.h>

// ---------------------------------------------------------------------------
// Defines.
// ---------------------------------------------------------------------------

// #define FALSE 0
// #define TRUE  1
// #define LOW   0
// #define HIGH  1
//
// #define SER_RX_PORT P3_0	// define the pins for the serial port.
// #define SER_TX_PORT P3_1
//
// #define BUFFER_SIZE 16		// Transmit and Receive buffer size

// ---------------------------------------------------------------------------
// Function prototypes.
// ---------------------------------------------------------------------------
// void init_ser( void );
// void ser_write_byte( unsigned char Buf );
// char ser_byte_avail( void );
// unsigned char ser_read_byte( void );

//unsigned char readEeprom( unsigned int addres );
//void writeEeprom (unsigned char datavalue, unsigned int addres);

// ---------------------------------------------------------------------------
// Global variable definitions.
// ---------------------------------------------------------------------------
char __code acTestString[] = "Hello World...\rThis is a test string.\r";
__code __at (0x00) unsigned char codice[];
__data __at (0x00) unsigned char dati[];
//int xacTestString[] = "Hello World...\n\rThis is a test string.\n\r";
//char *pcStr = acTestString;				// Pointer to splash text.
// volatile lets you see the variable in sdcdb/ddd.
// volatile unsigned char __data tx_tail;	// Transmit interrupt index.
// volatile unsigned char __data rx_head;	// Receive interrupt index.
// volatile unsigned char __data rx_tail;	// Receive read index.
// volatile unsigned char __data tx_head;	// Transmit write index.
// static __bit is_txing;  					// True when transmitting a character.
// static unsigned char __data rx_buf[ BUFFER_SIZE ]; // Receive queue.
// static unsigned char __data tx_buf[ BUFFER_SIZE ]; // Transmit queue.

//  11.0592 MHz oscillator & SMOD = 1
//  TH1 = 0xFF;                   // 28800 baud * 2 = 57600 baud 0% error
//  TH1 = 0xFE;                   // 14400 baud * 2 = 28800 baud 0% error
//  TH1 = 0xFD;                   // 9600 baud * 2 = 19200 baud 0% error
//  TH1 = 0xFC;                   // 7200 baud * 2 = 14400 baud 0% error
//  TH1 = 0xFA                    // 4800 baud * 2 = 9600 baud 0% error
//
//  40 MHz oscillator  & SMOD = 1
//  TH1 = 0xF5;                   // 9600 baud * 2 = 19200 baud -1.36% error
//  TH1 = 0xEA;                   // 4800 baud * 2 = 19200 baud -1.36% error

//  TH1 = 0xF9;                   // 14400 * 2 = 28800, 40 MHz oscillator

//init_ser(0xFE);				// Initialize serial ops.

/* reload value, 115200 Bds x 1 = 115200 Bds at 11.059MHz */
//#define MYTH2 0xFF
//#define MYTL2 0xFD

/* reload value, 115200 Bds x 2 = 230400 Bds at 11.059MHz */
//#define MYTH2 0xFF
//#define MYTL2 0xFD

/* reload value, 57600 Bds x 2 = 115200 Bds at 11.059MHz */
//#define MYTH2 0xFF
//#define MYTL2 0xFA

/* reload value, 14400 Bds x 1 = 14400 Bds at 20MHz */
//#define MYTH2 0xFF
//#define MYTL2 0xD5



//init_timer0();
//TH0 = 0x1B; /* init values */
//TL0 = 0xE8;
#ifdef MICRO_DS89C4X0

_sdcc_external_startup() {
  PMR |= 1; //Enable internal SRAM Data Memory at adress 0000
  return 0;
}

void fourclockmultiplier(void) {
            //P0 = ~PMR; //Power Management Register (PMR)
            PMR |= 8; /* Clock Multiplier Selection. This bit selects the clock multiplication factor as shown. 4X/2X = 0
                         The frequency multiplier is set to two times the incoming clock by 4X/2X = 0. 4X/2X = 1 sets the
                         frequency multiplier to 4 times the incoming clock. This bit can only be altered when the crystal
                         multiplier enable bit (CTM) is cleared. Therefore, it must be set for the desired multiplication factor
                         prior to setting the CTM bit.*/
            //P1 = ~PMR; //Power Management Register (PMR)
            //PMR &= 239; // Disable Crystal Multiplier / not needed
            //P0 = ~EXIF; //External Interrupt Flag (EXIF)
            PMR |= 16; /* Crystal Multiplier Enable. This bit enables (= 1) or disables (= 0) the crystal multiplier function.
                          When set (= 1), the CKRY bit (EXIF.3) is cleared and the multiplier circuitry begins a stabilization
                          warm-up period to provide the clock multiplication factor specified by the 4X/2X bit (PMR.3). Upon
                          completion of the warm-up delay, the CKRY bit is set and the user can then modify CD1,CD0
                          (PMR.7, PMR.6) to select the crystal multiplier clock output. When clear (= 0), the crystal multipler
                          circuitry is disabled to conserve power. The CTM bit cannot be changed unless CD1,CD0 = 10b
                          and RGMD (EXIF.2) is cleared to 0. This bit is automatically cleared to 0 when the processor enters
                          stop mode.*/
            //P2 = ~PMR; //Power Management Register (PMR)
            //P1 = ~EXIF; //External Interrupt Flag (EXIF)
            while (!(EXIF & 8)) {}; /* Clock Ready. This bit indicates the status of the startup period for the crystal oscillator or crystal
                                    multiplier warm-up period. This bit is cleared after a reset or when exiting STOP mode. It is also
                                    cleared when the clock multiplier is enabled (setting of PMR.4 = 1). Once CKRY is cleared, a
                                    65,536 clock count must take place before CKRY is set and the lockout preventing modification of
                                    CD1:CD0 is removed. Once CKRY is set (= 1), the clock multiplier can then be selected as the
                                    clock source or switchover from the ring oscillator to the crystal oscillator can occur.*/
            //P2 = ~EXIF;
            PMR &= 63; // enable Crystal multiplier (4X or 2X mode as determined by PMR.3)
            /*P3 = ~PMR;
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms();
            delay_1000ms(); */
        }

#endif

//------------------------------------------------------------------
// Main routine here
//------------------------------------------------------------------
#ifdef HASWATCHDOG
  void watchdogRESET ( void ) {
    WDTRST = 0x1E;
    WDTRST = 0xE1;
  }
#endif

void felix (void) {
putchar('\r');
puts("              iWs                                 ,W[");
puts("              W@@W.                              g@@[");
puts("             i@@@@@s                           g@@@@W");
puts("             @@@@@@@W.                       ,W@@@@@@");
puts("            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i");
puts("           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@[");
puts("           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
puts("          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i");
puts("          @@@@@A~          'M@@@@@@A`         'V@@@@@@b");
puts("         d@@@*`              Y@@@@f              V@@@@@.");
puts("        i@@A`                 M@@P                 V@@@b");
puts("       ,@@A                   '@@                   !@@@.");
puts("       W@P                     @[                    '@@W");
puts("      d@@            ,         ]!                     ]@@b");
puts("     g@@[          ,W@@s       ]       ,W@@s           @@@i");
puts("    i@@@[          W@@@@i      ]       W@@@@i          @@@@i");
puts("   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@i");
puts("  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@@i");
puts(" d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@@@i");
puts("W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@@@@");
puts("'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@@@A");
puts("  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@@f");
puts("    'M@    'Vs.          ,z~       'N_           ,Z~     d@P");
puts("   M@@@       ~\-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@");
puts("    'VMW                  g@@@@@@@@@W     ~~~          ,WAf");
puts("       ~N.                @@@@@@@@@@@!                ,Z`");
puts("         V.               !M@@@@@@@@f                gf-");
puts("          'N.               '~***f~                ,Z`");
puts("            Vc.                                  _Zf");
puts("              ~e_                             ,gY~");
puts("                'V=_          -@@D         ,gY~ '");
puts("                    ~\=__.           ,__z=~`");
puts("                         '~~~*==Y*f~~~ ");
putchar('\r');
}

#ifdef HASEEPROM
void dumpEEPROM () {
  puts("Dumping eeprom content and changing first character:");

  unsigned char eepromchar = readEeprom(0);
  eepromchar++;
  if (0x5B == eepromchar) {
    eepromchar = 0x41;
  }
  writeEeprom (eepromchar, 0);

  for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo +=16){
    if (indirizzo < 0x10) {
      printf_tiny("000%x  ", indirizzo);
    } else if (indirizzo < 0x100) {
      printf_tiny("00%x  ", indirizzo);
    } else if (indirizzo < 0x1000) {
      printf_tiny("0%x  ", indirizzo);
    } else {
      printf_tiny("%x  ", indirizzo);
    }
    for (unsigned char posto = 0; posto < 16; posto++) {
      unsigned char lettura = readEeprom(indirizzo + (unsigned int)posto);
      if ( lettura < 0x10 ) {
        putchar('0');
      }
      printf_tiny("%x ", lettura);
      //P2_1 = !P2_1;
    }
    printf_tiny(" |");
    unsigned char lettura;
    for (unsigned char posto=0; posto < 16; posto++) {
      lettura = readEeprom(indirizzo+(short)posto);
      if ( lettura < 0x20 || lettura > 0x7E ) {
        lettura = '.';
      }
      printf_tiny("%c", lettura);
      //P2_1 = !P2_1;
    }
    putchar('|');
    putchar('\r');
  }

  putchar('\r');
  putchar('\r');

}

void hexEEPROM () {
  unsigned int checksum;
  puts("Dumping eeprom content in hex format:");
  for (unsigned short indirizzo = 0; indirizzo <= EEPROMSIZE; indirizzo += 16){
      printf_tiny(":10");
      checksum = 0x10;
      if (indirizzo < 0x10) {
        printf_tiny("000%x", indirizzo);
      } else if (indirizzo < 0x100) {
        printf_tiny("00%x", indirizzo);
      } else if (indirizzo < 0x1000) {
        printf_tiny("0%x", indirizzo);
      } else {
        printf_tiny("%x", indirizzo);
      }
      checksum += (indirizzo >> 8 ) & 0xFF ;
      checksum += (indirizzo & 0xFF);
      printf_tiny("00");
      checksum += 00;
    //putchar(readEeprom(address));
      for (unsigned char posto = 0; posto < 16; posto++) {
        unsigned char lettura = readEeprom(indirizzo+(unsigned short)posto);
        if ( lettura < 0x10 ) {
          putchar('0');
        }
        printf_tiny("%x", lettura);
        checksum += lettura;
        //P2_1 = !P2_1;
      }
      checksum = ((~checksum) & 0xFF);
      checksum++;
      if ( (checksum & 0xFF) < 16 ) {
        putchar('0');
      }
      printf_tiny("%x\r", checksum & 0xFF);
    }
    printf_tiny("%s", ":00000001FF");
  putchar('\r');
  putchar('\r');

}
#endif

void dumpCODE () {
  unsigned char *puntatore = codice;

  puts("Dumping code:");
  for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      if (indirizzo < 0x10) {
        printf_tiny("000%x  ", (unsigned int)indirizzo);
      } else if (indirizzo < 0x100) {
        printf_tiny("00%x  ", (unsigned int)indirizzo);
      } else if (indirizzo < 0x1000) {
        printf_tiny("0%x  ", (unsigned int)indirizzo);
      } else {
        printf_tiny("%x  ", (unsigned int)indirizzo);
      }
      for (unsigned int posto = 0; posto < 16; posto++ ) {
        if ( *puntatore < 16 ) {
          putchar('0');
        }
        printf_tiny("%x ", *puntatore);
        puntatore++;
      }
      printf_tiny(" |");
      puntatore -= 16;
    for (unsigned char posto = 0; posto < 16; posto++ ) {
      if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
        putchar('.');
      } else {
        printf_tiny("%c", *puntatore);
      }
      puntatore++;
    }
    putchar('|');
    putchar('\r');
  }
  putchar('\r');

}

void dumpRAM () {
  unsigned char *puntatore = dati;

  puts("Dumping ram memory:");
  for (unsigned int indirizzo = 0; indirizzo <= RAMSIZE; indirizzo += 16 ) {
      if (indirizzo < 0x10) {
        printf_tiny("000%x  ", indirizzo);
      } else if (indirizzo < 0x100) {
        printf_tiny("00%x  ", indirizzo);
      } else if (indirizzo < 0x1000) {
        printf_tiny("0%x  ", indirizzo);
      } else {
        printf_tiny("%x  ", indirizzo);
      }
      for (unsigned int posto = 0; posto < 16; posto++ ) {
        if ( *puntatore < 16 ) {
          putchar('0');
        }
        printf_tiny("%x ", *puntatore);
        puntatore++;
      }
      printf_tiny(" |");
      puntatore -= 16;
    for (unsigned char posto = 0; posto < 16; posto++ ) {
      if ( *puntatore < 0x20 || *puntatore > 0x7E ) {
        putchar('.');
      } else {
        printf_tiny("%c", *puntatore);
      }
      puntatore++;
    }
    putchar('|');
    putchar('\r');
  }
  putchar('\r');

}

void hexCODE(){
  unsigned char *puntatore = codice;

  //puntatore -= CODESIZE+1;

  puts("Dumping code in hex file format:");

  unsigned int checksum;
  for (unsigned long int indirizzo = 0; indirizzo <= CODESIZE; indirizzo += 16 ) {
      printf_tiny(":10");
      checksum = 0x10;
      if (indirizzo < 0x10) {
        printf_tiny("000%x", (unsigned int)indirizzo);
      } else if (indirizzo < 0x100) {
        printf_tiny("00%x", (unsigned int)indirizzo);
      } else if (indirizzo < 0x1000) {
        printf_tiny("0%x", (unsigned int)indirizzo);
      } else {
        printf_tiny("%x", (unsigned int)indirizzo);
      }
      checksum += (indirizzo >> 8 ) & 0xFF ;
      checksum += (indirizzo & 0xFF);
      printf_tiny("00");
      checksum += 00;
      for (unsigned char posto = 0; posto < 16; posto++ ) {
        if ( *puntatore < 16 ) {
          putchar('0');
        }
        printf_tiny("%x", *puntatore);
        checksum += *puntatore;
        puntatore++;
      }
      checksum = ((~checksum) & 0xFF);
      checksum++;
      if ( (checksum & 0xFF) < 16 ) {
        putchar('0');
      }
      printf_tiny("%x\r", checksum & 0xFF);
  }
  printf_tiny("%s", ":00000001FF");

  putchar('\r');
  putchar('\r');
}

void reset( void ) {
  puts("Resetting the micro.");
  //WDTCON |= 0xE0; // 2048 ms at 12MHz
  //WDTCON |= 0x8; // no hardware pin low on reset
  //WDTCON |= 0x4; // enable Watchdog
  //WDTRST = 0x1E;
  //WDTRST = 0xE1;
  while ( 1 );
}

void start( void )
{
    #ifdef HASWATCHDOG
      WDTCON |= 0xE0; // 2048 ms at 12MHz
      WDTCON |= 0x8; // no hardware pin low on reset
      WDTCON |= 0x4; // enable Watchdog
      WDTRST = 0x1E;
      WDTRST = 0xE1;
    #endif
    #ifdef HASDOUBLECLOCK
      #if MYCLKREG  == CLKREG_X2
        CLKREG |= CLKREG_X2;
      #else
        CLKREG &= !CLKREG_X2;
      #endif
    #endif
    P0=0xFF;
    P1=0xFF;
    P2=0xFF;
    P3=0xFF;
    init_ser(MYTH2, MYTL2);
    felix();
    printf_tiny("Cpu %s running at %sMHz\r", CPU,  MHZ);
    #ifdef HASDOUBLECLOCK
      if (CLKREG & CLKREG_X2) {
        puts("Double system clock");
      }
    #endif
    #ifdef HASCOLDWARM
    if (PCON & 0x10) {
      puts("Cold reset");
      PCON &= ~0x10;
    } else {
      puts("Warm reset");
    }
    #endif
    #ifdef HASWATCHDOG
      puts("Enabled watchdog");
    #endif
    #ifdef MICRO_DS89C4X0
      fourclockmultiplier();
      puts("Enabled four time clock multiplier");
    #endif
    printf_tiny("Started timer 2 with th = %x and tl = %x\r",MYTH2, MYTL2);
    printf_tiny("Started serial at %s bps\r", BPS);
    init_timer0(0xDE, 0xED);
    printf_tiny("Started timer 0 with th = %x and tl = %x\r", 0xDE, 0xED);
    puts("Hello World...\rThis is a test string.");
    puts("Print a string from code memory:");
    puts(acTestString); 
}

void p( unsigned char porta ) {
  if (porta == 3 ) {
    printf_tiny("Which pin from 2 to 7 of port %u?\r", porta);
  } else if (porta == 2 ) {
    printf_tiny("Which pin from 3 to 7 of port %u?\r", porta);
  } else {
    printf_tiny("Which pin from 0 to 7 of port %u?\r", porta);
  }
  while (!ser_byte_avail()){
    //  watchdogRESET();
  };
  unsigned char pin = getchar();
  pin = pin - 48;
  printf_tiny("Pin %u of port %u: ", pin, porta );
  if ( pin >= 0 && pin <= 8 ) {
    if ( !(porta == 3 && ( pin == 0 || pin == 1))) {
      if ( !(porta == 2 && ( pin == 0 || pin == 1 || pin == 2))) {
        puts("0 off, 1 on.");
        while (!ser_byte_avail()){
          //watchdogRESET();
        };
        unsigned char action = getchar();
        action = action -48;
        if (action == 0 || action == 1) {
          if (action == 1) {
            action = action << pin;
            action = ~action;
          //printf_tiny("%x ",(unsigned int)action);
            printf_tiny("Setting pin %u of port %u on.\r", pin, porta );
            if (0 == porta) {
              P0 &= action;
            } else if (1 == porta) {
              P1 &= action;
            } else if (2 == porta) {
              P2 &= action;
            } else {
              P3 &= action;
            }
          //P2 = 1;
          } else {
            action = 1;
            action = action << pin;
            //printf_tiny("%x ",(unsigned int)action);
            printf_tiny("Setting pin %u of port %u off.\r", pin, porta );
            if (0 == porta) {
              P0 |= action;
            } else if (1 == porta) {
              P1 |= action;
            } else if (2 == porta) {
              P2 |= action;
            } else {
              P3 |= action;
            }
          //P2 = 0;
          }
        } else {
          puts("Invalid action!");
        }
      } else {
        puts("Sorry the pin 0 on port 2 is the blinking led,");
        puts("the pin 1 is the serial character transmit blink,");
        puts("the pin 2 is the serial character receive blink.");
      }
    } else {
        puts("Sorry the pins 0 and 1 of port 3 are used by serial port.");
    }
  } else {
      puts("Invalid pin!");
  }
}

void HELP ( void ) {
  puts("Available commands are:");
  puts("0, 1, 2 or 3 to change pin ports status.");
  puts("c dump code memory.");
  puts("C dump code memory in hex format.");
  #ifdef HASEEPROM
    puts("e dump eeprom memory.");
    puts("E dump eeprom memory in hex format.");
  #endif
  puts("m dump ram memory.");
  puts("f print felix");
  #ifdef HASWATCHDOG
    puts("r reset the microcontroller.");
  #endif
  puts("h print this help.");
}

void main( void ) {
    start();
    puts("Insert command, h for help.");

    while( 1 )							// forever.
    {
        #ifdef HASWATCHDOG
          watchdogRESET();
        #endif
        unsigned char carattere = 0;
        if ( ser_byte_avail() )	{				// if data coming in...
          carattere = getchar();
          //putchar(carattere);	// get char and send it back out.
          //putchar('\r');
          /*if ( carattere == '\r' ) {
            putchar('\n');
          }*/
          if ( carattere >= 0x30 && carattere <= 0x7A ) {
            putchar(carattere);
          }
          putchar('\r');
          switch (carattere)
          {
            case 'c':
              dumpCODE();
              break;
            case 'C':
              hexCODE();
              break;
#ifdef HASEEPROM
            case 'e':
              dumpEEPROM();
              break;
            case 'E':
              hexEEPROM();
              break;
#endif
            case 'f':
              felix();
              break;
            case 'm':
              dumpRAM();
              break;
#ifdef HASWATCHDOG
            case 'r':
              reset();
              break;
#endif
            case 'h':
            case 'H':
              HELP();
              break;
            case '0':
              p(0);
              break;
            case '1':
              p(1);
              break;
            case '2':
              p(2);
              break;
            case '3':
              p(3);
              break;
            default:
              if ( carattere >= 0x30 && carattere <= 0x7A ) {
                printf_tiny("Invalid command %c.\r", carattere );
              }
          }
          while ( ser_byte_avail() )	{				// if data coming in...
            carattere = getchar();
          }
          puts("Insert command, h for help:");
          //P2_0 = !P2_0;
        }
    }
}
