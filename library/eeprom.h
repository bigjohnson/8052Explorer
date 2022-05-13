#ifndef __EEPROM_H
#define __EEPROM_H 1

#include <at89S8253.h>

extern unsigned char readEeprom( unsigned short addres );
extern void writeEeprom (unsigned char datavalue, unsigned short addres);

#endif
