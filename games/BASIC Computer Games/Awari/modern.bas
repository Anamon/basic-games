3 CLS: COLOR 12
5 PRINT TAB(37); "Awari"
7 PRINT TAB(31); "Creative Computing"
8 PRINT TAB(29); "Morristown, New Jersey"
10 DATA 0
15 DIM B(13), G(13), F(50): READ N
20 PRINT: PRINT: E = 0
25 FOR I = 0 TO 12: B(I) = 3: NEXT I
30 C = 0: F(N) = 0: B(13) = 0: B(6) = 0
35 PRINT: GOSUB 500
40 COLOR 10: PRINT "Your move (1-6)";: GOSUB 110
45 IF E = 0 THEN 80
50 IF M = H THEN GOSUB 100
55 IF E = 0 THEN 80
60 PRINT "My move is ";: GOSUB 800
65 IF E = 0 THEN 80
70 IF M = H THEN PRINT ",";: GOSUB 800
75 IF E > 0 THEN 35
80 PRINT: COLOR 12: PRINT "Game over!": COLOR 15
85 D = B(6) - B(13): IF D < 0 THEN PRINT "I won by"; -D; "points.": GOTO 20
90 N = N + 1: IF D = 0 THEN PRINT "Tie game.": GOTO 20
95 PRINT "You won by"; D; "points.": GOTO 20
100 COLOR 10: PRINT "Go again (1-6)";
110 INPUT M: COLOR 15: IF M < 7 THEN IF M > 0 THEN M = M - 1: GOTO 130
120 PRINT "Illegal move.": GOTO 100
130 IF B(M) = 0 THEN 120
140 H = 6: GOSUB 200
150 GOTO 500
200 K = M: GOSUB 600
205 E = 0: IF K > 6 THEN K = K - 7
210 C = C + 1: IF C < 9 THEN F(N) = F(N) * 6 + K
215 FOR I = 0 TO 5: IF B(I) <> 0 THEN 230
220 NEXT I
225 RETURN
230 FOR I = 7 TO 12: IF B(I) <> 0 THEN E = 1
232 NEXT I
235 GOTO 220
500 COLOR 11: PRINT: PRINT "     ";
505 FOR I = 12 TO 7 STEP -1: GOSUB 580
510 NEXT I
515 PRINT: PRINT "  ";: I = 13: GOSUB 580
520 PRINT "                       ";: PRINT B(6): PRINT "     ";
525 FOR I = 0 TO 5: GOSUB 580
530 NEXT I
532 PRINT: COLOR 13: PRINT "      (1) (2) (3) (4) (5) (6)": COLOR 15
535 PRINT: RETURN
580 IF B(I) < 10 THEN PRINT " ";
585 PRINT B(I);: RETURN
600 P = B(M): B(M) = 0
605 FOR P = P TO 1 STEP -1: M = M + 1: IF M > 13 THEN M = M - 14
610 B(M) = B(M) + 1: NEXT P
615 IF B(M) = 1 THEN IF M <> 6 THEN IF M <> 13 THEN IF B(12 - M) <> 0 THEN 625
620 RETURN
625 B(H) = B(H) + B(12 - M) + 1: B(M) = 0: B(12 - M) = 0: RETURN
800 D = -99: H = 13
805 FOR I = 0 TO 13: G(I) = B(I): NEXT I
810 FOR J = 7 TO 12: IF B(J) = 0 THEN 885
815 G = 0: M = J: GOSUB 600
820 FOR I = 0 TO 5: IF B(I) = 0 THEN 845
825 L = B(I) + I: R = 0
830 IF L > 13 THEN L = L - 14: R = 1: GOTO 830
835 IF B(L) = 0 THEN IF L <> 6 THEN IF L <> 13 THEN R = B(12 - L) + R
840 IF R > Q THEN Q = R
845 NEXT I
850 Q = B(13) - B(6) - Q: IF C > 8 THEN 875
855 K = J: IF K > 6 THEN K = K - 7
860 FOR I = 0 TO N - 1: IF F(N) * 6 + K = INT(F(I) / 6 ^ (7 - C) + .1) THEN Q = Q - 2
870 NEXT I
875 FOR I = 0 TO 13: B(I) = G(I): NEXT I
880 IF Q >= D THEN A = J: D = Q
885 NEXT J
890 M = A: PRINT CHR$(42 + M);: GOTO 200
900 FOR I = 0 TO N - 1: PRINT B(I): NEXT I
999 END

