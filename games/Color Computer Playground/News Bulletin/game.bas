
50 REM *** NEWS BULLETIN
60 CLS
65 PRINT@37,"*** NEWS BULLETIN! ***"
67 FOR PAUSE=1 TO 1000:NEXT PAUSE
70 CLEAR 500
80 DIM MUSIC(90)
90 LOW=48:HIGH=57:GOSUB 3010
92 LOW=65:HIGH=90:GOSUB 3010
93 READ MUSIC(32)
100 CLS
110 PRINT@224,"YOUR NEWS BULLETIN:":INPUT M$
115 IF M$="" THEN CLS:END
120 CLS:C=0
130 PRINT@2,"*** YOUR NEWS BULLETIN!! ***"
135 P=18
137 PRINT@0," "
138 PRINT@8,"*** BULLETIN ***"
140 Y=2
142 P=18
144 IF LEN(M$)<=C+18 THEN 150
146 IF MID$(M$,C+18,1)<>" " THEN GOSUB 3510
150 X=1
160 C=C+1
165 IF C<=LEN(M$) THEN 170
167 FOR PAUSE=1 TO 1000:NEXT PAUSE
168 GOTO 120
170 PRINT@Y*32+X+7,MID$(M$,C,1);
171 T=ASC(MID$(M$,C,1))
172 IF T=32 THEN 180
173 IF T>=48 AND T<=57 THEN 180
174 IF T>=65 AND T<=90 THEN 180
175 SOUND MUSIC(32),8
176 GOTO 190
180 SOUND MUSIC(ASC(MID$(M$,C,1))),4
190 FOR PAUSE=1 TO 60:NEXT PAUSE
210 X=X+1:IF X<=P THEN 160
250 Y=Y+1:IF Y<=11 THEN 142
260 CLS:GOTO 135
3000 REM *** LOAD MUSICAL TONES
3010 FOR I= LOW TO HIGH
3020 READ M
3030 MUSIC(I)=M
3040 NEXT I
3050 RETURN
3500 REM *** SHRINK LINE SUBROUTINE
3510 P=17
3520 IF MID$(M$,C+P,1)=" " THEN RETURN
3530 P=P-1:IF P=>5 THEN 3520
3550 RETURN
5000 DATA 89,99,108,117,125,133,140,147,153,159
5010 DATA 165,170,176,180,185,189,193,197,200,204
5020 DATA 207,210,213,216,218,221,223,225,227,229
5030 DATA 231,232,234,236,237,238,239
