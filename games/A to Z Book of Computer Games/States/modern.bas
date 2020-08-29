5 CLS: COLOR 12
10 REM  "STATES"
15 PRINT TAB(37); "States": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 DIM S$(60), P1$(10), P2$(10)
50 DIM C(50), X(2)
60 COLOR 10: PRINT "Do you want instructions (Y/N)";
70 INPUT Q$: COLOR 15
80 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 100
90 GOSUB 1000
100 GOSUB 2000
110 GOSUB 3000
120 PRINT
130 IF H$ <> " " THEN 150
140 GOSUB 4000
150 IF P = 1 THEN 200
160 GOSUB 5000
170 LET P = 1
180 IF I = 10 THEN 230
190 GOTO 130
200 GOSUB 5000
210 LET P = 2
220 GOTO 180
230 COLOR 10: PRINT: PRINT "Another game (Y/N)";
240 INPUT Q$: COLOR 15
250 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 280
260 PRINT: PRINT "Goodbye, "; P1$; " and "; P2$; "."
270 END
280 COLOR 10: PRINT "Same players (Y/N)";
290 INPUT Q$: COLOR 15
300 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 110
310 GOTO 100
1000 PRINT: COLOR 14
1010 PRINT "I know all 50 states by their 2-letter abbrevations.  I'll pick one and give"
1020 PRINT "you a clue.  (The clues can be ambiguous!)  You take turns trying to guess the"
1030 PRINT "state.  The first player to 'own' ten states wins."
1040 PRINT
1070 PRINT "For a list of the states, type 'ALL'."
1080 PRINT "To end the game, type 'END'."
1120 PRINT: COLOR 15
1160 RETURN
1999 REM  "INTRODUCTIONS"
2000 LET M1$ = "Player #"
2010 LET M2$ = ", what is your name"
2020 COLOR 10: PRINT M1$; "1"; M2$;
2030 GOSUB 7000
2032 LET P1$ = Q$
2034 IF Q$ = " " THEN 2020
2040 COLOR 10: PRINT M1$; "2"; M2$;
2050 GOSUB 7000
2052 LET P2$ = Q$
2054 IF Q$ = " " THEN 2040
2060 IF P1$ < "A" THEN 2090
2070 IF P2$ < "A" THEN 2090
2080 IF P1$ <> P2$ THEN 2110
2090 PRINT "PLEASE TRY AGAIN."
2100 GOTO 2020
2110 LET P = INT(10 * RND(1))
2120 IF P < 5 THEN 2150
2130 LET P = 2
2140 RETURN
2150 LET P = 1
2160 RETURN
2999 REM  "LOAD STATES"
3000 DATA AL,5,AK,7,AZ,4,AR,8,CA,1
3010 DATA CO,9,CT,2,DE,2,FL,5,GA,2
3020 DATA HI,7,ID,3,IL,6,IN,6,IA,8
3030 DATA KS,9,KY,8,LA,5,ME,2,MD,2
3040 DATA MA,2,MI,6,MN,3,MS,5,MO,8
3050 DATA MT,3,NE,9,NV,9,NH,2,NJ,2
3060 DATA NM,4,NY,2,NC,2,ND,3,OH,6
3070 DATA OK,9,OR,1,PA,6,RI,2,SC,2
3080 DATA SD,9,TN,8,TX,4,UT,9,VT,3
3090 DATA VA,2,WA,1,WV,10,WI,6,WY,9
3100 DATA Pacific,Atlantic,Canada
3110 DATA Mexico,Gulf,Lakes,Remote
3120 DATA River,Western,Charleston
3200 RESTORE
3210 FOR I = 1 TO 50
3220 READ S$(I), C(I)
3230 NEXT I
3240 FOR I = 51 TO 60
3250 READ S$(I)
3260 NEXT I
3270 FOR I = 1 TO 10
3280 LET P1$(I) = " "
3290 LET P2$(I) = " "
3300 NEXT I
3310 LET H$ = " "
3315 LET I = 0
3320 RETURN
3999 REM  "GET A STATE"
4000 LET H = INT(100 * RND(1)) + 1
4010 IF H <= 50 THEN 4040
4020 LET H = INT(H / 2)
4030 IF H < 1 THEN 4000
4040 LET H$ = S$(H)
4050 IF C(H) < 0 THEN 4000
4060 LET X = C(H)
4070 LET C$ = S$(X + 50)
4080 PRINT: PRINT "Clue: ";: COLOR 11: PRINT C$: COLOR 15
4090 RETURN
4999 REM  "PLAYER INPUT"
5000 IF P = 1 THEN 5030
5010 COLOR 10: PRINT P2$; ", your guess";
5020 GOTO 5040
5030 COLOR 10: PRINT P1$; ", your guess";
5040 GOSUB 7000
5050 IF Q$ = " " THEN 5000
5055 A$ = MID$(Q$, 1, 1): IF A$ >= "a" AND A$ <= "z" THEN A$ = CHR$(ASC(A$) - 32)
5056 B$ = MID$(Q$, 2, 1): IF B$ >= "a" AND B$ <= "z" THEN B$ = CHR$(ASC(B$) - 32)
5057 Q$ = A$ + B$
5060 IF Q$ <> H$ THEN 5200
5070 LET C(H) = 0 - P
5080 FOR I = 1 TO 10
5090 IF P = 1 THEN 5170
5100 IF P2$(I) <> " " THEN 5140
5110 LET P2$(I) = H$
5120 PRINT "Yes!  You now own"; I; "state(s)."
5124 LET H$ = " "
5125 IF I = 10 THEN 5150
5130 RETURN
5140 NEXT I
5150 PRINT "And you win!"
5160 RETURN
5170 IF P1$(I) <> " " THEN 5140
5180 LET P1$(I) = H$
5190 GOTO 5120
5200 GOSUB 6000
5210 IF Q$ = " " THEN 5000
5220 PRINT "Nope, sorry."
5230 RETURN
5999 REM  "QUALIFY GUESS"
6000 FOR I = 1 TO 50
6010 IF Q$ = S$(I) THEN 6030
6020 NEXT I
6025 GOTO 6040
6030 IF C(I) < 0 THEN 6070
6035 GOTO 6055
6040 PRINT "Invalid entry."
6050 LET Q$ = " "
6055 LET I = 0
6060 RETURN
6070 PRINT "That state is already owned!"
6080 GOTO 6050
6999 REM  "ALL INPUTS"
7000 LET Q$ = " "
7010 INPUT Q$: COLOR 15
7020 IF Q$ <> "ALL" AND Q$ <> "all" THEN 7060
7030 GOSUB 8000
7040 COLOR 10: GOTO 7000
7050 RETURN
7060 IF Q$ <> "END" AND Q$ <> "end" THEN 7050
7070 PRINT "So long, "; P1$; " and "; P2$; "!"
7080 END
7999 REM  "PRINT ALL"
8000 PRINT: LET X(1) = 0
8010 LET X(2) = 0
8015 LET J = 0
8020 FOR I = 1 TO 50
8030 IF C(I) > 0 THEN 8050
8040 LET X(ABS(C(I))) = X(ABS(C(I))) + 1
8045 GOTO 8060
8050 COLOR 13: PRINT S$(I); " ";: COLOR 15
8052 LET J = J + 1
8054 IF J < 11 THEN 8060
8056 PRINT
8058 LET J = 0
8060 NEXT I
8070 IF X(1) = 0 THEN 8120
8074 PRINT: PRINT
8080 PRINT P1$; " has"; X(1); "state(s): "
8090 FOR I = 1 TO X(1)
8100 COLOR 13: PRINT P1$(I); " ";: COLOR 15
8110 NEXT I
8120 IF X(2) = 0 THEN 8170
8124 PRINT
8126 PRINT
8130 PRINT P2$; " has"; X(2); "state(s): "
8140 FOR I = 1 TO X(2)
8150 COLOR 13: PRINT P2$(I); " ";: COLOR 15
8160 NEXT I
8170 PRINT: PRINT
8180 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN
