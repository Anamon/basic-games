100 REM CONCENTRATION
110 CALL CLEAR
120 PRINT "WELCOME TO THE GAME OF ": : : : : : : : :
130 I=1
140 FOR N=1 TO 13
150 I=I+I/4
160 PRINT TAB(N+6);SEG$("CONCENTRATION",N,1)
170 CALL SOUND(100,I*110,0,I*220,0,I*880,0)
180 NEXT N
190 CALL SCREEN(12)
200 CALL CHAR(128,"00FE8181818181FE")
210 OPTION BASE 1
220 DIM C(13,4),DECK(52),SCORE(2)
230 FOR I=1 TO 52
240 RANDOMIZE
250 R=INT(RND*I)+1
260 DECK(I)=DECK(R)
270 DECK(R)=I-INT(I/13)*13+1
280 NEXT I
290 CALL CLEAR
300 FOR I=1 TO 13
310 FOR J=1 TO 4
320 C(I,J)=DECK(J*13-13+I)
330 CALL HCHAR(J+J+3,I+I+2,128)
340 NEXT J
350 NEXT I
360 FOR I=1 TO 13
370 CALL HCHAR(3,I+I+2,I+64)
380 NEXT I
390 FOR I=1 TO 4
400 CALL HCHAR(I+I+3,2,I+48)
410 NEXT I
420 PLAYER=1
430 M$="PLAYER #"
440 CALL HCHAR(14,2,32,250)
450 ROW=14
460 COL=2
470 GOSUB 990
480 CALL HCHAR(14,11,PLAYER+48)
490 M$="ENTER FIRST SELECTION: "
500 ROW=16
510 GOSUB 990
520 GOSUB 900
530 X1=X
540 Y1=Y
550 IF C(X1,Y1)<>0 THEN 590
560 CALL HCHAR(ROW,25,32,5)
570 GOSUB 1030
580 GOTO 490
590 CALL HCHAR(Y1+Y1+3,X1+X1+2,C(X1,Y1)+64)
600 M$="AND  SECOND SELECTION:"
610 ROW=17
620 GOSUB 990
630 GOSUB 900
640 X2=X
650 Y2=Y
660 IF (X2=X1)*(Y2=Y1)THEN 630
670 IF C(X2,Y2)<>0 THEN 710
680 CALL HCHAR(ROW,25,32,5)
690 GOSUB 1030
700 GOTO 600
710 CALL HCHAR(Y2+Y2+3,X2+X2+2,C(X2,Y2)+64)
720 FOR T=1 TO 500
730 NEXT T
740 IF C(X1,Y1)<>C(X2,Y2)THEN 860
750 CALL HCHAR(15,1,32,200)
760 SCORE(PLAYER)=SCORE(PLAYER)+1
770 IF SCORE(1)+SCORE(2)=26 THEN 1100
780 C(X1,Y1)=0
790 C(X2,Y2)=0
800 FOR S=1 TO 10
810 CALL SOUND(100,S*110,0)
820 NEXT S
830 CALL HCHAR(Y1+Y1+3,X1+X1+2,32)
840 CALL HCHAR(Y2+Y2+3,X2+X2+2,32)
850 GOTO 490
860 PLAYER=3-PLAYER
870 CALL HCHAR(Y1+Y1+3,X1+X1+2,128)
880 CALL HCHAR(Y2+Y2+3,X2+X2+2,128)
890 GOTO 430
900 CALL KEY(3,KEY,STATUS)
910 IF (STATUS<>1)+(KEY<65)+(KEY>78)THEN 900
920 CALL HCHAR(ROW,25,KEY)
930 X=KEY-64
940 CALL KEY(3,KEY,STATUS)
950 IF (STATUS<>1)+(KEY<49)+(KEY>52)THEN 940
960 CALL HCHAR(ROW,27,KEY)
970 Y=KEY-48
980 RETURN
990 FOR I=1 TO LEN(M$)
1000 CALL HCHAR(ROW,COL+I,ASC(SEG$(M$,I,1)))
1010 NEXT I
1020 RETURN
1030 M$="SORRY, THAT CARD IS TAKEN"
1040 ROW=18
1050 GOSUB 990
1060 FOR T=1 TO 500
1070 NEXT T
1080 CALL HCHAR(18,1,32,30)
1090 RETURN
1100 CALL CLEAR
1110 PRINT "THE FINAL SCORE IS:": : :
1120 PRINT "PLAYER #1 -->";SCORE(1)
1130 PRINT : :"PLAYER #2 -->";SCORE(2)
1140 WINNER=1
1150 IF SCORE(1)>SCORE(2)THEN 1170
1160 WINNER=2
1170 PRINT : :"PLAYER #";STR$(WINNER);" WINS."
1180 END
