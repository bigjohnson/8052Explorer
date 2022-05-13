// AT89S8253 tested max clock speed 50MMHz with double data rate
// over 50MHZ double data rate serial hang
#ifdef MICRO_AT89S8253
  #include <at89S8253.h>
//  #ifdef MAINFILE
  #define EEPROMSIZE 0x7FF
  #define CODESIZE 0x2FFF
  #define USERSIZE 0x3F
  #define ATMELSIZE 0x3F
  #define CPU "89S8253"
  #ifdef MAINFILE
    #warning setup AT89S8253 microcontroller
  #endif

  #ifdef CLOCK_20000000
    #define MHZ "20"
    #ifdef MAINFILE
      #warning setup 20MHz clock
    #endif

    #ifdef DOUBLECLOCK
      #define MYCLKREG CLKREG_X2;
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
      #define MYCLKREG 0;
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
      #define MYCLKREG CLKREG_X2;
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

      #define MYCLKREG 0;
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

  #endif

  #ifdef CLOCK_50000000
    #define MHZ "50"
    #ifdef MAINFILE
      #warning setup 50MHz clock
    #endif
    #ifdef DOUBLECLOCK
      #define MYCLKREG CLKREG_X2;
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
      #define MYCLKREG 0;
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

  #endif

// AT89S8252 tested max clock speed 40MHz
// at 44.9MHZ program run but the program memory read fail
// during programming test
#ifdef MICRO_AT89S8252
  #define EEPROMSIZE 0x7FF
  #define CODESIZE 0x1FFF
  #include <at89S8252.h>
//  #ifdef MAINFILE
  #define CPU "89S8252"
  #ifdef MAINFILE
    #warning setup AT89S8252 microcontroller
  #endif
  #ifdef CLOCK_20000000
    #define MHZ "20"
    #define ONE_SECOND_DIVISOR 407
    #ifdef MAINFILE
      #warning setup 20MHz clock
    #endif
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
#endif

#ifdef MAINFILE
  #ifndef BPS
    #error Cannot configure serial with clock and bps combination.
  #endif
#endif
