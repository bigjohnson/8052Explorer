#ifdef MICRO_DS89C420
  #define MICRO_DS89C4X0
  #define MICROCONTROLLER_DS89C420
  #define MCS51REG_ENABLE_WARNINGS
  #include <mcs51reg.h>
  //#include <at89S8253.h>
  #define RAMSIZE 0X3FF
  #define CODESIZE 0x3FFF
  #define USERSIZE 0x3F
  #define ATMELSIZE 0x3F
  #define CPU "DS89C420"
  #ifdef MAINFILE
    #warning setup DS89C420 microcontroller
  #endif
#endif

#ifdef MICRO_DS89C440
  #define MICRO_DS89C4X0
  #define MICROCONTROLLER_DS89C420
  #define MCS51REG_ENABLE_WARNINGS
  #include <mcs51reg.h>
  //#include <at89S8253.h>
  #define RAMSIZE 0X3FF
  #define CODESIZE 0x7FFF
  #define USERSIZE 0x3F
  #define ATMELSIZE 0x3F
  #define CPU "DS89C440"
  #ifdef MAINFILE
    #warning setup DS89C440 microcontroller
  #endif
#endif

#ifdef MICRO_DS89C450
  #define MICRO_DS89C4X0
  #define MICROCONTROLLER_DS89C420
  #define MCS51REG_ENABLE_WARNINGS
  #include <mcs51reg.h>
  //#include <at89S8253.h>
  #define RAMSIZE 0X3FF
  #define CODESIZE 0xFFFF
  #define USERSIZE 0x3F
  #define ATMELSIZE 0x3F
  #define CPU "DS89C450"
  #ifdef MAINFILE
    #warning setup DS89C450 microcontroller
  #endif
#endif

// AT89S8253 tested max clock speed 50MMHz with double data rate
// over 50MHZ double data rate serial hang
#ifdef MICRO_AT89S8253

  #include <at89S8253.h>
  #define RAMSIZE 0XFF
  #define EEPROMSIZE 0x7FF
  #define CODESIZE 0x2FFF
  #define USERSIZE 0x3F
  #define ATMELSIZE 0x3F
  #define CPU "89S8253"
  #define HASEEPROM
  #define HASCOLDWARM
  #define HASWATCHDOG
  #define HASDOUBLECLOCK
  #ifdef MAINFILE
    #warning setup AT89S8253 microcontroller
  #endif
#endif

// AT89S8252 tested max clock speed 40MHz
// at 44.9MHZ program run but the program memory read fail
// during programming test
#ifdef MICRO_AT89S8252
  #define RAMSIZE 0XFF
  #define EEPROMSIZE 0x7FF
  #define CODESIZE 0x1FFF
  #include <at89S8252.h>
  #define CPU "89S8252"
  #define HASEEPROM
  #ifdef MAINFILE
    #warning setup AT89S8252 microcontroller
  #endif
#endif

#ifdef MICRO_AT89X52
  #define RAMSIZE 0XFF
  #define EEPROMSIZE 0x7FF
  #define CODESIZE 0x1FFF
  #define MICROCONTROLLER_AT89X52
  #include <mcs51reg.h>
  #define CPU "89C52"
  #ifdef MAINFILE
    #warning setup AT89X52 microcontroller
  #endif
#endif

  #ifdef CLOCK_11059200
    #define MHZ "11.0592"
    #define ONE_SECOND_DIVISOR 407
    #ifdef MAINFILE
      #warning setup 11.0592MHz clock
    #endif
    
    #ifdef DOUBLECLOCK
      #define MYCLKREG CLKREG_X2
      #define ONE_SECOND_DIVISOR 407
      #ifdef MAINFILE
        #warning setup DOUBLE clock
      #endif
    
      #ifdef BPS115200
        #define MYTH2 0xFF
        #define MYTL2 0xFA
        #define BPS "115200"
        #ifdef MAINFILE
          #warning setup serial at 115200 bps
        #endif
      #endif

      #ifdef BPS57600
        #define MYTH2 0xFF
        #define MYTL2 0xF4
        #define BPS "57600"
        #ifdef MAINFILE
          #warning setup serial at 57600 bps
        #endif
      #endif

      #ifdef BPS38800
        #define MYTH2 0xFF
        #define MYTL2 0xE8
        #define BPS "38800"
        #ifdef MAINFILE
          #warning setup serial at 38800 bps
        #endif
      #endif

      #ifdef BPS28800
        #define MYTH2 0xFF
        #define MYTL2 0xE8
        #define BPS "28800"
        #ifdef MAINFILE
          #warning setup serial at 28800 bps
        #endif
      #endif

      #ifdef BPS19200
        #define MYTH2 0xFF
        #define MYTL2 0xDC
        #define BPS "19200"
      #ifdef MAINFILE
        #warning setup serial at 19200 bps
      #endif
    #endif

