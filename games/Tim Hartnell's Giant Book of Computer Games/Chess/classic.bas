5 DEFINT A-Z: DIM A(99), R(28), B(28), N(8), Q(56), K(8), Z(88), S(64), T(16)
6 WIDTH 40
10 REM Chess
20 GOSUB 2970
30 GOTO 60
40 GOSUB 2580
50 GOSUB 2820
60 GOSUB 2580
70 REM *********************************
80 IF A$ = "S" THEN END
90 IF A$ = "X" THEN PRINT "EXCHANGING SIDES": GOSUB 3540: A$ = ""
100 IF A$ = "P" THEN GOSUB 3730
110 REM ********************************
120 FOR Z = 1 TO 16: T(Z) = 0: NEXT Z
130 U = 0
140 PRINT "Please stand by"
150 FOR Q = 1 TO 64: IF A(S(Q)) >= BB AND A(S(Q)) <= RB THEN U = U + 1: T(U) = S(Q): IF A(S(Q)) = KB THEN KM = S(Q)
160 NEXT Q: IF U < 3 THEN GOTO 2230
170 GOTO 650
180 FOR Q = 1 TO U: IF A(T(Q)) = KB THEN T(Q) = T(U): T(U) = KM
190 NEXT Q
200 Q = INT(RND * 3)
210 IF A$ = "C" THEN Q = 0
220 IF Q < U THEN Q = Q + 1
230 Z = T(Q): GOSUB 280
240 IF MM = 1 THEN GOSUB 2500: GOTO 40
250 IF Q < U THEN 220
260 GOTO 2360
270 REM ********************************
280 IF A(Z) = QB THEN GOSUB 910
290 IF A(Z) = RB THEN GOSUB 1170
300 IF A(Z) = BB THEN GOSUB 1420
310 IF A(Z) = NB THEN GOSUB 1690
320 IF A(Z) = PB THEN GOSUB 2240
330 RETURN
340 REM ********************************
350 IF A(X) = 107 THEN MM = 0: Q = Q + 1: RETURN
360 IF X + 9 > 88 THEN 380
370 IF A(X + 9) < 83 AND A(X + 9) > 65 AND RND < .96 THEN RETURN
380 IF X - 11 < 11 THEN 400
390 IF A(X - 11) < 83 AND A(X - 11) > 65 AND RND < .96 THEN RETURN
400 AD = 0
410 AY = 0
420 AX = X + Q(AY + AD)
430 IF AX < 11 OR AX > 88 THEN 460
440 AP = A(AX)
450 IF AP = Q OR AP = R AND RND > .8 OR AP = B AND RND > .5 THEN RETURN
460 AY = AY + 1
470 IF AY < 8 THEN 420
480 AD = AD + 7
490 IF AD < 56 THEN 410
500 AY = 1
510 AX = X + N(AY)
520 IF AX < 11 OR AX > 88 THEN 540
530 IF A(AX) = N THEN RETURN
540 AY = AY + 1
550 IF AY < 9 THEN 510
560 AY = 1
570 AX = X + K(AY)
580 IF AX < 11 OR AX > 88 THEN 600
590 IF (A(AX) = K OR A(AX) = P) AND RND > .1 THEN RETURN
600 AY = AY + 1
610 IF AY < 9 THEN 570
620 MM = 1
630 RETURN
640 REM ********************************
650 Z = KM
660 Y = 0
670 Y = Y + 1
680 X = Z + N(Y)
690 IF X < 11 OR X > 88 THEN 600
700 IF A(X) = N THEN 1870
710 IF Y < 8 THEN 670
720 REM ********************************
730 D = 0
740 Y = 1
750 X = Z + Q(Y + D)
760 IF X < 11 OR X > 88 THEN 810
770 IF A(X) = B OR A(X) = Q OR A(X) = R THEN 1870
780 IF A(X) <> E THEN 810
790 Y = Y + 1
800 IF Y < 8 THEN 750
810 D = D + 7
820 IF D < 49 THEN 750
830 X = Z + 11
840 IF X > 88 THEN 860
850 IF A(X) = P THEN 1870
860 X = Z - 11
870 IF X < 11 THEN 180
880 IF A(X) = P THEN 1870
890 GOTO 180
900 REM ********************************
910 D = 0
920 Y = 1
930 X = Z + Q(Y + D)
940 IF X < 11 OR X > 88 THEN 1000
950 IF A(X) = 42 OR A(X) >= BB AND A(X) <= RB THEN 1000
960 IF A(X) >= B AND A(X) <= R THEN GOSUB 350: IF MM <> 1 THEN 1000
970 IF MM = 1 THEN RETURN
980 Y = Y + 1
990 IF Y < 7 THEN 930
1000 D = D + 7
1010 IF D < 42 THEN 920
1020 RETURN
1030 REM *******************************
1040 D = 0
1050 Y = 1
1060 X = Z + Q(Y + D)
1070 IF X < 11 OR X > 88 THEN 1130
1080 IF A(X) <> E THEN 1130
1090 IF RND > .5 THEN GOSUB 350: IF MM = 0 THEN GOTO 1130
1100 IF MM = 1 THEN RETURN
1110 Y = Y + 1
1120 IF Y < 8 THEN GOTO 1060
1130 D = D + 7
1140 IF D < 49 THEN 1050
1150 RETURN
1160 REM *******************************
1170 D = 0
1180 Y = 1
1190 X = Z + R(Y + D)
1200 IF X < 11 OR X > 88 THEN 1260
1210 IF A(X) = -99 OR A(X) >= BB AND A(X) <= RB THEN 1690
1220 IF A(X) >= B AND A(X) <= R THEN GOSUB 350: IF MM = 0 THEN GOTO 1260
1230 IF MM = 1 THEN RETURN
1240 Y = Y + 1
1250 IF Y < 7 THEN 1190
1260 D = D + 7
1270 IF D < 21 THEN 1180
1280 RETURN
1290 REM *******************************
1300 D = 0
1310 Y = 1
1320 X = Z + R(Y + D)
1330 IF X < 11 OR X > 88 THEN 1390
1340 IF A(X) <> E THEN 1390
1350 IF RND < .1 THEN GOSUB 350
1360 IF MM = 1 THEN RETURN
1370 Y = Y + 1
1380 IF Y < 7 THEN 1320
1390 D = D + 7
1400 IF D < 21 THEN 1310
1410 RETURN
1420 IF A(Z) <> BB THEN RETURN
1430 D = 0
1440 Y = 1
1450 X = Z + B(Y + D)
1460 IF X < 11 OR X > 88 THEN 1520
1470 IF A(X) = -99 OR A(X) >= BB AND A(X) <= RB THEN 1520
1480 IF A(X) >= B AND A(X) <= R THEN GOSUB 350: IF MM <> 1 THEN 1520
1490 IF MM = 1 THEN RETURN
1500 Y = Y + 1
1510 IF Y < 7 THEN 1450
1520 D = D + 7
1530 IF D < 21 THEN 1440
1540 RETURN
1550 REM *******************************
1560 D = 0
1570 Y = 1
1580 X = Z + B(Y + D)
1590 IF X < 11 OR X > 88 THEN 1650
1600 IF A(X) <> E THEN 1650
1610 IF RND > .05 THEN GOSUB 350: IF MM <> 1 THEN 1650
1620 IF MM = 1 THEN RETURN
1630 Y = Y + 1
1640 IF Y < 7 THEN 1580
1650 D = D + 7
1660 IF D < 21 THEN 1570
1670 RETURN
1680 REM *******************************
1690 Y = 1
1700 X = Z + N(Y)
1710 IF X < 11 OR X > 88 THEN 1750
1720 IF A(X) = -99 THEN 1750
1730 IF A(X) >= B AND A(X) <= R THEN GOSUB 350
1740 IF MM = 1 THEN RETURN
1750 Y = Y + 1
1760 IF Y < 9 THEN 1700
1770 RETURN
1780 REM *******************************
1790 Y = 0
1800 X = Z + N(INT(RND * 8 + 1))
1810 IF X < 11 OR X > 88 THEN 1800
1820 IF A(X) = -99 THEN 1800
1830 Y = Y + 1
1840 IF A(X) = E THEN GOSUB 350
1850 IF MM = 1 OR Y > 20 THEN RETURN
1860 GOTO 1800
1870 YK = 1
1880 Z = KM
1890 X = Z + K(YK): X1 = X
1900 IF X < 11 OR X > 88 THEN 2200
1910 IF A(X) = -99 OR A(X) > 65 AND A(X) < 83 THEN 2200
1920 IF A(X) > 97 AND A(X) < 115 THEN 2200
1930 Z = X
1940 Y = 0
1950 Y = Y + 1
1960 X = Z + N(Y)
1970 IF X < 11 OR X > 88 THEN 1990
1980 IF A(X) = N THEN 2200
1990 IF Y < 8 THEN 1950
2000 REM *******************************
2010 D = 0
2020 Y = 1
2030 X = Z + Q(Y + D)
2040 IF X < 11 OR X > 88 THEN 2090
2050 IF A(X) = B OR A(X) = Q OR A(X) = R THEN 2200
2060 IF A(X) <> E THEN 2090
2070 Y = Y + 1
2080 IF Y < 8 THEN 2030
2090 D = D + 7
2100 IF D < 49 THEN 2030
2110 X = Z + 11
2120 IF X > 88 THEN 2140
2130 IF A(X) = P THEN 2200
2140 X = Z - 11
2150 IF X < 11 THEN 2170
2160 IF A(X) = P THEN 2200
2170 X = X1: Z = KM
2180 MM = 1
2190 GOSUB 2500: GOTO 40
2200 YK = YK + 1
2210 Z = KM
2220 IF YK < 9 THEN 1880
2230 PRINT "I concede, champ!": END
2240 X = Z + 9
2250 IF A(X) >= B AND A(X) <= R THEN MM = 1: IF A(X) = P AND RND < .2 THEN MM = 0
2260 IF MM = 1 THEN RETURN
2270 IF Z = 12 THEN RETURN
2280 X = Z - 11
2290 IF A(X) >= B AND A(X) <= R THEN MM = 1: IF A(X) = P AND RND < .2 THEN MM = 0
2300 RETURN
2310 REM *******************************
2320 IF Z - 10 * (INT(Z / 10)) = 7 AND A(Z - 1) = E AND A(Z - 2) = E AND (A(Z - 13) = E OR A(Z - 13) = 42) AND (A(Z + 7) = E OR A(Z + 7) = -99) THEN X = Z - 2: MM = 1: RETURN
2330 IF A(Z - 1) = E AND A(Z - 12) < 98 AND A(Z + 8) < 98 THEN X = Z - 1: MM = 1: RETURN
2340 IF RND < .05 AND A(Z - 1) = E THEN X = Z - 1: MM = 1
2350 RETURN
2360 Q = INT(RND * RND * 5): IF Q > U THEN 2360
2370 IF Q < U THEN Q = Q + 1
2380 Z = T(Q)
2390 IF A(Z) = PB THEN GOSUB 2320
2400 IF A(Z) = NB THEN GOSUB 1790
2410 IF A(Z) = BB THEN GOSUB 1560
2420 IF A(Z) = RB THEN GOSUB 1300
2430 IF A(Z) = QB THEN GOSUB 1040
2440 IF A(Z) = KB AND A$ <> "C" AND RND < .07 THEN GOSUB 1870
2450 IF MM = 0 AND Q < U THEN GOTO 2370
2460 IF MM = 1 THEN GOSUB 2500: GOTO 40
2470 UK = UK + 1: IF UK > 8 THEN 2230
2480 GOTO 2360
2490 REM *******************************
2500 IF A(Z) = KB AND A$ <> "C" AND RND > .1 THEN MM = 0: GOTO 2360
2510 IF A(Z) = PB AND ((X - 10 * INT(X / 10) > Z - 10 * INT(Z / 10) OR ABS(X - Z) > 11)) THEN MM = 0: U = U + 1: GOTO 230
2520 IF A(X) = K THEN PRINT "CHECK": MM = 0: U = U + 1: GOTO 230
2530 A(X) = A(Z): A(Z) = E
2540 PRINT "I will move from ";
2550 FZ = INT(Z / 10): PRINT CHR$(FZ + 64); Z - 10 * FZ; " to ";: FX = INT(X / 10): PRINT CHR$(FX + 64); X - 10 * FX: FOR O = 1 TO 1000: NEXT O
2560 RETURN
2570 REM *******************************
2580 CLS
2590 GOSUB 2670
2600 FOR X = 8 TO 1 STEP -1
2610 PRINT TAB(10); X; " ";
2620 FOR Y = 10 TO 80 STEP 10
2630 IF A(Y + 1) = PB THEN A(Y + 1) = QB
2640 IF A(Y + 8) = B THEN A(Y + 8) = Q
2650 PRINT CHR$(A(X + Y)); " ";
2660 NEXT Y: PRINT X: NEXT X: MM = 0
2670 PRINT: PRINT TAB(14); "A B C D E F G H": PRINT
2680 REM *******************************
2690 RETURN
2700 Z = KM
2710 QK = 0
2720 M = Z + K(QK)
2730 IF M < 11 OR M > 88 THEN 2780
2740 IF A(M) = -99 OR A(M) > 65 AND A(M) < 83 OR MM = 0 THEN 2780
2750 X = M
2760 KM = Z
2770 RETURN
2780 IF QK < 8 THEN 2720
2790 IF A$ <> "C" THEN RETURN
2800 GOTO 2230
2810 REM *******************************
2820 PRINT
2830 INPUT "FROM (LETTER,NUMBER)"; A$
2840 IF LEN(A$) <> 2 THEN 2820
2850 INPUT "TO"; B$
2860 IF LEN(B$) <> 2 THEN 2850
2870 X = 10 * (ASC(A$) - 64) + VAL(RIGHT$(A$, 1))
2880 Y = 10 * (ASC(B$) - 64) + VAL(RIGHT$(B$, 1))
2890 PRINT "Enter C - check"
2900 PRINT "      P - to print board"
2910 PRINT "      X - to exchange sides"
2920 PRINT "      S - to stop game"
2930 INPUT "Or press RETURN to continue"; A$
2940 IF A(Y) >= 75 AND A(Y) <= 82 THEN GOSUB 3660
2950 A(Y) = A(X): A(X) = 46: RETURN
2960 REM *******************************
2970 CLS: PRINT "PLEASE ENGAGE CAPS LOCK": PRINT "THEN PRESS RETURN"
2980 N = N + 1: IF INKEY$ = "" THEN 2980
2990 RANDOMIZE N: CLS: PRINT "Please stand by"
3010 MM = 0: A$ = ""
3030 P = 112: R = 114: N = 110: B = 98: Q = 113: K = 107: E = 46
3040 PB = 80: RB = 82: NB = 78: BB = 66: QB = 81: KB = 75
3050 FOR Z = 1 TO 99: A(Z) = -99: NEXT Z
3060 REM *******************************
3070 FOR Z = 1 TO 64: READ X: READ Y: A(X) = Y: NEXT Z
3080 DATA 18,82,28,78,38,66,48,81
3090 DATA 58,75,68,66,78,78,88,82
3100 DATA 17,80,27,80,37,80,47,80
3110 DATA 57,80,67,80,77,80,87,80
3120 DATA 16,46,26,46,36,46,46,46
3130 DATA 56,46,66,46,76,46,86,46
3140 DATA 15,46,25,46,35,46,45,46
3150 DATA 55,46,65,46,75,46,85,46
3160 DATA 14,46,24,46,34,46,44,46
3170 DATA 54,46,64,46,74,46,84,46
3180 DATA 13,46,23,46,33,46,43,46
3190 DATA 53,46,63,46,73,46,83,46
3200 DATA 12,112,22,112,32,112,42,112
3210 DATA 52,112,62,112,72,112,82,112
3220 DATA 11,114,21,110,31,98,41,113
3230 DATA 51,107,61,98,71,110,81,114
3240 REM *******************************
3250 RESTORE 3270
3260 FOR Z = 1 TO 8: READ N(Z): NEXT Z
3270 DATA 19,-19,21,-21,-8,8,12,-12
3280 FOR Z = 1 TO 28: READ R(Z): NEXT Z
3290 DATA 10,20,30,40,50,50,50
3300 DATA -1,-2,-3,-4,-5,-5,-5
3310 DATA -10,-20,-30,-40,-50,-50,-50
3320 DATA 1,2,3,4,5,5,5
3330 RESTORE 3350
3340 FOR Z = 1 TO 28: READ B(Z): NEXT Z
3350 DATA -11,-22,-33,-44,-55,-55,-55
3360 DATA 11,22,33,44,55,55,55
3370 DATA 9,18,27,36,45,45,45
3380 DATA -9,-18,-27,-36,-45,-45,-45
3390 RESTORE 3290
3400 FOR Z = 1 TO 56: READ Q(Z): NEXT Z
3410 FOR Z = 1 TO 8: READ K(Z): NEXT Z
3420 DATA 1,11,9,10,-10,-9,-11,-1
3430 FOR Z = 1 TO 64: READ S(Z): NEXT Z
3440 DATA 46,56,36,66,47,57,45,55
3450 DATA 37,67,35,65,28,78,27,77
3460 DATA 44,54,26,76,38,68,17,87
3470 DATA 18,88,34,64,25,75,16,86
3480 DATA 48,24,74,15,85,14,84,43
3490 DATA 53,33,62,23,73,52,42,62
3500 DATA 32,83,13,72,22,12,82,41
3510 DATA 51,31,61,21,71,11,81,58
3520 CLS: RETURN
3530 REM *******************************
3540 FOR Z = 11 TO 88: Z(Z) = A(Z): NEXT Z
3550 FOR Z = 11 TO 88: X = Z - 10 * INT(Z / 10)
3560 IF X = 0 OR X = 9 THEN 3580
3570 A(Z) = Z(Z + 9 - X * 2)
3580 NEXT Z
3590 FOR Z = 11 TO 88: M = A(Z)
3600 IF M >= B THEN A(Z) = A(Z) + PB - P
3610 IF M <= RB AND M >= EB THEN A(Z) = A(Z) - PB + P
3620 NEXT Z
3630 GOSUB 2580
3640 RETURN
3650 REM *******************************
3660 CM = INT(RND * 4) + 1
3670 ON CM GOSUB 3690, 3700, 3710, 3720
3680 FOR J = 1 TO 1000: NEXT J: RETURN
3690 PRINT "Well done!": RETURN
3700 PRINT "Good move": RETURN
3710 PRINT "Great move, champ!": RETURN
3720 PRINT "Got me...": RETURN
3730 LPRINT "********************************"
3740 GOSUB 3800
3750 FOR X = 8 TO 1 STEP -1
3760 LPRINT TAB(5); X; " ";
3770 FOR Y = 10 TO 80 STEP 10
3780 LPRINT CHR$(A(X + Y)); " ";
3790 NEXT Y: LPRINT X: NEXT X
3800 LPRINT: LPRINT TAB(9); "A B C D E F G H": LPRINT
3810 RETURN

