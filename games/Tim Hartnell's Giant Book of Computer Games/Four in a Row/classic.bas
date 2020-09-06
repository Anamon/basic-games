5 DEFINT A-Z: RANDOMIZE VAL(RIGHT$(TIME$, 2)): DIM A(109), M(30), P(6)
6 WIDTH 40
10 REM Four-in-a-row
20 GOSUB 1090: REM INITIALISE
30 GOSUB 860: REM PRINT BOARD
40 GOSUB 680: REM WIN CHECK
50 GOSUB 980: REM HUMAN MOVE
60 GOSUB 860: REM PRINT BOARD
70 GOSUB 680: REM WIN CHECK
80 GOSUB 110: REM COMPUTER MOVE
90 GOTO 30
100 REM *************
110 REM COMPUTER MOVE
120 PRINT: PRINT "Stand by for my move..."
130 B = 10
140 B = B + 1
150 IF A(B) = -9 THEN 180
160 IF A(B) = C THEN X = C: GOTO 210
170 IF A(B) = H THEN X = H: GOTO 210
180 IF B < 77 THEN 140
190 GOTO 480
200 REM **************************
210 REM FOUR IN ROW DANGER/CHANCE?
220 REM ACROSS
230 IF A(B + 1) = X AND A(B + 2) = X AND A(B + 3) = E AND A(B + 13) <> E THEN MOVE = B + 3: GOTO 650
240 IF A(B - 1) = X AND A(B - 2) = X AND A(B - 3) = E AND A(B + 7) <> E THEN MOVE = B - 3: GOTO 650
250 IF A(B + 1) = X AND A(B + 2) = X AND A(B - 1) = E AND A(B + 9) <> E THEN MOVE = B - 1: GOTO 650
260 IF A(B - 1) = X AND A(B + 2) = X AND A(B + 1) = E AND A(B + 11) <> E THEN MOVE = B + 1: GOTO 650
270 IF A(B + 1) = X AND A(B - 1) = X AND A(B + 2) = E AND A(B + 12) <> E THEN MOVE = B + 2: GOTO 650
280 IF A(B + 1) = X AND A(B - 1) = X AND A(B - 2) = E AND A(B + 8) <> E THEN MOVE = B - 2: GOTO 650
290 IF A(B - 1) = X AND A(B - 2) = X AND A(B + 1) = E AND A(B + 11) <> E THEN MOVE = B + 1: GOTO 650
300 REM DOWN
310 IF B > 20 THEN IF A(B - 10) = X AND A(B - 20) = X AND A(B + 10) = E AND A(B + 20) <> E THEN MOVE = B + 10: GOTO 650
320 REM DIAGONALS
330 IF A(B + 11) = X AND A(B + 22) = X AND A(B - 11) = E AND A(B - 1) <> E THEN MOVE = B - 11: GOTO 650
340 IF A(B + 9) = X AND A(B + 18) = X AND A(B - 9) = E AND A(B + 1) <> E THEN MOVE = B - 9: GOTO 650
350 REM *****************
360 REM MAKE/BLOCK THREE?
370 REM ACROSS
380 IF A(B + 1) = X AND A(B + 2) = E AND A(B + 12) <> E THEN MOVE = B + 2: GOTO 650
390 IF A(B + 1) = X AND A(B - 1) = E AND A(B + 9) <> E THEN MOVE = B - 1: GOTO 650
400 IF A(B - 1) = X AND A(B - 2) = E AND A(B + 8) <> E THEN MOVE = B - 2: GOTO 650
410 REM VERTICAL
420 IF A(B + 10) = X AND A(B - 10) = E AND A(B) <> E THEN MOVE = B - 10: GOTO 650
430 REM DIAGONAL
440 IF A(B + 9) = X AND A(B - 9) = E AND A(B + 1) <> E THEN MOVE = B - 9: GOTO 650
450 IF B > 11 THEN IF A(B + 11) = X AND A(B - 11) = E AND A(B - 1) <> E THEN MOVE = B - 11: GOTO 650
460 GOTO 180
470 REM ************
480 REM SINGLE MOVES
490 FOR N = 1 TO 3
500 M(N) = 0
510 NEXT N
520 COUNT = 0
530 FOR B = 11 TO 77
540 IF A(B) <> C AND A(B) <> H THEN 600
550 IF A(B + 1) = E AND A(B + 11) <> E THEN COUNT = COUNT + 1: M(COUNT) = B + 1
560 IF A(B - 1) = E AND A(B + 9) <> E THEN COUNT = COUNT + 1: M(COUNT) = B - 1
570 IF A(B - 10) = E AND A(B) <> E THEN COUNT = COUNT + 1: M(COUNT) = B - 10
580 IF A(B - 11) = E AND A(B - 1) <> E THEN COUNT = COUNT + 1: M(COUNT) = B - 11
590 IF A(B - 9) = E AND A(B + 1) <> E THEN COUNT = COUNT + 1: M(COUNT) = B - 9
600 NEXT B
610 IF COUNT <> 0 THEN 640
620 PRINT: PRINT "I think we should call it a draw"
630 PRINT: PRINT: PRINT: END
640 MOVE = M(INT(RND * COUNT) + 1)
650 A(MOVE) = C
660 RETURN
670 REM *********
680 REM WIN CHECK
690 X = H
700 B = 10
710 B = B + 1
720 IF A(B) <> X THEN 770
730 IF A(B + 1) = X AND A(B + 2) = X AND A(B + 3) = X THEN 800
740 IF B > 30 THEN IF A(B - 10) = X AND A(B - 20) = X AND A(B - 30) = X THEN 800
750 IF B > 33 THEN IF A(B - 11) = X AND A(B - 22) = X AND A(B - 33) = X THEN 800
760 IF B > 27 THEN IF A(B - 9) = X AND A(B - 18) = X AND A(B - 27) = X THEN 800
770 IF B < 77 THEN 710
780 IF X = H THEN X = C: GOTO 700
790 RETURN
800 REM WIN FOUND
810 PRINT: PRINT
820 IF X = H THEN PRINT "You've beaten me, human!"
830 IF X = C THEN PRINT "I've defeated you, human!"
840 PRINT: PRINT: PRINT: END
850 REM ***********
860 REM PRINT BOARD
870 CLS: PRINT: PRINT
880 FOR K = 10 TO 70 STEP 10
890 PRINT TAB(5);
900 FOR J = 1 TO 7
910 PRINT CHR$(A(K + J)); " ";
920 NEXT J
930 NEXT K
940 PRINT TAB(5); "1 2 3 4 5 6 7"
950 PRINT: PRINT
960 RETURN
970 REM **********
980 REM HUMAN MOVE
990 PRINT "Your move...": PRINT
1000 PRINT "Which column do you wish to"
1010 INPUT "move into"; J
1020 Z = J
1030 Z = Z + 10
1040 IF A(Z + 10) = E THEN 1030
1050 IF A(Z) = E THEN A(Z) = H: RETURN
1060 PRINT "You can't move there"
1070 GOTO 1000
1080 REM **********
1090 REM INITIALISE
1100 CLS
1140 E = ASC(".")
1150 H = ASC("H"): C = ASC("C")
1160 FOR B = 1 TO 109
1170 A(B) = E
1180 D = B - 10 * INT(B / 10)
1190 IF D = 0 OR D > 7 OR B < 11 OR B > 77 THEN A(B) = -9
1200 NEXT B
1210 RETURN

