5 DIM A(10, 20), B(10, 20)
10 REM Celestia
20 GOSUB 450: REM Initialise
30 GOSUB 60: REM Print out
40 GOSUB 280: REM Evolve
50 GOTO 30
60 CLS
70 PRINT: PRINT: PRINT ,
80 FOR X = 2 TO 9
90 FOR Y = 2 TO 19
100 PRINT CHR$(A(X, Y));
110 NEXT Y
120 FOR Y = 19 TO 2 STEP -1
130 PRINT CHR$(A(X, Y));
140 NEXT Y
150 PRINT: PRINT ,
160 NEXT X
170 FOR X = 9 TO 2 STEP -1
180 FOR Y = 2 TO 19
190 PRINT CHR$(A(X, Y));
200 NEXT Y
210 FOR Y = 19 TO 2 STEP -1
220 PRINT CHR$(A(X, Y));
230 NEXT Y
240 PRINT: PRINT ,
250 NEXT X
260 IF N = 0 THEN GOSUB 640
270 RETURN
280 FOR X = 2 TO 9: FOR Y = 2 TO 19
290 C = 0
300 IF A(X - 1, Y - 1) = B THEN C = C + 1
310 IF A(X - 1, Y) = B THEN C = C + 1
320 IF A(X - 1, Y + 1) = B THEN C = C + 1
330 IF A(X, Y - 1) = B THEN C = C + 1
340 IF A(X, Y + 1) = B THEN C = C + 1
350 IF A(X + 1, Y - 1) = B THEN C = C + 1
360 IF A(X + 1, Y) = B THEN C = C + 1
370 IF A(X + 1, Y + 1) = B THEN C = C + 1
380 IF A(X, Y) = B AND C <> 3 AND C <> 2 THEN B(X, Y) = E
390 IF A(X, Y) = E AND C = 3 THEN B(X, Y) = B
400 NEXT Y: NEXT X
410 FOR X = 2 TO 9: FOR Y = 2 TO 19
420 A(X, Y) = B(X, Y)
430 NEXT Y: NEXT X
440 RETURN
450 REM initialise
460 CLS
470 PRINT "Press the space bar": PRINT "when you're ready to begin"
480 N = 1
490 IF INKEY$ = "" THEN N = N + 1: GOTO 490
500 RANDOMIZE N: CLS
510 PRINT "Do you want a copy on"
520 PRINT "your printer (Y or N)"
530 A$ = INKEY$: IF A$ <> "n" AND A$ <> "N" AND A$ <> "y" AND A$ <> "Y" THEN 530
540 IF A$ = "y" OR A$ = "Y" THEN N = 0
550 CLS
560 B = ASC("."): E = ASC(" ")
580 FOR X = 2 TO 9: FOR Y = 2 TO 19
590 A(X, Y) = E
600 IF RND > .45 THEN A(X, Y) = B
610 B(X, Y) = A(X, Y)
620 NEXT Y: NEXT X
630 RETURN
640 LPRINT "      ----------------------------------": REM 6 spaces, 34 -'s
650 LPRINT: LPRINT: LPRINT "     ";
660 FOR X = 2 TO 9
670 FOR Y = 2 TO 19
680 LPRINT CHR$(A(X, Y));
690 NEXT Y
700 FOR Y = 19 TO 2 STEP -1
710 LPRINT CHR$(A(X, Y));
720 NEXT Y
730 LPRINT: LPRINT "     ";
740 NEXT X
750 FOR X = 9 TO 2 STEP -1
760 FOR Y = 2 TO 19
770 LPRINT CHR$(A(X, Y));
780 NEXT Y
790 FOR Y = 19 TO 2 STEP -1
800 LPRINT CHR$(A(X, Y));
810 NEXT Y
820 LPRINT: LPRINT "     ";
830 NEXT X
840 LPRINT
850 RETURN

