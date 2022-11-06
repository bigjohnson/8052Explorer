# MICRO_AT89S8253
# 	CLOCK_20000000
#			BPS9600
#			BPS14400
# 	CLOCK_20000000 DOUBLECLOCK
#			BPS19200
#			BPS28800
# MICRO_AT89S8252
# 	CLOCK_40000000
#			BPS19200
#			BPS28800
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_50000000 -DDOUBLECLOCK -DBPS57600
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_50000000 -DBPS28800
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_24576000 -DDOUBLECLOCK -DBPS38400
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_24576000 -DBPS19200
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_20000000 -DDOUBLECLOCK -DBPS28800
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_20000000 -DDOUBLECLOCK -DBPS19200
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_20000000 -DBPS14400
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_20000000 -DBPS9600
#SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_11059200 -DBPS115200
SDCCCFLAGS = --model-small -DMICRO_AT89S8253 -DCLOCK_11059200 -DDOUBLECLOCK -DBPS115200
#SDCCCFLAGS = --model-small -DMICRO_AT89S8252 -DCLOCK_40000000 -DBPS28800
#SDCCCFLAGS = --model-small -DMICRO_AT89S8252 -DCLOCK_40000000 -DBPS19200
#SDCCCFLAGS = --model-small -DMICRO_AT89S8252 -DCLOCK_20000000 -DBPS14400
#SDCCCFLAGS = --model-small -DMICRO_AT89S8252 -DCLOCK_20000000 -DBPS9600
#SDCCCFLAGS = --model-small -DMICRO_AT89S8252 -DCLOCK_11059200 -DBPS115200
#SDCCCFLAGS = --model-small -DMICRO_AT89X52 -DCLOCK_11059200 -DBPS115200


all: build/8052Explorer.hex

build/8052Explorer.hex: build/8052Explorer.rel build/eeprom.rel build/serial.rel build/timer0.rel
	sdcc $(SDCCCFLAGS) build/8052Explorer.rel build/eeprom.rel build/serial.rel build/timer0.rel -o build/
	packihx build/8052Explorer.ihx > build/8052Explorer.hex

build/serial.rel: library/serial.c library/serial.h
	sdcc $(SDCCCFLAGS) -c library/serial.c -o build/

build/eeprom.rel: library/eeprom.c library/eeprom.h
	sdcc $(SDCCCFLAGS) -c library/eeprom.c -o build/

build/timer0.rel: library/timer0.c library/timer0.h
		sdcc $(SDCCCFLAGS) -c library/timer0.c -o build/

build/8052Explorer.rel: 8052Explorer.c microsetup.h
	sdcc $(SDCCCFLAGS) -c 8052Explorer.c -o build/

writeeeprom3: all
	C:\Users\alberto\Documents\GitHub\at89s8252-arduino\programfast3.sh C:\Users\alberto\Documents\GitHub\at89s8252-arduino\

writeeeprom: all
	C:\Users\alberto\Documents\GitHub\at89s8252-arduino\program.sh C:\Users\alberto\Documents\GitHub\at89s8252-arduino\


.PHONY: clean
clean:
	$(RM) build/*.asm build/*.lk build/*.lst build/*.map build/*.mem build/*.rel build/*.sym build/*.rst build/*.ihx build/*.hex

