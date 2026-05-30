subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "../PIC16Fxxx_DFP/xc8/pic/include/proc/16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 38 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 45 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 52 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 59 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 145 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 152 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 202 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 264 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 326 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 388 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 420 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 440 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 518 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 620 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 627 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 634 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 641 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 716 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 723 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 794 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 801 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 871 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 878 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 885 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 892 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 950 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1045 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1052 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1059 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1066 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1073 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1080 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1138 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1145 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1241 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1311 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1361 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1423 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1485 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1547 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1604 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1666 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1706 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1740 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1802 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1809 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1816 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1985 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2066 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2073 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2143 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2208 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2215 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2274 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2281 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2288 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2295 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2302 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2347 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 38 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 45 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 52 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 59 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 145 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 152 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 202 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 264 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 326 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 388 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 420 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 440 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 518 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 620 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 627 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 634 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 641 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 716 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 723 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 794 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 801 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 871 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 878 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 885 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 892 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 950 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1045 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1052 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1059 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1066 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1073 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1080 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1138 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1145 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1241 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1311 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1361 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1423 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1485 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1547 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1604 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1666 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1706 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1740 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1802 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1809 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1816 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1985 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2066 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2073 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2143 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2208 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2215 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2274 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2281 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2288 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2295 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2302 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2347 "../PIC16Fxxx_DFP/xc8/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,___aldiv
	FNCALL	_main,___fladd
	FNCALL	_main,___fldiv
	FNCALL	_main,___flge
	FNCALL	_main,___flmul
	FNCALL	_main,___lmul
	FNCALL	_main,___xxtofl
	FNCALL	_main,_calibrate_sensors
	FNCALL	_main,_init_hardware
	FNCALL	_main,_read_adc
	FNCALL	_main,_set_motors
	FNCALL	_calibrate_sensors,___lwmod
	FNCALL	_calibrate_sensors,_read_adc
	FNCALL	_calibrate_sensors,_set_motors
	FNCALL	___flmul,__Umul8_16
	FNROOT	_main
	global	main@weights
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"nopid.c"
	line	56
main@weights:
	retlw	0BAh
	retlw	0FFh

	retlw	0CEh
	retlw	0FFh

	retlw	0E2h
	retlw	0FFh

	retlw	0F6h
	retlw	0FFh

	retlw	0Ah
	retlw	0

	retlw	01Eh
	retlw	0

	retlw	032h
	retlw	0

	retlw	046h
	retlw	0

	global __end_ofmain@weights
__end_ofmain@weights:
	global	main@weights
	global	_sensor_max
	global	_sensor_min
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_T2CON
_T2CON	set	0x12
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_ADCON0
_ADCON0	set	0x1F
	global	_PORTC
_PORTC	set	0x7
	global	_RC4
_RC4	set	0x3C
	global	_RC0
_RC0	set	0x38
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_RB0
_RB0	set	0x30
	global	_RD2
_RD2	set	0x42
	global	_ADRESL
_ADRESL	set	0x9E
	global	_PR2
_PR2	set	0x92
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_TRISE
_TRISE	set	0x89
	global	_TRISA
_TRISA	set	0x85
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config BOREN = "ON"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"LF.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_sensor_max:
       ds      16

_sensor_min:
       ds      16

	file	"LF.s"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@raw_val
main@raw_val:	; 2 bytes @ 0x0
	ds	2
	global	main@range
main@range:	; 4 bytes @ 0x2
	ds	4
	global	main@sum_weights
main@sum_weights:	; 4 bytes @ 0x6
	ds	4
	global	main@line_intensity
main@line_intensity:	; 4 bytes @ 0xA
	ds	4
	global	main@sum_vals
main@sum_vals:	; 4 bytes @ 0xE
	ds	4
	global	main@normalized
main@normalized:	; 4 bytes @ 0x12
	ds	4
	global	main@error
main@error:	; 4 bytes @ 0x16
	ds	4
	global	main@i
main@i:	; 1 bytes @ 0x1A
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_hardware:	; 1 bytes @ 0x0
?_set_motors:	; 1 bytes @ 0x0
?_calibrate_sensors:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___flge:	; 1 bit 
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?__Umul8_16
?__Umul8_16:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x0
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x0
	global	__Umul8_16@multiplicand
__Umul8_16@multiplicand:	; 1 bytes @ 0x0
	global	set_motors@left_pwm
set_motors@left_pwm:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x0
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x0
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x0
??_init_hardware:	; 1 bytes @ 0x0
	ds	2
	global	set_motors@right_pwm
set_motors@right_pwm:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??__Umul8_16:	; 1 bytes @ 0x2
	ds	1
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x3
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	__Umul8_16@product
__Umul8_16@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x4
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x4
??_set_motors:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
??___xxtofl:	; 1 bytes @ 0x4
	ds	1
??_calibrate_sensors:	; 1 bytes @ 0x5
	ds	1
	global	__Umul8_16@word_mpld
__Umul8_16@word_mpld:	; 2 bytes @ 0x6
	ds	2
	global	__Umul8_16@multiplier
__Umul8_16@multiplier:	; 1 bytes @ 0x8
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0x8
	global	calibrate_sensors@t
calibrate_sensors@t:	; 2 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
??___flge:	; 1 bytes @ 0x8
??___fldiv:	; 1 bytes @ 0x8
	ds	1
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0x9
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
	global	calibrate_sensors@val
calibrate_sensors@val:	; 2 bytes @ 0xA
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0xA
	ds	2
	global	calibrate_sensors@i
calibrate_sensors@i:	; 1 bytes @ 0xC
	ds	1
	global	calibrate_sensors@i_88
calibrate_sensors@i_88:	; 1 bytes @ 0xD
??___aldiv:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	?___flmul
?___flmul:	; 4 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x0
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x0
	ds	4
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x4
	ds	1
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x5
	ds	2
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x7
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x8
??___flmul:	; 1 bytes @ 0x8
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xA
	ds	1
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0xB
	ds	1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0xC
	ds	1
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0xD
	ds	1
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0xE
	ds	4
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x12
	ds	1
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x13
	ds	1
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x14
	ds	4
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0x18
	ds	2
	global	?___fladd
?___fladd:	; 4 bytes @ 0x1A
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x1A
	ds	4
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x1E
	ds	4
??___fladd:	; 1 bytes @ 0x22
	ds	8
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x2A
	ds	1
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x2B
	ds	1
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x2C
	ds	1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x2D
	ds	1
??_main:	; 1 bytes @ 0x2E
	ds	14
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    16
;!    Data        0
;!    BSS         32
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     60      60
;!    BANK1            80     27      59
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___aldiv
;!    _main->___xxtofl
;!    _main->_calibrate_sensors
;!    _calibrate_sensors->___lwmod
;!    ___flmul->___xxtofl
;!    ___fladd->___xxtofl
;!    ___aldiv->___lmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___fladd
;!    ___fladd->___flmul
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 14, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                41    41      0    7406
;!                                             46 BANK0     14    14      0
;!                                              0 BANK1     27    27      0
;!                            ___aldiv
;!                            ___fladd
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                             ___lmul
;!                           ___xxtofl
;!                  _calibrate_sensors
;!                      _init_hardware
;!                           _read_adc
;!                         _set_motors
;! ---------------------------------------------------------------------------------
;! (1) _init_hardware                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _calibrate_sensors                                    9     9      0     879
;!                                              5 COMMON     9     9      0
;!                            ___lwmod
;!                           _read_adc
;!                         _set_motors
;! ---------------------------------------------------------------------------------
;! (2) _set_motors                                           4     0      4     286
;!                                              0 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             4     2      2      29
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     161
;!                                              0 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) ___xxtofl                                            14    10      4     339
;!                                              0 COMMON    14    10      4
;! ---------------------------------------------------------------------------------
;! (1) ___lmul                                              13     5      8      94
;!                                              0 COMMON    13     5      8
;! ---------------------------------------------------------------------------------
;! (1) ___flmul                                             26    18      8    1608
;!                                              0 BANK0     26    18      8
;!                          __Umul8_16
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (2) __Umul8_16                                            9     7      2     139
;!                                              0 COMMON     9     7      2
;! ---------------------------------------------------------------------------------
;! (1) ___flge                                              12     4      8     192
;!                                              0 COMMON    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) ___fldiv                                             26    18      8    1124
;!                                              0 COMMON    13     5      8
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (1) ___fladd                                             20    12      8    1990
;!                                             26 BANK0     20    12      8
;!                            ___flmul (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___aldiv                                             15     7      8     302
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0     14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___aldiv
;!     ___lmul (ARG)
;!   ___fladd
;!     ___flmul (ARG)
;!       __Umul8_16
;!       ___xxtofl (ARG)
;!     ___xxtofl (ARG)
;!   ___fldiv
;!   ___flge
;!   ___flmul
;!   ___lmul
;!   ___xxtofl
;!   _calibrate_sensors
;!     ___lwmod
;!     _read_adc
;!     _set_motors
;!   _init_hardware
;!   _read_adc
;!   _set_motors
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14     14      14    100.0%
;!BANK0               80     60      60     75.0%
;!BANK1               80     27      59     73.8%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     133      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 37 in file "nopid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  normalized      4   18[BANK1 ] long 
;;  line_intensi    4   10[BANK1 ] long 
;;  range           4    2[BANK1 ] long 
;;  raw_val         2    0[BANK1 ] unsigned short 
;;  error           4   22[BANK1 ] float 
;;  i               1   26[BANK1 ] unsigned char 
;;  sum_vals        4   14[BANK1 ] float 
;;  sum_weights     4    6[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      27       0       0
;;      Temps:          0      14       0       0       0
;;      Totals:         0      14      27       0       0
;;Total ram usage:       41 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___aldiv
;;		___fladd
;;		___fldiv
;;		___flge
;;		___flmul
;;		___lmul
;;		___xxtofl
;;		_calibrate_sensors
;;		_init_hardware
;;		_read_adc
;;		_set_motors
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"nopid.c"
	line	37
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"nopid.c"
	line	37
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	38
	
l2240:	
	fcall	_init_hardware
	line	39
	
l2242:	
	asmopt push
asmopt off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	94
movwf	((??_main)+1)
	movlw	109
movwf	((??_main))
	u3777:
decfsz	((??_main)),f
	goto	u3777
	decfsz	((??_main)+1),f
	goto	u3777
	decfsz	((??_main)+2),f
	goto	u3777
	nop2
asmopt pop

	line	42
	
l2244:	
	movlw	0
	movwf	(set_motors@left_pwm)
	movwf	(set_motors@left_pwm+1)
	movlw	0
	movwf	(set_motors@right_pwm)
	movwf	(set_motors@right_pwm+1)
	fcall	_set_motors
	line	43
	
l2246:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	44
	
l62:	
	btfss	(48/8),(48)&7	;volatile
	goto	u3611
	goto	u3610
u3611:
	goto	l62
u3610:
	
l2248:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	138
movwf	((??_main)+1)
	movlw	85
movwf	((??_main))
	u3787:
decfsz	((??_main)),f
	goto	u3787
	decfsz	((??_main)+1),f
	goto	u3787
	decfsz	((??_main)+2),f
	goto	u3787
asmopt pop

	
l65:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u3621
	goto	u3620
u3621:
	goto	l65
u3620:
	
l2250:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	138
movwf	((??_main)+1)
	movlw	85
movwf	((??_main))
	u3797:
decfsz	((??_main)),f
	goto	u3797
	decfsz	((??_main)+1),f
	goto	u3797
	decfsz	((??_main)+2),f
	goto	u3797
asmopt pop

	line	46
	
l2252:	
	fcall	_calibrate_sensors
	line	48
	
l2254:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	49
	
l68:	
	btfss	(48/8),(48)&7	;volatile
	goto	u3631
	goto	u3630
u3631:
	goto	l68
u3630:
	
l2256:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	138
movwf	((??_main)+1)
	movlw	85
movwf	((??_main))
	u3807:
decfsz	((??_main)),f
	goto	u3807
	decfsz	((??_main)+1),f
	goto	u3807
	decfsz	((??_main)+2),f
	goto	u3807
asmopt pop

	
l71:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u3641
	goto	u3640
u3641:
	goto	l71
u3640:
	
l2258:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	138
movwf	((??_main)+1)
	movlw	85
movwf	((??_main))
	u3817:
decfsz	((??_main)),f
	goto	u3817
	decfsz	((??_main)+1),f
	goto	u3817
	decfsz	((??_main)+2),f
	goto	u3817
asmopt pop

	line	50
	
l2260:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	52
	
l74:	
	line	53
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_weights+3)^080h
	movlw	0x0
	movwf	(main@sum_weights+2)^080h
	movlw	0x0
	movwf	(main@sum_weights+1)^080h
	movlw	0x0
	movwf	(main@sum_weights)^080h

	line	54
	movlw	0x0
	movwf	(main@sum_vals+3)^080h
	movlw	0x0
	movwf	(main@sum_vals+2)^080h
	movlw	0x0
	movwf	(main@sum_vals+1)^080h
	movlw	0x0
	movwf	(main@sum_vals)^080h

	line	58
	
l2262:	
	clrf	(main@i)^080h
	line	59
	
l2268:	
	movf	(main@i)^080h,w
	fcall	_read_adc
	movf	(1+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@raw_val+1)^080h
	movf	(0+(?_read_adc)),w
	movwf	(main@raw_val)^080h
	line	61
	
l2270:	
	movf	(main@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main)
	addwf	(??_main),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+1)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+1
	movf	(0+(??_main+1)),w
	movwf	((??_main+3))
	movf	(1+(??_main+1)),w
	movwf	((??_main+3)+1)
	clrf	((??_main+3)+2)
	clrf	((??_main+3)+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+7)
	addwf	(??_main+7),w
	addlw	low(_sensor_max|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+8)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+8)+1
	movf	(0+(??_main+8)),w
	movwf	((??_main+10))
	movf	(1+(??_main+8)),w
	movwf	((??_main+10)+1)
	clrf	((??_main+10)+2)
	clrf	((??_main+10)+3)
	movf	(0+(??_main+3)),w
	subwf	(??_main+10),f
	movf	(1+(??_main+3)),w
	skipc
	incfsz	(1+(??_main+3)),w
	goto	u3651
	goto	u3652
