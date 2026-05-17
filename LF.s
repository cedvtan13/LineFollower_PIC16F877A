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
	FNCALL	_main,___flneg
	FNCALL	_main,___flsub
	FNCALL	_main,___fltol
	FNCALL	_main,___lmul
	FNCALL	_main,___xxtofl
	FNCALL	_main,_calibrate_sensors
	FNCALL	_main,_init_hardware
	FNCALL	_main,_read_adc
	FNCALL	_main,_set_motors
	FNCALL	_calibrate_sensors,___lwmod
	FNCALL	_calibrate_sensors,_read_adc
	FNCALL	___flsub,___fladd
	FNCALL	___flmul,__Umul8_16
	FNROOT	_main
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	27

;initializer for _Kd
	retlw	0x0
	retlw	0x0
	retlw	0xf0
	retlw	0x41

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	25

;initializer for _Kp
	retlw	0x66
	retlw	0x66
	retlw	0xe6
	retlw	0x3f

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
	file	"main.c"
	line	70
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
	global	_sensor_min
	global	_filtered_derivative
	global	_derivative
	global	_last_error
	global	_error
	global	_line_lost_timer
	global	_sensor_mid
	global	_sensor_max
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
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Ki:
       ds      4

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	27
_Kd:
       ds      4

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_sensor_min:
       ds      16

_filtered_derivative:
       ds      4

_derivative:
       ds      4

_last_error:
       ds      4

_error:
       ds      4

_line_lost_timer:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	25
_Kp:
       ds      4

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_sensor_mid:
       ds      16

_sensor_max:
       ds      16

	file	"LF.s"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
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

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+020h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+022h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
	global	_main$709
_main$709:	; 4 bytes @ 0x0
	ds	4
	global	main@raw_val
main@raw_val:	; 2 bytes @ 0x4
	ds	2
	global	main@speed_drop_factor
main@speed_drop_factor:	; 4 bytes @ 0x6
	ds	4
	global	main@kp_scale
main@kp_scale:	; 4 bytes @ 0xA
	ds	4
	global	main@range
main@range:	; 4 bytes @ 0xE
	ds	4
	global	main@sum_weights
main@sum_weights:	; 4 bytes @ 0x12
	ds	4
	global	main@i
main@i:	; 1 bytes @ 0x16
	ds	1
	global	main@sum_vals
main@sum_vals:	; 4 bytes @ 0x17
	ds	4
	global	main@dynamic_speed
main@dynamic_speed:	; 2 bytes @ 0x1B
	ds	2
	global	main@abs_error
main@abs_error:	; 4 bytes @ 0x1D
	ds	4
	global	main@adjustment
main@adjustment:	; 4 bytes @ 0x21
	ds	4
	global	main@normalized
main@normalized:	; 4 bytes @ 0x25
	ds	4
	global	main@i_88
main@i_88:	; 1 bytes @ 0x29
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_hardware:	; 1 bytes @ 0x0
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
	global	?___flneg
?___flneg:	; 4 bytes @ 0x0
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x0
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x0
	global	__Umul8_16@multiplicand
__Umul8_16@multiplicand:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x0
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x0
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x0
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x0
??_init_hardware:	; 1 bytes @ 0x0
	ds	2
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
??___flneg:	; 1 bytes @ 0x4
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
??___lmul:	; 1 bytes @ 0x8
??___flge:	; 1 bytes @ 0x8
??___fldiv:	; 1 bytes @ 0x8
	ds	1
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0x9
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0xA
	ds	3
??___aldiv:	; 1 bytes @ 0xD
	ds	1
??_set_motors:	; 1 bytes @ 0xE
??___flsub:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	?___flmul
?___flmul:	; 4 bytes @ 0x0
	global	calibrate_sensors@t
calibrate_sensors@t:	; 2 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x0
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x0
	ds	2
	global	calibrate_sensors@val
calibrate_sensors@val:	; 2 bytes @ 0x2
	ds	2
	global	calibrate_sensors@i
calibrate_sensors@i:	; 1 bytes @ 0x4
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x4
	ds	1
	global	calibrate_sensors@i_103
calibrate_sensors@i_103:	; 1 bytes @ 0x5
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x5
	ds	1
	global	calibrate_sensors@i_101
calibrate_sensors@i_101:	; 1 bytes @ 0x6
	ds	1
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
	global	?___fltol
?___fltol:	; 4 bytes @ 0x1A
	global	?___fladd
?___fladd:	; 4 bytes @ 0x1A
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x1A
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x1A
	ds	4
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x1E
??___fltol:	; 1 bytes @ 0x1E
	ds	4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x22
??___fladd:	; 1 bytes @ 0x22
	ds	1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x23
	ds	1
?_set_motors:	; 1 bytes @ 0x24
	global	set_motors@left_pwm
set_motors@left_pwm:	; 2 bytes @ 0x24
	ds	2
	global	set_motors@right_pwm
set_motors@right_pwm:	; 2 bytes @ 0x26
	ds	4
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
	global	?___flsub
?___flsub:	; 4 bytes @ 0x2E
	global	___flsub@a
___flsub@a:	; 4 bytes @ 0x2E
	ds	4
	global	___flsub@b
___flsub@b:	; 4 bytes @ 0x32
	ds	4
??_main:	; 1 bytes @ 0x36
	ds	14
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    16
;!    Data        8
;!    BSS         70
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     68      76
;!    BANK1            80     42      80
;!    BANK3            96      0      32
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
;!    ___fladd->___xxtofl
;!    ___flmul->___xxtofl
;!    ___aldiv->___lmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___flsub
;!    _set_motors->___fltol
;!    ___fltol->___flmul
;!    ___flsub->___fladd
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
;! (0) _main                                                56    56      0    9838
;!                                             54 BANK0     14    14      0
;!                                              0 BANK1     42    42      0
;!                            ___aldiv
;!                            ___fladd
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                             ___lmul
;!                           ___xxtofl
;!                  _calibrate_sensors
;!                      _init_hardware
;!                           _read_adc
;!                         _set_motors
;! ---------------------------------------------------------------------------------
;! (1) _set_motors                                           4     0      4     286
;!                                             36 BANK0      4     0      4
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _init_hardware                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _calibrate_sensors                                   16    16      0     705
;!                                              5 COMMON     9     9      0
;!                                              0 BANK0      7     7      0
;!                            ___lwmod
;!                           _read_adc
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
;! (1) ___fltol                                             10     6      4     232
;!                                             26 BANK0     10     6      4
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___flsub                                              8     0      8    2043
;!                                             46 BANK0      8     0      8
;!                            ___fladd
;! ---------------------------------------------------------------------------------
;! (2) ___fladd                                             20    12      8    1996
;!                                             26 BANK0     20    12      8
;!                            ___flmul (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___flneg                                              4     0      4      46
;!                                              0 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (1) ___flmul                                             26    18      8    1620
;!                                              0 BANK0     26    18      8
;!                          __Umul8_16
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (2) __Umul8_16                                            9     7      2     139
;!                                              0 COMMON     9     7      2
;! ---------------------------------------------------------------------------------
;! (1) ___flge                                              12     4      8     204
;!                                              0 COMMON    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) ___fldiv                                             26    18      8    1124
;!                                              0 COMMON    13     5      8
;!                                              0 BANK0     13    13      0
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
;!   ___flneg
;!   ___flsub
;!     ___fladd
;!   ___fltol
;!     ___flmul (ARG)
;!   ___lmul
;!   ___xxtofl
;!   _calibrate_sensors
;!     ___lwmod
;!     _read_adc
;!   _init_hardware
;!   _read_adc
;!   _set_motors
;!     ___fltol (ARG)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BANK3               96      0      32     33.3%
;!BITBANK3            96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!BANK1               80     42      80    100.0%
;!BITBANK1            80      0       0      0.0%
;!BANK0               80     68      76     95.0%
;!BITBANK0            80      0       0      0.0%
;!COMMON              14     14      14    100.0%
;!BITCOMMON           14      0       0      0.0%
;!DATA                 0      0     202      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  normalized      4   37[BANK1 ] long 
;;  range           4   14[BANK1 ] long 
;;  raw_val         2    4[BANK1 ] unsigned short 
;;  adjustment      4   33[BANK1 ] float 
;;  abs_error       4   29[BANK1 ] float 
;;  kp_scale        4   10[BANK1 ] float 
;;  speed_drop_f    4    6[BANK1 ] float 
;;  dynamic_spee    2   27[BANK1 ] short 
;;  i               1   41[BANK1 ] unsigned char 
;;  sum_vals        4   23[BANK1 ] float 
;;  sum_weights     4   18[BANK1 ] float 
;;  i               1   22[BANK1 ] unsigned char 
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
;;      Locals:         0       0      42       0       0
;;      Temps:          0      14       0       0       0
;;      Totals:         0      14      42       0       0
;;Total ram usage:       56 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___aldiv
;;		___fladd
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
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
	file	"main.c"
	line	50
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	50
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	51
	
l2469:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	
l2475:	
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
	u4237:
decfsz	((??_main)),f
	goto	u4237
	decfsz	((??_main)+1),f
	goto	u4237
	decfsz	((??_main)+2),f
	goto	u4237
asmopt pop

	
l2477:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	
l2479:	
	movlw	low(0Ah)
	subwf	(main@i)^080h,w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l2475
u3960:
	line	52
	
l2481:	
	fcall	_init_hardware
	line	53
	
l2483:	
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
	u4247:
decfsz	((??_main)),f
	goto	u4247
	decfsz	((??_main)+1),f
	goto	u4247
	decfsz	((??_main)+2),f
	goto	u4247
	nop2
asmopt pop

	line	56
	
l2485:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movwf	(set_motors@left_pwm+1)
	movlw	0
	movwf	(set_motors@right_pwm)
	movwf	(set_motors@right_pwm+1)
	fcall	_set_motors
	line	57
	
l2487:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_line_lost_timer)^080h
	clrf	(_line_lost_timer+1)^080h
	
l2489:	
	movlw	0x0
	movwf	(_last_error+3)^080h
	movlw	0x0
	movwf	(_last_error+2)^080h
	movlw	0x0
	movwf	(_last_error+1)^080h
	movlw	0x0
	movwf	(_last_error)^080h

	
l2491:	
	movlw	0x0
	movwf	(_filtered_derivative+3)^080h
	movlw	0x0
	movwf	(_filtered_derivative+2)^080h
	movlw	0x0
	movwf	(_filtered_derivative+1)^080h
	movlw	0x0
	movwf	(_filtered_derivative)^080h

	line	59
	
l2493:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	60
	
l82:	
	btfss	(48/8),(48)&7	;volatile
	goto	u3971
	goto	u3970
u3971:
	goto	l82
u3970:
	
l2495:	
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
	u4257:
decfsz	((??_main)),f
	goto	u4257
	decfsz	((??_main)+1),f
	goto	u4257
	decfsz	((??_main)+2),f
	goto	u4257
asmopt pop

	
l85:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u3981
	goto	u3980
u3981:
	goto	l85
u3980:
	
l2497:	
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
	u4267:
decfsz	((??_main)),f
	goto	u4267
	decfsz	((??_main)+1),f
	goto	u4267
	decfsz	((??_main)+2),f
	goto	u4267
asmopt pop

	line	61
	
l2499:	
	fcall	_calibrate_sensors
	line	63
	
l2501:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	64
	
