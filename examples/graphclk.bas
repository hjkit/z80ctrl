5 REM GRAPHICAL CLOCK FOR MSX-BASIC
10 FG=15: BG=4: REM FOREGROUND/BACKGROUND COLORS
20 CX=128: CY=96: R=95: REM CENTER COORD AND RADIUS
30 SL=R*0.72: ML=R*0.60: HL=R*0.50
50 S=99: M=99: H=99
60 SX=CX: SY=CY: MX=CX: MY=CY: HX=CX: HY=CY
70 DEF FNBCD(V)=(V AND &HF0)/16*10+(V AND &HF)
80 SCREEN 2: COLOR FG,BG,BG: CLS
90 CIRCLE(CX,CY),R
100 OUT 0,0: REM SELECT RTC CHIP
110 GOSUB 200
120 IF INKEY$="" THEN 110
130 END

200 REM UPDATE SECOND HAND
210 LS=S: OUT 1,0: S=FNBCD(INP(2))
220 IF S=LS THEN RETURN
230 LX=SX:LY=SY
240 SA=S/60*6.28-1.57: SX=CX+COS(SA)*SL: SY=CY+SIN(SA)*SL
250 GOSUB 500

300 REM UPDATE MINUTE HAND
310 LM=M: OUT 1,1: M=FNBCD(INP(2))
320 IF M=LM THEN RETURN
330 LX=MX:LY=MY
340 MA=M/60*6.28-1.57: MX=CX+COS(MA)*ML: MY=CY+SIN(MA)*ML
350 GOSUB 500

400 REM UPDATE HOUR HAND
410 LH=H: OUT 1,2: H=INP(2)
420 IF (H AND &H40) THEN H=H AND &H1F: REM GET RID OF AM/PM BITS
430 H=FNBCD(H)
440 IF H>12 THEN H=H-12
450 IF H=LH THEN RETURN
460 LX=HX:LY=HY
470 HA=H/12*6.28-1.57: HX=CX+COS(HA)*HL: HY=CY+SIN(HA)*HL
480 GOSUB 500
490 RETURN

500 REM DRAW CLOCK FACE
510 COLOR BG
520 LINE(CX,CY)-(LX,LY)
530 COLOR FG
540 LINE(CX,CY)-(SX,SY)
550 LINE(CX,CY)-(MX,MY)
560 LINE(CX,CY)-(HX,HY)
570 RETURN