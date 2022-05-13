# 8052Explorer

## A n 8052 firmware to gain experiences with the micro, for 89s8252, 89s8253

Writed in c program language and compiled with SDCC 4.2.0, the cpu selection, oscillator clock and serial speed are choosed in the makefile.

If you want burn a micro with the copiled file, without compiling yourelf, use the firmware build/8052Explorer.hex

You should connect three led to: 

- port 2_0 about one second half period blink drived by timer0 interrupt.
- port 2_1 blink when a charcter is transmitted from serial line.
- port 2_2 blink when a charcter is transmitted from serial line.

The connection scheme is the classic for 8051 +V to anode ----|>---- katode to PORT

If you connect led to all ports yo can power them on/off.

Don't connect led to pin 0 and 1 of port 3, that are used for serial port.

Serial port connection is

- P3_0 receive data from pc, connect it to the tx of a 5v TTL usb serial converter.

- P3_1 transmit data to pc, connect it to the rx of a 5v TTL usb serial converter.

Connect to pc from the serial line and has a menu with some apps that you can choose with a single key press:

- 0, 1, 2 or 3 to change pin ports status 1/0.
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

# 0, 1, 2, 3
```
Which pin from 0 to 7 of port 0?
Pin 7 of port 0: 0 off, 1 on.
Setting pin 7 of port 0 on.
```
# c
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
# C
```
Dumping code in hex file format:
:1000000002002932FFFFFFFFFFFFFF021071FFFF19
:10001000FFFFFF32FFFFFFFFFFFFFF32FFFFFFFF8A
:10002000FFFFFF020F96020E0B7581591212B4E505
:100030008260030200267900E94400601B7A009088
:100040001F3A780175A000E493F2A308B8000205F6
:10005000A0D9F4DAF275A0FFE478FFF6D8FD7800B5
:10006000E84400600A790175A000E4F309D8FC783F
:1000700000E84400600C7900900001E4F0A3D8FC93
:10008000D9FA02002675A61E75A6E12290000D126F
:10009000103D9012DF75F08012125890000D021082
:1000A0003D901A3075F080121258900000120F0720
...
```
# e
```
Dumping eeprom content and changing first character:
0000  4D 6F 72 65 6D 20 69 70 73 75 6D 20 64 6F 6C 6F  |Morem ipsum dolo|
0010  72 20 73 69 74 20 61 6D 65 74 2C 20 63 6F 6E 73  |r sit amet, cons|
0020  65 63 74 65 74 75 72 20 61 64 69 70 69 73 63 69  |ectetur adipisci|
0030  6E 67 20 65 6C 69 74 2E 20 45 74 69 61 6D 20 65  |ng elit. Etiam e|
0040  66 66 69 63 69 74 75 72 20 70 75 6C 76 69 6E 61  |fficitur pulvina|
0050  72 20 61 6C 69 71 75 61 6D 2E 20 44 75 69 73 20  |r aliquam. Duis |
0060  70 68 61 72 65 74 72 61 20 6E 65 63 20 74 65 6C  |pharetra nec tel|
0070  6C 75 73 20 6E 6F 6E 20 74 65 6D 70 6F 72 2E 20  |lus non tempor. |
0080  43 72 61 73 20 6C 75 63 74 75 73 20 65 75 20 64  |Cras luctus eu d|
...
```
# E
```
Dumping eeprom content in hex format:
:100000004D6F72656D20697073756D20646F6C6FD4
:10001000722073697420616D65742C20636F6E7338
:10002000656374657475722061646970697363696E
:100030006E6720656C69742E20457469616D20655A
:1000400066666963697475722070756C76696E6135
:100050007220616C697175616D2E20447569732021
:100060007068617265747261206E65632074656C7E
...
```
# m
Dumping ram memory:
```
0000  00 00 40 00 00 00 20 1A FF 07 61 00 00 00 97 01  |..@.......a.....|
0010  36 51 00 00 00 00 00 0E 00 00 00 00 00 00 C6 DD  |6Q..............|
0020  03 00 00 30 10 00 10 20 00 09 00 10 00 30 80 1F  |...0... .....0..|
0030  11 00 04 01 01 0C 6D 68 68 37 37 37 64 63 03 68  |......mhh777dc.h|
0040  63 43 68 65 45 68 35 20 34 35 20 30 20 33 30 20  |cCheEh30 20  |cC|
0050  30 30 35 30 20 20 F7 DD 66 DB 88 0E AB 07 5E 5E  |5E 5E ..f.....@@|
0060  07 7F 1A C8 010 20 20 11 1A 82 40 5E FE 11 1A 20  |...I.... ....^..|
0070  48 10 FA 054 02 00 07 00 40 30 00 30 00 70 40 00  |...!....@!.!.py.|
0080  40 00 C6 10 C6 10 2B 12 C4 01 3D 12 73 05 00 00  |@.J...+...=.s...|
0090  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
00A0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
00B0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
00C0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
00D0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
00E0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
00F0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
...
```
# f
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


```
