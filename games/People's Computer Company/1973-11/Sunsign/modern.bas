1000 REM *** SUN SIGN DESIGN - PEOPLE'S COMPUTER CENTER ***
1010 REM *** BOX 310 MENLO PARK CALIFORNIA 94025 ***
1015 CLS: COLOR 15
1020 REM *** PROGRAMMER : JANE WOOD ***
1030 REM
1050 B$ = "ABCDEFGHIJKLMNOPQRSTUVWXYZ": B2$ = "abcdefghijklmnopqrstuvwxyz"
1060 REM
1070 REM *** INSTRUCTIONS ***
1080 PRINT
1090 COLOR 10: PRINT "Do you need instructions (Y/N)";
1100 GOSUB 2490
1110 PRINT
1120 IF X = 0 THEN 1290
1125 COLOR 14
1130 PRINT "This program prints designs based a person's name and sun sign.  Here is a"
1140 PRINT "table of sun signs:"
1150 PRINT: COLOR 12
1160 PRINT "Aries       Mar 21-Apr 20   Libra       Sep 24-Oct 23"
1170 PRINT "Taurus      Apr 21-May 21   Scorpio     Oct 24-Nov 22"
1180 PRINT "Gemini      May 22-Jun 21   Sagittarius Nov 23-Dec 21"
1190 PRINT "Cancer      Jun 22-Jul 23   Capricorn   Dec 22-Jan 20"
1200 PRINT "Leo         Jul 24-Aug 23   Aquarius    Jan 21-Feb 19"
1210 PRINT "Virgo       Aug 24-Sep 23   Pisces      Feb 20-Mar 20"
1220 PRINT: COLOR 14
1230 PRINT "The program asks for a first, middle, and last name.  If you don't have a"
1240 PRINT "middle name, type a carriage return.  The program only pays attention to"
1250 PRINT "letters, and ignores all other teletype characters.  Here we go..."
1280 PRINT: COLOR 15
1290 REM *** GET STRING PARAMETERS ***
1300 PRINT
1310 PRINT
1320 COLOR 10: PRINT "First name   ";
1330 GOSUB 2420
1340 GOSUB 2240
1350 V0 = X
1370 COLOR 10: PRINT "Middle name  ";
1380 GOSUB 2420
1390 GOSUB 2240
1400 V2 = X
1420 COLOR 10: PRINT "Last name    ";
1430 GOSUB 2420
1440 GOSUB 2240
1450 V4 = X
1470 COLOR 10: PRINT "Sun sign     ";
1480 GOSUB 2420
1490 GOSUB 2240
1500 V6 = X
1510 PRINT
1520 PRINT
1530 PRINT
1540 REM
1550 REM *** COMPUTE NUMERIC PARAMETERS ***
1560 V = V0
1570 Q = 9
1580 GOSUB 2380
1590 V1 = M
1600 V = V2
1610 GOSUB 2380
1620 V3 = M
1630 V = V4
1640 Q = 7
1650 GOSUB 2380
1660 V5 = M
1670 V = V6
1680 Q = 5
1690 GOSUB 2380
1700 V9 = M
1710 C = 0
1720 REM
1730 REM *** PICTURE PRINTING LOOP ***
1740 CLS: PRINT: PRINT: FOR J = -(V9 + 3) TO V9 + 2
1750 A$ = "                                                   "
1760 V0 = V0 - J
1770 V2 = V2 - J
1780 K0 = 2 * V5 + 2
1790 REM
1800 REM *** COMPUTE ROW ***
1810 FOR K = -K0 TO K0
1820 K1 = K0 + K + 15
1830 V0 = V0 - K * V5
1840 V = V0
1850 Q = 9
1860 GOSUB 2380
1870 V7 = M
1880 V2 = V2 - K * V3
1890 V = V2
1900 Q = 7
1910 GOSUB 2380
1920 V8 = M
1930 IF K <> K0 THEN 1950
1940 V8 = -1
1950 ON SGN(V8 - V7) + 2 GOTO 1980, 1960, 2000
1960 A$ = LEFT$(A$, K1 - 1) + "O" + RIGHT$(A$, LEN(A$) - K1)
1970 GOTO 2010
1980 A$ = LEFT$(A$, K1 - 1) + " " + RIGHT$(A$, LEN(A$) - K1)
1990 GOTO 2020
2000 A$ = LEFT$(A$, K1 - 1) + "*" + RIGHT$(A$, LEN(A$) - K1)
2010 C = C + 1
2020 NEXT K
2030 REM
2040 REM *** PRINT ROW ***
2050 K = 1
2060 IF C = 0 THEN 2120
2070 PRINT MID$(A$, K, 1);
2080 IF MID$(A$, K, 1) = " " THEN 2100
2090 C = C - 1
2100 K = K + 1
2110 IF K <= LEN(A$) THEN 2060
2120 PRINT
2130 NEXT J
2140 REM *** ASK FOR ENCORE ***
2150 PRINT
2160 PRINT
2170 PRINT
2180 PRINT
2190 COLOR 10: PRINT "Would you like to do another one (Y/N)";
2200 GOSUB 2490
2210 IF X = 1 THEN 1290
2220 STOP
2230 REM
2240 REM *** CONVERT INPUT STRING TO NUMBER ***
2250 X = 0
2260 J = 1
2270 IF J > LEN(A$) THEN 2360
2280 K = 1
2290 IF K > 26 THEN 2340
2300 IF MID$(A$, J, 1) = MID$(B$, K, 1) OR MID$(A$, J, 1) = MID$(B2$, K, 1) THEN 2330
2310 K = K + 1
2320 GOTO 2290
2330 X = X + K + 192
2340 J = J + 1
2350 GOTO 2270
2360 RETURN
2370 REM
2380 REM *** MODULOUS FUNCTION ***
2390 M = V - INT(V / Q) * Q + 1
2400 RETURN
2410 REM
2420 REM *** FETCH STRING ***
2430 REM
2440 INPUT A$: COLOR 15
2470 RETURN
2480 REM
2490 REM *** YES OR NO FETCH ***
2500 X = 0
2510 INPUT A$: COLOR 15
2520 IF LEFT$(A$, 1) = "n" OR LEFT$(A$, 1) = "N" THEN 2580
2530 X = 1
2540 IF LEFT$(A$, 1) = "y" OR LEFT$(A$, 1) = "Y" THEN 2580
2550 PRINT "Please answer yes or no..."
2560 COLOR 10: PRINT "Answer";
2570 GOTO 2500
2580 RETURN
2590 REM
2600 END