l88:	
	btfss	(48/8),(48)&7	;volatile
	goto	u3991
	goto	u3990
u3991:
	goto	l88
u3990:
	
l2503:	
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
	u4277:
decfsz	((??_main)),f
	goto	u4277
	decfsz	((??_main)+1),f
	goto	u4277
	decfsz	((??_main)+2),f
	goto	u4277
asmopt pop

	
l91:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u4001
	goto	u4000
u4001:
	goto	l91
u4000:
	
l2505:	
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
	u4287:
decfsz	((??_main)),f
	goto	u4287
	decfsz	((??_main)+1),f
	goto	u4287
	decfsz	((??_main)+2),f
	goto	u4287
asmopt pop

	line	65
	
l2507:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	67
	
l94:	
	line	68
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

	line	69
	movlw	0x0
	movwf	(main@sum_vals+3)^080h
	movlw	0x0
	movwf	(main@sum_vals+2)^080h
	movlw	0x0
	movwf	(main@sum_vals+1)^080h
	movlw	0x0
	movwf	(main@sum_vals)^080h

	line	72
	
l2509:	
	clrf	(main@i_88)^080h
	line	73
	
l2515:	
	movf	(main@i_88)^080h,w
	fcall	_read_adc
	movf	(1+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@raw_val+1)^080h
	movf	(0+(?_read_adc)),w
	movwf	(main@raw_val)^080h
	line	74
	
l2517:	
	movf	(main@i_88)^080h,w
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
	movf	(main@i_88)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+7)
	addwf	(??_main+7),w
	addlw	low(_sensor_max|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
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
	goto	u4011
	goto	u4012
u4011:
	subwf	(??_main+1+10),f
u4012:
	movf	(2+(??_main+3)),w
	skipc
	incfsz	(2+(??_main+3)),w
	goto	u4013
	goto	u4014
u4013:
	subwf	(??_main+2+10),f
u4014:
	movf	(3+(??_main+3)),w
	skipc
	incfsz	(3+(??_main+3)),w
	goto	u4015
	goto	u4016
u4015:
	subwf	(??_main+3+10),f
u4016:

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

	line	75
	
l2519:	
	btfsc	(main@range+3)^080h,7
	goto	u4020
	movf	(main@range+3)^080h,w
	btfss	status,2
	goto	u4021
	movf	(main@range+2)^080h,w
	btfss	status,2
	goto	u4021
	movf	(main@range+1)^080h,w
	btfss	status,2
	goto	u4021
	movlw	100
	subwf	(main@range)^080h,w
	skipz
	goto	u4023
u4023:
	btfsc	status,0
	goto	u4021
	goto	u4020

u4021:
	goto	l2523
u4020:
	goto	l2539
	line	77
	
l2523:	
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
	movf	(main@i_88)^080h,w
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
	goto	u4031
	goto	u4032
u4031:
	subwf	(??_main+1+7),f
u4032:
	movf	(2+(??_main+3)),w
	skipc
	incfsz	(2+(??_main+3)),w
	goto	u4033
	goto	u4034
u4033:
	subwf	(??_main+2+7),f
u4034:
	movf	(3+(??_main+3)),w
	skipc
	incfsz	(3+(??_main+3)),w
	goto	u4035
	goto	u4036
u4035:
	subwf	(??_main+3+7),f
u4036:

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

	line	78
	
l2525:	
	btfss	(main@normalized+3)^080h,7
	goto	u4041
	goto	u4040
u4041:
	goto	l2529
u4040:
	
l2527:	
	movlw	high highword(0)
	movwf	(main@normalized+3)^080h
	movlw	low highword(0)
	movwf	(main@normalized+2)^080h
	movlw	high(0)
	movwf	(main@normalized+1)^080h
	movlw	low(0)
	movwf	(main@normalized)^080h

	line	79
	
l2529:	
	btfsc	(main@normalized+3)^080h,7
	goto	u4051
	movf	(main@normalized+3)^080h,w
	btfss	status,2
	goto	u4050
	movf	(main@normalized+2)^080h,w
	btfss	status,2
	goto	u4050
	movlw	3
	subwf	(main@normalized+1)^080h,w
	skipz
	goto	u4053
	movlw	233
	subwf	(main@normalized)^080h,w
	skipz
	goto	u4053
u4053:
	btfss	status,0
	goto	u4051
	goto	u4050

u4051:
	goto	l2533
u4050:
	
l2531:	
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

	line	81
	
l2533:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(main@normalized+3)^080h,7
	goto	u4061
	movf	(main@normalized+3)^080h,w
	btfss	status,2
	goto	u4060
	movf	(main@normalized+2)^080h,w
	btfss	status,2
	goto	u4060
	movf	(main@normalized+1)^080h,w
	btfss	status,2
	goto	u4060
	movlw	201
	subwf	(main@normalized)^080h,w
	skipz
	goto	u4063
u4063:
	btfss	status,0
	goto	u4061
	goto	u4060

u4061:
	goto	l2539
u4060:
	line	82
	
l2535:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@normalized+3)^080h,w
	movwf	(___xxtofl@val+3)
	movf	(main@normalized+2)^080h,w
	movwf	(___xxtofl@val+2)
	movf	(main@normalized+1)^080h,w
	movwf	(___xxtofl@val+1)
	movf	(main@normalized)^080h,w
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
	movf	(main@i_88)^080h,w
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

	line	83
	
l2537:	
	movf	(main@normalized+3)^080h,w
	movwf	(___xxtofl@val+3)
	movf	(main@normalized+2)^080h,w
	movwf	(___xxtofl@val+2)
	movf	(main@normalized+1)^080h,w
	movwf	(___xxtofl@val+1)
	movf	(main@normalized)^080h,w
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

	line	85
	
l2539:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i_88)^080h,f
	
l2541:	
	movlw	low(08h)
	subwf	(main@i_88)^080h,w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l2515
u4070:
	line	87
	
l2543:	
	movlw	0x44
	movwf	(___flge@ff1+3)
	movlw	0x48
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
	goto	u4081
	goto	u4080
u4081:
	goto	l104
u4080:
	line	88
	
l2545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	
l2547:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_line_lost_timer)^080h
	clrf	(_line_lost_timer+1)^080h
	line	89
	
l2549:	
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
	movwf	(_error+3)^080h
	movf	(2+(?___fldiv)),w
	movwf	(_error+2)^080h
	movf	(1+(?___fldiv)),w
	movwf	(_error+1)^080h
	movf	(0+(?___fldiv)),w
	movwf	(_error)^080h

	line	91
	
l2551:	
	movf	(_error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(_error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(_error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(_error)^080h,w
	movwf	(___flge@ff1)

	movlw	0x0
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u4091
	goto	u4090
u4091:
	goto	l2555
u4090:
	
l2553:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+3)^080h,w
	movwf	(main@abs_error+3)^080h
	movf	(_error+2)^080h,w
	movwf	(main@abs_error+2)^080h
	movf	(_error+1)^080h,w
	movwf	(main@abs_error+1)^080h
	movf	(_error)^080h,w
	movwf	(main@abs_error)^080h

	goto	l2557
	
l2555:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+3)^080h,w
	movwf	(___flneg@f1+3)
	movf	(_error+2)^080h,w
	movwf	(___flneg@f1+2)
	movf	(_error+1)^080h,w
	movwf	(___flneg@f1+1)
	movf	(_error)^080h,w
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@abs_error+3)^080h
	movf	(2+(?___flneg)),w
	movwf	(main@abs_error+2)^080h
	movf	(1+(?___flneg)),w
	movwf	(main@abs_error+1)^080h
	movf	(0+(?___flneg)),w
	movwf	(main@abs_error)^080h

	line	94
	
l2557:	
	movf	(main@abs_error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(main@abs_error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(main@abs_error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(main@abs_error)^080h,w
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x40
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4101
	goto	u4100
u4101:
	goto	l2561
u4100:
	
l2559:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_error+3)^080h
	movlw	0x0
	movwf	(_error+2)^080h
	movlw	0x0
	movwf	(_error+1)^080h
	movlw	0x0
	movwf	(_error)^080h

	line	97
	
l2561:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b)

	fcall	___flsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_derivative+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_derivative+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_derivative+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_derivative)^080h

	line	98
	
l2563:	
	movlw	0x3f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movlw	0x33
	movwf	(___flmul@b+2)
	movlw	0x33
	movwf	(___flmul@b+1)
	movlw	0x33
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_derivative+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_derivative+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_derivative+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_derivative)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

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

	movlw	0x3e
	movwf	(___flmul@b+3)
	movlw	0x99
	movwf	(___flmul@b+2)
	movlw	0x99
	movwf	(___flmul@b+1)
	movlw	0x9a
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fladd@a+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@a+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@a+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_filtered_derivative+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_filtered_derivative+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_filtered_derivative+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_filtered_derivative)^080h

	line	101
	movlw	0x3f
	movwf	(main@kp_scale+3)^080h
	movlw	0x80
	movwf	(main@kp_scale+2)^080h
	movlw	0x0
	movwf	(main@kp_scale+1)^080h
	movlw	0x0
	movwf	(main@kp_scale)^080h

	line	102
	movlw	0x3f
	movwf	(main@speed_drop_factor+3)^080h
	movlw	0x8c
	movwf	(main@speed_drop_factor+2)^080h
	movlw	0xcc
	movwf	(main@speed_drop_factor+1)^080h
	movlw	0xcd
	movwf	(main@speed_drop_factor)^080h

	line	104
	
l2565:	
	movf	(main@abs_error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(main@abs_error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(main@abs_error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(main@abs_error)^080h,w
	movwf	(___flge@ff1)

	movlw	0x41
	movwf	(___flge@ff2+3)
	movlw	0x70
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4111
	goto	u4110
u4111:
	goto	l2569
u4110:
	line	105
	
l2567:	
	movlw	0x3f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@kp_scale+3)^080h
	movlw	0x0
	movwf	(main@kp_scale+2)^080h
	movlw	0x0
	movwf	(main@kp_scale+1)^080h
	movlw	0x0
	movwf	(main@kp_scale)^080h

	line	106
	goto	l2573
	
l2569:	
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0xc
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@abs_error+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(main@abs_error+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(main@abs_error+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(main@abs_error)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4121
	goto	u4120
u4121:
	goto	l2573
u4120:
	line	107
	
l2571:	
	movlw	0x3f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@kp_scale+3)^080h
	movlw	0xd9
	movwf	(main@kp_scale+2)^080h
	movlw	0x99
	movwf	(main@kp_scale+1)^080h
	movlw	0x9a
	movwf	(main@kp_scale)^080h

	line	108
	movlw	0x3f
	movwf	(main@speed_drop_factor+3)^080h
	movlw	0xcc
	movwf	(main@speed_drop_factor+2)^080h
	movlw	0xcc
	movwf	(main@speed_drop_factor+1)^080h
	movlw	0xcd
	movwf	(main@speed_drop_factor)^080h

	line	111
	
l2573:	
	movlw	0x3f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movlw	0xe6
	movwf	(___flmul@b+2)
	movlw	0x66
	movwf	(___flmul@b+1)
	movlw	0x66
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$709+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$709+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$709+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$709)^080h

	
l2575:	
	movlw	0x41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movlw	0xf0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_filtered_derivative)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

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
	movf	(main@kp_scale+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@kp_scale+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@kp_scale+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@kp_scale)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$709+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$709+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$709+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$709)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fladd@a+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@a+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@a+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@adjustment+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@adjustment+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@adjustment+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@adjustment)^080h

	line	113
	
