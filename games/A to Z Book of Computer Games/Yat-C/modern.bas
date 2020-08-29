5 CLS: COLOR 12
10 REM  "YAT-C"
15 PRINT TAB(37); "Yat-C": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 DIM D(5), F(6)
50 COLOR 10: PRINT "Want the description (Y/N)";
60 INPUT Q$: COLOR 15
70 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 140
80 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 130
90 PRINT "Answer with 'Y' or 'N'."
110 PRINT
120 GOTO 50
130 GOSUB 1000
140 PRINT
150 LET S = 0
160 LET P = 2
170 LET S1 = 0
180 LET S2 = 0
190 FOR I = 1 TO 5
200 LET D(I) = 0
210 NEXT I
300 GOSUB 2000
310 IF S1 > 500 THEN 700
320 IF S2 > 500 THEN 700
330 GOSUB 3100
400 GOSUB 3000
500 GOSUB 8000
600 GOTO 190
700 GOSUB 3140
705 COLOR 10: PRINT "Wanna play again (Y/N)";
710 INPUT Q$: COLOR 15
720 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 140
730 PRINT: PRINT "Goodbye, then..."
740 END
999 REM  "DESCRIPTION"
1000 COLOR 14: PRINT
1010 PRINT "This is a cool two-player game.  Each turn is 3 rolls of 5 dice like this:"
1030 COLOR 13: PRINT: GOSUB 2000
1040 GOSUB 3200
1050 COLOR 14: PRINT
1060 PRINT "After the first roll, you may:"
1065 PRINT
1070 COLOR 11: PRINT "    H - ";: COLOR 14: PRINT "Hold one number and roll the other four."
1080 COLOR 11: PRINT "    R - ";: COLOR 14: PRINT "Roll any one number and hold the other four."
1090 COLOR 11: PRINT "    P - ";: COLOR 14: PRINT "Keep what you have (pass)."
1100 COLOR 14: PRINT
1120 PRINT "Scoring:"
1125 COLOR 11: PRINT , "Straight", ,: COLOR 13: PRINT "200 points"
1130 COLOR 11: PRINT , "Yat-C (5 of a kind)",: COLOR 13: PRINT "5x dice value"
1140 COLOR 11: PRINT , "Yat-B (4 of a kind)",: COLOR 13: PRINT "4x dice value"
1150 COLOR 11: PRINT , "Yat-A (3 of a kind)",: COLOR 13: PRINT "3x dice value"
1152 COLOR 11: PRINT , "Yat   (2 of a kind)",: COLOR 13: PRINT "2x dice value"
1154 COLOR 11: PRINT , "Full House", ,: COLOR 13: PRINT "(2x + 3x) dice value"
1160 COLOR 11: PRINT , "Natural (mixed bag)",: COLOR 13: PRINT "value of the dice only"
1170 COLOR 15: PRINT
1180 RETURN
2000 REM  "ROLL THE DICE"
2010 FOR I = 1 TO 5
2020 LET R = D(I)
2030 IF D(I) <> 0 THEN 2050
2040 GOSUB 2100
2050 LET D(I) = R
2060 NEXT I
2070 RETURN
2099 REM  "A RANDOM NUMBER"
2100 LET R = INT(10 * RND(1))
2110 IF R < 1 THEN 2100
2120 IF R > 6 THEN 2100
2130 RETURN
3000 REM  "SHOW 'N' TELL"
3020 GOSUB 3200
3030 GOSUB 3300
3035 IF Q$ = "P" OR Q$ = "p" THEN 3090
3040 GOSUB 3200
3050 GOSUB 3300
3055 IF Q$ = "P" OR Q$ = "p" THEN 3090
3060 GOSUB 3200
3070 GOSUB 3300
3075 IF Q$ = "P" OR Q$ = "p" THEN 3090
3080 GOSUB 3200
3090 RETURN
3099 REM  "PLAYER CONTROL"
3100 IF P = 1 THEN 3125
3105 LET P = 1
3110 LET S2 = S2 + S
3115 IF S = 0 THEN 3150
3120 GOTO 3140
3125 LET P = 2
3130 LET S1 = S1 + S
3140 PRINT
3145 COLOR 12: PRINT "Scores:  #1:"; S1; "  #2:"; S2: COLOR 15
3150 PRINT
3155 PRINT "Player"; P
3160 RETURN
3199 REM  "PRINT DICE"
3200 COLOR 13: PRINT "  ";
3210 FOR I = 1 TO 5
3220 PRINT D(I);
3230 NEXT I: PRINT: COLOR 15
3240 RETURN
3299 REM  "INPUT #"
3300 COLOR 10: PRINT "Number (1-6)";
3310 LET Q = 0
3320 INPUT Q: COLOR 15
3330 IF Q < 0 THEN 3370
3340 IF Q > 6 THEN 3370
3350 GOSUB 3400
3355 IF Q = 0 THEN 3370
3360 RETURN
3370 PRINT "Huh?"
3380 GOTO 3310
3399 REM  "HOLD, ROLL, OR PASS"
3400 PRINT "Hold, roll, or pass (H/R/P)";
3405 LET Q$ = " "
3410 INPUT Q$
3420 IF Q$ = "H" OR Q$ = "h" THEN 3470
3430 IF Q$ = "R" OR Q$ = "r" THEN 3530
3440 IF Q$ = "P" OR Q$ = "p" THEN 3525
3450 PRINT "Oops -- (H)it, (R)oll, or (P)ass."
3460 GOTO 3405
3470 GOSUB 3700
3475 IF Q = 0 THEN 3520
3480 FOR I = 1 TO 5
3490 LET D(I) = 0
3500 NEXT I
3510 LET D(Q1) = Q
3520 GOSUB 2000
3525 RETURN
3530 GOSUB 3700
3535 IF Q = 0 THEN 3560
3540 GOSUB 2100
3550 LET D(Q1) = R
3560 RETURN
3699 REM  "FIND THE ONE"
3700 FOR Q1 = 1 TO 5
3710 IF D(Q1) = Q THEN 3740
3720 NEXT Q1
3730 LET Q = 0
3740 RETURN
7999 REM  "ANALYZE & SCORE"
8000 REM
8010 GOSUB 8100
8020 GOSUB 8200
8030 GOSUB 8300
8040 GOSUB 8400
8050 PRINT "This round scores a "; S$; " for"; S; "points."
8099 REM  "CLEAR TABLE-F"
8100 FOR I = 1 TO 6
8110 LET F(I) = 0
8120 NEXT I
8130 RETURN
8199 REM  "FREQUENCY COUNTS"
8200 LET S = 0
8210 FOR I = 1 TO 5
8220 LET J = D(I)
8230 LET F(J) = F(J) + 1
8240 LET S = S + J
8250 NEXT I
8260 RETURN
8299 REM  "SCORE"
8300 LET S$ = "Natural"
8301 LET F = 0
8302 FOR I = 1 TO 6
8304 IF F(I) <> 2 THEN 8310
8305 IF S$ = "Yat" THEN 8310
8306 LET S$ = "Yat"
8308 LET S = S + 2 * S
8309 LET F = F + 1
8310 IF F(I) <> 3 THEN 8330
8315 LET S$ = "Yat-A"
8316 LET F = F + 1
8320 LET S = S + 3 * S
8330 IF F(I) <> 4 THEN 8350
8335 LET S$ = "Yat-B"
8340 LET S = S + 4 * S
8350 IF F(I) <> 5 THEN 8370
8355 LET S$ = "Yat-C"
8360 LET S = S + 5 * S
8370 NEXT I
8372 IF F < 2 THEN 8376
8374 LET S$ = "Full House"
8376 LET F = 0
8380 RETURN
8399 REM  "STRAIGHTS"
8400 IF F(1) = F(6) THEN 8490
8410 LET F = 0
8420 FOR I = 1 TO 6
8430 IF F(I) <> 0 THEN 8450
8440 LET F = F + 1
8450 NEXT I
8460 IF F <> 1 THEN 8490
8470 LET S$ = "Straight"
8480 LET S = 200
8490 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

