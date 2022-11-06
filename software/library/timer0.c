#include "timer0.h"

volatile unsigned int millisx;
volatile unsigned int prima;

void init_timer0(unsigned char th, unsigned char tl) {
  TMOD &= 0xF0; /* Timer 0 mode 0 with software gate */
/* GATE0=0; C/T0#=0; M10=0; M00=0; */
  //TH0 = 0x1B; /* init values */
  //TL0 = 0xE8;

  TH0 = th; /* init values */
  TL0 = tl;
  #ifdef IPH
    IPH |= IPH_PT0H;
  #endif
  ET0 = 1; /* enable timer0 interrupt */
  EA = 1; /* enable interrupts */
  TR0 = 1; /* timer0 run */
}

unsigned int millis(void) {
  return millisx;
}

void it_timer0(void) __interrupt 1 __using 3 /* interrupt address is 0x000b */
{
  //TF0 = 0; /* reset interrupt flag (already done by hardware)*/
  /*
  WDTCON |= 0x8;
  WDTCON |= 0x4;
  */
  millisx++;
  //BLINKLED = !BLINKLED;
  if ( millisx < prima ) {
    prima = millisx;
  }
  if (millisx % ONE_SECOND_DIVISOR == 0 && millisx > prima) {
    prima = millisx;
    P2_0 = !P2_0;
    //putchar('\n');
  }
}