l2577:	
	movlw	0x43
	movwf	(___flge@ff1+3)
	movlw	0x11
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movf	(main@adjustment+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(main@adjustment+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(main@adjustment+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(main@adjustment)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4131
	goto	u4130
u4131:
	goto	l2581
u4130:
	
l2579:	
	movlw	0x43
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@adjustment+3)^080h
	movlw	0x11
	movwf	(main@adjustment+2)^080h
	movlw	0x0
	movwf	(main@adjustment+1)^080h
	movlw	0x0
	movwf	(main@adjustment)^080h

	line	114
	
l2581:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(main@adjustment+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(main@adjustment+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(main@adjustment)^080h,w
	movwf	(___flge@ff1)

	movlw	0xc3
	movwf	(___flge@ff2+3)
	movlw	0x11
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4141
	goto	u4140
u4141:
	goto	l2585
u4140:
	
l2583:	
	movlw	0xc3
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@adjustment+3)^080h
	movlw	0x11
	movwf	(main@adjustment+2)^080h
	movlw	0x0
	movwf	(main@adjustment+1)^080h
	movlw	0x0
	movwf	(main@adjustment)^080h

	line	117
	
l2585:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@abs_error+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@abs_error+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@abs_error+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@abs_error)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed_drop_factor+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed_drop_factor+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed_drop_factor+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed_drop_factor)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movlw	055h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main)
	movf	(0+(?___fltol)),w
	subwf	(??_main),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@dynamic_speed)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(1+(?___fltol)),w
	skipnc
	addlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((main@dynamic_speed)^080h)+1
	line	118
	
l2587:	
	movf	(main@dynamic_speed+1)^080h,w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u4155
	movlw	01Eh
	subwf	(main@dynamic_speed)^080h,w
u4155:

	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l2591
u4150:
	
l2589:	
	movlw	01Eh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@dynamic_speed)^080h
	movlw	0
	movwf	((main@dynamic_speed)^080h)+1
	line	120
	
l2591:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@dynamic_speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movf	(1+(?___fltol)),w
	skipc
	incf	(1+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@dynamic_speed+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(set_motors@left_pwm)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@adjustment)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@dynamic_speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(0+(?___fltol)),w
	movwf	(set_motors@right_pwm)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@dynamic_speed+1)^080h,w
	skipnc
	incf	(main@dynamic_speed+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1+(?___fltol)),w
	movwf	1+(set_motors@right_pwm)
	fcall	_set_motors
	line	121
	
l2593:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_error+3)^080h,w
	movwf	(_last_error+3)^080h
	movf	(_error+2)^080h,w
	movwf	(_last_error+2)^080h
	movf	(_error+1)^080h,w
	movwf	(_last_error+1)^080h
	movf	(_error)^080h,w
	movwf	(_last_error)^080h

	line	122
	goto	l2625
	
l104:	
	line	123
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	124
	
l2595:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_line_lost_timer)^080h),w
iorwf	((_line_lost_timer+1)^080h),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l2601
u4160:
	line	125
	
l2597:	
	movlw	0E2h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movlw	0FFh
	movwf	((set_motors@left_pwm))+1
	movlw	0E2h
	movwf	(set_motors@right_pwm)
	movlw	0FFh
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	line	126
	
l2599:	
	asmopt push
asmopt off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+1)
	movlw	241
movwf	((??_main))
	u4297:
decfsz	((??_main)),f
	goto	u4297
	decfsz	((??_main)+1),f
	goto	u4297
asmopt pop

	line	129
	
l2601:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_line_lost_timer)^080h,f
	skipnc
	incf	(_line_lost_timer+1)^080h,f
	movlw	0
	addwf	(_line_lost_timer+1)^080h,f
	line	130
	
l2603:	
	movlw	02h
	subwf	(_line_lost_timer+1)^080h,w
	movlw	059h
	skipnz
	subwf	(_line_lost_timer)^080h,w
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l2607
u4170:
	
l2605:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movwf	(set_motors@left_pwm+1)
	movlw	0
	movwf	(set_motors@right_pwm)
	movwf	(set_motors@right_pwm+1)
	fcall	_set_motors
	goto	l2485
	line	132
	
l2607:	
	movlw	0
	subwf	(_line_lost_timer+1)^080h,w
	movlw	096h
	skipnz
	subwf	(_line_lost_timer)^080h,w
	skipnc
	goto	u4181
	goto	u4180
u4181:
	goto	l2615
u4180:
	
