# 8052Explorer

## A n 8052 firmware to gain experiences with the micro, for 89s8252, 89s8253

Writed in c program language and compiled with SDCC 4.2.0, the cpu selection, oscillator clock and serial speed are choosed in the makefile.
Connect to pc from the serial line and has a menu with some apps that you can choose with a single key press: 

- 0, 1, 2 or 3 to change pin ports status.
- c dump code memory.
- C dump code memory in hex format.
- e dump eeprom memory.
- E dump eeprom memory in hex format.
- m dump ram memory.
- f print felix
- r reset the microcontroller.
- H print this help.

## Boot screen:
```
              iWs                                 ,W[
              W@@W.                              g@@[
             i@@@@@s                           g@@@@W
             @@@@@@@W.                       ,W@@@@@@
            ]@@@@@@@@@W.   ,_______.       ,m@@@@@@@@i
           ,@@@@@@@@@@@@W@@@@@@@@@@@@@@mm_g@@@@@@@@@@[
           d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          i@@@@@@@A*~~~~~VM@@@@@@@@@@Af~~~~V*@@@@@@@@@i
          @@@@@A~          'M@@@@@@A`         'V@@@@@@b
         d@@@*`              Y@@@@f              V@@@@@.
        i@@A`                 M@@P                 V@@@b
       ,@@A                   '@@                   !@@@.
       W@P                     @[                    '@@W
      d@@            ,         ]!                     ]@@b
     g@@[          ,W@@s       ]       ,W@@s           @@@i
    i@@@[          W@@@@i      ]       W@@@@i          @@@@i
   i@@@@[          @@@@@[      ]       @@@@@[          @@@@@i
  g@@@@@[          @@@@@!      @[      @@@@@[          @@@@@@i
 d@@@@@@@          !@@@P      iAW      !@@@A          ]@@@@@@@i
W@@@@@@@@b          '~~      ,Z Yi      '~~          ,@@@@@@@@@
'*@@@@@@@@s                  Z`  Y.                 ,W@@@@@@@@A
  'M@@@*f**W.              ,Z     Vs               ,W*~~~M@@@f
    'M@    'Vs.          ,z~       'N_           ,Z~     d@P
   M@@@       ~-__  __z/` ,gmW@@mm_ '+e_.   __=/`      ,@@@@
    'VMW                  g@@@@@@@@@W     ~~~          ,WAf
       ~N.                @@@@@@@@@@@!                ,Z`
         V.               !M@@@@@@@@f                gf-
          'N.               '~***f~                ,Z`
            Vc.                                  _Zf
              ~e_                             ,gY~
                'V=_          -@@D         ,gY~ '
                    ~=__.           ,__z=~`
                         '~~~*==Y*f~~~ 

Cpu 89S8253 running at 50MHz
Double system clock
Warm reset
Enabled watchdog
Started timer 2 with th = FF and tl = CA
Started serial at 57600 bps
Started timer 0 with th = DE and tl = ED
Hello World...
This is a test string.
Print a string from code memory:
Hello World...
This is a test string.
Insert command, h for help.
```

## command output examples:

- c:
```
Dumping code:
0000  02 00 29 32 FF FF FF FF FF FF FF 02 10 71 FF FF  |..)2.........q..|
0010  FF FF FF 32 FF FF FF FF FF FF FF 32 FF FF FF FF  |...2.......2....|
0020  FF FF FF 02 0F 96 02 0E 0B 75 81 59 12 12 B4 E5  |.........u.Y....|
0030  82 60 03 02 00 26 79 00 E9 44 00 60 1B 7A 00 90  |.`...&y..D.`.z..|
0040  1F 3A 78 01 75 A0 00 E4 93 F2 A3 08 B8 00 02 05  |.:x.u...........|
0050  A0 D9 F4 DA F2 75 A0 FF E4 78 FF F6 D8 FD 78 00  |.....u...x....x.|
0060  E8 44 00 60 0A 79 01 75 A0 00 E4 F3 09 D8 FC 78  |.D.`.y.u.......x|
...
```