#else

    #define ONE_SECOND_DIVISOR 407
    #define MYCLKREG 0
    #ifdef MAINFILE
        #warning setup normal clock
    #endif

    #ifdef BPS115200
      #define MYTH2 0xFF
      #define MYTL2 0xFD
      #define BPS "115200"
      #ifdef MAINFILE
        #warning setup serial at 115200 bps
      #endif
    #endif

    #ifdef BPS57600
      #define MYTH2 0xFF
      #define MYTL2 0xFA
      #define BPS "57600"
      #ifdef MAINFILE
        #warning setup serial at 57600 bps
      #endif
    #endif
    
    #ifdef BPS34800
      #define MYTH2 0xFF
      #define MYTL2 0xF7
      #define BPS "34800"
    #ifdef MAINFILE
      #warning setup serial at 34800 bps
    #endif
  #endif

    #ifdef BPS28800
      #define MYTH2 0xFF
      #define MYTL2 0xF4
      #define BPS "28800"
      #ifdef MAINFILE
        #warning setup serial at 28800 bps
      #endif
    #endif

    #ifdef BPS19200
      #define MYTH2 0xFF
      #define MYTL2 0xEE
      #define BPS "19200"
      #ifdef MAINFILE
        #warning setup serial at 19200 bps
      #endif
    #endif

    #ifdef BPS14400
      #define MYTH2 0xFF
      #define MYTL2 0xE8
      #define BPS "14400"
      #ifdef MAINFILE
        #warning setup serial at 14400 bps
      #endif
    #endif

    #ifdef BPS9600
      #define MYTH2 0xFF
      #define MYTL2 0xDC
      #define BPS "9600"
      #ifdef MAINFILE
        #warning setup serial at 9600 bps
      #endif
    #endif

  #endif

  #endif

  #ifdef CLOCK_20000000
    #define MHZ "20"
    #ifdef MAINFILE
      #warning setup 20MHz clock
    #endif

    #ifdef DOUBLECLOCK
      #define MYCLKREG CLKREG_X2
      #define ONE_SECOND_DIVISOR 407
      #ifdef MAINFILE
        #warning setup DOUBLE clock
      #endif

      #ifdef BPS28800
        #define MYTH2 0xFF
        #define MYTL2 0xD5
        #define BPS "28800"
        #ifdef MAINFILE
          #warning setup serial at 28800 bps
        #endif
      #endif

      #ifdef BPS19200
        #define MYTH2 0xFF
        #define MYTL2 0xBF
        #define BPS "19200"
        #ifdef MAINFILE
          #warning setup serial at 19200 bps
        #endif
      #endif

    #else
      #define MYCLKREG 0
      #ifdef MAINFILE
        #warning setup normal clock
      #endif
      #define ONE_SECOND_DIVISOR 407

      #ifdef BPS14400
        #define MYTH2 0xFF
        #define MYTL2 0xD5
        #define BPS "14400"
        #ifdef MAINFILE
          #warning setup serial at 14400 bps
        #endif
      #endif

      #ifdef BPS9600
        #define MYTH2 0xFF
        #define MYTL2 0xBF
        #define BPS "9600"
        #ifdef MAINFILE
          #warning setup serial at 9600 bps
        #endif
      #endif
    #endif
  #endif

   #ifdef CLOCK_24576000
    #define MHZ "24.576"
    #ifdef MAINFILE
      #warning setup 24.576MHz clock
    #endif
    #ifdef DOUBLECLOCK
      #define MYCLKREG CLKREG_X2
      #define ONE_SECOND_DIVISOR 500 // calibrato
      #ifdef MAINFILE
        #warning setup DOUBLE clock
      #endif
      #ifdef BPS38400
        #define MYTH2 0xFF
        #define MYTL2 0xD8
        #define BPS "38400"
        #ifdef MAINFILE
          #warning setup serial at 38400 bps
        #endif
      #endif

    #else

      #define MYCLKREG 0
        #ifdef MAINFILE
          #warning setup normal clock
        #endif
        #define ONE_SECOND_DIVISOR 407
        #ifdef BPS19200
          #define MYTH2 0xFF
          #define MYTL2 0xD8
          #define BPS "19200"
          #ifdef MAINFILE
            #warning setup serial at 19200 bps
          #endif
        #endif
      #endif

    #endif

  //#endif

#ifdef CLOCK_40000000
    #define MHZ "40"
    #define ONE_SECOND_DIVISOR 407
    #ifdef MAINFILE
      #warning setup 40MHz clock
    #endif

    #ifdef BPS28800
      #define MYTH2 0xFF
      #define MYTL2 0xD5
      #define BPS "28800"
      #ifdef MAINFILE
        #warning setup serial at 28800 bps
      #endif
    #endif

    #ifdef BPS19200
      #define MYTH2 0xFF
      #define MYTL2 0xBF
      #define BPS "19200"
      #ifdef MAINFILE
        #warning setup serial at 19200 bps
      #endif
    #endif
  #endif

  #ifdef CLOCK_50000000
    #define MHZ "50"
    #ifdef MAINFILE
      #warning setup 50MHz clock
    #endif
    #ifdef DOUBLECLOCK
      #define MYCLKREG CLKREG_X2
      #define ONE_SECOND_DIVISOR 814
      #ifdef MAINFILE
        #warning setup normal clock
      #endif
      #ifdef BPS57600
        #define MYTH2 0xFF
        #define MYTL2 0xCA
        #define BPS "57600"
        #ifdef MAINFILE
          #warning setup serial at 57600 bps
        #endif
      #endif

    #else
      #define MYCLKREG 0
      #ifdef MAINFILE
        #warning setup normal clock
      #endif
      #define ONE_SECOND_DIVISOR 407
      #ifdef BPS28800
        #define MYTH2 0xFF
        #define MYTL2 0xCA
        #define BPS "28800"
        #ifdef MAINFILE
          #warning setup serial at 28800 bps
        #endif
      #endif
    #endif

  //#endif

#endif

#ifdef MAINFILE
  #ifndef BPS
    #error Cannot configure serial with clock and bps combination.
  #endif
#endif
