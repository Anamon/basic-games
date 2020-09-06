5 RANDOMIZE VAL(RIGHT$(TIME$, 2)): DIM H(99), Z(8)
6 WIDTH 40
10 REM Knightsbridge
20 GOSUB 760: REM Initialise
30 GOSUB 490: REM Print board
40 IF HU = 5 OR CO = 5 THEN 680: REM End of game
50 GOSUB 300: REM Computer moves
60 GOSUB 490: REM Print board
70 IF HU = 5 OR CO = 5 THEN 680: REM End of game
80 GOSUB 110: REM Player moves
90 GOTO 30
100 REM ********************************
110 REM Player moves
120 Q = 0
130 M = INT(RND * 66) + 11
140 Q = Q + 1
150 IF Q = 500 THEN 680
160 IF H(M) <> 72 THEN 130
170 PRINT "You must move the piece on"; M
180 INPUT N
190 IF N = 99 THEN Q = 500: GOTO 680
200 REM *** Check if move legal ***
210 P = 0
220 CT = 1
230 IF M + Z(CT) = N THEN P = 1
240 IF CT < 8 THEN CT = CT + 1: GOTO 230
250 IF P = 0 THEN PRINT "Illegal move": GOTO 180
260 IF H(N) = 67 THEN HU = HU + 1: PRINT "Well played!": FOR R = 1 TO 500: NEXT R
270 H(M) = 46: H(N) = 72
280 RETURN
290 REM ********************************
300 REM Computer
310 Q1 = 0
320 Q1 = Q1 + 1
330 K = INT(RND * 66) + 11
340 IF Q1 = 500 THEN 680
350 IF H(K) <> 67 THEN 320
360 PRINT "I have to move the piece on"; K
370 W = 1
380 IF K + Z(W) < 11 OR K + Z(W) > 77 THEN 400
390 IF H(K + Z(W)) = 72 THEN PRINT "Gotcha!!": CO = CO + 1: FOR P = 1 TO 200: NEXT P: GOTO 450
400 IF W < 8 THEN W = W + 1: GOTO 380
410 W = 1
420 IF (K + Z(W) < 11 OR K + Z(W) > 77) AND W < 8 THEN W = W + 1: GOTO 420
430 IF H(K + Z(W)) <> 46 AND W < 8 THEN W = W + 1: GOTO 430
440 IF W = 8 AND H(K + Z(W)) <> 46 THEN Q1 = 500: GOTO 680
450 X = K: Y = K + Z(W)
460 H(X) = 46: H(Y) = 67
470 RETURN
480 REM ********************************
490 REM Print board
500 CLS: PRINT: PRINT: PRINT
510 PRINT TAB(8); "My score is"; CO
520 PRINT TAB(8); "and yours is"; HU
530 PRINT
540 PRINT TAB(8); "1 2 3 4 5 6 7"
550 PRINT TAB(8); "-------------"
560 FOR M = 70 TO 10 STEP -10
570 PRINT TAB(5); M / 10;
580 FOR N = 1 TO 7
590 PRINT CHR$(H(M + N)); " ";
600 NEXT N
610 PRINT M / 10
620 NEXT M
630 PRINT TAB(8); "-------------"
640 PRINT TAB(8); "1 2 3 4 5 6 7"
650 PRINT
660 RETURN
670 REM ********************************
680 REM End of game
690 GOSUB 490
700 IF HU = 5 THEN PRINT "You have beaten me, human"
710 IF CO = 5 THEN PRINT "This victory is the first": PRINT "step in our plan to take": PRINT "over the entire earth!"
720 IF Q = 500 THEN PRINT "I accept your wish to concede"
730 IF Q1 = 500 THEN PRINT "I concede to a Master"
740 END
750 REM ********************************
760 REM Initialise
770 CLS: PRINT "Please stand by...human"
790 X = 0: Q1 = O: Q = 0
810 HU = 0: CO = 0: REM Scores
820 FOR A = 1 TO 99
830 IF A > 77 OR A = 70 OR A = 60 OR A = 68 OR A = 69 OR A = 50 OR A = 59 OR A = 40 OR A = 48 OR A = 49 THEN 880
840 IF A = 30 OR A = 38 OR A = 39 OR A = 20 OR A = 28 OR A = 29 OR A = 18 OR A = 19 OR A < 11 THEN 880
850 H(A) = 46
860 IF A > 70 AND A < 78 THEN H(A) = 67
870 IF A > 10 AND A < 18 THEN H(A) = 72
880 NEXT A
890 FOR A = 1 TO 8: READ Z(A): NEXT A
900 DATA -8,-21,-12,-19,19,12,21,8
910 RETURN