u3651:
	subwf	(??_main+1+10),f
u3652:
	movf	(2+(??_main+3)),w
	skipc
	incfsz	(2+(??_main+3)),w
	goto	u3653
	goto	u3654
u3653:
	subwf	(??_main+2+10),f
u3654:
	movf	(3+(??_main+3)),w
	skipc
	incfsz	(3+(??_main+3)),w
	goto	u3655
	goto	u3656
u3655:
	subwf	(??_main+3+10),f
u3656:

	movf	(3+(??_main+10)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@range+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(??_main+10)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@range+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(??_main+10)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@range+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(??_main+10)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@range)^080h

	line	62
	
l2272:	
	btfsc	(main@range+3)^080h,7
	goto	u3660
	movf	(main@range+3)^080h,w
	btfss	status,2
	goto	u3661
	movf	(main@range+2)^080h,w
	btfss	status,2
	goto	u3661
	movf	(main@range+1)^080h,w
	btfss	status,2
	goto	u3661
	movlw	50
	subwf	(main@range)^080h,w
	skipz
	goto	u3663
u3663:
	btfsc	status,0
	goto	u3661
	goto	u3660

u3661:
	goto	l2276
u3660:
	goto	l2292
	line	64
	
l2276:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@range+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@range+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@range+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@range)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main)
	addwf	(??_main),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+1)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+1
	movf	(0+(??_main+1)),w
	movwf	((??_main+3))
	movf	(1+(??_main+1)),w
	movwf	((??_main+3)+1)
	clrf	((??_main+3)+2)
	clrf	((??_main+3)+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@raw_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_main+7))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@raw_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_main+7)+1)
	clrf	((??_main+7)+2)
	clrf	((??_main+7)+3)
	movf	(0+(??_main+3)),w
	subwf	(??_main+7),f
	movf	(1+(??_main+3)),w
	skipc
	incfsz	(1+(??_main+3)),w
	goto	u3671
	goto	u3672
u3671:
	subwf	(??_main+1+7),f
u3672:
	movf	(2+(??_main+3)),w
	skipc
	incfsz	(2+(??_main+3)),w
	goto	u3673
	goto	u3674
u3673:
	subwf	(??_main+2+7),f
u3674:
	movf	(3+(??_main+3)),w
	skipc
	incfsz	(3+(??_main+3)),w
	goto	u3675
	goto	u3676
u3675:
	subwf	(??_main+3+7),f
u3676:

	movf	(3+(??_main+7)),w
	movwf	(___lmul@multiplier+3)
	movf	(2+(??_main+7)),w
	movwf	(___lmul@multiplier+2)
	movf	(1+(??_main+7)),w
	movwf	(___lmul@multiplier+1)
	movf	(0+(??_main+7)),w
	movwf	(___lmul@multiplier)

	movlw	0
	movwf	(___lmul@multiplicand+3)
	movlw	0
	movwf	(___lmul@multiplicand+2)
	movlw	03h
	movwf	(___lmul@multiplicand+1)
	movlw	0E8h
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(3+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@dividend+3)
	movf	(2+(?___lmul)),w
	movwf	(___aldiv@dividend+2)
	movf	(1+(?___lmul)),w
	movwf	(___aldiv@dividend+1)
	movf	(0+(?___lmul)),w
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@normalized+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@normalized+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@normalized+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@normalized)^080h

	line	65
	
l2278:	
	btfss	(main@normalized+3)^080h,7
	goto	u3681
	goto	u3680
u3681:
	goto	l2282
u3680:
	
l2280:	
	movlw	high highword(0)
	movwf	(main@normalized+3)^080h
	movlw	low highword(0)
	movwf	(main@normalized+2)^080h
	movlw	high(0)
	movwf	(main@normalized+1)^080h
	movlw	low(0)
	movwf	(main@normalized)^080h

	line	66
	
l2282:	
	btfsc	(main@normalized+3)^080h,7
	goto	u3691
	movf	(main@normalized+3)^080h,w
	btfss	status,2
	goto	u3690
	movf	(main@normalized+2)^080h,w
	btfss	status,2
	goto	u3690
	movlw	3
	subwf	(main@normalized+1)^080h,w
	skipz
	goto	u3693
	movlw	233
	subwf	(main@normalized)^080h,w
	skipz
	goto	u3693
u3693:
	btfss	status,0
	goto	u3691
	goto	u3690

u3691:
	goto	l82
u3690:
	
l2284:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@normalized+3)^080h
	movlw	0
	movwf	(main@normalized+2)^080h
	movlw	03h
	movwf	(main@normalized+1)^080h
	movlw	0E8h
	movwf	(main@normalized)^080h

	
l82:	
	line	69
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@normalized+3)^080h,w
	movwf	(main@line_intensity+3)^080h
	movf	(main@normalized+2)^080h,w
	movwf	(main@line_intensity+2)^080h
	movf	(main@normalized+1)^080h,w
	movwf	(main@line_intensity+1)^080h
	movf	(main@normalized)^080h,w
	movwf	(main@line_intensity)^080h

	line	71
	
l2286:	
	btfsc	(main@line_intensity+3)^080h,7
	goto	u3701
	movf	(main@line_intensity+3)^080h,w
	btfss	status,2
	goto	u3700
	movf	(main@line_intensity+2)^080h,w
	btfss	status,2
	goto	u3700
	movf	(main@line_intensity+1)^080h,w
	btfss	status,2
	goto	u3700
	movlw	201
	subwf	(main@line_intensity)^080h,w
	skipz
	goto	u3703
u3703:
	btfss	status,0
	goto	u3701
	goto	u3700

u3701:
	goto	l2292
u3700:
	line	72
	
l2288:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@line_intensity+3)^080h,w
	movwf	(___xxtofl@val+3)
	movf	(main@line_intensity+2)^080h,w
	movwf	(___xxtofl@val+2)
	movf	(main@line_intensity+1)^080h,w
	movwf	(___xxtofl@val+1)
	movf	(main@line_intensity)^080h,w
	movwf	(___xxtofl@val)

	movlw	low(01h)
	fcall	___xxtofl
	movf	(3+(?___xxtofl)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___flmul@a+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___flmul@a+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___flmul@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main)
	addwf	(??_main),w
	addlw	low((((main@weights)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+1)
	fcall	stringdir
	movwf	(??_main+1+1)
	movf	(0+(??_main+1)),w
	movwf	(___xxtofl@val)
	movf	(1+(??_main+1)),w
	movwf	(___xxtofl@val+1)
	movlw	0
	btfsc	(___xxtofl@val+1),7
	movlw	255
	movwf	(___xxtofl@val+2)
	movwf	(___xxtofl@val+3)
	movlw	low(01h)
	fcall	___xxtofl
	movf	(3+(?___xxtofl)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___flmul@b+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___flmul@b+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___flmul@b)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fladd@b+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@b+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@b+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_weights+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_weights+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_weights+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_weights)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_weights+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_weights+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_weights+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_weights)^080h

	line	73
	
l2290:	
	movf	(main@line_intensity+3)^080h,w
	movwf	(___xxtofl@val+3)
	movf	(main@line_intensity+2)^080h,w
	movwf	(___xxtofl@val+2)
	movf	(main@line_intensity+1)^080h,w
	movwf	(___xxtofl@val+1)
	movf	(main@line_intensity)^080h,w
	movwf	(___xxtofl@val)

	movlw	low(01h)
	fcall	___xxtofl
	movf	(3+(?___xxtofl)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@b+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___fladd@b+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___fladd@b+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___fladd@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_vals+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_vals+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_vals+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_vals)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_vals+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_vals+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_vals+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sum_vals)^080h

	line	75
	
l2292:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	
l2294:	
	movlw	low(08h)
	subwf	(main@i)^080h,w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l2268
u3710:
	line	77
	
