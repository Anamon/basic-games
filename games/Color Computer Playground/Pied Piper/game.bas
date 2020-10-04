
50 REM *** PIED PIPER
60 CLS
62 PRINT@35,"***   THE PIED PIPER   ***"
63 FOR PAUSE=1 TO 2000:NEXT PAUSE
64 CLEAR 500
65 DIM KEY(50)
70 DIM COMBO(50)
80 HUE(1)=4:HUE(2)=1:HUE(3)=3:HUE(4)=2:
90 PICH(1)=5:PICH(2)=133:PICH(3)=197:PICH(4)=229
95 MAX=1
100 OTAL=MAX
105 CLS0
107 GOSUB 800
110 COMBO(OTAL)=RND(4)
120 FOR PY=1 TO OTAL
130 N=PY:GOSUB 600s REM * PLAY/DISPLAY
132 FOR T=1 TO 800:NEXT T
135 NEXT PY
137 CLS0
140 PRINT@491,"YOUR TURN";
142 GOSUB 800
145 FOR TRY=1 TO OTAL
160 A$=INKEY$:IF A$="" THEN 160
162 IF ASC(A$) <49 OR ASC(A$) >52 THEN 160
164 KEY(TRY)=VAL(A$)
175 IF KEY(TRY) <> COMBO(TRY) THEN CLS:GOSUB 2010:GOTO 230
177 N=TRY:GOSUB 600
200 NEXT TRY
205 FOR PAUSE=1 TO 600:NEXT
220 CLS:GOSUB 1010
222 GOTO 262
230 REM * PLAY AGAIN
235 PRINT@485,"AGAIN? (PRESS ENTER)";
237 A$=INKEY$:IF A$="" THEN 237
240 IF ASC(A$)=13 THEN MAX=1:GOTO 100
260 CLS:END
262 IFMAX<=50 THEN MAX=MAX+1:GOTO 100
264 CLS:END
600 REM *** COLOR AND SOUND
602 PRINT@392,CHR$(191);"=1";:PRINT@396,CHR$(143);"=2";
604 PRINT@400,CHR$(175);"=3";:PRINT@404,CHR$(159);"=4";
610 P=N:S=-2
615 FORL=1 TO P
620 S=S+3
625 IF L=11 THEN S=S+66
630 IF L=21 THEN S=S+66
640 IF L=31 THEN S=S+66
650 IF L=41 THEN S=S+66
660 NEXT L
670 TN=COMBO(N):TS=HUE(TN)
672 C=128+16*(TS-1)+15
680 PRINT@S,CHR$(C);:PRINT@S+1,CHR$(C);
690 PRINT@S+32,CHR$(C);:PRINT@S+33,CHR$(C);
700 TN=COMBO(N):TS=PICH(TN)
710 SOUND TS,8
790 RETURN
800 REM *** COLOR CODE
810 PRINT@392,CHR$(191);"=1";:PRINT@396,CHR$(143);"=2";
820 PRINT@400,CHR$(175);"=3";:PRINT@404,CHR$(159);"=4";
830 RETURN
1000 REM ***HAPPY FACE***
1010 FOR A=0 TO 2
1015 PRINT @A*32+365,CHR$(128);
1020 PRINT CHR$(128);CHR$(128);
1025 PRINT CHR$(128);
1030 NEXT A
1050 REM MOUTH RED
1055 SET(27,26,4):SET(28,27,4)
1060 SET(29,27,4):SET(30,27,4)
1065 SET(31,27,4):SET(32,26,4)
1070 REM NOSE ORANGE
1075 SET(29,25,8)
1110 SET(28,23,3)
1140 SET(31,23,3)
1200 PRINT@492,"RIGHT!";
1260 FOR W=180 TO 240 STEP 8
1270 SOUND W,1
1280 NEXT W
1290 FOR A=1 TO 900:NEXT A
1300 FOR A=1 TO 4:PRINT @(333+32*A)," ":NEXT A:PRINT @492,"      ";
1350 RETURN
2000 REM ***SAD FACE***
2010 FOR A=0 TO 2
2020 PRINT @A*32+365,CHR$(128);
2025 PRINT CHR$(128);CHR$(128);
2030 PRINT CHR$(128);
2035 NEXT A
2050 REM MOUTH RED
2055 SET(28,26,4):SET(29,25,4)
2070 SET(30,25,4):SET(31,26,4)
2075 SET(27,27,4):SET(32,27,4)
2105 REM EYES BLUE
2110 SET(28,23,3)
2140 SET(31,23,3)
2150 PRINT@486, "SORRY ... TRY AGAIN";
2160 REM SAD SOUND
2170 SOUND 32,8
2180 SOUND 16,16
2220 FOR A=1 TO 500: NEXT A
2230 FOR A=1 TO 5
2235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                   ";
2250 RETURN
