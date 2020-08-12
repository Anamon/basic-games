1 PRINT TAB(25); "PINBALL"
2 PRINT TAB(20); "CREATIVE COMPUTING"
3 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
4 PRINT: PRINT: PRINT
5 RANDOMIZE TIMER
8 DIM R$(10), P$(20), L(2)
9 GOSUB 9500
10 A1 = 0: A0 = 0: X9 = 0
20 PRINT "WELCOME TO COMPUTER PINBALL!!"
30 PRINT "WOULD YOU LIKE INSTRUCTIONS TO THIS "
35 PRINT "FANTASTIC GAME";
40 INPUT Q$: IF LEFT$(Q$, 1) = "Y" THEN GOSUB 1010: GOTO 50
45 PRINT: PRINT "HOW ABOUT A PICTURE OF THE TABLE";
46 INPUT Q$: IF LEFT$(Q$, 1) = "Y" THEN GOSUB 6010
50 PRINT: PRINT: B = 5
55 S = 0: P = 0
60 T$ = "ABCDEFGHIJ": PRINT
61 FOR Z = 1 TO 10: R$(Z) = " ": NEXT Z: Z3 = 0
70 A1 = 0
71 A7 = 0
80 IF B <= 0 THEN 290
100 L(1) = 2 + INT(RND(1) * 6): L(2) = INT(RND(1) * 14) + 1
110 C = 1 + INT(RND(1) * 7): A1 = 0
120 PRINT "THE BALL IS NOW AT ("; L(1); ","; L(2); ")."
130 IF MID$(P$(L(1)), L(2), 1) = " " THEN 150
140 GOSUB 2010
150 IF A7 = 7 THEN 280
160 IF A1 <> 4 THEN 180
170 GOTO 260
180 L(1) = L(1) + 1
190 A1 = 0
200 L(2) = L(2) + INT(1 + RND(1) * 3) - 2
210 IF L(2) < 2 OR L(2) > 15 THEN L(1) = L(1) + INT(1 + RND(1) * 3) - 2
215 IF L(2) < 2 OR L(2) > 15 THEN L(2) = INT(2 + RND(1) * 13)
230 IF L(1) >= 2 AND L(1) <= 20 THEN GOTO 130
240 L(1) = INT(1 + RND(1) * 7)
250 GOTO 130
260 GOSUB 4010
270 IF A0 = 1 THEN 400
280 ON X9 + 1 GOTO 60, 340
285 PRINT "YOU HAVE PLAYED YOUR SEVENTH BALL AND SCORED "; P; " POINTS!"
286 PRINT "YOU'RE VERY GOOD!": GOTO 9999
290 PRINT "YOU HAVE PLAYED YOUR FIVE BALLS, AND HAVE SCORED"
293 PRINT "A TOTAL OF "; P; " POINTS."
300 IF P < 1600 THEN 9999
305 PRINT: PRINT "*** BONUS BALL ***"
310 B = B + 1
320 X9 = 1
330 GOTO 60
340 PRINT "YOU HAVE PLAYED YOUR SIXTH BALL AND SCORED "; P; " POINTS!"
341 X9 = 2
350 IF P < 2200 THEN 9999
355 PRINT: PRINT "*** BONUS BALL ***"
360 B = B + 1: S = 3
370 GOTO 60
380 GOTO 2010
390 GOTO 150
400 L(1) = 2 + INT(RND(1) * 7)
405 L(2) = 2 + INT(RND(1) * 13): X = 0: Y = 0
410 GOTO 110
1010 PRINT: PRINT
1030 PRINT "THE RULES OF COMPUTER PINBALL ARE FAIRLY SIMPLE.  YOU GET A TOTAL OF"
1040 PRINT "FIVE BALLS.  IF YOU SCORE MORE THAN 1600, YOU GET A SIXTH BALL.  IF"
1050 PRINT "YOUR SIX BALL SCORE IS MORE THAN 2200, YOU GET A SEVENTH BALL."
1060 PRINT: PRINT "THIS TABLE HAS THREE FLIPPERS, EACH OF OF WHICH PROTECT AN OUT CHUTE."
1070 PRINT "HOWEVER, THIS SET DIFFERS FROM OTHER SETS, SINCE YOU MAY ONLY FLIP"
1080 PRINT "TWO OF THE FLIPPERS ANY TIME THE BALL APPROACHES THE CHUTE."
1090 PRINT "NOTA BENE:  YOU DO NOT!!! KNOW FOR SURE WHERE THE BALL IS!!"
1093 PRINT "SO, IF YOU FLIP THE WRONG TWO FLIPPERS, YOU LOSE THE BALL, AND THE"
1095 PRINT "NEXT BALL IS PUT INTO PLAY."
1096 INPUT Z$
1097 PRINT "     YOU CAN GET A PICTURE OF THE TABLE EVERY TIME THE BALL HITS"
1098 PRINT "AN OBJECT, SO THAT MAY HELP YOU SOMEWHAT.  ALSO, YOU ARE TOLD WHERE"
1099 PRINT "THE BALL IS EACH TIME IT HITS(EVEN IF YOU DON'T GET A PICTURE)."
1100 PRINT "THERE IS SOME LOGIC TO THE CHOICE OF FLIPPERS, BUT SOME LUCK IS INVOLVED, TOO."
1110 PRINT "THE FLIPPERS ARE NUMBERED 1,2, AND 3 FROM LEFT TO RIGHT, AND ARE SHOWN"
1120 PRINT "ON THE PICTURE BELOW AS '!' MARKS."
1123 PRINT "SINCE LUCK PLAYS ONLY A SMALL PART IN CHOOSING THE CORRECT FLIPPER,"
1125 PRINT "YOU WILL DO POORLY IF YOU JUST GUESS WHICH FLIPPER THE BALL IS"
1127 PRINT "HEADED TOWARD...": PRINT: PRINT: PRINT "THE TABLE LOOKS LIKE THIS:"
1130 PRINT "****************": PRINT: INPUT Z$
1132 PRINT: FOR Z = 1 TO 20: PRINT P$(Z): NEXT Z
1135 INPUT Z$
1140 PRINT: PRINT: PRINT "****************"
1230 PRINT "THE CENTER BUMPER($) IS THE JACKPOT!"
1240 PRINT "THE BALL IS PUT INTO PLAY THROUGH THE UP ARROW(^), AND GOES UP AND "
1250 PRINT "AROUND, WHERE IT IS DEPOSITED ON THE UPPER HALF OF THE TABLE.  THE BALL"
1260 PRINT "MAY BOUNCE FROM THE SIDE OF THE TABLE, AND MAY BOUNCE UP FROM THE"
1263 PRINT "LINES ON THE SIDE(=) AND FROM THE DIAGONALS(\ AND /) AT THE BOTTOM"
1270 PRINT "OF THE TABLE.  THE BUMPERS ARE INDICATED BY STARS(*)."
1280 PRINT "     FLIPPERS ARE SHOWN AS EXCLAMATION POINTS(! OR !!)."
1285 PRINT "THE BALL MAY GO OUT OF PLAY THROUGH ONE OF THE FOUR HOLES IN THE BOARD(O),"
1290 PRINT "IN WHICH CASE YOU WILL GET A BONUS BUT LOSE THE BALL."
1300 PRINT "     GATES ARE SHOWN BY THE NUMBERS 1-9, AND KNOCK-DOWN TABS ARE SHOWN"
1310 PRINT "AS THE LETTERS A-J.  YOU GET A BONUS FOR THESE AT THE END OF"
1320 PRINT "A BALL, AND IF YOU KNOCK ALL OF THEM DOWN YOU GET A SPECIAL BONUS..."
1330 PRINT: PRINT "***EVERY ONCE IN A WHILE, I WILL SHOW YOU A PICTURE OF THE"
1340 PRINT "TABLE AT IT HITS SOMETHING.  THE BALL IS SHOWN AS THE #."
1350 PRINT: PRINT: RETURN
2010 IF MID$(P$(L(1)), L(2), 1) = "0" THEN 2070
2020 IF INT(RND(1) + .5) <> 1 THEN 2022
2021 IF MID$(P$(L(1)), L(2), 1) = "/" OR MID$(P$(L(1)), L(2), 1) = "\" THEN 2160
2022 S8 = INT(RND(1) * 6 + 1)
2023 FOR S7 = 1 TO S8: PRINT CHR$(7);: NEXT S7
2025 IF MID$(P$(L(1)), L(2), 1) <= "J" AND MID$(P$(L(1)), L(2), 1) >= "A" THEN 2190
2040 GOSUB 3010
2050 RETURN
2070 PRINT "TOO BAD... YOU HAVE GONE STRAIGHT OUT A CHUTE HOLE('0' ON THE TABLE)"
2075 PRINT "TO CONSOLE YOU, I WILL GIVE YOU AN EXTRA"
2090 Q = INT(RND(1) * 141)
2100 P = P + Q
2110 PRINT Q; " POINTS, TO BRING YOUR TOTAL TO "; P; "."
2115 PRINT "YOU NOW HAVE HAVE "; B - 1; " BALLS LEFT."
2120 B = B - 1
2130 A7 = 7
2140 GOSUB 5010
2150 RETURN
2160 L(1) = L(1) + (1 + INT(RND(1) * 4)) - (1 + INT(RND(1) * 4))
2170 L(2) = 2 + INT(RND(1) * 14)
2180 RETURN
2190 PRINT
2200 FOR Q = 1 TO 10
2203 IF R$(Q) = MID$(P$(L(1)), L(2), 1) THEN 2275
2204 NEXT Q
2205 Z3 = Z3 + 1: R$(Z3) = MID$(P$(L(1)), L(2), 1)
2210 PRINT: PRINT "TAB "; R$(Z3); " DOWN..."
2255 IF Z3 = 10 THEN GOSUB 5010
2260 RETURN
2275 RETURN
3010 IF MID$(P$(L(1)), L(2), 1) = CHR$(8) THEN RETURN
3015 IF MID$(P$(L(1)), L(2), 1) = "]" THEN RETURN
3017 IF MID$(P$(L(1)), L(2), 1) = "[" THEN RETURN
3018 IF MID$(P$(L(1)), L(2), 1) = "^" THEN 3110
3019 A1 = 0
3020 IF MID$(P$(L(1)), L(2), 1) = "=" THEN 3410
3030 C = C - 1
3040 IF C = 0 THEN 3110
3050 IF MID$(P$(L(1)), L(2), 1) = "!" OR MID$(P$(L(1)), L(2), 1) = "\" THEN 3110
3060 IF MID$(P$(L(1)), L(2), 1) = "/" OR MID$(P$(L(1)), L(2), 1) = "-" THEN 3110
3070 IF INT(1 + RND(1) * 25) = 4 THEN GOSUB 6010
3080 IF MID$(P$(L(1)), L(2), 1) = "$" THEN 3230
3090 IF MID$(P$(L(1)), L(2), 1) = "*" THEN 3280
3100 GOTO 3320
3110 A1 = 4
3120 GOTO 3390
3130 IF L(2) < 6 THEN GOTO 3180
3140 IF L(2) < 11 THEN 3200
3150 D = 2: IF INT(1 + RND(1) * 2) = 1 THEN D = D + (1 + INT(RND(1) * 3)) - 2: IF D > 3 THEN D = D - 3
3170 RETURN
3180 D = 1: IF INT(1 + RND(1) * 2) = 1 THEN D = INT(RND(1) * 3) + D
3190 RETURN
3200 D = 2: IF INT(1 + RND(1) * 2) = 1 THEN D = D + INT(RND(1) * 3): IF D > 3 THEN D = D - 3
3210 RETURN
3230 Q = 45 + INT(RND(1) * 146)
3240 PRINT "YOU HAVE HIT THE JACKPOT!!!! YOU HAVE JUST WON "; Q; " POINTS!!"
3250 P = P + Q
3260 PRINT "YOU NOW HAVE "; P; " POINTS!"
3270 GOTO 3360
3280 Q = INT(RND(1) * 64) + 1: P = P + Q
3290 PRINT "YOU RECEIVE "; Q; " POINTS FROM THE BUMPER AT "; L(1); ","; L(2); "."
3300 PRINT "SCORE: "; P
3310 GOTO 3360
3320 Q = 15 * (1 + INT(RND(1) * 6)): P = P + Q
3330 PRINT "YOU GET "; Q; " POINTS FROM GATE "; MID$(P$(L(1)), L(2), 1)
3340 PRINT "SCORE: "; P
3360 L(1) = (L(1) - INT(1 + RND(1) * 3)) - INT(1 + RND(1) * 2)
3370 L(2) = L(2) - 3 + INT(RND(1) * 5) + 1
3380 RETURN
3390 GOSUB 7850
3400 GOTO 3130
3410 L(1) = L(1) - (1 + INT(RND(1) * 5))
3420 L(2) = L(2) - 2 + (1 + INT(RND(1) * 4))
3430 RETURN
4010 PRINT "BALL APPROACHING FLIPPERS.  ENTER THE TWO FLIPPERS YOU WISH TO FLIP"
4020 INPUT "IN THE FORM: X,Y "; V, W
4030 IF V = D OR W = D THEN 4110
4040 PRINT "NO, YOU HAVE CHOSEN TO PROTECT THE WRONG FLIPPERS.  YOU NOW HAVE"
4060 PRINT B - 1; " BALLS LEFT."
4070 B = B - 1
4080 A0 = 0
4090 GOSUB 5010
4100 RETURN
4110 A0 = 1
4120 C = INT(1 + RND(1) * 5)
4140 RETURN
5010 IF Z3 = 10 THEN 5090
5020 IF Z3 = 0 THEN RETURN
5030 PRINT "YOUR BALL KNOCKED DOWN "; Z3; " TAGS!!"
5040 PRINT "FOR THIS STELLAR PERFORMANCE, YOU ARE AWARDED "
5050 PRINT "*****"; 10 * Z3; "*****";: PRINT "  POINTS!!"
5060 P = P + 10 * Z3
5080 GOTO 5120
5090 P = P + 250
5100 PRINT "*****YOU KNOCKED DOWN ALL 10 TAGS!!!*****"
5110 PRINT "YOU ARE AWARDED 250 POINTS AND AN EXTRA BALL!!!"
5114 B = B + 1
5120 PRINT "SCORE: "; P: RETURN
6010 PRINT
6020 PRINT: PRINT " P I C T U R E ": PRINT "****************"
6040 FOR Q = 1 TO L(1) - 1: PRINT P$(Q): NEXT Q
6044 PRINT MID$(P$(L(1)), 1, L(2) - 1); "#"; MID$(P$(L(1)), L(2) + 1, 16 - L(2))
6050 FOR Q = L(1) + 1 TO 20: PRINT P$(Q): NEXT Q
6060 PRINT: PRINT "THE BALL WAS AT THE '#'": PRINT: PRINT "****************"
6100 RETURN
7850 L(2) = ABS(L(2) - 2 + INT(1 + RND(1) * 4))
7860 IF L(2) <= 15 THEN RETURN
7870 L(2) = 1 + INT(RND(1) * 15): RETURN
9500 P$(1) = "  "
9501 FOR Q = 1 TO 12: P$(1) = P$(1) + "[" + CHR$(8) + "]": NEXT Q
9502 P$(1) = P$(1) + "  "
9510 P$(2) = " O            O "
9520 P$(3) = "O   *  *  *    O"
9530 P$(4) = "O  A  B  C  D  O"
9540 P$(5) = "O    *   *     O"
9550 P$(6) = "O * *  $  *  * O"
9560 P$(7) = "O    *   *     O"
9570 P$(8) = "O* E  F  G  H *O"
9580 P$(9) = "O   *  *  *    O"
9590 P$(10) = "O===        ===O"
9600 P$(11) = "O  1 2 3 4 5   O"
9610 P$(12) = "O * 6 7 8 9  * O"
9620 P$(13) = "O===   0    ===O"
9630 P$(14) = "O  0   0    0  O"
9640 P$(15) = "!!!          !!!"
9650 P$(16) = "O  \        /  O"
9660 P$(17) = "O   \  I J /   O"
9670 P$(18) = "O    \    /    O"
9680 P$(19) = "O     \  /     O"
9690 P$(20) = "\------!!----^-/"
9700 RETURN
9999 PRINT "COME PLAY AGAIN SOMETIME!!": END