l2296:	
	movlw	0x43
	movwf	(___flge@ff1+3)
	movlw	0xc8
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movf	(main@sum_vals+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(main@sum_vals+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(main@sum_vals+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(main@sum_vals)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3721
	goto	u3720
u3721:
	goto	l2318
u3720:
	line	78
	
l2298:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@sum_vals+3)^080h,w
	movwf	(___fldiv@a+3)
	movf	(main@sum_vals+2)^080h,w
	movwf	(___fldiv@a+2)
	movf	(main@sum_vals+1)^080h,w
	movwf	(___fldiv@a+1)
	movf	(main@sum_vals)^080h,w
	movwf	(___fldiv@a)

	movf	(main@sum_weights+3)^080h,w
	movwf	(___fldiv@b+3)
	movf	(main@sum_weights+2)^080h,w
	movwf	(___fldiv@b+2)
	movf	(main@sum_weights+1)^080h,w
	movwf	(___fldiv@b+1)
	movf	(main@sum_weights)^080h,w
	movwf	(___fldiv@b)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@error+3)^080h
	movf	(2+(?___fldiv)),w
	movwf	(main@error+2)^080h
	movf	(1+(?___fldiv)),w
	movwf	(main@error+1)^080h
	movf	(0+(?___fldiv)),w
	movwf	(main@error)^080h

	line	81
	
l2300:	
	movf	(main@error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(main@error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(main@error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(main@error)^080h,w
	movwf	(___flge@ff1)

	movlw	0x42
	movwf	(___flge@ff2+3)
	movlw	0xc
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3731
	goto	u3730
u3731:
	goto	l2304
u3730:
	line	82
	
l2302:	
	movlw	02Dh
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	movlw	0F1h
	movwf	(set_motors@right_pwm)
	movlw	0FFh
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	line	83
	goto	l2320
	
l2304:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(main@error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(main@error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(main@error)^080h,w
	movwf	(___flge@ff1)

	movlw	0x41
	movwf	(___flge@ff2+3)
	movlw	0x20
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3741
	goto	u3740
u3741:
	goto	l2308
u3740:
	line	84
	
l2306:	
	movlw	02Dh
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	movlw	0
	movwf	(set_motors@right_pwm)
	movwf	(set_motors@right_pwm+1)
	fcall	_set_motors
	line	85
	goto	l2320
	
l2308:	
	movlw	0xc2
	movwf	(___flge@ff1+3)
	movlw	0xc
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@error+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(main@error+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(main@error+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(main@error)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3751
	goto	u3750
u3751:
	goto	l2312
u3750:
	line	86
	
l2310:	
	movlw	0F1h
	movwf	(set_motors@left_pwm)
	movlw	0FFh
	movwf	((set_motors@left_pwm))+1
	movlw	02Dh
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	line	87
	goto	l2320
	
l2312:	
	movlw	0xc1
	movwf	(___flge@ff1+3)
	movlw	0x20
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@error+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(main@error+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(main@error+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(main@error)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3761
	goto	u3760
u3761:
	goto	l2316
u3760:
	line	88
	
l2314:	
	movlw	0
	movwf	(set_motors@left_pwm)
	movwf	(set_motors@left_pwm+1)
	movlw	02Dh
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	line	89
	goto	l2320
	line	90
	
l2316:	
	movlw	01Eh
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	movlw	01Eh
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	goto	l2320
	line	94
	
l2318:	
	movlw	0
	movwf	(set_motors@left_pwm)
	movwf	(set_motors@left_pwm+1)
	movlw	0
	movwf	(set_motors@right_pwm)
	movwf	(set_motors@right_pwm+1)
	fcall	_set_motors
	line	96
	
l2320:	
	asmopt push
asmopt off
movlw	4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+1)
	movlw	61
movwf	((??_main))
	u3827:
decfsz	((??_main)),f
	goto	u3827
	decfsz	((??_main)+1),f
	goto	u3827
asmopt pop

	goto	l74
	global	start
	ljmp	start
	callstack 0
	line	99
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_hardware

;; *************** function _init_hardware *****************
;; Defined at:
;;		line 101 in file "nopid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	101
global __ptext1
__ptext1:	;psect for function _init_hardware
psect	text1
	file	"nopid.c"
	line	101
	
_init_hardware:	
;incstack = 0
	callstack 7
; Regs used in _init_hardware: [status,2]
	line	102
	
l1576:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	103
	
l1578:	
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	104
	
l1580:	
	movlw	07h
	movwf	(137)^080h	;volatile
	line	105
	
l1582:	
	movlw	01h
	movwf	(134)^080h	;volatile
	line	106
	clrf	(135)^080h	;volatile
	line	107
	clrf	(136)^080h	;volatile
	line	109
	
l1584:	
	movlw	0C0h
	movwf	(159)^080h	;volatile
	line	110
	
l1586:	
	movlw	081h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	112
	
l1588:	
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	113
	
l1590:	
	movlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	114
	
l1592:	
	movlw	0Ch
	movwf	(29)	;volatile
	line	115
	
l1594:	
	movlw	04h
	movwf	(18)	;volatile
	line	116
	clrf	(21)	;volatile
	line	117
	clrf	(27)	;volatile
	line	118
	
l101:	
	return
	callstack 0
GLOBAL	__end_of_init_hardware
	__end_of_init_hardware:
	signat	_init_hardware,89
	global	_calibrate_sensors

;; *************** function _calibrate_sensors *****************
;; Defined at:
;;		line 120 in file "nopid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val             2   10[COMMON] unsigned short 
;;  i               1   13[COMMON] unsigned char 
;;  t               2    8[COMMON] unsigned short 
;;  i               1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lwmod
;;		_read_adc
;;		_set_motors
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	120
global __ptext2
__ptext2:	;psect for function _calibrate_sensors
psect	text2
	file	"nopid.c"
	line	120
	
_calibrate_sensors:	
;incstack = 0
	callstack 6
; Regs used in _calibrate_sensors: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	121
	
l1596:	
	movlw	0
	movwf	(set_motors@left_pwm)
	movwf	(set_motors@left_pwm+1)
	movlw	0
	movwf	(set_motors@right_pwm)
	movwf	(set_motors@right_pwm+1)
	fcall	_set_motors
	line	122
	
l1598:	
	clrf	(calibrate_sensors@i)
	
l1604:	
	movf	(calibrate_sensors@i),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	0FFh
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	03h
	movwf	indf
	movf	(calibrate_sensors@i),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_max|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l1606:	
	movlw	low(01h)
	addwf	(calibrate_sensors@i),f
	
l1608:	
	movlw	low(08h)
	subwf	(calibrate_sensors@i),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l1604
u2060:
	line	123
	
l1610:	
	clrf	(calibrate_sensors@t)
	clrf	(calibrate_sensors@t+1)
	line	124
	
l1616:	
	clrf	(calibrate_sensors@i_88)
	line	125
	
l1622:	
	movf	(calibrate_sensors@i_88),w
	fcall	_read_adc
	movf	(1+(?_read_adc)),w
	movwf	(calibrate_sensors@val+1)
	movf	(0+(?_read_adc)),w
	movwf	(calibrate_sensors@val)
	line	126
	
l1624:	
	movf	(calibrate_sensors@i_88),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+1
	movf	(1+(??_calibrate_sensors+1)),w
	subwf	(calibrate_sensors@val+1),w
	skipz
	goto	u2075
	movf	(0+(??_calibrate_sensors+1)),w
	subwf	(calibrate_sensors@val),w
u2075:
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l110
u2070:
	
l1626:	
	movf	(calibrate_sensors@i_88),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(calibrate_sensors@val),w
	movwf	indf
	incf	fsr0,f
	movf	(calibrate_sensors@val+1),w
	movwf	indf
	
l110:	
	line	127
	movf	(calibrate_sensors@i_88),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_max|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+1
	movf	(calibrate_sensors@val+1),w
	subwf	(1+(??_calibrate_sensors+1)),w
	skipz
	goto	u2085
	movf	(calibrate_sensors@val),w
	subwf	(0+(??_calibrate_sensors+1)),w
u2085:
	skipnc
	goto	u2081
	goto	u2080
u2081:
	goto	l1630
u2080:
	
l1628:	
	movf	(calibrate_sensors@i_88),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_max|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(calibrate_sensors@val),w
	movwf	indf
	incf	fsr0,f
	movf	(calibrate_sensors@val+1),w
	movwf	indf
	line	128
	
l1630:	
	movlw	low(01h)
	addwf	(calibrate_sensors@i_88),f
	
l1632:	
	movlw	low(08h)
	subwf	(calibrate_sensors@i_88),w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l1622
u2090:
	line	129
	
l1634:	
	asmopt push
asmopt off
movlw	98
movwf	((??_calibrate_sensors)+1)
	movlw	101
movwf	((??_calibrate_sensors))
	u3837:
decfsz	((??_calibrate_sensors)),f
	goto	u3837
	decfsz	((??_calibrate_sensors)+1),f
	goto	u3837
	nop2
asmopt pop

	line	130
	
l1636:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(calibrate_sensors@t+1),w
	movwf	(___lwmod@dividend+1)
	movf	(calibrate_sensors@t),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l112
u2100:
	
l1638:	
	movlw	1<<((66)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((66)/8),f
	
l112:	
	line	131
	movlw	01h
	addwf	(calibrate_sensors@t),f
	skipnc
	incf	(calibrate_sensors@t+1),f
	movlw	0
	addwf	(calibrate_sensors@t+1),f
	movlw	0
	subwf	(calibrate_sensors@t+1),w
	movlw	0C8h
	skipnz
	subwf	(calibrate_sensors@t),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l1616
u2110:
	
l107:	
	line	132
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	133
	
l113:	
	return
	callstack 0
GLOBAL	__end_of_calibrate_sensors
	__end_of_calibrate_sensors:
	signat	_calibrate_sensors,89
	global	_set_motors

;; *************** function _set_motors *****************
;; Defined at:
;;		line 143 in file "nopid.c"
;; Parameters:    Size  Location     Type
;;  left_pwm        2    0[COMMON] short 
;;  right_pwm       2    2[COMMON] short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_calibrate_sensors
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	143
global __ptext3
__ptext3:	;psect for function _set_motors
psect	text3
	file	"nopid.c"
	line	143
	
_set_motors:	
;incstack = 0
	callstack 6
; Regs used in _set_motors: [wreg+status,2+status,0+btemp1]
	line	145
	
l1498:	
	btfsc	(set_motors@left_pwm+1),7
	goto	u1891
	goto	u1890
u1891:
	goto	l122
u1890:
	line	146
	
l1500:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	line	147
	
l1502:	
	movf	(set_motors@left_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(01h)^80h
	subwf	btemp1,w
	skipz
	goto	u1905
	movlw	0
	subwf	(set_motors@left_pwm),w
u1905:

	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l123
u1900:
	
l1504:	
	movlw	0FFh
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	
l123:	
	line	148
	movf	(set_motors@left_pwm),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	149
	goto	l1514
	
l122:	
	line	150
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7	;volatile
	line	151
	
l1506:	
	comf	(set_motors@left_pwm),f
	comf	(set_motors@left_pwm+1),f
	incf	(set_motors@left_pwm),f
	skipnz
	incf	(set_motors@left_pwm+1),f
	line	152
	
l1508:	
	movf	(set_motors@left_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(01h)^80h
	subwf	btemp1,w
	skipz
	goto	u1915
	movlw	0
	subwf	(set_motors@left_pwm),w
u1915:

	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l1512
u1910:
	
l1510:	
	movlw	0FFh
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	line	153
	
l1512:	
	comf	(set_motors@left_pwm),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	157
	
l1514:	
	btfsc	(set_motors@right_pwm+1),7
	goto	u1921
	goto	u1920
u1921:
	goto	l126
u1920:
	line	158
	
l1516:	
	bcf	(60/8),(60)&7	;volatile
	line	159
	
l1518:	
	movf	(set_motors@right_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(01h)^80h
	subwf	btemp1,w
	skipz
	goto	u1935
	movlw	0
	subwf	(set_motors@right_pwm),w
u1935:

	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l127
u1930:
	
l1520:	
	movlw	0FFh
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	
l127:	
	line	160
	movf	(set_motors@right_pwm),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	161
	goto	l130
	
l126:	
	line	162
	bsf	(60/8),(60)&7	;volatile
	line	163
	
l1522:	
	comf	(set_motors@right_pwm),f
	comf	(set_motors@right_pwm+1),f
	incf	(set_motors@right_pwm),f
	skipnz
	incf	(set_motors@right_pwm+1),f
	line	164
	
l1524:	
	movf	(set_motors@right_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(01h)^80h
	subwf	btemp1,w
	skipz
	goto	u1945
	movlw	0
	subwf	(set_motors@right_pwm),w
u1945:

	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l1528
u1940:
	
l1526:	
	movlw	0FFh
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	line	165
	
l1528:	
	comf	(set_motors@right_pwm),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	167
	
l130:	
	return
	callstack 0
GLOBAL	__end_of_set_motors
	__end_of_set_motors:
	signat	_set_motors,8313
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 135 in file "nopid.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_calibrate_sensors
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext4
__ptext4:	;psect for function _read_adc
psect	text4
	file	"nopid.c"
	line	135
	
_read_adc:	
;incstack = 0
	callstack 6
; Regs used in _read_adc: [wreg+status,2+status,0]
	movwf	(read_adc@channel)
	line	136
	
l1530:	
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	movf	(read_adc@channel),w	;volatile
	movwf	(??_read_adc)
	movlw	(03h)-1
u1955:
	clrc
	rlf	(??_read_adc),f
	addlw	-1
	skipz
	goto	u1955
	clrc
	rlf	(??_read_adc),w
	iorwf	(31),f	;volatile
	line	137
	
l1532:	
	asmopt push
asmopt off
	movlw	83
movwf	((??_read_adc))
	u3847:
decfsz	(??_read_adc),f
	goto	u3847
asmopt pop

	line	138
	
l1534:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	139
	
l116:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l116
u1960:
	line	140
	
l1536:	
	movf	(30),w	;volatile
	movwf	(?_read_adc+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_read_adc)
	line	141
	
l119:	
	return
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_calibrate_sensors
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
	line	5
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l1540:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l1558
u1970:
	line	13
	
l1542:	
	movlw	01h
	movwf	(___lwmod@counter)
	line	14
	goto	l1548
	line	15
	
l1544:	
	movlw	01h
	
u1985:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1985
	line	16
	
l1546:	
	movlw	low(01h)
	addwf	(___lwmod@counter),f
	line	14
	
l1548:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l1544
u1990:
	line	19
	
l1550:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2005
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2005:
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l1554
u2000:
	line	20
	
l1552:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1554:	
	movlw	01h
	
u2015:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2015
	line	22
	
l1556:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l1550
u2020:
	line	24
	
l1558:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l506:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4    0[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[COMMON] unsigned char 
;;  arg             4   10[COMMON] unsigned long 
;;  exp             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/xxtofl.c"
	line	10
global __ptext6
__ptext6:	;psect for function ___xxtofl
psect	text6
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/xxtofl.c"
	line	10
	
___xxtofl:	
;incstack = 0
	callstack 7
; Regs used in ___xxtofl: [wreg+status,2+status,0]
	movwf	(___xxtofl@sign)
	line	15
	
l2198:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l2204
u3470:
	
l2200:	
	btfss	(___xxtofl@val+3),7
	goto	u3481
	goto	u3480
u3481:
	goto	l2204
u3480:
	line	16
	
l2202:	
	comf	(___xxtofl@val)+0,w
	movwf	(___xxtofl@arg)
	comf	(___xxtofl@val)+1,w
	movwf	(___xxtofl@arg+1)
	comf	(___xxtofl@val)+2,w
	movwf	(___xxtofl@arg+2)
	comf	(___xxtofl@val)+3,w
	movwf	(___xxtofl@arg+3)
	incf	(___xxtofl@arg),f
	skipnz
	incf	(___xxtofl@arg+1),f
	skipnz
	incf	(___xxtofl@arg+2),f
	skipnz
	incf	(___xxtofl@arg+3),f
	line	17
	goto	l657
	line	19
	
l2204:	
	movf	(___xxtofl@val+3),w
	movwf	(___xxtofl@arg+3)
	movf	(___xxtofl@val+2),w
	movwf	(___xxtofl@arg+2)
	movf	(___xxtofl@val+1),w
	movwf	(___xxtofl@arg+1)
	movf	(___xxtofl@val),w
	movwf	(___xxtofl@arg)

	line	20
	
l657:	
	line	21
	movf	(___xxtofl@val+3),w
	iorwf	(___xxtofl@val+2),w
	iorwf	(___xxtofl@val+1),w
	iorwf	(___xxtofl@val),w
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l658
u3490:
	line	22
	
l2206:	
	movlw	0x0
	movwf	(?___xxtofl+3)
	movlw	0x0
	movwf	(?___xxtofl+2)
	movlw	0x0
	movwf	(?___xxtofl+1)
	movlw	0x0
	movwf	(?___xxtofl)

	goto	l659
	
l658:	
	line	23
	movlw	096h
	movwf	(___xxtofl@exp)
	line	24
	goto	l2212
	line	25
	
l2210:	
	movlw	low(01h)
	addwf	(___xxtofl@exp),f
	line	26
	movlw	01h
u3505:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u3505

	line	24
	
l2212:	
	movlw	high highword(0FE000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l2210
u3510:
	goto	l663
	line	29
	
l2214:	
	movlw	low(01h)
	addwf	(___xxtofl@exp),f
	line	30
	
l2216:	
	movlw	01h
	addwf	(___xxtofl@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+3),f
	line	31
	
l2218:	
	movlw	01h
u3525:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u3525

	line	32
	
l663:	
	line	28
	movlw	high highword(0FF000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l2214
u3530:
	goto	l2222
	line	34
	
l2220:	
	movlw	01h
	subwf	(___xxtofl@exp),f
	line	35
	movlw	01h
	movwf	(??___xxtofl)
u3545:
	clrc
	rlf	(___xxtofl@arg),f
	rlf	(___xxtofl@arg+1),f
	rlf	(___xxtofl@arg+2),f
	rlf	(___xxtofl@arg+3),f
	decfsz	(??___xxtofl)
	goto	u3545
	line	33
	
l2222:	
	btfsc	(___xxtofl@arg+2),(23)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l670
u3550:
	
l2224:	
	movlw	low(02h)
	subwf	(___xxtofl@exp),w
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l2220
u3560:
	
l670:	
	line	37
	btfsc	(___xxtofl@exp),(0)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l671
u3570:
	line	38
	
l2226:	
	movlw	0FFh
	andwf	(___xxtofl@arg),f
	movlw	0FFh
	andwf	(___xxtofl@arg+1),f
	movlw	07Fh
	andwf	(___xxtofl@arg+2),f
	movlw	0FFh
	andwf	(___xxtofl@arg+3),f
	
l671:	
	line	39
	clrc
	rrf	(___xxtofl@exp),f

	line	40
	
l2228:	
	movf	(___xxtofl@exp),w
	movwf	(??___xxtofl)
	clrf	(??___xxtofl)+1
	clrf	(??___xxtofl)+2
	clrf	(??___xxtofl)+3
	movlw	018h
u3585:
	clrc
	rlf	(??___xxtofl),f
	rlf	(??___xxtofl+1),f
	rlf	(??___xxtofl+2),f
	rlf	(??___xxtofl+3),f
u3580:
	addlw	-1
	skipz
	goto	u3585
	movf	(0+(??___xxtofl)),w
	iorwf	(___xxtofl@arg),f
	movf	(1+(??___xxtofl)),w
	iorwf	(___xxtofl@arg+1),f
	movf	(2+(??___xxtofl)),w
	iorwf	(___xxtofl@arg+2),f
	movf	(3+(??___xxtofl)),w
	iorwf	(___xxtofl@arg+3),f
	line	41
	
l2230:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l2236
u3590:
	
l2232:	
	btfss	(___xxtofl@val+3),7
	goto	u3601
	goto	u3600
u3601:
	goto	l2236
u3600:
	line	42
	
l2234:	
	bsf	(___xxtofl@arg)+(31/8),(31)&7
	line	43
	
l2236:	
	movf	(___xxtofl@arg+3),w
	movwf	(?___xxtofl+3)
	movf	(___xxtofl@arg+2),w
	movwf	(?___xxtofl+2)
	movf	(___xxtofl@arg+1),w
	movwf	(?___xxtofl+1)
	movf	(___xxtofl@arg),w
	movwf	(?___xxtofl)

	line	44
	
l659:	
	return
	callstack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul32.c"
	line	15
global __ptext7
__ptext7:	;psect for function ___lmul
psect	text7
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul32.c"
	line	15
	
___lmul:	
;incstack = 0
	callstack 7
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l1640:	
	movlw	high highword(0)
	movwf	(___lmul@product+3)
	movlw	low highword(0)
	movwf	(___lmul@product+2)
	movlw	high(0)
	movwf	(___lmul@product+1)
	movlw	low(0)
	movwf	(___lmul@product)

	line	121
	
l1642:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2121
	goto	u2120
u2121:
	goto	l1646
u2120:
	line	122
	
l1644:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2131
	addwf	(___lmul@product+1),f
u2131:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2132
	addwf	(___lmul@product+2),f
u2132:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2133
	addwf	(___lmul@product+3),f
u2133:

	line	123
	
l1646:	
	movlw	01h
	movwf	(??___lmul)
u2145:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul)
	goto	u2145
	line	124
	
l1648:	
	movlw	01h
u2155:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2155

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l1642
u2160:
	line	128
	
l1650:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l230:	
	return
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4    0[BANK0 ] unsigned long 
;;  a               4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  prod            4   20[BANK0 ] struct .
;;  grs             4   14[BANK0 ] unsigned long 
;;  temp            2   24[BANK0 ] struct .
;;  bexp            1   19[BANK0 ] unsigned char 
;;  aexp            1   18[BANK0 ] unsigned char 
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		__Umul8_16
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcmul.c"
	line	8
global __ptext8
__ptext8:	;psect for function ___flmul
psect	text8
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcmul.c"
	line	8
	
___flmul:	
;incstack = 0
	callstack 6
; Regs used in ___flmul: [wreg+status,2+status,0+pclath+btemp1+cstack]
	line	17
	
l2056:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___flmul@b)+03h,w
	movwf	(___flmul@sign)
	
l2058:	
	movlw	low(080h)
	andwf	(___flmul@sign),f
	line	18
	
l2060:	
	movf	0+(___flmul@b)+03h,w
	movwf	(??___flmul)
	addwf	(??___flmul),w
	movwf	(___flmul@bexp)
	line	19
	
l2062:	
	btfss	0+(___flmul@b)+02h,(7)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l2066
u3100:
	line	20
	
l2064:	
	bsf	(___flmul@bexp)+(0/8),(0)&7
	line	24
	
l2066:	
	movf	((___flmul@bexp)),w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l2074
u3110:
	line	26
	
l2068:	
		incf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2072
u3120:
	line	28
	
l2070:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	31
	
l2072:	
	bsf	(___flmul@b)+(23/8),(23)&7
	line	33
	goto	l2076
	line	36
	
l2074:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	39
	
l2076:	
	movf	0+(___flmul@a)+03h,w
	andlw	080h
	xorwf	(___flmul@sign),f
	line	40
	
l2078:	
	movf	0+(___flmul@a)+03h,w
	movwf	(??___flmul)
	addwf	(??___flmul),w
	movwf	(___flmul@aexp)
	line	41
	
l2080:	
	btfss	0+(___flmul@a)+02h,(7)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l2084
u3130:
	line	42
	
l2082:	
	bsf	(___flmul@aexp)+(0/8),(0)&7
	line	45
	
l2084:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l2092
u3140:
	line	48
	
l2086:	
		incf	((___flmul@aexp)),w
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l2090
u3150:
	line	50
	
l2088:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	53
	
l2090:	
	bsf	(___flmul@a)+(23/8),(23)&7
	line	54
	goto	l2094
	line	57
	
l2092:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	65
	
l2094:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l2098
u3160:
	
l2096:	
	movf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l2102
u3170:
	line	66
	
l2098:	
	movlw	0x0
	movwf	(?___flmul+3)
	movlw	0x0
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	goto	l613
	line	119
	
l2102:	
	movf	(___flmul@b),w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	120
	
l2104:	
	movf	(___flmul@temp),w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	clrf	(??___flmul)+2
	clrf	(??___flmul)+3
	movf	(3+(??___flmul)),w
	movwf	(___flmul@grs+3)
	movf	(2+(??___flmul)),w
	movwf	(___flmul@grs+2)
	movf	(1+(??___flmul)),w
	movwf	(___flmul@grs+1)
	movf	(0+(??___flmul)),w
	movwf	(___flmul@grs)

	line	121
	
l2106:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	clrf	(??___flmul)+2
	clrf	(??___flmul)+3
	movf	(3+(??___flmul)),w
	movwf	(___flmul@prod+3)
	movf	(2+(??___flmul)),w
	movwf	(___flmul@prod+2)
	movf	(1+(??___flmul)),w
	movwf	(___flmul@prod+1)
	movf	(0+(??___flmul)),w
	movwf	(___flmul@prod)

	line	122
	movf	0+(___flmul@b)+01h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	123
	
l2108:	
	movf	(___flmul@temp),w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	clrf	(??___flmul)+2
	clrf	(??___flmul)+3
	movf	(0+(??___flmul)),w
	addwf	(___flmul@grs),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3181
	addwf	(___flmul@grs+1),f
u3181:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3182
	addwf	(___flmul@grs+2),f
u3182:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3183
	addwf	(___flmul@grs+3),f
u3183:

	line	124
	
l2110:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	clrf	(??___flmul)+2
	clrf	(??___flmul)+3
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3191
	addwf	(___flmul@prod+1),f
u3191:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3192
	addwf	(___flmul@prod+2),f
u3192:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3193
	addwf	(___flmul@prod+3),f
u3193:

	line	125
	movf	0+(___flmul@b)+02h,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	126
	
l2112:	
	movf	(___flmul@temp),w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	clrf	(??___flmul)+2
	clrf	(??___flmul)+3
	movf	(0+(??___flmul)),w
	addwf	(___flmul@grs),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3201
	addwf	(___flmul@grs+1),f
u3201:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3202
	addwf	(___flmul@grs+2),f
u3202:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3203
	addwf	(___flmul@grs+3),f
u3203:

	line	127
	
l2114:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	clrf	(??___flmul)+2
	clrf	(??___flmul)+3
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3211
	addwf	(___flmul@prod+1),f
u3211:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3212
	addwf	(___flmul@prod+2),f
u3212:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3213
	addwf	(___flmul@prod+3),f
u3213:

	line	128
	
l2116:	
	movlw	08h
	movwf	(??___flmul)
u3225:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3225
	line	129
	
l2118:	
	movf	0+(___flmul@b)+01h,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	130
	
l2120:	
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movf	(0+(??___flmul)),w
	addwf	(___flmul@grs),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3231
	addwf	(___flmul@grs+1),f
u3231:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3232
	addwf	(___flmul@grs+2),f
u3232:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3233
	addwf	(___flmul@grs+3),f
u3233:

	line	131
	
l2122:	
	movf	(___flmul@b),w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	132
	
l2124:	
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movf	(0+(??___flmul)),w
	addwf	(___flmul@grs),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3241
	addwf	(___flmul@grs+1),f
u3241:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3242
	addwf	(___flmul@grs+2),f
u3242:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3243
	addwf	(___flmul@grs+3),f
u3243:

	line	133
	
l2126:	
	movlw	08h
	movwf	(??___flmul)
u3255:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3255
	line	134
	movf	(___flmul@b),w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	135
	
l2128:	
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movf	(0+(??___flmul)),w
	addwf	(___flmul@grs),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3261
	addwf	(___flmul@grs+1),f
u3261:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3262
	addwf	(___flmul@grs+2),f
u3262:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3263
	addwf	(___flmul@grs+3),f
u3263:

	line	136
	
l2130:	
	movf	0+(___flmul@b)+01h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	137
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3271
	addwf	(___flmul@prod+1),f
u3271:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3272
	addwf	(___flmul@prod+2),f
u3272:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3273
	addwf	(___flmul@prod+3),f
u3273:

	line	138
	
l2132:	
	movf	0+(___flmul@b)+02h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	139
	
l2134:	
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3281
	addwf	(___flmul@prod+1),f
u3281:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3282
	addwf	(___flmul@prod+2),f
u3282:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3283
	addwf	(___flmul@prod+3),f
u3283:

	line	140
	movf	0+(___flmul@b)+02h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	141
	
l2136:	
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movlw	08h
u3295:
	clrc
	rlf	(??___flmul),f
	rlf	(??___flmul+1),f
	rlf	(??___flmul+2),f
	rlf	(??___flmul+3),f
u3290:
	addlw	-1
	skipz
	goto	u3295
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3301
	addwf	(___flmul@prod+1),f
u3301:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3302
	addwf	(___flmul@prod+2),f
u3302:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3303
	addwf	(___flmul@prod+3),f
u3303:

	line	145
	
l2138:	
	movf	(___flmul@grs),w
	movwf	(??___flmul)
	movf	(___flmul@grs+1),w
	movwf	((??___flmul)+1)
	movf	(___flmul@grs+2),w
	movwf	((??___flmul)+2)
	movf	(___flmul@grs+3),w
	movwf	((??___flmul)+3)
	movlw	018h
u3315:
	clrc
	rrf	(??___flmul+3),f
	rrf	(??___flmul+2),f
	rrf	(??___flmul+1),f
	rrf	(??___flmul),f
u3310:
	addlw	-1
	skipz
	goto	u3315
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3321
	addwf	(___flmul@prod+1),f
u3321:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3322
	addwf	(___flmul@prod+2),f
u3322:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3323
	addwf	(___flmul@prod+3),f
u3323:

	line	146
	
l2140:	
	movlw	08h
	movwf	(??___flmul)
u3335:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3335
	line	149
	
l2142:	
	movf	(___flmul@bexp),w
	addwf	(___flmul@aexp),w
	movwf	(??___flmul)
	clrf	(??___flmul)+1
	rlf	1+(??___flmul),f
	
	movf	(0+(??___flmul)),w
	addlw	low(-126)
	movwf	(___flmul@temp)
	movf	(1+(??___flmul)),w
	skipnc
	addlw	1
	addlw	high(-126)
	movwf	1+(___flmul@temp)
	line	152
	goto	l2154
	line	153
	
l2144:	
	movlw	01h
	movwf	(??___flmul)
u3345:
	clrc
	rlf	(___flmul@prod),f
	rlf	(___flmul@prod+1),f
	rlf	(___flmul@prod+2),f
	rlf	(___flmul@prod+3),f
	decfsz	(??___flmul)
	goto	u3345
	line	154
	
l2146:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l2150
u3350:
	line	155
	
l2148:	
	bsf	(___flmul@prod)+(0/8),(0)&7
	line	157
	
l2150:	
	movlw	01h
	movwf	(??___flmul)
u3365:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3365
	line	158
	
l2152:	
	movlw	0FFh
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0FFh
	addwf	(___flmul@temp+1),f
	line	152
	
l2154:	
	btfss	(___flmul@prod+2),(23)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2144
u3370:
	line	163
	
l2156:	
	clrf	(___flmul@aexp)
	line	164
	
l2158:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2166
u3380:
	line	165
	
l2160:	
	movlw	0FFh
	andwf	(___flmul@grs),w
	movwf	(??___flmul)
	movlw	0FFh
	andwf	(___flmul@grs+1),w
	movwf	((??___flmul)+1)
	movlw	0FFh
	andwf	(___flmul@grs+2),w
	movwf	((??___flmul)+2)
	movlw	07Fh
	andwf	(___flmul@grs+3),w
	movwf	((??___flmul)+3)
	movf	(3+(??___flmul)),w
	iorwf	(2+(??___flmul)),w
	iorwf	(1+(??___flmul)),w
	iorwf	(0+(??___flmul)),w
	skipnz
	goto	u3391
	goto	u3390
u3391:
	goto	l619
u3390:
	line	166
	
l2162:	
	movlw	01h
	movwf	(___flmul@aexp)
	line	167
	goto	l2166
	line	168
	
l619:	
	line	169
	btfss	(___flmul@prod),(0)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l2166
u3400:
	goto	l2162
	line	174
	
l2166:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l2176
u3410:
	line	175
	
l2168:	
	movlw	01h
	addwf	(___flmul@prod),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+3),f
	line	176
	
l2170:	
	btfss	(___flmul@prod+3),(24)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l2176
u3420:
	line	177
	
l2172:	
	movf	(___flmul@prod),w
	movwf	(??___flmul)
	movf	(___flmul@prod+1),w
	movwf	((??___flmul)+1)
	movf	(___flmul@prod+2),w
	movwf	((??___flmul)+2)
	movf	(___flmul@prod+3),w
	movwf	((??___flmul)+3)
	movlw	01h
	movwf	(??___flmul+4)
u3435:
	rlf	(??___flmul+3),w
	rrf	(??___flmul+3),f
	rrf	(??___flmul+2),f
	rrf	(??___flmul+1),f
	rrf	(??___flmul),f
u3430:
	decfsz	(??___flmul+4),f
	goto	u3435
	movf	(3+(??___flmul)),w
	movwf	(___flmul@prod+3)
	movf	(2+(??___flmul)),w
	movwf	(___flmul@prod+2)
	movf	(1+(??___flmul)),w
	movwf	(___flmul@prod+1)
	movf	(0+(??___flmul)),w
	movwf	(___flmul@prod)

	line	178
	
l2174:	
	movlw	01h
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0
	addwf	(___flmul@temp+1),f
	line	183
	
l2176:	
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3445
	movlw	0FFh
	subwf	(___flmul@temp),w
u3445:

	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l2180
u3440:
	line	184
	
l2178:	
	movlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@prod+3)
	movlw	080h
	movwf	(___flmul@prod+2)
	movlw	0
	movwf	(___flmul@prod+1)
	movlw	0
	movwf	(___flmul@prod)

	line	185
	goto	l625
	line	187
	
l2180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3455
	movlw	01h
	subwf	(___flmul@temp),w
u3455:

	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l2186
u3450:
	line	188
	
l2182:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@prod+3)
	movlw	low highword(0)
	movwf	(___flmul@prod+2)
	movlw	high(0)
	movwf	(___flmul@prod+1)
	movlw	low(0)
	movwf	(___flmul@prod)

	line	190
	
l2184:	
	clrf	(___flmul@sign)
	line	191
	goto	l625
	line	194
	
l2186:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp),w
	movwf	(___flmul@bexp)
	line	195
	movlw	0FFh
	andwf	(___flmul@prod),f
	movlw	0FFh
	andwf	(___flmul@prod+1),f
	movlw	07Fh
	andwf	(___flmul@prod+2),f
	movlw	0
	andwf	(___flmul@prod+3),f
	line	196
	
l2188:	
	btfss	(___flmul@bexp),(0)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2192
u3460:
	line	197
	
l2190:	
	bsf	0+(___flmul@prod)+02h+(7/8),(7)&7
	line	199
	
l2192:	
	movf	(___flmul@bexp),w
	movwf	(??___flmul)
	clrc
	rrf	(??___flmul),w
	movwf	0+(___flmul@prod)+03h
	line	200
	
l625:	
	line	201
	movf	(___flmul@sign),w
	iorwf	0+(___flmul@prod)+03h,f
	line	203
	
l2194:	
	movf	(___flmul@prod+3),w
	movwf	(?___flmul+3)
	movf	(___flmul@prod+2),w
	movwf	(?___flmul+2)
	movf	(___flmul@prod+1),w
	movwf	(?___flmul+1)
	movf	(___flmul@prod),w
	movwf	(?___flmul)

	line	205
	
l613:	
	return
	callstack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	__Umul8_16

;; *************** function __Umul8_16 *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul8_16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    8[COMMON] unsigned char 
;;  word_mpld       2    6[COMMON] unsigned short 
;;  product         2    4[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___flmul
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul8_16.c"
	line	4
global __ptext9
__ptext9:	;psect for function __Umul8_16
psect	text9
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul8_16.c"
	line	4
	
__Umul8_16:	
;incstack = 0
	callstack 6
; Regs used in __Umul8_16: [wreg+status,2+status,0]
	movwf	(__Umul8_16@multiplier)
	line	5
	
l1562:	
	clrf	(__Umul8_16@product)
	clrf	(__Umul8_16@product+1)
	line	6
	
l1564:	
	movf	(__Umul8_16@multiplicand),w
	movwf	(??__Umul8_16)
	clrf	(??__Umul8_16+1)
	movf	(0+(??__Umul8_16)),w
	movwf	(__Umul8_16@word_mpld)
	movf	(1+(??__Umul8_16)),w
	movwf	(__Umul8_16@word_mpld+1)
	line	51
	
l1566:	
	btfss	(__Umul8_16@multiplier),(0)&7
	goto	u2031
	goto	u2030
u2031:
	goto	l632
u2030:
	line	52
	
l1568:	
	movf	(__Umul8_16@word_mpld),w
	addwf	(__Umul8_16@product),f
	skipnc
	incf	(__Umul8_16@product+1),f
	movf	(__Umul8_16@word_mpld+1),w
	addwf	(__Umul8_16@product+1),f
	line	53
	
l632:	
	line	54
	movlw	01h
	
u2045:
	clrc
	rlf	(__Umul8_16@word_mpld),f
	rlf	(__Umul8_16@word_mpld+1),f
	addlw	-1
	skipz
	goto	u2045
	line	55
	clrc
	rrf	(__Umul8_16@multiplier),f

	line	56
	
l1570:	
	movf	((__Umul8_16@multiplier)),w
	btfss	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l1566
u2050:
	line	59
	
l1572:	
	movf	(__Umul8_16@product+1),w
	movwf	(?__Umul8_16+1)
	movf	(__Umul8_16@product),w
	movwf	(?__Umul8_16)
	line	60
	
l634:	
	return
	callstack 0
GLOBAL	__end_of__Umul8_16
	__end_of__Umul8_16:
	signat	__Umul8_16,8314
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    0[COMMON] unsigned int 
;;  ff2             4    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/flge.c"
	line	4
global __ptext10
__ptext10:	;psect for function ___flge
psect	text10
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/flge.c"
	line	4
	
___flge:	
;incstack = 0
	callstack 7
; Regs used in ___flge: [wreg+status,2+status,0]
	line	7
	
l1694:	
	movlw	0
	andwf	(___flge@ff1),w
	movwf	(??___flge)
	movlw	0
	andwf	(___flge@ff1+1),w
	movwf	((??___flge)+1)
	movlw	080h
	andwf	(___flge@ff1+2),w
	movwf	((??___flge)+2)
	movlw	07Fh
	andwf	(___flge@ff1+3),w
	movwf	((??___flge)+3)
	movf	(3+(??___flge)),w
	iorwf	(2+(??___flge)),w
	iorwf	(1+(??___flge)),w
	iorwf	(0+(??___flge)),w
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l394
u2270:
	line	8
	
l1696:	
	movlw	high highword(0)
	movwf	(___flge@ff1+3)
	movlw	low highword(0)
	movwf	(___flge@ff1+2)
	movlw	high(0)
	movwf	(___flge@ff1+1)
	movlw	low(0)
	movwf	(___flge@ff1)

	
l394:	
	line	9
	movlw	0
	andwf	(___flge@ff2),w
	movwf	(??___flge)
	movlw	0
	andwf	(___flge@ff2+1),w
	movwf	((??___flge)+1)
	movlw	080h
	andwf	(___flge@ff2+2),w
	movwf	((??___flge)+2)
	movlw	07Fh
	andwf	(___flge@ff2+3),w
	movwf	((??___flge)+3)
	movf	(3+(??___flge)),w
	iorwf	(2+(??___flge)),w
	iorwf	(1+(??___flge)),w
	iorwf	(0+(??___flge)),w
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l1700
u2280:
	line	10
	
l1698:	
	movlw	high highword(0)
	movwf	(___flge@ff2+3)
	movlw	low highword(0)
	movwf	(___flge@ff2+2)
	movlw	high(0)
	movwf	(___flge@ff2+1)
	movlw	low(0)
	movwf	(___flge@ff2)

	line	12
	
l1700:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1704
u2290:
	line	13
	
l1702:	
	movlw	0
	movwf	((??___flge))
	movlw	0
	movwf	((??___flge)+1)
	movlw	0
	movwf	((??___flge)+2)
	movlw	080h
	movwf	((??___flge)+3)
	movf	(___flge@ff1),w
	subwf	(??___flge),f
	movf	(___flge@ff1+1),w
	skipc
	incfsz	(___flge@ff1+1),w
	goto	u2301
	goto	u2302
u2301:
	subwf	(??___flge+1),f
u2302:
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u2303
	goto	u2304
u2303:
	subwf	(??___flge+2),f
u2304:
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u2305
	goto	u2306
u2305:
	subwf	(??___flge+3),f
u2306:

	movf	(3+(??___flge)),w
	movwf	(___flge@ff1+3)
	movf	(2+(??___flge)),w
	movwf	(___flge@ff1+2)
	movf	(1+(??___flge)),w
	movwf	(___flge@ff1+1)
	movf	(0+(??___flge)),w
	movwf	(___flge@ff1)

	line	14
	
l1704:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l397
u2310:
	line	15
	
l1706:	
	movlw	0
	movwf	((??___flge))
	movlw	0
	movwf	((??___flge)+1)
	movlw	0
	movwf	((??___flge)+2)
	movlw	080h
	movwf	((??___flge)+3)
	movf	(___flge@ff2),w
	subwf	(??___flge),f
	movf	(___flge@ff2+1),w
	skipc
	incfsz	(___flge@ff2+1),w
	goto	u2321
	goto	u2322
u2321:
	subwf	(??___flge+1),f
u2322:
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u2323
	goto	u2324
u2323:
	subwf	(??___flge+2),f
u2324:
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u2325
	goto	u2326
u2325:
	subwf	(??___flge+3),f
u2326:

	movf	(3+(??___flge)),w
	movwf	(___flge@ff2+3)
	movf	(2+(??___flge)),w
	movwf	(___flge@ff2+2)
	movf	(1+(??___flge)),w
	movwf	(___flge@ff2+1)
	movf	(0+(??___flge)),w
	movwf	(___flge@ff2)

	
l397:	
	line	16
	movlw	080h
	xorwf	(___flge@ff1+3),f
	line	17
	movlw	080h
	xorwf	(___flge@ff2+3),f
	line	18
	movf	(___flge@ff2+3),w
	subwf	(___flge@ff1+3),w
	skipz
	goto	u2335
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u2335
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u2335
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u2335:
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l1710
u2330:
	
l1708:	
	clrc
	
	goto	l402
	
l1710:	
	setc
	
	line	19
	
l402:	
	return
	callstack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  a               4    0[COMMON] unsigned int 
;;  b               4    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  grs             4    7[BANK0 ] unsigned long 
;;  rem             4    0[BANK0 ] unsigned long 
;;  new_exp         2    5[BANK0 ] short 
;;  aexp            1   12[BANK0 ] unsigned char 
;;  bexp            1   11[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:        13      13       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcdiv.c"
	line	8
global __ptext11
__ptext11:	;psect for function ___fldiv
psect	text11
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcdiv.c"
	line	8
	
___fldiv:	
;incstack = 0
	callstack 7
; Regs used in ___fldiv: [wreg+status,2+status,0+btemp1]
	line	26
	
l1912:	
	movf	0+(___fldiv@b)+03h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@sign)
	
l1914:	
	movlw	low(080h)
	andwf	(___fldiv@sign),f
	line	27
	
l1916:	
	movf	0+(___fldiv@b)+03h,w
	movwf	(??___fldiv)
	addwf	(??___fldiv),w
	movwf	(___fldiv@bexp)
	line	28
	
l1918:	
	btfss	0+(___fldiv@b)+02h,(7)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1922
u2800:
	line	29
	
l1920:	
	bsf	(___fldiv@bexp)+(0/8),(0)&7
	line	33
	
l1922:	
	movf	((___fldiv@bexp)),w
	btfsc	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l1932
u2810:
	line	35
	
l1924:	
		incf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l1928
u2820:
	line	37
	
l1926:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	40
	
l1928:	
	bsf	(___fldiv@b)+(23/8),(23)&7
	line	42
	
l1930:	
	clrf	0+(___fldiv@b)+03h
	line	43
	goto	l1934
	line	46
	
l1932:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	49
	
l1934:	
	movf	0+(___fldiv@a)+03h,w
	andlw	080h
	xorwf	(___fldiv@sign),f
	line	50
	
l1936:	
	movf	0+(___fldiv@a)+03h,w
	movwf	(??___fldiv)
	addwf	(??___fldiv),w
	movwf	(___fldiv@aexp)
	line	51
	
l1938:	
	btfss	0+(___fldiv@a)+02h,(7)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l1942
u2830:
	line	52
	
l1940:	
	bsf	(___fldiv@aexp)+(0/8),(0)&7
	line	56
	
l1942:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l1952
u2840:
	line	58
	
l1944:	
		incf	((___fldiv@aexp)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l1948
u2850:
	line	60
	
l1946:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	63
	
l1948:	
	bsf	(___fldiv@a)+(23/8),(23)&7
	line	65
	
l1950:	
	clrf	0+(___fldiv@a)+03h
	line	66
	goto	l573
	line	69
	
l1952:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	70
	
l573:	
	line	75
	movf	(___fldiv@a+3),w
	iorwf	(___fldiv@a+2),w
	iorwf	(___fldiv@a+1),w
	iorwf	(___fldiv@a),w
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l1962
u2860:
	line	76
	
l1954:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	77
	movlw	080h
	iorwf	0+(___fldiv@b)+02h,f
	movlw	07Fh
	iorwf	1+(___fldiv@b)+02h,f
	line	78
	
l1956:	
	movf	(___fldiv@sign),w
	iorwf	0+(___fldiv@b)+03h,f
	line	79
	
l1958:	
	movf	(___fldiv@b+3),w
	movwf	(?___fldiv+3)
	movf	(___fldiv@b+2),w
	movwf	(?___fldiv+2)
	movf	(___fldiv@b+1),w
	movwf	(?___fldiv+1)
	movf	(___fldiv@b),w
	movwf	(?___fldiv)

	goto	l575
	line	83
	
l1962:	
	movf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l1968
u2870:
	line	84
	
l1964:	
	line	85
	movlw	high highword(0)
	movwf	(?___fldiv+3)
	movlw	low highword(0)
	movwf	(?___fldiv+2)
	movlw	high(0)
	movwf	(?___fldiv+1)
	movlw	low(0)
	movwf	(?___fldiv)

	goto	l575
	line	89
	
l1968:	
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv)
	clrf	(??___fldiv+1)
	movf	(1+(??___fldiv)),w
	movwf	(??___fldiv+1+2)
	movf	(___fldiv@aexp),w
	subwf	(0+(??___fldiv)),w
	movwf	(??___fldiv+2)
	skipc
	decf	(??___fldiv+1+2),f
	movf	(0+(??___fldiv+2)),w
	addlw	low(07Fh)
	movwf	(___fldiv@new_exp)
	movf	(1+(??___fldiv+2)),w
	skipnc
	addlw	1
	addlw	high(07Fh)
	movwf	1+(___fldiv@new_exp)
	line	92
	
l1970:	
	movf	(___fldiv@b+3),w
	movwf	(___fldiv@rem+3)
	movf	(___fldiv@b+2),w
	movwf	(___fldiv@rem+2)
	movf	(___fldiv@b+1),w
	movwf	(___fldiv@rem+1)
	movf	(___fldiv@b),w
	movwf	(___fldiv@rem)

	line	93
	
l1972:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	94
	
l1974:	
	movlw	high highword(0)
	movwf	(___fldiv@grs+3)
	movlw	low highword(0)
	movwf	(___fldiv@grs+2)
	movlw	high(0)
	movwf	(___fldiv@grs+1)
	movlw	low(0)
	movwf	(___fldiv@grs)

	line	96
	
l1976:	
	clrf	(___fldiv@aexp)
	line	97
	goto	l1996
	line	100
	
l1978:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l1988
u2880:
	line	101
	
l1980:	
	movlw	01h
	movwf	(??___fldiv)
u2895:
	clrc
	rlf	(___fldiv@rem),f
	rlf	(___fldiv@rem+1),f
	rlf	(___fldiv@rem+2),f
	rlf	(___fldiv@rem+3),f
	decfsz	(??___fldiv)
	goto	u2895
	line	102
	movlw	01h
	movwf	(??___fldiv)
u2905:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv)
	goto	u2905
	line	103
	
l1982:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l1986
u2910:
	line	104
	
l1984:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	106
	
l1986:	
	movlw	01h
	movwf	(??___fldiv)
u2925:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv)
	goto	u2925
	line	112
	
l1988:	
	movf	(___fldiv@a+3),w
	subwf	(___fldiv@rem+3),w
	skipz
	goto	u2935
	movf	(___fldiv@a+2),w
	subwf	(___fldiv@rem+2),w
	skipz
	goto	u2935
	movf	(___fldiv@a+1),w
	subwf	(___fldiv@rem+1),w
	skipz
	goto	u2935
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l1994
u2930:
	line	115
	
l1990:	
	bsf	(___fldiv@grs)+(30/8),(30)&7
	line	116
	
l1992:	
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),f
	movf	(___fldiv@a+1),w
	skipc
	incfsz	(___fldiv@a+1),w
	goto	u2945
	goto	u2946
u2945:
	subwf	(___fldiv@rem+1),f
u2946:
	movf	(___fldiv@a+2),w
	skipc
	incfsz	(___fldiv@a+2),w
	goto	u2947
	goto	u2948
u2947:
	subwf	(___fldiv@rem+2),f
u2948:
	movf	(___fldiv@a+3),w
	skipc
	incfsz	(___fldiv@a+3),w
	goto	u2949
	goto	u2940
u2949:
	subwf	(___fldiv@rem+3),f
u2940:

	line	118
	
l1994:	
	movlw	low(01h)
	addwf	(___fldiv@aexp),f
	line	97
	
l1996:	
	movlw	low(01Ah)
	subwf	(___fldiv@aexp),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l1978
u2950:
	line	122
	
l1998:	
	movf	(___fldiv@rem+3),w
	iorwf	(___fldiv@rem+2),w
	iorwf	(___fldiv@rem+1),w
	iorwf	(___fldiv@rem),w
	skipnz
	goto	u2961
	goto	u2960
u2961:
	goto	l2012
u2960:
	line	123
	
l2000:	
	bsf	(___fldiv@grs)+(0/8),(0)&7
	goto	l2012
	line	128
	
l2002:	
	movlw	01h
	movwf	(??___fldiv)
u2975:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv)
	goto	u2975
	line	129
	
l2004:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2008
u2980:
	line	130
	
l2006:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	132
	
l2008:	
	movlw	01h
	movwf	(??___fldiv)
u2995:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv)
	goto	u2995
	line	133
	
l2010:	
	movlw	0FFh
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0FFh
	addwf	(___fldiv@new_exp+1),f
	line	127
	
l2012:	
	btfss	(___fldiv@b+2),(23)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l2002
u3000:
	line	139
	
l2014:	
	clrf	(___fldiv@aexp)
	line	140
	
l2016:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l2024
u3010:
	line	141
	
l2018:	
	movlw	0FFh
	andwf	(___fldiv@grs),w
	movwf	(??___fldiv)
	movlw	0FFh
	andwf	(___fldiv@grs+1),w
	movwf	((??___fldiv)+1)
	movlw	0FFh
	andwf	(___fldiv@grs+2),w
	movwf	((??___fldiv)+2)
	movlw	07Fh
	andwf	(___fldiv@grs+3),w
	movwf	((??___fldiv)+3)
	movf	(3+(??___fldiv)),w
	iorwf	(2+(??___fldiv)),w
	iorwf	(1+(??___fldiv)),w
	iorwf	(0+(??___fldiv)),w
	skipnz
	goto	u3021
	goto	u3020
u3021:
	goto	l589
u3020:
	line	142
	
l2020:	
	movlw	01h
	movwf	(___fldiv@aexp)
	line	143
	goto	l2024
	line	144
	
l589:	
	line	145
	btfss	(___fldiv@b),(0)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l2024
u3030:
	goto	l2020
	line	150
	
l2024:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2034
u3040:
	line	151
	
l2026:	
	movlw	01h
	addwf	(___fldiv@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+3),f
	line	152
	
l2028:	
	btfss	(___fldiv@b+3),(24)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l2034
u3050:
	line	153
	
l2030:	
	movf	(___fldiv@b),w
	movwf	(??___fldiv)
	movf	(___fldiv@b+1),w
	movwf	((??___fldiv)+1)
	movf	(___fldiv@b+2),w
	movwf	((??___fldiv)+2)
	movf	(___fldiv@b+3),w
	movwf	((??___fldiv)+3)
	movlw	01h
	movwf	(??___fldiv+4)
u3065:
	rlf	(??___fldiv+3),w
	rrf	(??___fldiv+3),f
	rrf	(??___fldiv+2),f
	rrf	(??___fldiv+1),f
	rrf	(??___fldiv),f
u3060:
	decfsz	(??___fldiv+4),f
	goto	u3065
	movf	(3+(??___fldiv)),w
	movwf	(___fldiv@b+3)
	movf	(2+(??___fldiv)),w
	movwf	(___fldiv@b+2)
	movf	(1+(??___fldiv)),w
	movwf	(___fldiv@b+1)
	movf	(0+(??___fldiv)),w
	movwf	(___fldiv@b)

	line	154
	
l2032:	
	movlw	01h
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0
	addwf	(___fldiv@new_exp+1),f
	line	159
	
l2034:	
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3075
	movlw	0FFh
	subwf	(___fldiv@new_exp),w
u3075:

	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l2038
u3070:
	line	160
	
l2036:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@new_exp)
	movlw	0
	movwf	((___fldiv@new_exp))+1
	line	161
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	165
	
l2038:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3085
	movlw	01h
	subwf	(___fldiv@new_exp),w
u3085:

	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l595
u3080:
	line	166
	
l2040:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___fldiv@new_exp)
	clrf	(___fldiv@new_exp+1)
	line	167
	
l2042:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	169
	
l2044:	
	clrf	(___fldiv@sign)
	line	170
	
l595:	
	line	173
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp),w
	movwf	(___fldiv@bexp)
	line	175
	
l2046:	
	btfss	(___fldiv@bexp),(0)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l2050
u3090:
	line	176
	
l2048:	
	bsf	0+(___fldiv@b)+02h+(7/8),(7)&7
	line	177
	goto	l597
	line	180
	
l2050:	
	movlw	low(07Fh)
	andwf	0+(___fldiv@b)+02h,f
	line	181
	
l597:	
	line	182
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv)
	clrc
	rrf	(??___fldiv),w
	movwf	0+(___fldiv@b)+03h
	line	183
	movf	(___fldiv@sign),w
	iorwf	0+(___fldiv@b)+03h,f
	goto	l1958
	line	185
	
l575:	
	return
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   26[BANK0 ] unsigned char 
;;  a               4   30[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  grs             1   45[BANK0 ] unsigned char 
;;  bexp            1   44[BANK0 ] unsigned char 
;;  aexp            1   43[BANK0 ] unsigned char 
;;  signs           1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
	line	10
global __ptext12
__ptext12:	;psect for function ___fladd
psect	text12
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
	line	10
	
___fladd:	
;incstack = 0
	callstack 7
; Regs used in ___fladd: [wreg+status,2+status,0+btemp1]
	line	21
	
l1714:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___fladd@b)+03h,w
	movwf	(___fladd@signs)
	
l1716:	
	movlw	low(080h)
	andwf	(___fladd@signs),f
	line	22
	
l1718:	
	movf	0+(___fladd@b)+03h,w
	movwf	(??___fladd)
	addwf	(??___fladd),w
	movwf	(___fladd@bexp)
	line	23
	
l1720:	
	btfss	0+(___fladd@b)+02h,(7)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1724
u2340:
	line	24
	
l1722:	
	bsf	(___fladd@bexp)+(0/8),(0)&7
	line	28
	
l1724:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l1734
u2350:
	line	30
	
l1726:	
		incf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l1730
u2360:
	line	32
	
l1728:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	35
	
l1730:	
	bsf	(___fladd@b)+(23/8),(23)&7
	line	37
	
l1732:	
	clrf	0+(___fladd@b)+03h
	line	38
	goto	l512
	line	41
	
l1734:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	42
	
l512:	
	line	44
	movf	0+(___fladd@a)+03h,w
	movwf	(___fladd@aexp)
	
l1736:	
	movlw	low(080h)
	andwf	(___fladd@aexp),f
	line	46
	
l1738:	
	movf	(___fladd@aexp),w
	xorwf	(___fladd@signs),w
	skipnz
	goto	u2371
	goto	u2370
u2371:
	goto	l1742
u2370:
	line	47
	
l1740:	
	bsf	(___fladd@signs)+(6/8),(6)&7
	line	49
	
l1742:	
	movf	0+(___fladd@a)+03h,w
	movwf	(??___fladd)
	addwf	(??___fladd),w
	movwf	(___fladd@aexp)
	line	50
	
l1744:	
	btfss	0+(___fladd@a)+02h,(7)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l1748
u2380:
	line	51
	
l1746:	
	bsf	(___fladd@aexp)+(0/8),(0)&7
	line	55
	
l1748:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l1758
u2390:
	line	57
	
l1750:	
		incf	((___fladd@aexp)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l1754
u2400:
	line	59
	
l1752:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	62
	
l1754:	
	bsf	(___fladd@a)+(23/8),(23)&7
	line	64
	
l1756:	
	clrf	0+(___fladd@a)+03h
	line	65
	goto	l517
	line	68
	
l1758:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	69
	
l517:	
	line	75
	movf	(___fladd@bexp),w
	subwf	(___fladd@aexp),w
	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l1794
u2410:
	line	77
	
l1760:	
	btfss	(___fladd@signs),(6)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1764
u2420:
	line	78
	
l1762:	
	movlw	low(080h)
	xorwf	(___fladd@signs),f
	line	81
	
l1764:	
	movf	(___fladd@bexp),w
	movwf	(___fladd@grs)
	line	82
	
l1766:	
	movf	(___fladd@aexp),w
	movwf	(___fladd@bexp)
	line	83
	
l1768:	
	movf	(___fladd@grs),w
	movwf	(___fladd@aexp)
	line	84
	
l1770:	
	movf	(___fladd@b),w
	movwf	(___fladd@grs)
	line	85
	
l1772:	
	movf	(___fladd@a),w
	movwf	(___fladd@b)
	line	86
	
l1774:	
	movf	(___fladd@grs),w
	movwf	(___fladd@a)
	line	87
	
l1776:	
	movf	0+(___fladd@b)+01h,w
	movwf	(___fladd@grs)
	line	88
	
l1778:	
	movf	0+(___fladd@a)+01h,w
	movwf	0+(___fladd@b)+01h
	line	89
	
l1780:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+01h
	line	90
	
l1782:	
	movf	0+(___fladd@b)+02h,w
	movwf	(___fladd@grs)
	line	91
	
l1784:	
	movf	0+(___fladd@a)+02h,w
	movwf	0+(___fladd@b)+02h
	line	92
	
l1786:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+02h
	line	93
	
l1788:	
	movf	0+(___fladd@b)+03h,w
	movwf	(___fladd@grs)
	line	94
	
l1790:	
	movf	0+(___fladd@a)+03h,w
	movwf	0+(___fladd@b)+03h
	line	95
	
l1792:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+03h
	line	98
	
l1794:	
	clrf	(___fladd@grs)
	line	100
	
l1796:	
	movf	(___fladd@aexp),w
	movwf	(??___fladd)
	clrf	(??___fladd+1)
	movf	(1+(??___fladd)),w
	movwf	(??___fladd+1+2)
	movf	(___fladd@bexp),w
	subwf	(0+(??___fladd)),w
	movwf	(??___fladd+2)
	skipc
	decf	(??___fladd+1+2),f
	movf	(1+(??___fladd+2)),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u2435
	movlw	01Ah
	subwf	(0+(??___fladd+2)),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l1812
u2430:
	line	101
	
l1798:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	movlw	1
	goto	u2450
u2440:
	movlw	0
u2450:
	movwf	(___fladd@grs)
	line	102
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	103
	movf	(___fladd@aexp),w
	movwf	(___fladd@bexp)
	line	104
	goto	l521
	line	106
	
l523:	
	line	109
	btfss	(___fladd@grs),(0)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l1802
u2460:
	line	110
	
l1800:	
	movf	(___fladd@grs),w
	movwf	(??___fladd)
	clrc
	rrf	(??___fladd),w
	iorlw	01h
	movwf	(___fladd@grs)
	line	111
	goto	l1804
	line	113
	
l1802:	
	clrc
	rrf	(___fladd@grs),f

	line	115
	
l1804:	
	btfss	(___fladd@b),(0)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1808
u2470:
	line	116
	
l1806:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	118
	
l1808:	
	movlw	01h
	movwf	(??___fladd)
u2485:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd)&07fh,f
	goto	u2485

	line	119
	
l1810:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	line	106
	
l1812:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@aexp),w
	subwf	(___fladd@bexp),w
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l523
u2490:
	line	121
	
l521:	
	line	124
	btfsc	(___fladd@signs),(6)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1838
u2500:
	line	127
	
l1814:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l1820
u2510:
	line	128
	
l1816:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l530
	line	132
	
l1820:	
	movf	(___fladd@a),w
	addwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2521
	addwf	(___fladd@b+1),f
u2521:
	movf	(___fladd@a+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2522
	addwf	(___fladd@b+2),f
u2522:
	movf	(___fladd@a+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2523
	addwf	(___fladd@b+3),f
u2523:

	line	134
	
l1822:	
	btfss	(___fladd@b+3),(24)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1874
u2530:
	line	135
	
l1824:	
	btfss	(___fladd@grs),(0)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1828
u2540:
	line	136
	
l1826:	
	movf	(___fladd@grs),w
	movwf	(??___fladd)
	clrc
	rrf	(??___fladd),w
	iorlw	01h
	movwf	(___fladd@grs)
	line	137
	goto	l1830
	line	139
	
l1828:	
	clrc
	rrf	(___fladd@grs),f

	line	141
	
l1830:	
	btfss	(___fladd@b),(0)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1834
u2550:
	line	142
	
l1832:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	144
	
l1834:	
	movlw	01h
	movwf	(??___fladd)
u2565:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd)&07fh,f
	goto	u2565

	line	145
	
l1836:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	goto	l1874
	line	153
	
l1838:	
	movf	(___fladd@b+3),w
	xorlw	80h
	movwf	btemp1
	movf	(___fladd@a+3),w
	xorlw	80h
	subwf	btemp1,w
	
	skipz
	goto	u2573
	movf	(___fladd@a+2),w
	subwf	(___fladd@b+2),w
	skipz
	goto	u2573
	movf	(___fladd@a+1),w
	subwf	(___fladd@b+1),w
	skipz
	goto	u2573
	movf	(___fladd@a),w
	subwf	(___fladd@b),w
u2573:
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l1850
u2570:
	line	154
	
l1840:	
	movlw	0FFh
	movwf	((??___fladd))
	movlw	0FFh
	movwf	((??___fladd)+1)
	movlw	0FFh
	movwf	((??___fladd)+2)
	movlw	0FFh
	movwf	((??___fladd)+3)
	movf	(___fladd@a),w
	movwf	(??___fladd+4)
	movf	(___fladd@a+1),w
	movwf	((??___fladd+4)+1)
	movf	(___fladd@a+2),w
	movwf	((??___fladd+4)+2)
	movf	(___fladd@a+3),w
	movwf	((??___fladd+4)+3)
	movf	(___fladd@b),w
	subwf	(??___fladd+4),f
	movf	(___fladd@b+1),w
	skipc
	incfsz	(___fladd@b+1),w
	goto	u2581
	goto	u2582
u2581:
	subwf	(??___fladd+1+4),f
u2582:
	movf	(___fladd@b+2),w
	skipc
	incfsz	(___fladd@b+2),w
	goto	u2583
	goto	u2584
u2583:
	subwf	(??___fladd+2+4),f
u2584:
	movf	(___fladd@b+3),w
	skipc
	incfsz	(___fladd@b+3),w
	goto	u2585
	goto	u2586
u2585:
	subwf	(??___fladd+3+4),f
u2586:

	movf	(0+(??___fladd+4)),w
	addwf	(??___fladd),f
	movf	(1+(??___fladd+4)),w
	skipnc
	incfsz	(1+(??___fladd+4)),w
	goto	u2590
	goto	u2591
u2590:
	addwf	(??___fladd+1),f
u2591:
	movf	(2+(??___fladd+4)),w
	skipnc
	incfsz	(2+(??___fladd+4)),w
	goto	u2592
	goto	u2593
u2592:
	addwf	(??___fladd+2),f
u2593:
	movf	(3+(??___fladd+4)),w
	skipnc
	incf	(3+(??___fladd+4)),w
	addwf	(??___fladd+3),f
	movf	(3+(??___fladd)),w
	movwf	(___fladd@b+3)
	movf	(2+(??___fladd)),w
	movwf	(___fladd@b+2)
	movf	(1+(??___fladd)),w
	movwf	(___fladd@b+1)
	movf	(0+(??___fladd)),w
	movwf	(___fladd@b)

	line	155
	
l1842:	
	movlw	low(080h)
	xorwf	(___fladd@signs),f
	line	156
	
l1844:	
	decf	(___fladd@grs),w
	xorlw	0ffh
	movwf	(___fladd@grs)
	line	157
	
l1846:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l538
u2600:
	line	158
	
l1848:	
	movlw	01h
	addwf	(___fladd@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+3),f
	goto	l538
	line	162
	
l1850:	
	movf	(___fladd@a),w
	subwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	skipc
	incfsz	(___fladd@a+1),w
	subwf	(___fladd@b+1),f
	movf	(___fladd@a+2),w
	skipc
	incfsz	(___fladd@a+2),w
	subwf	(___fladd@b+2),f
	movf	(___fladd@a+3),w
	skipc
	incfsz	(___fladd@a+3),w
	subwf	(___fladd@b+3),f
	line	163
	
l538:	
	line	166
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l1872
u2610:
	
l1852:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l1872
u2620:
	line	167
	
l1854:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l530
	line	172
	
l1858:	
	movlw	01h
	movwf	(??___fladd)
u2635:
	clrc
	rlf	(___fladd@b),f
	rlf	(___fladd@b+1),f
	rlf	(___fladd@b+2),f
	rlf	(___fladd@b+3),f
	decfsz	(??___fladd)
	goto	u2635
	line	173
	
l1860:	
	btfss	(___fladd@grs),(7)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l542
u2640:
	line	174
	
l1862:	
	bsf	(___fladd@b)+(0/8),(0)&7
	line	175
	
l542:	
	line	176
	btfss	(___fladd@grs),(0)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1866
u2650:
	line	177
	
l1864:	
	setc
	rlf	(___fladd@grs),w
	movwf	(___fladd@grs)
	line	178
	goto	l1868
	line	180
	
l1866:	
	clrc
	rlf	(___fladd@grs),f

	line	182
	
l1868:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l1872
u2660:
	line	183
	
l1870:	
	movlw	01h
	subwf	(___fladd@bexp),f
	line	171
	
l1872:	
	btfss	(___fladd@b+2),(23)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1858
u2670:
	line	192
	
l1874:	
	clrf	(___fladd@aexp)
	line	193
	
l1876:	
	btfss	(___fladd@grs),(7)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1884
u2680:
	line	194
	
l1878:	
	movf	(___fladd@grs),w
	andlw	07Fh
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l548
u2690:
	line	195
	
l1880:	
	movlw	01h
	movwf	(___fladd@aexp)
	line	196
	goto	l1884
	line	197
	
l548:	
	line	198
	btfss	(___fladd@b),(0)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1884
u2700:
	goto	l1880
	line	203
	
l1884:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l551
u2710:
	line	204
	
l1886:	
	movlw	01h
	addwf	(___fladd@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+3),f
	line	205
	
l1888:	
	btfss	(___fladd@b+3),(24)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l551
u2720:
	line	206
	
l1890:	
	movf	(___fladd@b),w
	movwf	(??___fladd)
	movf	(___fladd@b+1),w
	movwf	((??___fladd)+1)
	movf	(___fladd@b+2),w
	movwf	((??___fladd)+2)
	movf	(___fladd@b+3),w
	movwf	((??___fladd)+3)
	movlw	01h
	movwf	(??___fladd+4)
u2735:
	rlf	(??___fladd+3),w
	rrf	(??___fladd+3),f
	rrf	(??___fladd+2),f
	rrf	(??___fladd+1),f
	rrf	(??___fladd),f
u2730:
	decfsz	(??___fladd+4),f
	goto	u2735
	movf	(3+(??___fladd)),w
	movwf	(___fladd@b+3)
	movf	(2+(??___fladd)),w
	movwf	(___fladd@b+2)
	movf	(1+(??___fladd)),w
	movwf	(___fladd@b+1)
	movf	(0+(??___fladd)),w
	movwf	(___fladd@b)

	line	207
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l551
u2740:
	line	208
	
l1892:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	line	211
	
l551:	
	line	215
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l1896
u2750:
	
l1894:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l1902
u2760:
	line	216
	
l1896:	
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	218
	
l1898:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l1902
u2770:
	line	219
	
l1900:	
	clrf	(___fladd@signs)
	line	225
	
l1902:	
	btfss	(___fladd@bexp),(0)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1906
u2780:
	line	226
	
l1904:	
	bsf	0+(___fladd@b)+02h+(7/8),(7)&7
	line	227
	goto	l559
	line	230
	
l1906:	
	movlw	low(07Fh)
	andwf	0+(___fladd@b)+02h,f
	line	231
	
l559:	
	line	232
	movf	(___fladd@bexp),w
	movwf	(??___fladd)
	clrc
	rrf	(??___fladd),w
	movwf	0+(___fladd@b)+03h
	line	233
	
l1908:	
	btfss	(___fladd@signs),(7)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l560
u2790:
	line	234
	
l1910:	
	bsf	0+(___fladd@b)+03h+(7/8),(7)&7
	line	235
	
l560:	
	line	236
	line	237
	
l530:	
	return
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   10[BANK0 ] long 
;;  sign            1    9[BANK0 ] unsigned char 
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      14       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/aldiv.c"
	line	5
global __ptext13
__ptext13:	;psect for function ___aldiv
psect	text13
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 7
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l1654:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	14
	
l1656:	
	btfss	(___aldiv@divisor+3),7
	goto	u2171
	goto	u2170
u2171:
	goto	l281
u2170:
	line	15
	
l1658:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	16
	movlw	01h
	movwf	(___aldiv@sign)
	line	17
	
l281:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u2181
	goto	u2180
u2181:
	goto	l1664
u2180:
	line	19
	
l1660:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	20
	
l1662:	
	movlw	low(01h)
	xorwf	(___aldiv@sign),f
	line	22
	
l1664:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l1666:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2191
	goto	u2190
u2191:
	goto	l1686
u2190:
	line	24
	
l1668:	
	movlw	01h
	movwf	(___aldiv@counter)
	line	25
	goto	l1672
	line	26
	
l1670:	
	movlw	01h
	movwf	(??___aldiv)
u2205:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv)
	goto	u2205
	line	27
	movlw	low(01h)
	addwf	(___aldiv@counter),f
	line	25
	
l1672:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1670
u2210:
	line	30
	
l1674:	
	movlw	01h
	movwf	(??___aldiv)
u2225:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv)
	goto	u2225
	line	31
	
l1676:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2235
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2235
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2235
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2235:
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1682
u2230:
	line	32
	
l1678:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	33
	
l1680:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l1682:	
	movlw	01h
u2245:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2245

	line	36
	
l1684:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l1674
u2250:
	line	38
	
l1686:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1690
u2260:
	line	39
	
l1688:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	40
	
l1690:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l291:	
	return
	callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
