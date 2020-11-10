100 REM LANDER
110 CALL CLEAR
120 PRINT "WELCOME TO THE GAME OF ...": : : : : : : : :
130 PRINT "MOON L": : : : : : :
140 FOR I=17 TO 23
150 CALL HCHAR(I,8,32)
160 CALL HCHAR(I+1,8,76)
170 NEXT I
180 PRINT TAB(6);"LANDER": : : : : :
190 INPUT "PLEASE ENTER YOUR NAME: ":NAME$
200 INPUT "INSTRUCTIONS? (Y/N) ":QUERY$
210 IF SEG$(QUERY$,1,1)="Y" THEN 1670
220 PRINT
230 PRINT "GOOD LUCK AND HAPPY         LANDINGS"
240 PRINT
250 X0=0
260 V0=0
270 INPUT "LOCATION: MOON OR EARTH?":LOC$
280 LOC$=SEG$(LOC$,1,1)
290 K=0
300 IF LOC$="M" THEN 350
310 K=1
320 IF LOC$="E" THEN 350
330 PRINT "SORRY, NO SUCH LOCATION"
340 GOTO 270
350 G=5+27*K
360 M=30+60*K
370 IF X0>0 THEN 400
380 X0=500+1500*K
390 X=X0
400 V0=-50-100*K
410 V=V0
420 X=500+1500*K
430 V=-50-100*K
440 X0=X
450 V0=V
460 F=INT(SQR(M*(V*V+G*G*X)/(M-G))*.13+.5)*10
470 PRINT
480 PRINT "INIT HEIGHT:  ";X;"FEET"
490 PRINT "INIT VELOCITY:";V;"FT/SEC"
500 PRINT "FUEL SUPPLY:  ";F;"UNITS"
510 PRINT "MAXIMUM BURN: ";M;"UN/SEC"
520 PRINT
530 PRINT "THE AMOUNT OF BURN TO CANCELGRAVITY IS";G:"UNITS PER SECOND"
540 PRINT
550 PRINT "HIT ANY KEY WHEN READY,     COMMANDER ";NAME$
560 CALL KEY(3,AA,XX)
570 IF XX=0 THEN 560
580 PRINT
590 FOR T=1 TO 32000
600 GOSUB 1520
610 INPUT "THRUST? ":B
620 B1=ABS(B)
630 IF B1<=M THEN 660
640 PRINT "YOUR ENGINE CANNOT SUSTAIN  THIS THRUST"
650 GOTO 600
660 T8=2
670 T9=T8
680 IF B1=0 THEN 700
690 T9=F/B1
700 A=B-G
710 R=V*V-2*A*X
720 IF R<0 THEN 780
730 IF A=0 THEN 760
740 T8=-(V+SQR(R))/A
750 GOTO 780
760 IF V>=0 THEN 780
770 T8=-X/V
780 IF (T8>0)*(T8<=1)+(T9<=1)THEN 870
790 X=X+V+A/2
800 V=V+A
810 F=F-B1
820 IF X<=.0001 THEN 850
830 NEXT T
840 STOP
850 T=T+1
860 GOTO 1120
870 IF (T8>0)*(T8<=1)THEN 1090
880 PRINT T+T9;"OUT OF FUEL"
890 SND=5000
900 B1=0
910 F=B1
920 X=X+V*T9+A*T9*T9/2
930 V=V+A*T9
940 A=-G
950 T8=(V+SQRT(V*V-2*A*X))/G
960 IF T8<1-T9 THEN 1600
970 X=X+V*(1-T9)+A*(1-T9)^2/2
980 V=V+A*(1-T9)
990 T=T+1
1000 CALL SOUND(50,SND,0)
1010 SND=SND*.97
1020 GOSUB 1520
1030 T8=(V+SQRT(V*V-2*A*X))/G
1040 IF T8<=1 THEN 1090
1050 X=X+V+A/2
1060 V=V+A
1070 GOTO 990
1080 T=T+T9
1090 F=F-B1*T8
1100 T=T+T8
1110 V=V+A*T8
1120 PRINT "THE TIME ELAPSED IS";T;"SECONDS"
1130 PRINT
1140 PRINT "THE VELOCITY ON LANDING WAS";V;"FEET PER SECOND"
1150 PRINT
1160 PRINT "FUEL LEFT WAS";F
1170 PRINT
1180 IF V<-1 THEN 1260
1190 ON INT(RND*2)+1 GOTO 1200,1230
1200 PRINT "CONGRATULATIONS, COMMANDER ";NAME$
1210 PRINT "PERFECT LANDING"
1220 GOTO 1600
1230 PRINT "JOB WELL DONE."
1240 PRINT "THE ADMIRAL WAS IMPRESSED"
1250 GOTO 1600
1260 IF V<-5 THEN 1360
1270 ON INT(RND*4)+1 GOTO 1280,1300,1320,1340
1280 PRINT "A BIT ROUGH BUT YOU'RE STILLIN ONE PIECE"
1290 GOTO 1600
1300 PRINT "I'VE SEEN BETTER, BUT I'VE  SEEN A LOT WORSE"
1310 GOTO 1600
1320 PRINT "ANY HARDER AND YOU WOULD    HAVE BOUNCED!"
1330 GOTO 1600
1340 PRINT "HOPE YOUR SHOCKS ARE O.K."
1350 GOTO 1600
1360 FOR C=1 TO 16
1370 CALL SCREEN(C)
1380 NEXT C
1390 CALL SOUND(200,-5,0)
1400 CALL SOUND(200,-6,0)
1410 CALL SOUND(200,-5,0)
1420 CALL SCREEN(13)
1430 ON INT(RND*4)+1 GOTO 1440,1460,1480,1500
1440 PRINT "YOU JUST MADE A HUGE CRATER"
1450 GOTO 1600
1460 PRINT "YOUR NEXT OF KIN WILL BE    NOTIFIED"
1470 GOTO 1600
1480 PRINT "DID YOU PAY YOUR INSURANCE?"
1490 GOTO 1600
1500 PRINT "WE WILL ALWAYS REMEMBER YOU.SUCH A BIG DISGRACE TO THE  FORCE!"
1510 GOTO 1600
1520 REM DISPLAY STATUS
1530 CALL CLEAR
1540 PRINT "TIME   =";T
1550 PRINT "HEIGHT =";X
1560 PRINT "VEL.   =";V
1570 PRINT "FUEL   =";F
1580 PRINT
1590 RETURN
1600 PRINT
1610 FOR T=1 TO 1000
1620 NEXT T
1630 CALL CLEAR
1640 INPUT "WOULD YOU LIKE TO PLAY AGAIN(Y/N) ":MORE$
1650 IF SEG$(MORE$,1,1)="Y" THEN 100
1660 END
1670 PRINT : :"YOU ARE THE COMMANDER OF A  SMALL LANDER. THE COMPUTER  (NOT A TI, OF COURSE) HAS"
1680 PRINT "BROKEN DOWN AND YOU MUST    LAND MANUALLY. CAN YOU DO   IT? EACH SECOND YOU MUST"
1690 PRINT "SPECIFY THE AMOUNT OF FUEL  TO BURN. THE OBJECT IS TO   LAND AT THE LOWEST SPEED"
1700 PRINT "POSSIBLE.": :"GET READY FOR YOUR MISSION, COMMANDER ";NAME$: :
1710 GOTO 220