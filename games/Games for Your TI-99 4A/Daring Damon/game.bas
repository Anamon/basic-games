10 REM  *** DARING DAMON ***
20 REM
30 REM  * BY D&D
40 DIM ML(10),BET(10),HOR(10)
50 RANDOMIZE
60 CALL CLEAR
70 CALL SCREEN(3)
80 FOR T=1 TO 10
90 ML(T)=2000
100 NEXT T
110 FOR T=9 TO 12
120 CALL COLOR(T,2,4)
130 NEXT T
140 PRINT "welcome to the texan race":"meeting ":,,"your credit with daring":"damon is set at $2000":"there is no maximum bet."
150 GOSUB 1230
160 CALL CLEAR
170 INPUT "HOW MANY PLAYERS  ":PLA
180 IF PLA>8 THEN 170
190 CALL CLEAR
200 PRINT "hi,":"   i am daring damon. i am":"called this because of my incredibly high odds.",,,," be warned i have inside     tips."
210 PRINT "so heed my odds. but i have been known to be wrong."
220 GOSUB 1230
230 DIM HNA$(10),ODD(6)
240 HNA$(1)="NAG HEAP    "
250 HNA$(2)="COSMIC RUN  "
260 HNA$(3)="PRINCE      "
270 HNA$(4)="DASSY       "
280 HNA$(5)="FFFLYER     "
290 HNA$(6)="EXTENDER    "
300 HNA$(8)="VECTOR      "
310 HNA$(9)="FLAT FEET   "
320 HNA$(10)="MULE        "
330 HNA$(7)="DOPPY       "
340 CALL CLEAR
350 CALL SCREEN(13)
360 PRINT "     *DARING DAMON*"
370 PRINT ,,,,"NO.NAME         ODDS"
380 CHANCE=-CHANCE
390 RR$="1111111111"
400 PRINT "*********************",,
410 FOR T=1 TO 5
420 J=INT(RND*10)+1
430 IF SEG$(RR$,J,1)<>"1" THEN 420
440 RR$=SEG$(RR$,1,J)&"2"&SEG$(RR$,J+1,10)
450 ODD(T)=INT(RND*(30))+20
460 DT$="*"&STR$(T)&"**"&(SEG$(HNA$(J),1,20))&"*"&STR$(ODD(T))&"/1"
470 PRINT DT$:
480 NEXT T
490 PRINT ,,
500 FOR T=1 TO PLA
510 PRINT "PLAYER ";T;" WHICH HORSE?"
520 INPUT HOR(T)
530 IF HOR(T)<6 THEN 560
540 PRINT "THER ARE ONLY 5 HORSES IN THE RACE.  STUPID....."
550 GOTO 520
560 NEXT T
570 CALL CLEAR
580 FOR T=1 TO PLA
590 PRINT "PLAYER ";T;"WHAT IS YOUR BET"
600 IF ML(T)=0 THEN 650
610 INPUT BET(T)
620 IF BET(T)<=ML(T)THEN 650
630 PRINT,,"BE VERY LUCKY YOU ONLY HAVE $";ML(T)
640 GOTO 610
650 NEXT T
660 GOSUB 1230
670 CALL CLEAR
680 DIM HOR$(2,2),RL$(2)
690 HOR$(1,1)="0000009F7F1F2040"
700 HOR$(1,2)="0040F0C080008040"
710 HOR$(2,1)="000000030F030201"
720 HOR$(2,2)="00081EF8F0E01020"
730 RL$(1)="0000FFAAFF444444"
740 RL$(2)="0000FF55FF111111"
750 GAT1$="0003010101030408"
760 GAT2$="00C0808080C02010"
770 GAT3$="1121C142FF000000"
780 GAT4$="88848342FF000000"
790 FOR T=1 TO 6
800 A(T)=4
810 NEXT T
820 CALL CHAR(104,RL$(1))
830 CALL HCHAR(7,1,104,32)
840 CALL HCHAR(14,1,104,32)
850 CALL CHAR(112,GAT1$)
860 CALL CHAR(113,GAT2$)
870 CALL CHAR(114,GAT3$)
880 CALL CHAR(115,GAT4$)
890 CALL HCHAR(7,5,115)
900 CALL CHAR(96,"00")
910 CALL COLOR(9,2,4)
920 CALL COLOR(10,2,3)
930 CALL HCHAR(8,1,96,192)
940 FOR T=1 TO 50000
950 FOR F=1 TO 5
960 CALL HCHAR(8+(F-1),INT(A(F)),97)
970 CALL HCHAR(8+(F-1),INT(A(F))+1,98)
980 CALL HCHAR(8+(F-1),INT(A(F))-3,96,3)
990 F1=RND*3
1000 OD1=(ODD(F)/60)
1010 CHANCE=F1-OD1
1020 IF CHANCE>0 THEN 1040
1030 CHANCE=-(CHANCE)
1040 A(F)=A(F)+CHANCE
1050 IF T>2 THEN 1100
1060 CALL HCHAR(6,4,112)
1070 CALL HCHAR(6,5,113)
1080 CALL HCHAR(7,4,114)
1090 CALL HCHAR(7,5,115)
1100 IF T<>5 THEN 1150
1110 CALL HCHAR(6,4,32)
1120 CALL HCHAR(7,4,104)
1130 CALL HCHAR(6,5,32)
1140 CALL HCHAR(7,5,104)
1150 GH=INT((SIN(F/6))*2)+1
1160 CALL CHAR(98,HOR$(GH,2))
1170 CALL CHAR(97,HOR$(GH,1))
1180 CALL CHAR(104,RL$(GH))
1190 IF A(F)>20 THEN 1270
1200 IF A(F)>29 THEN 1320
1210 NEXT F
1220 NEXT T
1230 PRINT ,,"PRESS ANY KEY TO CONTINUE"
1240 CALL KEY(3,X,Y)
1250 IF Y=0 THEN 1240
1260 RETURN
1270 CALL HCHAR(6,28,112)
1280 CALL HCHAR(6,29,113)
1290 CALL HCHAR(7,28,114)
1300 CALL HCHAR(7,29,115)
1310 GOTO 1200
1320 FOR J=1 TO 3
1330 HI=0
1340 FOR T=1 TO 5
1350 IF A(T)<A(HI)THEN 1370
1360 HI=T
1370 NEXT T
1380 WI(J)=HI
1390 A(HI)=0
1400 GOTO 1490
1410 NEXT J
1420 FOR T=1 TO PLA
1430 ML(T)=ML(T)-INT(BET(T))
1440 IF ML(T)>=0 THEN 1470
1450 ML(T)=0
1460 PRINT "PLAYER ";T;" ROTTEN EGGS.  YOU HAVE BEEN BUSTED."
1470 NEXT T
1480 GOTO 1590
1490 FOR GG=1 TO 3
1500 FOR T=1 TO PLA
1510 IF HOR(T)<>WI(GG)THEN 1540
1520 PRINT :"PLAYER ";T;"COLLECTS"
1530 ML(T)=ML(T)+(INT(BET(T)*(ODD(T)/(GG+1))))
1540 REM
1550 NEXT T
1560 PRINT ,,
1570 GOTO 1420
1580 NEXT GG
1590 PRINT "NO.  MONEY LEFT",,
1600 PRINT
1610 FOR T=1 TO PLA
1620 PRINT T;"    ";ML(T)
1630 NEXT T
1640 GOTO 220