l2609:	
	movf	(_last_error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(_last_error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(_last_error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(_last_error)^080h,w
	movwf	(___flge@ff1)

	movlw	0x41
	movwf	(___flge@ff2+3)
	movlw	0x70
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4191
	goto	u4190
u4191:
	goto	l2615
u4190:
	
l2611:	
	movlw	0xc1
	movwf	(___flge@ff1+3)
	movlw	0x70
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(_last_error+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(_last_error+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(_last_error)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4201
	goto	u4200
u4201:
	goto	l2615
u4200:
	line	133
	
l2613:	
	movlw	02Dh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	movlw	02Dh
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	line	134
	goto	l2625
	line	135
	
l2615:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(_last_error+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(_last_error+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(_last_error)^080h,w
	movwf	(___flge@ff1)

	movlw	0xc0
	movwf	(___flge@ff2+3)
	movlw	0xa0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4211
	goto	u4210
u4211:
	goto	l2619
u4210:
	
l2617:	
	movlw	050h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	movlw	0B0h
	movwf	(set_motors@right_pwm)
	movlw	0FFh
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	goto	l2625
	line	136
	
l2619:	
	movlw	0x40
	movwf	(___flge@ff1+3)
	movlw	0xa0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_error+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(_last_error+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(_last_error+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(_last_error)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4221
	goto	u4220
u4221:
	goto	l2613
u4220:
	
l2621:	
	movlw	0B0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movlw	0FFh
	movwf	((set_motors@left_pwm))+1
	movlw	050h
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	fcall	_set_motors
	line	140
	
l2625:	
	asmopt push
asmopt off
	movlw	199
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main))
	u4307:
	nop2
decfsz	(??_main),f
	goto	u4307
	nop2
asmopt pop

	goto	l94
	global	start
	ljmp	start
	callstack 0
	line	143
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_set_motors

;; *************** function _set_motors *****************
;; Defined at:
;;		line 172 in file "main.c"
;; Parameters:    Size  Location     Type
;;  left_pwm        2   36[BANK0 ] short 
;;  right_pwm       2   38[BANK0 ] short 
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
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	172
global __ptext1
__ptext1:	;psect for function _set_motors
psect	text1
	file	"main.c"
	line	172
	
_set_motors:	
;incstack = 0
	callstack 7
; Regs used in _set_motors: [wreg+status,2+status,0+btemp1]
	line	173
	
l1931:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(set_motors@left_pwm+1),7
	goto	u2691
	goto	u2690
u2691:
	goto	l155
u2690:
	line	174
	
l1933:	
	bsf	(56/8),(56)&7	;volatile
	line	175
	
l1935:	
	movf	(set_motors@left_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u2705
	movlw	092h
	subwf	(set_motors@left_pwm),w
u2705:

	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l1939
u2700:
	
l1937:	
	movlw	091h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	line	176
	
l1939:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(set_motors@left_pwm),w
	movwf	(21)	;volatile
	line	177
	goto	l1947
	
l155:	
	line	178
	bcf	(56/8),(56)&7	;volatile
	
l1941:	
	comf	(set_motors@left_pwm),f
	comf	(set_motors@left_pwm+1),f
	incf	(set_motors@left_pwm),f
	skipnz
	incf	(set_motors@left_pwm+1),f
	line	179
	
l1943:	
	movf	(set_motors@left_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u2715
	movlw	092h
	subwf	(set_motors@left_pwm),w
u2715:

	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l158
u2710:
	
l1945:	
	movlw	091h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@left_pwm)
	movlw	0
	movwf	((set_motors@left_pwm))+1
	
l158:	
	line	180
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(set_motors@left_pwm),w
	movwf	(21)	;volatile
	line	182
	
l1947:	
	btfsc	(set_motors@right_pwm+1),7
	goto	u2721
	goto	u2720
u2721:
	goto	l159
u2720:
	line	183
	
l1949:	
	bsf	(60/8),(60)&7	;volatile
	line	184
	
l1951:	
	movf	(set_motors@right_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u2735
	movlw	092h
	subwf	(set_motors@right_pwm),w
u2735:

	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l1955
u2730:
	
l1953:	
	movlw	091h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	line	185
	
l1955:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(set_motors@right_pwm),w
	movwf	(27)	;volatile
	line	186
	goto	l163
	
l159:	
	line	187
	bcf	(60/8),(60)&7	;volatile
	
l1957:	
	comf	(set_motors@right_pwm),f
	comf	(set_motors@right_pwm+1),f
	incf	(set_motors@right_pwm),f
	skipnz
	incf	(set_motors@right_pwm+1),f
	line	188
	
l1959:	
	movf	(set_motors@right_pwm+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u2745
	movlw	092h
	subwf	(set_motors@right_pwm),w
u2745:

	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l162
u2740:
	
l1961:	
	movlw	091h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_motors@right_pwm)
	movlw	0
	movwf	((set_motors@right_pwm))+1
	
l162:	
	line	189
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(set_motors@right_pwm),w
	movwf	(27)	;volatile
	line	191
	
l163:	
	return
	callstack 0
GLOBAL	__end_of_set_motors
	__end_of_set_motors:
	signat	_set_motors,8313
	global	_init_hardware

;; *************** function _init_hardware *****************
;; Defined at:
;;		line 145 in file "main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	145
global __ptext2
__ptext2:	;psect for function _init_hardware
psect	text2
	file	"main.c"
	line	145
	
_init_hardware:	
;incstack = 0
	callstack 7
; Regs used in _init_hardware: [status,2]
	line	146
	
l1911:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	movlw	07h
	movwf	(137)^080h	;volatile
	movlw	0C1h
	movwf	(134)^080h	;volatile
	
l1913:	
	clrf	(135)^080h	;volatile
	clrf	(136)^080h	;volatile
	line	147
	
l1915:	
	movlw	080h
	movwf	(159)^080h	;volatile
	
l1917:	
	movlw	081h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	148
	
l1919:	
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
l1921:	
	movlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	
l1923:	
	movlw	0Ch
	movwf	(29)	;volatile
	
l1925:	
	movlw	04h
	movwf	(18)	;volatile
	line	149
	
l1927:	
	movlw	0FFh
	movwf	(21)	;volatile
	
l1929:	
	movlw	0FFh
	movwf	(27)	;volatile
	line	150
	
l132:	
	return
	callstack 0
GLOBAL	__end_of_init_hardware
	__end_of_init_hardware:
	signat	_init_hardware,89
	global	_calibrate_sensors

;; *************** function _calibrate_sensors *****************
;; Defined at:
;;		line 152 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val             2    2[BANK0 ] unsigned short 
;;  i               1    6[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
;;  t               2    0[BANK0 ] unsigned short 
;;  i               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          9       0       0       0       0
;;      Totals:         9       7       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lwmod
;;		_read_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	152
global __ptext3
__ptext3:	;psect for function _calibrate_sensors
psect	text3
	file	"main.c"
	line	152
	
_calibrate_sensors:	
;incstack = 0
	callstack 6
; Regs used in _calibrate_sensors: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	153
	
l1963:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(calibrate_sensors@i)
	
l1969:	
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
	addlw	low(_sensor_max|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l1971:	
	movlw	low(01h)
	addwf	(calibrate_sensors@i),f
	
l1973:	
	movlw	low(08h)
	subwf	(calibrate_sensors@i),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l1969
u2750:
	line	154
	
l1975:	
	clrf	(calibrate_sensors@t)
	clrf	(calibrate_sensors@t+1)
	line	155
	
l1981:	
	clrf	(calibrate_sensors@i_101)
	line	156
	
l1987:	
	movf	(calibrate_sensors@i_101),w
	fcall	_read_adc
	movf	(1+(?_read_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(calibrate_sensors@val+1)
	movf	(0+(?_read_adc)),w
	movwf	(calibrate_sensors@val)
	line	157
	
l1989:	
	movf	(calibrate_sensors@i_101),w
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
	goto	u2765
	movf	(0+(??_calibrate_sensors+1)),w
	subwf	(calibrate_sensors@val),w
u2765:
	skipnc
	goto	u2761
	goto	u2760
u2761:
	goto	l141
u2760:
	
l1991:	
	movf	(calibrate_sensors@i_101),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(calibrate_sensors@val),w
	movwf	indf
	incf	fsr0,f
	movf	(calibrate_sensors@val+1),w
	movwf	indf
	
l141:	
	line	158
	movf	(calibrate_sensors@i_101),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_max|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+1
	movf	(calibrate_sensors@val+1),w
	subwf	(1+(??_calibrate_sensors+1)),w
	skipz
	goto	u2775
	movf	(calibrate_sensors@val),w
	subwf	(0+(??_calibrate_sensors+1)),w
u2775:
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l1995
u2770:
	
l1993:	
	movf	(calibrate_sensors@i_101),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_max|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(calibrate_sensors@val),w
	movwf	indf
	incf	fsr0,f
	movf	(calibrate_sensors@val+1),w
	movwf	indf
	line	159
	
l1995:	
	movlw	low(01h)
	addwf	(calibrate_sensors@i_101),f
	
l1997:	
	movlw	low(08h)
	subwf	(calibrate_sensors@i_101),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l1987
u2780:
	line	160
	
l1999:	
	asmopt push
asmopt off
movlw	65
movwf	((??_calibrate_sensors)+1)
	movlw	238
movwf	((??_calibrate_sensors))
	u4317:
decfsz	((??_calibrate_sensors)),f
	goto	u4317
	decfsz	((??_calibrate_sensors)+1),f
	goto	u4317
	nop
asmopt pop

	
l2001:	
	movlw	019h
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(calibrate_sensors@t+1),w
	movwf	(___lwmod@dividend+1)
	movf	(calibrate_sensors@t),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l143
u2790:
	
l2003:	
	movlw	1<<((66)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((66)/8),f
	
l143:	
	line	161
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(calibrate_sensors@t),f
	skipnc
	incf	(calibrate_sensors@t+1),f
	movlw	0
	addwf	(calibrate_sensors@t+1),f
	movlw	01h
	subwf	(calibrate_sensors@t+1),w
	movlw	090h
	skipnz
	subwf	(calibrate_sensors@t),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l1981
u2800:
	line	162
	
l2005:	
	clrf	(calibrate_sensors@i_103)
	
l2011:	
	movf	(calibrate_sensors@i_103),w
	movwf	(??_calibrate_sensors)
	addwf	(??_calibrate_sensors),w
	addlw	low(_sensor_max|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_calibrate_sensors+1)+1
	movf	(calibrate_sensors@i_103),w
	movwf	(??_calibrate_sensors+3)
	addwf	(??_calibrate_sensors+3),w
	addlw	low(_sensor_min|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_calibrate_sensors+4)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_calibrate_sensors+4)+1
	movf	(0+(??_calibrate_sensors+1)),w
	addwf	(0+(??_calibrate_sensors+4)),w
	movwf	(??_calibrate_sensors+6)
	movf	(1+(??_calibrate_sensors+1)),w
	skipnc
	incf	(1+(??_calibrate_sensors+1)),w
	addwf	(1+(??_calibrate_sensors+4)),w
	movwf	1+(??_calibrate_sensors+6)
	clrc
	rrf	(??_calibrate_sensors+1+6),f
	rrf	(??_calibrate_sensors+6),f
	movf	(calibrate_sensors@i_103),w
	movwf	(??_calibrate_sensors+8)
	addwf	(??_calibrate_sensors+8),w
	addlw	low(_sensor_mid|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(0+(??_calibrate_sensors+6)),w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(1+(??_calibrate_sensors+6)),w
	movwf	indf
	
l2013:	
	movlw	low(01h)
	addwf	(calibrate_sensors@i_103),f
	
l2015:	
	movlw	low(08h)
	subwf	(calibrate_sensors@i_103),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l2011
u2810:
	line	163
	
l146:	
	return
	callstack 0
GLOBAL	__end_of_calibrate_sensors
	__end_of_calibrate_sensors:
	signat	_calibrate_sensors,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 165 in file "main.c"
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
	line	165
global __ptext4
__ptext4:	;psect for function _read_adc
psect	text4
	file	"main.c"
	line	165
	
_read_adc:	
;incstack = 0
	callstack 6
; Regs used in _read_adc: [wreg+status,2+status,0]
	movwf	(read_adc@channel)
	line	166
	
l1667:	
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	movf	(read_adc@channel),w	;volatile
	movwf	(??_read_adc)
	movlw	(03h)-1
u2125:
	clrc
	rlf	(??_read_adc),f
	addlw	-1
	skipz
	goto	u2125
	clrc
	rlf	(??_read_adc),w
	iorwf	(31),f	;volatile
	line	167
	
l1669:	
	asmopt push
asmopt off
	movlw	33
movwf	((??_read_adc))
	u4327:
decfsz	(??_read_adc),f
	goto	u4327
asmopt pop

	
l1671:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	168
	
l149:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2131
	goto	u2130
u2131:
	goto	l149
u2130:
	line	169
	
l1673:	
	movf	(30),w	;volatile
	movwf	(?_read_adc+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_read_adc)
	line	170
	
l152:	
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
	
l1677:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l1695
u2140:
	line	13
	
l1679:	
	movlw	01h
	movwf	(___lwmod@counter)
	line	14
	goto	l1685
	line	15
	
l1681:	
	movlw	01h
	
u2155:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2155
	line	16
	
l1683:	
	movlw	low(01h)
	addwf	(___lwmod@counter),f
	line	14
	
l1685:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l1681
u2160:
	line	19
	
l1687:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2175
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2175:
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1691
u2170:
	line	20
	
l1689:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1691:	
	movlw	01h
	
u2185:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2185
	line	22
	
l1693:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l1687
u2190:
	line	24
	
l1695:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l539:	
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
	
l2427:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l2433
u3820:
	
l2429:	
	btfss	(___xxtofl@val+3),7
	goto	u3831
	goto	u3830
u3831:
	goto	l2433
u3830:
	line	16
	
l2431:	
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
	goto	l690
	line	19
	
l2433:	
	movf	(___xxtofl@val+3),w
	movwf	(___xxtofl@arg+3)
	movf	(___xxtofl@val+2),w
	movwf	(___xxtofl@arg+2)
	movf	(___xxtofl@val+1),w
	movwf	(___xxtofl@arg+1)
	movf	(___xxtofl@val),w
	movwf	(___xxtofl@arg)

	line	20
	
l690:	
	line	21
	movf	(___xxtofl@val+3),w
	iorwf	(___xxtofl@val+2),w
	iorwf	(___xxtofl@val+1),w
	iorwf	(___xxtofl@val),w
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l691
u3840:
	line	22
	
l2435:	
	movlw	0x0
	movwf	(?___xxtofl+3)
	movlw	0x0
	movwf	(?___xxtofl+2)
	movlw	0x0
	movwf	(?___xxtofl+1)
	movlw	0x0
	movwf	(?___xxtofl)

	goto	l692
	
l691:	
	line	23
	movlw	096h
	movwf	(___xxtofl@exp)
	line	24
	goto	l2441
	line	25
	
l2439:	
	movlw	low(01h)
	addwf	(___xxtofl@exp),f
	line	26
	movlw	01h
u3855:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u3855

	line	24
	
l2441:	
	movlw	high highword(0FE000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l2439
u3860:
	goto	l696
	line	29
	
l2443:	
	movlw	low(01h)
	addwf	(___xxtofl@exp),f
	line	30
	
l2445:	
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
	
l2447:	
	movlw	01h
u3875:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u3875

	line	32
	
l696:	
	line	28
	movlw	high highword(0FF000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l2443
u3880:
	goto	l2451
	line	34
	
l2449:	
	movlw	01h
	subwf	(___xxtofl@exp),f
	line	35
	movlw	01h
	movwf	(??___xxtofl)
u3895:
	clrc
	rlf	(___xxtofl@arg),f
	rlf	(___xxtofl@arg+1),f
	rlf	(___xxtofl@arg+2),f
	rlf	(___xxtofl@arg+3),f
	decfsz	(??___xxtofl)
	goto	u3895
	line	33
	
l2451:	
	btfsc	(___xxtofl@arg+2),(23)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l703
u3900:
	
l2453:	
	movlw	low(02h)
	subwf	(___xxtofl@exp),w
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l2449
u3910:
	
l703:	
	line	37
	btfsc	(___xxtofl@exp),(0)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l704
u3920:
	line	38
	
l2455:	
	movlw	0FFh
	andwf	(___xxtofl@arg),f
	movlw	0FFh
	andwf	(___xxtofl@arg+1),f
	movlw	07Fh
	andwf	(___xxtofl@arg+2),f
	movlw	0FFh
	andwf	(___xxtofl@arg+3),f
	
l704:	
	line	39
	clrc
	rrf	(___xxtofl@exp),f

	line	40
	
l2457:	
	movf	(___xxtofl@exp),w
	movwf	(??___xxtofl)
	clrf	(??___xxtofl)+1
	clrf	(??___xxtofl)+2
	clrf	(??___xxtofl)+3
	movlw	018h
u3935:
	clrc
	rlf	(??___xxtofl),f
	rlf	(??___xxtofl+1),f
	rlf	(??___xxtofl+2),f
	rlf	(??___xxtofl+3),f
u3930:
	addlw	-1
	skipz
	goto	u3935
	movf	(0+(??___xxtofl)),w
	iorwf	(___xxtofl@arg),f
	movf	(1+(??___xxtofl)),w
	iorwf	(___xxtofl@arg+1),f
	movf	(2+(??___xxtofl)),w
	iorwf	(___xxtofl@arg+2),f
	movf	(3+(??___xxtofl)),w
	iorwf	(___xxtofl@arg+3),f
	line	41
	
l2459:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l2465
u3940:
	
l2461:	
	btfss	(___xxtofl@val+3),7
	goto	u3951
	goto	u3950
u3951:
	goto	l2465
u3950:
	line	42
	
l2463:	
	bsf	(___xxtofl@arg)+(31/8),(31)&7
	line	43
	
l2465:	
	movf	(___xxtofl@arg+3),w
	movwf	(?___xxtofl+3)
	movf	(___xxtofl@arg+2),w
	movwf	(?___xxtofl+2)
	movf	(___xxtofl@arg+1),w
	movwf	(?___xxtofl+1)
	movf	(___xxtofl@arg),w
	movwf	(?___xxtofl)

	line	44
	
l692:	
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
	
l2017:	
	movlw	high highword(0)
	movwf	(___lmul@product+3)
	movlw	low highword(0)
	movwf	(___lmul@product+2)
	movlw	high(0)
	movwf	(___lmul@product+1)
	movlw	low(0)
	movwf	(___lmul@product)

	line	121
	
l2019:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l2023
u2820:
	line	122
	
l2021:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2831
	addwf	(___lmul@product+1),f
u2831:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2832
	addwf	(___lmul@product+2),f
u2832:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2833
	addwf	(___lmul@product+3),f
u2833:

	line	123
	
l2023:	
	movlw	01h
	movwf	(??___lmul)
u2845:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul)
	goto	u2845
	line	124
	
l2025:	
	movlw	01h
u2855:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2855

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l2019
u2860:
	line	128
	
l2027:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l263:	
	return
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4   26[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp1            1   35[BANK0 ] unsigned char 
;;  sign1           1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/fltol.c"
	line	43
global __ptext8
__ptext8:	;psect for function ___fltol
psect	text8
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/fltol.c"
	line	43
	
___fltol:	
;incstack = 0
	callstack 7
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l2099:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(___fltol@f1+2),w
	rlf	(___fltol@f1+3),w
	movwf	(___fltol@exp1)
	movf	(((___fltol@exp1))),w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2105
u3050:
	line	48
	
l2101:	
	movlw	high highword(0)
	movwf	(?___fltol+3)
	movlw	low highword(0)
	movwf	(?___fltol+2)
	movlw	high(0)
	movwf	(?___fltol+1)
	movlw	low(0)
	movwf	(?___fltol)

	goto	l443
	line	49
	
l2105:	
	movf	(___fltol@f1),w
	movwf	(??___fltol)
	movf	(___fltol@f1+1),w
	movwf	((??___fltol)+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol)+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol)+3)
	movlw	01Fh
u3065:
	clrc
	rrf	(??___fltol+3),f
	rrf	(??___fltol+2),f
	rrf	(??___fltol+1),f
	rrf	(??___fltol),f
u3060:
	addlw	-1
	skipz
	goto	u3065
	movf	(0+(??___fltol)),w
	movwf	(___fltol@sign1)
	line	50
	
l2107:	
	bsf	(___fltol@f1)+(23/8),(23)&7
	line	51
	
l2109:	
	movlw	0FFh
	andwf	(___fltol@f1),f
	movlw	0FFh
	andwf	(___fltol@f1+1),f
	movlw	0FFh
	andwf	(___fltol@f1+2),f
	movlw	0
	andwf	(___fltol@f1+3),f
	line	52
	
l2111:	
	movlw	096h
	subwf	(___fltol@exp1),f
	line	53
	
l2113:	
	btfss	(___fltol@exp1),7
	goto	u3071
	goto	u3070
u3071:
	goto	l2123
u3070:
	line	54
	
l2115:	
	movf	(___fltol@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l2121
u3080:
	goto	l2101
	line	57
	
l2121:	
	movlw	01h
u3095:
	clrc
	rrf	(___fltol@f1+3),f
	rrf	(___fltol@f1+2),f
	rrf	(___fltol@f1+1),f
	rrf	(___fltol@f1),f
	addlw	-1
	skipz
	goto	u3095

	movlw	low(01h)
	addwf	(___fltol@exp1),f
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2121
u3100:
	goto	l2131
	line	60
	
l2123:	
	movlw	low(020h)
	subwf	(___fltol@exp1),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l450
u3110:
	goto	l2101
	line	63
	
l2129:	
	movlw	01h
	movwf	(??___fltol)
u3125:
	clrc
	rlf	(___fltol@f1),f
	rlf	(___fltol@f1+1),f
	rlf	(___fltol@f1+2),f
	rlf	(___fltol@f1+3),f
	decfsz	(??___fltol)
	goto	u3125
	line	64
	movlw	01h
	subwf	(___fltol@exp1),f
	line	65
	
l450:	
	line	62
	movf	((___fltol@exp1)),w
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l2129
u3130:
	line	67
	
l2131:	
	movf	((___fltol@sign1)),w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l453
u3140:
	line	68
	
l2133:	
	comf	(___fltol@f1),f
	comf	(___fltol@f1+1),f
	comf	(___fltol@f1+2),f
	comf	(___fltol@f1+3),f
	incf	(___fltol@f1),f
	skipnz
	incf	(___fltol@f1+1),f
	skipnz
	incf	(___fltol@f1+2),f
	skipnz
	incf	(___fltol@f1+3),f
	
l453:	
	line	69
	line	70
	
l443:	
	return
	callstack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 242 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
;; Parameters:    Size  Location     Type
;;  a               4   46[BANK0 ] long 
;;  b               4   50[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   46[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
	line	242
global __ptext9
__ptext9:	;psect for function ___flsub
psect	text9
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
	line	242
	
___flsub:	
;incstack = 0
	callstack 6
; Regs used in ___flsub: [wreg+status,2+status,0+pclath+btemp1+cstack]
	line	248
	
l2135:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___flsub@a+3),f
	line	249
	
l2137:	
	movf	(___flsub@b+3),w
	movwf	(___fladd@b+3)
	movf	(___flsub@b+2),w
	movwf	(___fladd@b+2)
	movf	(___flsub@b+1),w
	movwf	(___fladd@b+1)
	movf	(___flsub@b),w
	movwf	(___fladd@b)

	movf	(___flsub@a+3),w
	movwf	(___fladd@a+3)
	movf	(___flsub@a+2),w
	movwf	(___fladd@a+2)
	movf	(___flsub@a+1),w
	movwf	(___fladd@a+1)
	movf	(___flsub@a),w
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	250
	
l596:	
	return
	callstack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   26[BANK0 ] long 
;;  a               4   30[BANK0 ] long 
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
;;		___flsub
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	line	10
global __ptext10
__ptext10:	;psect for function ___fladd
psect	text10
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcadd.c"
	line	10
	
___fladd:	
;incstack = 0
	callstack 6
; Regs used in ___fladd: [wreg+status,2+status,0+btemp1]
	line	21
	
l1699:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___fladd@b)+03h,w
	movwf	(___fladd@signs)
	
l1701:	
	movlw	low(080h)
	andwf	(___fladd@signs),f
	line	22
	
l1703:	
	movf	0+(___fladd@b)+03h,w
	movwf	(??___fladd)
	addwf	(??___fladd),w
	movwf	(___fladd@bexp)
	line	23
	
l1705:	
	btfss	0+(___fladd@b)+02h,(7)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1709
u2200:
	line	24
	
l1707:	
	bsf	(___fladd@bexp)+(0/8),(0)&7
	line	28
	
l1709:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l1719
u2210:
	line	30
	
l1711:	
		incf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l1715
u2220:
	line	32
	
l1713:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	35
	
l1715:	
	bsf	(___fladd@b)+(23/8),(23)&7
	line	37
	
l1717:	
	clrf	0+(___fladd@b)+03h
	line	38
	goto	l545
	line	41
	
l1719:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	42
	
l545:	
	line	44
	movf	0+(___fladd@a)+03h,w
	movwf	(___fladd@aexp)
	
l1721:	
	movlw	low(080h)
	andwf	(___fladd@aexp),f
	line	46
	
l1723:	
	movf	(___fladd@aexp),w
	xorwf	(___fladd@signs),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l1727
u2230:
	line	47
	
l1725:	
	bsf	(___fladd@signs)+(6/8),(6)&7
	line	49
	
l1727:	
	movf	0+(___fladd@a)+03h,w
	movwf	(??___fladd)
	addwf	(??___fladd),w
	movwf	(___fladd@aexp)
	line	50
	
l1729:	
	btfss	0+(___fladd@a)+02h,(7)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1733
u2240:
	line	51
	
l1731:	
	bsf	(___fladd@aexp)+(0/8),(0)&7
	line	55
	
l1733:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l1743
u2250:
	line	57
	
l1735:	
		incf	((___fladd@aexp)),w
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1739
u2260:
	line	59
	
l1737:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	62
	
l1739:	
	bsf	(___fladd@a)+(23/8),(23)&7
	line	64
	
l1741:	
	clrf	0+(___fladd@a)+03h
	line	65
	goto	l550
	line	68
	
l1743:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	69
	
l550:	
	line	75
	movf	(___fladd@bexp),w
	subwf	(___fladd@aexp),w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l1779
u2270:
	line	77
	
l1745:	
	btfss	(___fladd@signs),(6)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1749
u2280:
	line	78
	
l1747:	
	movlw	low(080h)
	xorwf	(___fladd@signs),f
	line	81
	
l1749:	
	movf	(___fladd@bexp),w
	movwf	(___fladd@grs)
	line	82
	
l1751:	
	movf	(___fladd@aexp),w
	movwf	(___fladd@bexp)
	line	83
	
l1753:	
	movf	(___fladd@grs),w
	movwf	(___fladd@aexp)
	line	84
	
l1755:	
	movf	(___fladd@b),w
	movwf	(___fladd@grs)
	line	85
	
l1757:	
	movf	(___fladd@a),w
	movwf	(___fladd@b)
	line	86
	
l1759:	
	movf	(___fladd@grs),w
	movwf	(___fladd@a)
	line	87
	
l1761:	
	movf	0+(___fladd@b)+01h,w
	movwf	(___fladd@grs)
	line	88
	
l1763:	
	movf	0+(___fladd@a)+01h,w
	movwf	0+(___fladd@b)+01h
	line	89
	
l1765:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+01h
	line	90
	
l1767:	
	movf	0+(___fladd@b)+02h,w
	movwf	(___fladd@grs)
	line	91
	
l1769:	
	movf	0+(___fladd@a)+02h,w
	movwf	0+(___fladd@b)+02h
	line	92
	
l1771:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+02h
	line	93
	
l1773:	
	movf	0+(___fladd@b)+03h,w
	movwf	(___fladd@grs)
	line	94
	
l1775:	
	movf	0+(___fladd@a)+03h,w
	movwf	0+(___fladd@b)+03h
	line	95
	
l1777:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+03h
	line	98
	
l1779:	
	clrf	(___fladd@grs)
	line	100
	
l1781:	
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
	goto	u2295
	movlw	01Ah
	subwf	(0+(??___fladd+2)),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l1797
u2290:
	line	101
	
l1783:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u2301
	goto	u2300
u2301:
	movlw	1
	goto	u2310
u2300:
	movlw	0
u2310:
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
	goto	l554
	line	106
	
l556:	
	line	109
	btfss	(___fladd@grs),(0)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1787
u2320:
	line	110
	
l1785:	
	movf	(___fladd@grs),w
	movwf	(??___fladd)
	clrc
	rrf	(??___fladd),w
	iorlw	01h
	movwf	(___fladd@grs)
	line	111
	goto	l1789
	line	113
	
l1787:	
	clrc
	rrf	(___fladd@grs),f

	line	115
	
l1789:	
	btfss	(___fladd@b),(0)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l1793
u2330:
	line	116
	
l1791:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	118
	
l1793:	
	movlw	01h
	movwf	(??___fladd)
u2345:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd)&07fh,f
	goto	u2345

	line	119
	
l1795:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	line	106
	
l1797:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@aexp),w
	subwf	(___fladd@bexp),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l556
u2350:
	line	121
	
l554:	
	line	124
	btfsc	(___fladd@signs),(6)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1823
u2360:
	line	127
	
l1799:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l1805
u2370:
	line	128
	
l1801:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l563
	line	132
	
l1805:	
	movf	(___fladd@a),w
	addwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2381
	addwf	(___fladd@b+1),f
u2381:
	movf	(___fladd@a+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2382
	addwf	(___fladd@b+2),f
u2382:
	movf	(___fladd@a+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2383
	addwf	(___fladd@b+3),f
u2383:

	line	134
	
l1807:	
	btfss	(___fladd@b+3),(24)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1859
u2390:
	line	135
	
l1809:	
	btfss	(___fladd@grs),(0)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l1813
u2400:
	line	136
	
l1811:	
	movf	(___fladd@grs),w
	movwf	(??___fladd)
	clrc
	rrf	(??___fladd),w
	iorlw	01h
	movwf	(___fladd@grs)
	line	137
	goto	l1815
	line	139
	
l1813:	
	clrc
	rrf	(___fladd@grs),f

	line	141
	
l1815:	
	btfss	(___fladd@b),(0)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l1819
u2410:
	line	142
	
l1817:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	144
	
l1819:	
	movlw	01h
	movwf	(??___fladd)
u2425:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd)&07fh,f
	goto	u2425

	line	145
	
l1821:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	goto	l1859
	line	153
	
l1823:	
	movf	(___fladd@b+3),w
	xorlw	80h
	movwf	btemp1
	movf	(___fladd@a+3),w
	xorlw	80h
	subwf	btemp1,w
	
	skipz
	goto	u2433
	movf	(___fladd@a+2),w
	subwf	(___fladd@b+2),w
	skipz
	goto	u2433
	movf	(___fladd@a+1),w
	subwf	(___fladd@b+1),w
	skipz
	goto	u2433
	movf	(___fladd@a),w
	subwf	(___fladd@b),w
u2433:
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l1835
u2430:
	line	154
	
l1825:	
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
	goto	u2441
	goto	u2442
u2441:
	subwf	(??___fladd+1+4),f
u2442:
	movf	(___fladd@b+2),w
	skipc
	incfsz	(___fladd@b+2),w
	goto	u2443
	goto	u2444
u2443:
	subwf	(??___fladd+2+4),f
u2444:
	movf	(___fladd@b+3),w
	skipc
	incfsz	(___fladd@b+3),w
	goto	u2445
	goto	u2446
u2445:
	subwf	(??___fladd+3+4),f
u2446:

	movf	(0+(??___fladd+4)),w
	addwf	(??___fladd),f
	movf	(1+(??___fladd+4)),w
	skipnc
	incfsz	(1+(??___fladd+4)),w
	goto	u2450
	goto	u2451
u2450:
	addwf	(??___fladd+1),f
u2451:
	movf	(2+(??___fladd+4)),w
	skipnc
	incfsz	(2+(??___fladd+4)),w
	goto	u2452
	goto	u2453
u2452:
	addwf	(??___fladd+2),f
u2453:
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
	
l1827:	
	movlw	low(080h)
	xorwf	(___fladd@signs),f
	line	156
	
l1829:	
	decf	(___fladd@grs),w
	xorlw	0ffh
	movwf	(___fladd@grs)
	line	157
	
l1831:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l571
u2460:
	line	158
	
l1833:	
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
	goto	l571
	line	162
	
l1835:	
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
	
l571:	
	line	166
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l1857
u2470:
	
l1837:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l1857
u2480:
	line	167
	
l1839:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l563
	line	172
	
l1843:	
	movlw	01h
	movwf	(??___fladd)
u2495:
	clrc
	rlf	(___fladd@b),f
	rlf	(___fladd@b+1),f
	rlf	(___fladd@b+2),f
	rlf	(___fladd@b+3),f
	decfsz	(??___fladd)
	goto	u2495
	line	173
	
l1845:	
	btfss	(___fladd@grs),(7)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l575
u2500:
	line	174
	
l1847:	
	bsf	(___fladd@b)+(0/8),(0)&7
	line	175
	
l575:	
	line	176
	btfss	(___fladd@grs),(0)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1851
u2510:
	line	177
	
l1849:	
	setc
	rlf	(___fladd@grs),w
	movwf	(___fladd@grs)
	line	178
	goto	l1853
	line	180
	
l1851:	
	clrc
	rlf	(___fladd@grs),f

	line	182
	
l1853:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l1857
u2520:
	line	183
	
l1855:	
	movlw	01h
	subwf	(___fladd@bexp),f
	line	171
	
l1857:	
	btfss	(___fladd@b+2),(23)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1843
u2530:
	line	192
	
l1859:	
	clrf	(___fladd@aexp)
	line	193
	
l1861:	
	btfss	(___fladd@grs),(7)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1869
u2540:
	line	194
	
l1863:	
	movf	(___fladd@grs),w
	andlw	07Fh
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l581
u2550:
	line	195
	
l1865:	
	movlw	01h
	movwf	(___fladd@aexp)
	line	196
	goto	l1869
	line	197
	
l581:	
	line	198
	btfss	(___fladd@b),(0)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1869
u2560:
	goto	l1865
	line	203
	
l1869:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l584
u2570:
	line	204
	
l1871:	
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
	
l1873:	
	btfss	(___fladd@b+3),(24)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l584
u2580:
	line	206
	
l1875:	
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
u2595:
	rlf	(??___fladd+3),w
	rrf	(??___fladd+3),f
	rrf	(??___fladd+2),f
	rrf	(??___fladd+1),f
	rrf	(??___fladd),f
u2590:
	decfsz	(??___fladd+4),f
	goto	u2595
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
	goto	u2601
	goto	u2600
u2601:
	goto	l584
u2600:
	line	208
	
l1877:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	line	211
	
l584:	
	line	215
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l1881
u2610:
	
l1879:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l1887
u2620:
	line	216
	
l1881:	
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	218
	
l1883:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l1887
u2630:
	line	219
	
l1885:	
	clrf	(___fladd@signs)
	line	225
	
l1887:	
	btfss	(___fladd@bexp),(0)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1891
u2640:
	line	226
	
l1889:	
	bsf	0+(___fladd@b)+02h+(7/8),(7)&7
	line	227
	goto	l592
	line	230
	
l1891:	
	movlw	low(07Fh)
	andwf	0+(___fladd@b)+02h,f
	line	231
	
l592:	
	line	232
	movf	(___fladd@bexp),w
	movwf	(??___fladd)
	clrc
	rrf	(??___fladd),w
	movwf	0+(___fladd@b)+03h
	line	233
	
l1893:	
	btfss	(___fladd@signs),(7)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l593
u2650:
	line	234
	
l1895:	
	bsf	0+(___fladd@b)+03h+(7/8),(7)&7
	line	235
	
l593:	
	line	236
	line	237
	
l563:	
	return
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned char 
;; Registers used:
;;		wreg
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
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/flneg.c"
	line	15
global __ptext11
__ptext11:	;psect for function ___flneg
psect	text11
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/flneg.c"
	line	15
	
___flneg:	
;incstack = 0
	callstack 7
; Regs used in ___flneg: [wreg]
	line	17
	
l2091:	
	movf	(___flneg@f1+3),w
	iorwf	(___flneg@f1+2),w
	iorwf	(___flneg@f1+1),w
	iorwf	(___flneg@f1),w
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l2095
u3040:
	line	18
	
l2093:	
	movlw	080h
	xorwf	(___flneg@f1+3),f
	line	19
	
l2095:	
	line	20
	
l439:	
	return
	callstack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4    0[BANK0 ] unsigned char 
;;  a               4    4[BANK0 ] unsigned char 
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
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcmul.c"
	line	8
global __ptext12
__ptext12:	;psect for function ___flmul
psect	text12
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcmul.c"
	line	8
	
___flmul:	
;incstack = 0
	callstack 6
; Regs used in ___flmul: [wreg+status,2+status,0+pclath+btemp1+cstack]
	line	17
	
l2285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___flmul@b)+03h,w
	movwf	(___flmul@sign)
	
l2287:	
	movlw	low(080h)
	andwf	(___flmul@sign),f
	line	18
	
l2289:	
	movf	0+(___flmul@b)+03h,w
	movwf	(??___flmul)
	addwf	(??___flmul),w
	movwf	(___flmul@bexp)
	line	19
	
l2291:	
	btfss	0+(___flmul@b)+02h,(7)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l2295
u3450:
	line	20
	
l2293:	
	bsf	(___flmul@bexp)+(0/8),(0)&7
	line	24
	
l2295:	
	movf	((___flmul@bexp)),w
	btfsc	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l2303
u3460:
	line	26
	
l2297:	
		incf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l2301
u3470:
	line	28
	
l2299:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	31
	
l2301:	
	bsf	(___flmul@b)+(23/8),(23)&7
	line	33
	goto	l2305
	line	36
	
l2303:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	39
	
l2305:	
	movf	0+(___flmul@a)+03h,w
	andlw	080h
	xorwf	(___flmul@sign),f
	line	40
	
l2307:	
	movf	0+(___flmul@a)+03h,w
	movwf	(??___flmul)
	addwf	(??___flmul),w
	movwf	(___flmul@aexp)
	line	41
	
l2309:	
	btfss	0+(___flmul@a)+02h,(7)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l2313
u3480:
	line	42
	
l2311:	
	bsf	(___flmul@aexp)+(0/8),(0)&7
	line	45
	
l2313:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l2321
u3490:
	line	48
	
l2315:	
		incf	((___flmul@aexp)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l2319
u3500:
	line	50
	
l2317:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	53
	
l2319:	
	bsf	(___flmul@a)+(23/8),(23)&7
	line	54
	goto	l2323
	line	57
	
l2321:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	65
	
l2323:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l2327
u3510:
	
l2325:	
	movf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l2331
u3520:
	line	66
	
l2327:	
	movlw	0x0
	movwf	(?___flmul+3)
	movlw	0x0
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	goto	l646
	line	119
	
l2331:	
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
	
l2333:	
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
	
l2335:	
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
	
l2337:	
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
	goto	u3531
	addwf	(___flmul@grs+1),f
u3531:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3532
	addwf	(___flmul@grs+2),f
u3532:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3533
	addwf	(___flmul@grs+3),f
u3533:

	line	124
	
l2339:	
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
	goto	u3541
	addwf	(___flmul@prod+1),f
u3541:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3542
	addwf	(___flmul@prod+2),f
u3542:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3543
	addwf	(___flmul@prod+3),f
u3543:

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
	
l2341:	
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
	goto	u3551
	addwf	(___flmul@grs+1),f
u3551:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3552
	addwf	(___flmul@grs+2),f
u3552:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3553
	addwf	(___flmul@grs+3),f
u3553:

	line	127
	
l2343:	
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
	goto	u3561
	addwf	(___flmul@prod+1),f
u3561:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3562
	addwf	(___flmul@prod+2),f
u3562:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3563
	addwf	(___flmul@prod+3),f
u3563:

	line	128
	
l2345:	
	movlw	08h
	movwf	(??___flmul)
u3575:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3575
	line	129
	
l2347:	
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
	
l2349:	
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
	goto	u3581
	addwf	(___flmul@grs+1),f
u3581:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3582
	addwf	(___flmul@grs+2),f
u3582:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3583
	addwf	(___flmul@grs+3),f
u3583:

	line	131
	
l2351:	
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
	
l2353:	
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
	goto	u3591
	addwf	(___flmul@grs+1),f
u3591:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3592
	addwf	(___flmul@grs+2),f
u3592:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3593
	addwf	(___flmul@grs+3),f
u3593:

	line	133
	
l2355:	
	movlw	08h
	movwf	(??___flmul)
u3605:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3605
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
	
l2357:	
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
	goto	u3611
	addwf	(___flmul@grs+1),f
u3611:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3612
	addwf	(___flmul@grs+2),f
u3612:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3613
	addwf	(___flmul@grs+3),f
u3613:

	line	136
	
l2359:	
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
	goto	u3621
	addwf	(___flmul@prod+1),f
u3621:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3622
	addwf	(___flmul@prod+2),f
u3622:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3623
	addwf	(___flmul@prod+3),f
u3623:

	line	138
	
l2361:	
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
	
l2363:	
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
	goto	u3631
	addwf	(___flmul@prod+1),f
u3631:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3632
	addwf	(___flmul@prod+2),f
u3632:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3633
	addwf	(___flmul@prod+3),f
u3633:

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
	
l2365:	
	movf	(___flmul@temp),w
	movwf	((??___flmul))
	movf	(___flmul@temp+1),w
	movwf	((??___flmul)+1)
	clrf	((??___flmul)+2)
	clrf	((??___flmul)+3)
	movlw	08h
u3645:
	clrc
	rlf	(??___flmul),f
	rlf	(??___flmul+1),f
	rlf	(??___flmul+2),f
	rlf	(??___flmul+3),f
u3640:
	addlw	-1
	skipz
	goto	u3645
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3651
	addwf	(___flmul@prod+1),f
u3651:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3652
	addwf	(___flmul@prod+2),f
u3652:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3653
	addwf	(___flmul@prod+3),f
u3653:

	line	145
	
l2367:	
	movf	(___flmul@grs),w
	movwf	(??___flmul)
	movf	(___flmul@grs+1),w
	movwf	((??___flmul)+1)
	movf	(___flmul@grs+2),w
	movwf	((??___flmul)+2)
	movf	(___flmul@grs+3),w
	movwf	((??___flmul)+3)
	movlw	018h
u3665:
	clrc
	rrf	(??___flmul+3),f
	rrf	(??___flmul+2),f
	rrf	(??___flmul+1),f
	rrf	(??___flmul),f
u3660:
	addlw	-1
	skipz
	goto	u3665
	movf	(0+(??___flmul)),w
	addwf	(___flmul@prod),f
	movf	(1+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3671
	addwf	(___flmul@prod+1),f
u3671:
	movf	(2+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3672
	addwf	(___flmul@prod+2),f
u3672:
	movf	(3+(??___flmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3673
	addwf	(___flmul@prod+3),f
u3673:

	line	146
	
l2369:	
	movlw	08h
	movwf	(??___flmul)
u3685:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3685
	line	149
	
l2371:	
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
	goto	l2383
	line	153
	
l2373:	
	movlw	01h
	movwf	(??___flmul)
u3695:
	clrc
	rlf	(___flmul@prod),f
	rlf	(___flmul@prod+1),f
	rlf	(___flmul@prod+2),f
	rlf	(___flmul@prod+3),f
	decfsz	(??___flmul)
	goto	u3695
	line	154
	
l2375:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l2379
u3700:
	line	155
	
l2377:	
	bsf	(___flmul@prod)+(0/8),(0)&7
	line	157
	
l2379:	
	movlw	01h
	movwf	(??___flmul)
u3715:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul)
	goto	u3715
	line	158
	
l2381:	
	movlw	0FFh
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0FFh
	addwf	(___flmul@temp+1),f
	line	152
	
l2383:	
	btfss	(___flmul@prod+2),(23)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l2373
u3720:
	line	163
	
l2385:	
	clrf	(___flmul@aexp)
	line	164
	
l2387:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l2395
u3730:
	line	165
	
l2389:	
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
	goto	u3741
	goto	u3740
u3741:
	goto	l652
u3740:
	line	166
	
l2391:	
	movlw	01h
	movwf	(___flmul@aexp)
	line	167
	goto	l2395
	line	168
	
l652:	
	line	169
	btfss	(___flmul@prod),(0)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l2395
u3750:
	goto	l2391
	line	174
	
l2395:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l2405
u3760:
	line	175
	
l2397:	
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
	
l2399:	
	btfss	(___flmul@prod+3),(24)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l2405
u3770:
	line	177
	
l2401:	
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
u3785:
	rlf	(??___flmul+3),w
	rrf	(??___flmul+3),f
	rrf	(??___flmul+2),f
	rrf	(??___flmul+1),f
	rrf	(??___flmul),f
u3780:
	decfsz	(??___flmul+4),f
	goto	u3785
	movf	(3+(??___flmul)),w
	movwf	(___flmul@prod+3)
	movf	(2+(??___flmul)),w
	movwf	(___flmul@prod+2)
	movf	(1+(??___flmul)),w
	movwf	(___flmul@prod+1)
	movf	(0+(??___flmul)),w
	movwf	(___flmul@prod)

	line	178
	
l2403:	
	movlw	01h
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0
	addwf	(___flmul@temp+1),f
	line	183
	
l2405:	
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3795
	movlw	0FFh
	subwf	(___flmul@temp),w
u3795:

	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l2409
u3790:
	line	184
	
l2407:	
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
	goto	l658
	line	187
	
l2409:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3805
	movlw	01h
	subwf	(___flmul@temp),w
u3805:

	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l2415
u3800:
	line	188
	
l2411:	
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
	
l2413:	
	clrf	(___flmul@sign)
	line	191
	goto	l658
	line	194
	
l2415:	
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
	
l2417:	
	btfss	(___flmul@bexp),(0)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l2421
u3810:
	line	197
	
l2419:	
	bsf	0+(___flmul@prod)+02h+(7/8),(7)&7
	line	199
	
l2421:	
	movf	(___flmul@bexp),w
	movwf	(??___flmul)
	clrc
	rrf	(??___flmul),w
	movwf	0+(___flmul@prod)+03h
	line	200
	
l658:	
	line	201
	movf	(___flmul@sign),w
	iorwf	0+(___flmul@prod)+03h,f
	line	203
	
l2423:	
	movf	(___flmul@prod+3),w
	movwf	(?___flmul+3)
	movf	(___flmul@prod+2),w
	movwf	(?___flmul+2)
	movf	(___flmul@prod+1),w
	movwf	(?___flmul+1)
	movf	(___flmul@prod),w
	movwf	(?___flmul)

	line	205
	
l646:	
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul8_16.c"
	line	4
global __ptext13
__ptext13:	;psect for function __Umul8_16
psect	text13
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/Umul8_16.c"
	line	4
	
__Umul8_16:	
;incstack = 0
	callstack 6
; Regs used in __Umul8_16: [wreg+status,2+status,0]
	movwf	(__Umul8_16@multiplier)
	line	5
	
l1897:	
	clrf	(__Umul8_16@product)
	clrf	(__Umul8_16@product+1)
	line	6
	
l1899:	
	movf	(__Umul8_16@multiplicand),w
	movwf	(??__Umul8_16)
	clrf	(??__Umul8_16+1)
	movf	(0+(??__Umul8_16)),w
	movwf	(__Umul8_16@word_mpld)
	movf	(1+(??__Umul8_16)),w
	movwf	(__Umul8_16@word_mpld+1)
	line	51
	
l1901:	
	btfss	(__Umul8_16@multiplier),(0)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l665
u2660:
	line	52
	
l1903:	
	movf	(__Umul8_16@word_mpld),w
	addwf	(__Umul8_16@product),f
	skipnc
	incf	(__Umul8_16@product+1),f
	movf	(__Umul8_16@word_mpld+1),w
	addwf	(__Umul8_16@product+1),f
	line	53
	
l665:	
	line	54
	movlw	01h
	
u2675:
	clrc
	rlf	(__Umul8_16@word_mpld),f
	rlf	(__Umul8_16@word_mpld+1),f
	addlw	-1
	skipz
	goto	u2675
	line	55
	clrc
	rrf	(__Umul8_16@multiplier),f

	line	56
	
l1905:	
	movf	((__Umul8_16@multiplier)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l1901
u2680:
	line	59
	
l1907:	
	movf	(__Umul8_16@product+1),w
	movwf	(?__Umul8_16+1)
	movf	(__Umul8_16@product),w
	movwf	(?__Umul8_16)
	line	60
	
l667:	
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
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/flge.c"
	line	4
global __ptext14
__ptext14:	;psect for function ___flge
psect	text14
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/flge.c"
	line	4
	
___flge:	
;incstack = 0
	callstack 7
; Regs used in ___flge: [wreg+status,2+status,0]
	line	7
	
l2071:	
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
	goto	u2971
	goto	u2970
u2971:
	goto	l427
u2970:
	line	8
	
l2073:	
	movlw	high highword(0)
	movwf	(___flge@ff1+3)
	movlw	low highword(0)
	movwf	(___flge@ff1+2)
	movlw	high(0)
	movwf	(___flge@ff1+1)
	movlw	low(0)
	movwf	(___flge@ff1)

	
l427:	
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
	goto	u2981
	goto	u2980
u2981:
	goto	l2077
u2980:
	line	10
	
l2075:	
	movlw	high highword(0)
	movwf	(___flge@ff2+3)
	movlw	low highword(0)
	movwf	(___flge@ff2+2)
	movlw	high(0)
	movwf	(___flge@ff2+1)
	movlw	low(0)
	movwf	(___flge@ff2)

	line	12
	
l2077:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2081
u2990:
	line	13
	
l2079:	
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
	goto	u3001
	goto	u3002
u3001:
	subwf	(??___flge+1),f
u3002:
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u3003
	goto	u3004
u3003:
	subwf	(??___flge+2),f
u3004:
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u3005
	goto	u3006
u3005:
	subwf	(??___flge+3),f
u3006:

	movf	(3+(??___flge)),w
	movwf	(___flge@ff1+3)
	movf	(2+(??___flge)),w
	movwf	(___flge@ff1+2)
	movf	(1+(??___flge)),w
	movwf	(___flge@ff1+1)
	movf	(0+(??___flge)),w
	movwf	(___flge@ff1)

	line	14
	
l2081:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l430
u3010:
	line	15
	
l2083:	
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
	goto	u3021
	goto	u3022
u3021:
	subwf	(??___flge+1),f
u3022:
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u3023
	goto	u3024
u3023:
	subwf	(??___flge+2),f
u3024:
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u3025
	goto	u3026
u3025:
	subwf	(??___flge+3),f
u3026:

	movf	(3+(??___flge)),w
	movwf	(___flge@ff2+3)
	movf	(2+(??___flge)),w
	movwf	(___flge@ff2+2)
	movf	(1+(??___flge)),w
	movwf	(___flge@ff2+1)
	movf	(0+(??___flge)),w
	movwf	(___flge@ff2)

	
l430:	
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
	goto	u3035
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u3035
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u3035
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u3035:
	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l2087
u3030:
	
l2085:	
	clrc
	
	goto	l435
	
l2087:	
	setc
	
	line	19
	
l435:	
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
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcdiv.c"
	line	8
global __ptext15
__ptext15:	;psect for function ___fldiv
psect	text15
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/sprcdiv.c"
	line	8
	
___fldiv:	
;incstack = 0
	callstack 7
; Regs used in ___fldiv: [wreg+status,2+status,0+btemp1]
	line	26
	
l2141:	
	movf	0+(___fldiv@b)+03h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@sign)
	
l2143:	
	movlw	low(080h)
	andwf	(___fldiv@sign),f
	line	27
	
l2145:	
	movf	0+(___fldiv@b)+03h,w
	movwf	(??___fldiv)
	addwf	(??___fldiv),w
	movwf	(___fldiv@bexp)
	line	28
	
l2147:	
	btfss	0+(___fldiv@b)+02h,(7)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l2151
u3150:
	line	29
	
l2149:	
	bsf	(___fldiv@bexp)+(0/8),(0)&7
	line	33
	
l2151:	
	movf	((___fldiv@bexp)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l2161
u3160:
	line	35
	
l2153:	
		incf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l2157
u3170:
	line	37
	
l2155:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	40
	
l2157:	
	bsf	(___fldiv@b)+(23/8),(23)&7
	line	42
	
l2159:	
	clrf	0+(___fldiv@b)+03h
	line	43
	goto	l2163
	line	46
	
l2161:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	49
	
l2163:	
	movf	0+(___fldiv@a)+03h,w
	andlw	080h
	xorwf	(___fldiv@sign),f
	line	50
	
l2165:	
	movf	0+(___fldiv@a)+03h,w
	movwf	(??___fldiv)
	addwf	(??___fldiv),w
	movwf	(___fldiv@aexp)
	line	51
	
l2167:	
	btfss	0+(___fldiv@a)+02h,(7)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l2171
u3180:
	line	52
	
l2169:	
	bsf	(___fldiv@aexp)+(0/8),(0)&7
	line	56
	
l2171:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l2181
u3190:
	line	58
	
l2173:	
		incf	((___fldiv@aexp)),w
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l2177
u3200:
	line	60
	
l2175:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	63
	
l2177:	
	bsf	(___fldiv@a)+(23/8),(23)&7
	line	65
	
l2179:	
	clrf	0+(___fldiv@a)+03h
	line	66
	goto	l606
	line	69
	
l2181:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	70
	
l606:	
	line	75
	movf	(___fldiv@a+3),w
	iorwf	(___fldiv@a+2),w
	iorwf	(___fldiv@a+1),w
	iorwf	(___fldiv@a),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l2191
u3210:
	line	76
	
l2183:	
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
	
l2185:	
	movf	(___fldiv@sign),w
	iorwf	0+(___fldiv@b)+03h,f
	line	79
	
l2187:	
	movf	(___fldiv@b+3),w
	movwf	(?___fldiv+3)
	movf	(___fldiv@b+2),w
	movwf	(?___fldiv+2)
	movf	(___fldiv@b+1),w
	movwf	(?___fldiv+1)
	movf	(___fldiv@b),w
	movwf	(?___fldiv)

	goto	l608
	line	83
	
l2191:	
	movf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l2197
u3220:
	line	84
	
l2193:	
	line	85
	movlw	high highword(0)
	movwf	(?___fldiv+3)
	movlw	low highword(0)
	movwf	(?___fldiv+2)
	movlw	high(0)
	movwf	(?___fldiv+1)
	movlw	low(0)
	movwf	(?___fldiv)

	goto	l608
	line	89
	
l2197:	
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
	
l2199:	
	movf	(___fldiv@b+3),w
	movwf	(___fldiv@rem+3)
	movf	(___fldiv@b+2),w
	movwf	(___fldiv@rem+2)
	movf	(___fldiv@b+1),w
	movwf	(___fldiv@rem+1)
	movf	(___fldiv@b),w
	movwf	(___fldiv@rem)

	line	93
	
l2201:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	94
	
l2203:	
	movlw	high highword(0)
	movwf	(___fldiv@grs+3)
	movlw	low highword(0)
	movwf	(___fldiv@grs+2)
	movlw	high(0)
	movwf	(___fldiv@grs+1)
	movlw	low(0)
	movwf	(___fldiv@grs)

	line	96
	
l2205:	
	clrf	(___fldiv@aexp)
	line	97
	goto	l2225
	line	100
	
l2207:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l2217
u3230:
	line	101
	
l2209:	
	movlw	01h
	movwf	(??___fldiv)
u3245:
	clrc
	rlf	(___fldiv@rem),f
	rlf	(___fldiv@rem+1),f
	rlf	(___fldiv@rem+2),f
	rlf	(___fldiv@rem+3),f
	decfsz	(??___fldiv)
	goto	u3245
	line	102
	movlw	01h
	movwf	(??___fldiv)
u3255:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv)
	goto	u3255
	line	103
	
l2211:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l2215
u3260:
	line	104
	
l2213:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	106
	
l2215:	
	movlw	01h
	movwf	(??___fldiv)
u3275:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv)
	goto	u3275
	line	112
	
l2217:	
	movf	(___fldiv@a+3),w
	subwf	(___fldiv@rem+3),w
	skipz
	goto	u3285
	movf	(___fldiv@a+2),w
	subwf	(___fldiv@rem+2),w
	skipz
	goto	u3285
	movf	(___fldiv@a+1),w
	subwf	(___fldiv@rem+1),w
	skipz
	goto	u3285
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l2223
u3280:
	line	115
	
l2219:	
	bsf	(___fldiv@grs)+(30/8),(30)&7
	line	116
	
l2221:	
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),f
	movf	(___fldiv@a+1),w
	skipc
	incfsz	(___fldiv@a+1),w
	goto	u3295
	goto	u3296
u3295:
	subwf	(___fldiv@rem+1),f
u3296:
	movf	(___fldiv@a+2),w
	skipc
	incfsz	(___fldiv@a+2),w
	goto	u3297
	goto	u3298
u3297:
	subwf	(___fldiv@rem+2),f
u3298:
	movf	(___fldiv@a+3),w
	skipc
	incfsz	(___fldiv@a+3),w
	goto	u3299
	goto	u3290
u3299:
	subwf	(___fldiv@rem+3),f
u3290:

	line	118
	
l2223:	
	movlw	low(01h)
	addwf	(___fldiv@aexp),f
	line	97
	
l2225:	
	movlw	low(01Ah)
	subwf	(___fldiv@aexp),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l2207
u3300:
	line	122
	
l2227:	
	movf	(___fldiv@rem+3),w
	iorwf	(___fldiv@rem+2),w
	iorwf	(___fldiv@rem+1),w
	iorwf	(___fldiv@rem),w
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l2241
u3310:
	line	123
	
l2229:	
	bsf	(___fldiv@grs)+(0/8),(0)&7
	goto	l2241
	line	128
	
l2231:	
	movlw	01h
	movwf	(??___fldiv)
u3325:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv)
	goto	u3325
	line	129
	
l2233:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l2237
u3330:
	line	130
	
l2235:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	132
	
l2237:	
	movlw	01h
	movwf	(??___fldiv)
u3345:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv)
	goto	u3345
	line	133
	
l2239:	
	movlw	0FFh
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0FFh
	addwf	(___fldiv@new_exp+1),f
	line	127
	
l2241:	
	btfss	(___fldiv@b+2),(23)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l2231
u3350:
	line	139
	
l2243:	
	clrf	(___fldiv@aexp)
	line	140
	
l2245:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l2253
u3360:
	line	141
	
l2247:	
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
	goto	u3371
	goto	u3370
u3371:
	goto	l622
u3370:
	line	142
	
l2249:	
	movlw	01h
	movwf	(___fldiv@aexp)
	line	143
	goto	l2253
	line	144
	
l622:	
	line	145
	btfss	(___fldiv@b),(0)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2253
u3380:
	goto	l2249
	line	150
	
l2253:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l2263
u3390:
	line	151
	
l2255:	
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
	
l2257:	
	btfss	(___fldiv@b+3),(24)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l2263
u3400:
	line	153
	
l2259:	
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
u3415:
	rlf	(??___fldiv+3),w
	rrf	(??___fldiv+3),f
	rrf	(??___fldiv+2),f
	rrf	(??___fldiv+1),f
	rrf	(??___fldiv),f
u3410:
	decfsz	(??___fldiv+4),f
	goto	u3415
	movf	(3+(??___fldiv)),w
	movwf	(___fldiv@b+3)
	movf	(2+(??___fldiv)),w
	movwf	(___fldiv@b+2)
	movf	(1+(??___fldiv)),w
	movwf	(___fldiv@b+1)
	movf	(0+(??___fldiv)),w
	movwf	(___fldiv@b)

	line	154
	
l2261:	
	movlw	01h
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0
	addwf	(___fldiv@new_exp+1),f
	line	159
	
l2263:	
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3425
	movlw	0FFh
	subwf	(___fldiv@new_exp),w
u3425:

	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l2267
u3420:
	line	160
	
l2265:	
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
	
l2267:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u3435
	movlw	01h
	subwf	(___fldiv@new_exp),w
u3435:

	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l628
u3430:
	line	166
	
l2269:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___fldiv@new_exp)
	clrf	(___fldiv@new_exp+1)
	line	167
	
l2271:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	169
	
l2273:	
	clrf	(___fldiv@sign)
	line	170
	
l628:	
	line	173
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp),w
	movwf	(___fldiv@bexp)
	line	175
	
l2275:	
	btfss	(___fldiv@bexp),(0)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l2279
u3440:
	line	176
	
l2277:	
	bsf	0+(___fldiv@b)+02h+(7/8),(7)&7
	line	177
	goto	l630
	line	180
	
l2279:	
	movlw	low(07Fh)
	andwf	0+(___fldiv@b)+02h,f
	line	181
	
l630:	
	line	182
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv)
	clrc
	rrf	(??___fldiv),w
	movwf	0+(___fldiv@b)+03h
	line	183
	movf	(___fldiv@sign),w
	iorwf	0+(___fldiv@b)+03h,f
	goto	l2187
	line	185
	
l608:	
	return
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/aldiv.c"
	line	5
global __ptext16
__ptext16:	;psect for function ___aldiv
psect	text16
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 7
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l2031:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	14
	
l2033:	
	btfss	(___aldiv@divisor+3),7
	goto	u2871
	goto	u2870
u2871:
	goto	l314
u2870:
	line	15
	
l2035:	
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
	
l314:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u2881
	goto	u2880
u2881:
	goto	l2041
u2880:
	line	19
	
l2037:	
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
	
l2039:	
	movlw	low(01h)
	xorwf	(___aldiv@sign),f
	line	22
	
l2041:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l2043:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2891
	goto	u2890
u2891:
	goto	l2063
u2890:
	line	24
	
l2045:	
	movlw	01h
	movwf	(___aldiv@counter)
	line	25
	goto	l2049
	line	26
	
l2047:	
	movlw	01h
	movwf	(??___aldiv)
u2905:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv)
	goto	u2905
	line	27
	movlw	low(01h)
	addwf	(___aldiv@counter),f
	line	25
	
l2049:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l2047
u2910:
	line	30
	
l2051:	
	movlw	01h
	movwf	(??___aldiv)
u2925:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv)
	goto	u2925
	line	31
	
l2053:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2935
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2935
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2935
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l2059
u2930:
	line	32
	
l2055:	
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
	
l2057:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l2059:	
	movlw	01h
u2945:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2945

	line	36
	
l2061:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2051
u2950:
	line	38
	
l2063:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l2067
u2960:
	line	39
	
l2065:	
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
	
l2067:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l324:	
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
