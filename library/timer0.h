#ifndef __TIMER0_H
#define __TIMER0_H 1

#include "../microsetup.h"

#define BLINKLED P3_3

void init_timer0(unsigned char th, unsigned char tl);
unsigned int millis(void);
void it_timer0(void) __interrupt 1 __using 3;

#endif
