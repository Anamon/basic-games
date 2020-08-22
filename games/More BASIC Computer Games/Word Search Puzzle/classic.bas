10 PRINT TAB(20); "WORD SEARCH PUZZLE"
20 PRINT TAB(20); "CREATIVE COMPUTING"
30 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
40 PRINT: PRINT: PRINT
45 RANDOMIZE TIMER
50 PRINT "  THIS PROGRAM IS A WORD SEARCH PUZZLE GENERATOR!!"
60 PRINT "THE PROGRAM TAKES A SET OF INPUT STRINGS, PURGES ALL"
70 PRINT "NON-ALPHABETIC CHARACTERS OUT OF THEM, AND INCORPORATES"
80 PRINT "THEM INTO A WORD SEARCH PUZZLE."
90 PRINT
100 PRINT "  IN THE COURSE OF MAKING THE PUZZLE, THE MACHINE MAY"
110 PRINT "FIND THAT IT CAN'T PUT A PARTICULAR WORD ANYWHERE, AND"
120 PRINT "SO WILL ASK YOU IF IT SHOULD START THE WHOLE PUZZLE"
130 PRINT "OVER.  IF YOU DON'T WANT IT TO START OVER, TYPING 'NO'"
140 PRINT "WILL THROW AWAY THAT PARTICULAR WORD.  IF THIS PERSISTS,"
150 PRINT "TRY EITHER GIVING LESS WORDS OR BIGGER PUZZLE DIMENSIONS!"
160 PRINT: PRINT
280 'CLEAR 3000
300 'DEF FNA(Z) = INT(RND(1) * Z + 1)
310 INPUT "HOW MANY COLUMNS DOES YOUR PRINTER HAVE"; TW
320 INPUT "DO YOU WANT A SOLUTION PRINTOUT"; X$
330 INPUT "WHAT IS TO BE THE WIDTH OF THE PUZZLE"; W: MD = W
340 IF W * 2 <= TW THEN 345
343 PRINT "THAT WILL NOT FIT IN"; TW; " COLUMNS.": GOTO 330
345 IF W < 1 THEN 330
350 INPUT "THE LENGTH"; L: IF L > W THEN MD = L
355 IF L < 1 THEN 350
360 INPUT "WHAT IS THE MAXIMUM NUMBER OF WORDS IN THE PUZZLE"; M
370 IF M >= 2 THEN 380
375 PRINT "SORRY; THERE MUST BE AT LEAST 2 WORDS.": GOTO 360
380 PRINT
390 DIM A$(L, W), W$(M)
400 DIM W(M, 3), DXY(8, 2), DD(28)
410 PRINT "NOW ENTER A HEADING THAT WILL BE PRINTED OVER THE PUZZLE:"
420 PRINT "("; TW; "CHARCTERS MAXIMUM! )"
430 INPUT XY$
440 PRINT "OK . . . ENTER A WORD AT EACH QUESTION MASK."
450 PRINT "TO REDO THE PREVIOUS WORD, TYPE A HYPHEN (-)."
460 PRINT "WHEN YOU RUN OUT OF WORDS, TYPE A PERIOD (.)."
470 FOR I = 1 TO M
480 INPUT T$: IF T$ = "-" THEN I = I - 1: PRINT "REDO "; W$(I); ". . .": GOTO 480
490 IF T$ = "." THEN M = I - 1: GOTO 660
500 IF LEN(T$) = 0 THEN PRINT "INPUT ERROR; REDO:": GOTO 480
510 J = 1
520 TE$ = MID$(T$, J, 1): IF TE$ >= "a" AND TE$ <= "z" THEN 570
525 IF TE$ < "A" OR TE$ > "Z" THEN 530
527 T$ = LEFT$(T$, J - 1) + CHR$(ASC(MID$(T$, J, 1)) + 32) + RIGHT$(T$, LEN(T$) - J): GOTO 570
530 IF TE$ = T$ THEN T$ = "": GOTO 500
540 IF J = LEN(T$) THEN T$ = LEFT$(T$, J - 1): GOTO 580
550 IF J = 1 THEN T$ = RIGHT$(T$, LEN(T$) - 1): J = J - 1: GOTO 570
560 T$ = LEFT$(T$, J - 1) + RIGHT$(T$, LEN(T$) - J): J = J - 1
570 J = J + 1: IF J <= LEN(T$) THEN 520
580 PRINT "-"; T$; "-"
600 IF LEN(T$) <= MD THEN 610
605 PRINT "THAT'S TOO LONG, I'M AFRAID.";
607 PRINT " TRY ANOTHER ONE:": GOTO 480
610 F = 0: FOR IZ = 1 TO I - 1
615 IF W$(IZ) = T$ THEN F = 1
616 NEXT IZ: IF F = 0 THEN 630
620 PRINT "YOU ENTERED THAT ONE ALREADY. TRY ANOTHER:": GOTO 480
630 W$(I) = T$
640 NEXT I
650 PRINT "THAT'S IT..."; M; "WORDS."
660 PRINT "NOW LET ME PONDER THIS......"
680 FOR I = 1 TO M - 1
685 FOR J = I + 1 TO M
690 IF LEN(W$(I)) < LEN(W$(J)) THEN HZ$ = W$(I): W$(I) = W$(J): W$(J) = HZ$
700 NEXT: NEXT
710 FOR I = 1 TO 8: READ DXY(I, 1), DXY(I, 2): NEXT
720 FOR I = 1 TO 28: READ DD(I): NEXT
730 DATA 0,1,1,1,1,0,1,-1,0,-1,-1,-1,-1,0,-1,1
740 DATA 2,4,8,8,2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,1,3,5,7
750 FOR I = 1 TO M
760 LN = LEN(W$(I))
770 NT = 0
790 SD = DD(INT(RND(1) * 28 + 1))
800 SX = INT(RND(1) * W + 1): X1 = SX + (LN - 1) * DXY(SD, 1): IF X1 < 1 OR X1 > W THEN 790
810 SY = INT(RND(1) * L + 1): X1 = SY + (LN - 1) * DXY(SD, 2): IF X1 < 1 OR X1 > L THEN 790
820 NT = NT + 1: IF NT <> W * L * 2 THEN 850
830 PRINT "COULDN'T FIT  '"; W$(I); "'  IN THE PUZZLE."
832 INPUT "DO YOU WANT ME TO START OVER"; A$
834 IF LEFT$(A$, 1) = "y" THEN 750
836 W$(I) = "": GOTO 950
850 J = SY: K = SX
860 FOR P = 1 TO LN
870 IF LEN(A$(J, K)) AND A$(J, K) <> MID$(W$(I), P, 1) THEN 790
880 J = J + DXY(SD, 2): K = K + DXY(SD, 1): NEXT P
900 J = SY: K = SX
910 FOR P = 1 TO LN: A$(J, K) = MID$(W$(I), P, 1)
920 J = J + DXY(SD, 2): K = K + DXY(SD, 1): NEXT
940 W(I, 1) = SX: W(I, 2) = SY: W(I, 3) = SD
950 NEXT I
970 FOR I = 1 TO L
975 FOR J = 1 TO W
980 IF A$(I, J) = "" THEN A$(I, J) = CHR$(INT(RND(1) * 26 + 1) + 96)
990 NEXT: NEXT
1010 FOR I = 1 TO M - 1: FOR J = I + 1 TO M
1020 IF W$(I) <= W$(J) THEN 1030
1021 HZ$ = W$(I): W$(I) = W$(J): W$(J) = HZ$
1025 FOR K = 1 TO 3: HZ = W(I, K): W(I, K) = W(J, K): W(J, K) = HZ: NEXT K
1030 NEXT J: NEXT I
1040 INPUT "HOW MANY COPIES OF THIS PUZZLE DO YOU WANT"; N
1050 PRINT "FOR EACH COPY, HIT RETURN TO BEGIN PRINTING..."
1060 FOR C = 1 TO N: GOSUB 1070: NEXT: GOTO 1230
1070 INPUT A$: PRINT
1080 T = (TW - 2 * W) / 2: PRINT
1090 PRINT
1100 PRINT TAB((TW - LEN(XY$)) / 2); XY$
1110 PRINT: PRINT
1120 FOR J = 1 TO L: PRINT TAB(T);
1130 FOR K = 1 TO W: IF A$(J, K) = "." THEN PRINT ". ";: GOTO 1140
1135 PRINT CHR$(ASC(A$(J, K)) - 32); " ";
1140 NEXT: PRINT: NEXT
1150 PRINT: PRINT
1160 PRINT "FIND THESE HIDDEN WORDS IN THE ABOVE PUZZLE:"
1170 PRINT
1180 FOR J = 1 TO M: IF LEN(W$(J)) = 0 THEN 1210
1190 IF POS(0) + LEN(W$(J)) > TW - 2 THEN PRINT
1200 PRINT W$(J),
1210 NEXT: PRINT: PRINT: PRINT: PRINT
1220 RETURN
1230 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 1250
1240 END
1250 REM
1260 FOR I = 1 TO L: FOR J = 1 TO W: A$(I, J) = ".": NEXT J: NEXT I
1270 FOR I = 1 TO M
1280 LN = LEN(W$(I)): J = W(I, 2): K = W(I, 1)
1290 FOR P = 1 TO LN
1300 A$(J, K) = MID$(W$(I), P, 1)
1310 J = J + DXY(W(I, 3), 2): K = K + DXY(W(I, 3), 1): NEXT P
1320 NEXT I
1330 XY$ = "HERE IS THE ANSWER KEY:"
1340 GOSUB 1070
1350 PRINT: PRINT
1360 END

