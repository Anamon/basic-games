
50 REM *** SCRAMBLED SPELLING BEE
52 DIMA$(10)
55 CLS
62 PRINT@100,"***  SPELLING BEE  ***"
66 FORPAUSE=1TO1000:NEXTPAUSE
81 S$="9753186420908172635439281706456758493021"
100 FORSPELL=1TO10
110 CLS:PRINT@260,"WORD # ";SPELL;:INPUT A$(SPELL)
130 NEXT SPELL
135 M=RND(4)-1
140 FORSPELL = 1TO 10
145 S1=VAL(MID$(S$,M*10+SPELL,1))+1
160 CLS:PRINT@260,"WORD:  ";A$(S1)
170 FOR PAUSE=1TO800:NEXT PAUSE
180 CLS:PRINT@260,"WORD ";:INPUTB$
190 IF A$(S1)=B$THENGOSUB1010:GOTO210
200 GOSUB2010:GOTO160
210 NEXT SPELL
220 CLS:PRINT@100,"SAME WORDS AGAIN";:INPUT A$
230 IF LEFT$(A$,1)= "Y" THEN 135
240 IF LEFT$(A$,1)<>"N" THEN 220
250 CLS:END
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
2235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                  ";
2250 RETURN
