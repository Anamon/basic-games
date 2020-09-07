5 DIM A(15, 15)
10 REM STRONGHOLD OF THE DWARVEN LORD
20 GOSUB 640
30 GOSUB 480
40 REM *********************************
50 M = M + 1
60 CLS: PRINT: PRINT
70 PRINT "Step number"; M
80 PRINT
90 COLOR 15: PRINT "North: ";: COLOR 13
100 IF A(D + 1, E) = S THEN PRINT "OPEN"
110 IF A(D + 1, E) = X THEN PRINT "WALL"
120 COLOR 15: PRINT "South: ";: COLOR 13
130 IF A(D - 1, E) = S THEN PRINT "OPEN"
140 IF A(D - 1, E) = X THEN PRINT "WALL"
150 COLOR 15: PRINT " East: ";: COLOR 13
160 IF A(D, E + 1) = S THEN PRINT "OPEN"
170 IF A(D, E + 1) = X THEN PRINT "WALL"
180 COLOR 15: PRINT " West: ";: COLOR 13
190 IF A(D, E - 1) = S THEN PRINT "OPEN"
200 IF A(D, E - 1) = X THEN PRINT "WALL"
210 PRINT: COLOR 15
220 COLOR 11: PRINT "The dwarven source beam reads";
230 PRINT 100 * ABS(Z - D) + 10 * ABS(Y - E): COLOR 15
240 REM ********************************
250 PRINT: PRINT: PRINT
260 PRINT "Which direction do you want to move?"
280 PRINT "N - north, S - south, E - east, W - west, H - help"
300 PRINT: COLOR 10: INPUT "Your move"; A$: COLOR 15
305 IF A$ >= "a" AND A$ <= "z" THEN A$ = CHR$(ASC(A$) - 32)
310 IF A$ = "N" AND A(D + 1, E) = X THEN 300
320 IF A$ = "S" AND A(D - 1, E) = X THEN 300
330 IF A$ = "E" AND A(D, E + 1) = X THEN 300
340 IF A$ = "W" AND A(D, E - 1) = X THEN 300
350 IF A$ = "H" THEN GOSUB 480
360 IF A$ = "N" THEN D = D + 1
370 IF A$ = "S" THEN D = D - 1
380 IF A$ = "E" THEN E = E + 1
390 IF A$ = "W" THEN E = E - 1
400 IF Z = D AND Y = E THEN 430
410 GOTO 50
420 REM ********************************
430 PRINT: PRINT "You found the Dwarven riches"
440 PRINT "in just"; M; "steps!"
450 GOSUB 500
460 END
470 REM ********************************
480 REM help
490 CLS
500 PRINT
510 COLOR 13: PRINT TAB(37); "North": COLOR 15
520 FOR B = 15 TO 1 STEP -1: PRINT TAB(25);
530 FOR c = 1 TO 15
540 IF A(B, c) = X THEN PRINT CHR$(178); CHR$(178);
550 IF B = D AND c = E THEN PRINT "**";: GOTO 570
560 IF A(B, c) = S THEN PRINT "  ";
570 NEXT c: PRINT: NEXT B
580 COLOR 13: PRINT TAB(37); "South": COLOR 15
590 M = M + 15
600 XX = 2.0: GOSUB 1000
610 CLS: A(D, E) = S
620 RETURN
630 REM ********************************
640 CLS
650 N = 1: PRINT "Press any key"
660 N = N + 1: IF INKEY$ = "" THEN 660
670 RANDOMIZE N
680 CLS
700 B = INT(RND * 3) + 1
710 Z = 14: Y = 14
720 IF B = 2 THEN Y = 2
730 IF B = 3 THEN Z = 2
740 X = 1: S = 2
750 FOR B = 1 TO 15: FOR c = 1 TO 15
760 A(B, c) = X: IF RND > .8 THEN A(B, c) = S
770 IF c < 2 OR c > 14 OR B < 2 OR B > 14 THEN A(B, c) = X
780 NEXT c: NEXT B
790 D = 2: E = 2
800 FOR F = 1 TO 68
810 READ B: READ c
820 A(B, c) = S
830 NEXT F
840 M = -15
850 RETURN
860 REM ********************************
870 DATA 2,2,2,3,2,4,2,5,2,6,2,7
880 DATA 3,7,4,7,5,7,5,6,5,5,5,4,5,3,6,3
890 DATA 7,3,7,4,7,5,7,6,7,7,7,8,7,9,9,8
900 DATA 9,9,10,8,10,7,10,6,10,5,10,4,8,8
910 DATA 10,3,11,3,12,3,13,3,14,3,14,2,7,10
920 DATA 6,10,5,10,4,10,3,10,2,10,2,11,2,12
930 DATA 2,13,2,14,6,11,6,12,6,13,6,14,7,12
940 DATA 14,12,8,12,8,14,9,12,9,13,9,14,10,12
950 DATA 11,9,11,10,11,11,11,12,12,9,13,9,13,10
960 DATA 13,11,13,12,13,13,13,14,14,14
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

