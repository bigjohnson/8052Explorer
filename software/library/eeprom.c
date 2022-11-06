#include "eeprom.h"

unsigned char tempa;
unsigned char tempb;
unsigned char tempc;

void readEepromAssembler (void) __naked
{
    __asm
        push acc
        push b
        push dpl
        push dph

        mov dpl, _tempa
        mov dph, _tempb
        movx a, @dptr
        mov _tempc, a

        pop dph
        pop dpl
        pop b
        pop acc
        reti
    __endasm;
}

unsigned char readEeprom (unsigned short addres)
{
   unsigned char returnvalue;
   //unsigned char tempa;
   //unsigned char tempb;
   //unsigned char tempc = 0;

   // Enable internal EEPROM
      //WMCON |= 8;
    EECON |= 8;

    tempa = (unsigned char) (addres & 255);
    tempb = (unsigned char) ((addres >> 8) & 255);

    // Write a value to the EEPROM Memory
    readEepromAssembler();

    returnvalue = tempc;

    // Disable internal EEPROM
    //WMCON &= ~8;
    EECON &= ~8;

    return returnvalue;
}

void writeEepromAssembler (void) __naked
{
    __asm
        push acc
        push b
        push dpl
        push dph

        mov dpl, _tempa
        mov dph, _tempb
        mov a, _tempc
        movx @dptr, a

        pop dph
        pop dpl
        pop b
        pop acc
        reti
    __endasm;
}

unsigned char writeEeprom (unsigned char datavalue, unsigned short addres)
{
   // Enable internal EEPROM
    //WMCON |= 8;
    EECON |= 8;

    // Enable internal EEPROM write
    //WMCON |= 16;
    EECON |= 16;

    //unsigned char tempa;
    //unsigned char tempb;
    //unsigned char tempc;

    tempa = (unsigned char) (addres & 255);
    tempb = (unsigned char) ((addres >> 8) & 255);
    tempc = datavalue;

    // Write a value to the EEPROM Memory
    writeEepromAssembler();

    //while ((WMCON | 2) == 0);
    while ((EECON | 2) == 0);

   // Disable internal EEPROM write
    //WMCON &= ~16;
    EECON &= ~16;

    // Disable internal EEPROM
    //WMCON &= ~8;
    EECON &= ~8;


    //while (readEeprom(addres) != datavalue);
    return readEeprom(addres);
}
