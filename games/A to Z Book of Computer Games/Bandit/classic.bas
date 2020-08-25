10 REM  "BANDIT"
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
35 DIM R(3)
40 PRINT "WANT A DESCRIPTION (Y OR N)";
50 INPUT Q$
60 IF Q$ = "N" THEN 120
70 IF Q$ = "Y" THEN 110
80 PRINT "PLEASE ANSWER: Y FOR YES"
90 PRINT "  OR N FOR NO..."
100 GOTO 40
110 GOSUB 1000
120 LET t = 0
130 PRINT
140 PRINT "BET";
150 INPUT Q
160 IF Q > 0 THEN 190
170 PRINT "YOU HAVE TO BET TO PLAY!"
180 GOTO 140
190 IF Q < 201 THEN 220
200 PRINT "BE REASONABLE NOW!"
210 GOTO 130
220 IF Q > .99 THEN 240
230 PRINT "CHEAPSKATE"
240 GOSUB 3000
250 GOSUB 4000
260 LET t = t + Q
270 IF t < 0 THEN 340
280 IF t > 0 THEN 370
290 PRINT "READY TO QUIT (Y OR N)";
300 INPUT Q$
310 IF Q$ = "N" THEN 130
320 PRINT "*** SO LONG, CHICKEN ***"
330 END
340 PRINT "YOU OWE ME $"; ABS(t)
350 IF ABS(t) < 200 THEN 130
360 GOTO 290
370 PRINT "YOU'VE WON:  $"; t
380 GOTO 350
1000 PRINT "THIS GAME SIMULATES A"
1010 PRINT "  ONE-ARMED BANDIT (THAT'S"
1020 PRINT "  A SLOT MACHINE, YOU KNOW)."
1030 PRINT "BET ON EACH PULL - UP TO $200"
1040 PRINT "3 JACKPOTS PAYS 20 X THE BET"
1050 PRINT "3 BARS PAYS 10 X THE BET"
1060 PRINT "3 OF ANYTHING ELSE PAYS 5 TIMES"
1070 PRINT "2 OF THE OTHERS PAYS DOUBLE"
1080 RETURN
3000 REM  "FETCH THE FRUITS"
3010 DATA JACKPOT,BELL,PLUM
3020 DATA ORANGE,LEMON,GRAPE
3030 DATA CHERRY,APPLE,MELON
3040 DATA BAR
3050 FOR I = 1 TO 3
3060 LET R = INT(10 * RND(1)) + 1
3070 LET R(I) = R
3080 FOR J = 1 TO R
3090 READ X$
3100 NEXT J
3110 RESTORE
3120 PRINT TAB(I * 10 - 10); X$;
3130 NEXT I
3140 PRINT
3150 RETURN
4000 REM  "FIGURE WIN AMOUNT"
4010 IF R(1) + R(2) + R(3) = 3 THEN 4100
4020 IF R(1) + R(2) + R(3) = 30 THEN 4080
4030 FOR I = 1 TO 2
4040 IF R(3) <> R(I) THEN 4120
4050 NEXT I
4060 LET Q = 5 * Q
4070 RETURN
4080 LET Q = 10 * Q
4090 RETURN
4100 LET Q = 20 * Q
4110 RETURN
4120 IF R(3) = R(1) THEN 4170
4130 IF R(3) = R(2) THEN 4170
4140 IF R(1) = R(2) THEN 4170
4150 LET Q = 0 - Q
4160 RETURN
4170 LET Q = Q * 2
4180 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN
