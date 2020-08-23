2 PRINT TAB(33); "GOMOKO"
4 PRINT TAB(15); "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER
8 DIM A(19, 19)
10 PRINT "WELCOME TO THE ORIENTAL GAME OF GOMOKO."
20 PRINT: PRINT "THE GAME IS PLAYED ON AN N BY N GRID OF A SIZE"
30 PRINT "THAT YOU SPECIFY.  DURING YOUR PLAY, YOU MAY COVER ONE GRID"
40 PRINT "INTERSECTION WITH A MARKER. THE OBJECT OF THE GAME IS TO GET"
50 PRINT "5 ADJACENT MARKERS IN A ROW -- HORIZONTALLY, VERTICALLY, OR"
60 PRINT "DIAGONALLY.  ON THE BOARD DIAGRAM, YOUR MOVES ARE MARKED"
70 PRINT "WITH A '1' AND THE COMPUTER MOVES WITH A '2'."
80 PRINT: PRINT "THE COMPUTER DOES NOT KEEP TRACK OF WHO HAS WON."
90 PRINT "TO END THE GAME, TYPE -1,-1 FOR YOUR MOVE.": PRINT
110 PRINT "WHAT IS YOUR BOARD SIZE (MIN 7/ MAX 19)";: INPUT N
115 IF N > 6 THEN 117
116 GOTO 120
117 IF N < 20 THEN 210
120 PRINT "I SAID, THE MINIMUM IS 7, THE MAXIMUM IS 19.": GOTO 110
210 FOR I = 1 TO N: FOR J = 1 TO N: A(I, J) = 0: NEXT J: NEXT I
300 PRINT: PRINT "WE ALTERNATE MOVES.  YOU GO FIRST...": PRINT
310 PRINT "YOUR PLAY (I,J)";: INPUT I, J
315 PRINT
320 IF I = -1 THEN 980
330 X = I: Y = J: GOSUB 910: IF L = 1 THEN 410
340 PRINT "ILLEGAL MOVE.  TRY AGAIN...": GOTO 310
410 IF A(I, J) = 0 THEN 440
420 PRINT "SQUARE OCCUPIED.  TRY AGAIN...": GOTO 310
440 A(I, J) = 1
500 REM *** COMPUTER TRIES AN INTELLIGENT MOVE ***
510 FOR E = -1 TO 1: FOR F = -1 TO 1: IF E + F - E * F = 0 THEN 590
540 X = I + F: Y = J + F: GOSUB 910
570 IF L = 0 THEN 590
580 IF A(X, Y) = 1 THEN 710
590 NEXT F: NEXT E
600 REM *** COMPUTER TRIES A RANDOM MOVE ***
610 X = INT(N * RND(1) + 1): Y = INT(N * RND(1) + 1): GOSUB 910: IF L = 0 THEN 610
650 IF A(X, Y) <> 0 THEN 610
660 A(X, Y) = 2: GOSUB 810: GOTO 310
710 X = I - E: Y = J - F: GOSUB 910
750 IF L = 0 THEN 610
760 GOTO 650
800 REM *** PRINT THE BOARD ***
810 FOR I = 1 TO N: FOR J = 1 TO N: PRINT A(I, J);
840 NEXT J: PRINT: NEXT I: PRINT: RETURN
910 L = 1: IF X < 1 THEN 970
920 IF X > N THEN 970
930 IF Y < 1 THEN 970
940 IF Y > N THEN 970
950 RETURN
970 L = 0: RETURN
980 PRINT: PRINT "THANKS FOR THE GAME!!"
985 PRINT "PLAY AGAIN (1 FOR YES, 0 FOR NO)";: INPUT Q
990 IF Q = 1 THEN 110
999 END

