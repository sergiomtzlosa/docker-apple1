# Docker image for Apple1 Emulation

Little docker image containing the Apple 1 emulator.

Build the image
---------------

```
docker build -t apple1 .
```

Run the image
-------------

```
docker run -e COLUMNS="`tput cols`" -e LINES="`tput lines`" -it apple1
```

Software and resources
----------------------

- Apple 1 manual: [http://apple1.chez.com/Apple1project/Docs/pdf/AppleI_Manual.pdf](http://apple1.chez.com/Apple1project/Docs/pdf/AppleI_Manual.pdf)

- Apple 1 Software: [https://www.willegal.net/appleii/apple1-software.htm](https://www.willegal.net/appleii/apple1-software.htm)


Help
----

```	
APPLE1(1)                 BSD General Commands Manual                APPLE1(1)

NAME
     apple1 -- Apple 1 Emulator

DESCRIPTION
     Currently apple1 takes no arguments. All files are expected to be in place at runtime, and all user interaction happens after boot.

RUNNING PROGRAMS
     The original Apple 1 was only capable of loading things via an audio cassette tape drive, or via hexadecimal typed into the keyboard by hand.

     If you have assembly source, you can assemble it using as6502, then load the binary blob into memory (see: BINARIES).

     If you have assembled source, or a binary dump of tape data, you can also load it by following the steps in the BINARIES section.

     If you have assembled source, in plaintext hex, you can load it by following the instructions detailed in the HEX section.

     If you have an audio file recording of a cassette tape, you must first convert it to a binary blob for loading.

BINARIES
     The simplest way to load binary data in a flat file is to drop into the debugger, using the grave key, and type ``load <file> <addr>'' into the
     debugger.

     After the debugger has loaded the file into memory, you can type ``run'' to jump back into emulation. Next, enter the hex address that you
     loaded the binary at, followed by an ``R'' character, for ``run''. Hit enter and your program should begin executing.

HEX
     To load assembled hex data, you can just paste it into the terminal running apple1 , just as you would a serial terminal to most modern Apple 1
     clones. The expected format for the Woz Monitor (as documented in the original Apple 1 Operation Manual) is as follows:

     0300: A2 58 BD 80 04 20 EF FF
     : 85 BF EA EA A2 00 BD E6
     : CA 10 F7 20 E0 05 29 03

     Each subsequent line starting with a colon is a continuation of the insertion. In this example, the 0xCA byte will reside at memory location
     0x0310.

     Some files will have every line's address specified, as seen below. This will also work.

     0380: FF FF FF FF FF FF FF FF
     0388: FF FF FF FF FF FF FF FF
     0390: FF FF FF FF FF FF FF FF

FILES
     apple1.rom       The Woz Monitor ROM, loaded at 0xFF00.
     apple1basic.bin  BASIC interpreter tape binary dump, loaded at 0xE000. Jump to BASIC from the Woz monitor with ``E000R''.
     apple1.dbg       Debugger script loaded at start. Every line in this file is executed as a debugger command to the v6502 debugger. This is par-
                      ticularly useful for things like loading symbol tables on boot.

SEE ALSO
     as6502(1), v6502(1)

Darwin                         January 26, 2016                         Darwin
```

Thanks to [RyuKojiro](https://github.com/RyuKojiro/apple1) for building the apple1 emulator:

[https://github.com/RyuKojiro/apple1](https://github.com/RyuKojiro/apple1)

