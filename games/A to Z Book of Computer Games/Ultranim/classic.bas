10 REM  "ULTRANIM"
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 GOSUB 1000
50 DIM B(6, 3), A(5, 3)
60 DIM U$(3), U(3)
70 DIM G(5), P(3)
80 GOSUB 2000
90 GOSUB 3000
100 PRINT
110 GOSUB 3400
120 GOSUB 4000
130 GOSUB 7000
140 IF W = 1 THEN 200
150 IF U$ <> "ME" THEN 180
160 GOSUB 6000
170 GOTO 110
180 GOSUB 5000
190 GOTO 110
200 PRINT "WHEE ..."
210 PRINT
220 PRINT "ANOTHER GAME (Y OR N)";
230 INPUT Q$
240 IF Q$ = "Y" THEN 90
250 IF Q$ = "N" THEN 270
260 GOTO 220
270 PRINT "THEN END.  ULTRANIM."
280 END
1000 PRINT "A GAME BEGINS WITH 5 GROUPS"
1010 PRINT "OF 5 TOKENS."
1020 PRINT
1030 PRINT "IN A TURN A PLAYER MAY PICK"
1040 PRINT "FROM ONE TO ALL OF THE TOKENS"
1050 PRINT "IN ANY GROUP."
1060 PRINT
1070 PRINT "THE PLAYER THAT GETS THE LAST"
1080 PRINT "PICK WINS THE GAME."
1090 PRINT
1100 RETURN
1999 REM  "BINARY NUMBERS"
2000 DATA 0,0,0
2010 DATA 0,0,1
2020 DATA 0,1,0
2030 DATA 0,1,1
2040 DATA 1,0,0
2050 DATA 1,0,1
2060 FOR I = 1 TO 6
2070 FOR J = 1 TO 3
2080 READ B(I, J)
2090 NEXT J
2100 NEXT I
2110 RETURN
2999 REM  "SET UP GAME"
3000 FOR I = 1 TO 5
3010 LET G(I) = 5
3020 NEXT I
3030 PRINT "HOW MANY PLAYERS?"
3040 PRINT "  1 = YOU AND I"
3050 PRINT "  2 = YOU AND A FRIEND"
3060 PRINT "  3 = YOU, A FRIEND, AND I"
3070 LET U$(1) = "YOU"
3080 LET U$(2) = "FRIEND"
3090 LET U$(3) = "ME"
3100 LET U(1) = 1
3110 LET U(2) = 2
3120 LET U(3) = 3
3130 FOR I = 1 TO 3
3140 LET T = INT(10 * RND(1)) + 1
3150 IF T > 3 THEN 3140
3160 LET U = U(I)
3170 LET U(I) = U(T)
3180 LET U(T) = U
3190 NEXT I
3200 PRINT "#";
3210 INPUT U
3220 IF U = 1 THEN 3350
3230 IF U = 2 THEN 3330
3240 IF U = 3 THEN 3280
3250 PRINT "NIX!  ANSWER WITH 1, 2, OR 3."
3260 GOTO 3200
3270 PRINT "THE ORDER OF PLAY IS:"
3280 GOSUB 3400
3290 GOSUB 3400
3300 GOSUB 3400
3310 PRINT
3320 RETURN
3330 LET U$(3) = " "
3340 GOTO 3290
3350 LET U$(2) = " "
3360 GOTO 3290
3399 REM  "NEXT PLAYER"
3400 LET U = U(1)
3410 LET U$ = U$(U)
3420 LET U(1) = U(2)
3430 LET U(2) = U(3)
3440 LET U(3) = U
3450 IF U$ = " " THEN 3400
3460 PRINT U$
3470 RETURN
3999 REM  "PRINT TOKENS"
4000 PRINT " ..1..";
4010 PRINT " ..2..";
4020 PRINT " ..3..";
4030 PRINT " ..4..";
4040 PRINT " ..5.."
4050 LET T = 2
4060 FOR I = 1 TO 5
4070 PRINT TAB(T);
4080 FOR J = 1 TO G(I)
4090 IF G(I) = 0 THEN 4120
4100 PRINT "X";
4110 NEXT J
4120 LET T = T + 6
4130 NEXT I
4140 PRINT
4150 RETURN
4999 REM  "HUMAN INPUT"
5000 PRINT "(G,X)";
5010 INPUT G, X
5020 LET G = INT(ABS(G))
5030 LET X = INT(ABS(X))
5040 IF G < 1 THEN 5120
5050 IF X < 1 THEN 5120
5060 IF G > 5 THEN 5120
5070 IF X > 5 THEN 5120
5080 IF G(G) < 1 THEN 5140
5090 IF X > G(G) THEN 5170
5100 LET G(G) = G(G) - X
5110 RETURN
5120 PRINT "I DON'T UNDERSTAND."
5130 GOTO 5000
5140 PRINT "GROUP"; G; "IS EMPTY";
5150 PRINT " -- TRY AGAIN."
5160 GOTO 5000
5170 PRINT "GROUP"; G; "HAS ONLY"; G(G);
5180 GOTO 5150
5999 REM  "COMPUTER'S PLAY"
6000 GOSUB 6200
6010 LET G(G) = G(G) - 1
6020 IF G(G) <> 0 THEN 6040
6030 RETURN
6040 GOSUB 6400
6050 IF P(1) + P(2) + P(3) <> 0 THEN 6010
6060 RETURN
6199 REM  "LARGEST GROUP"
6200 LET M = G(1)
6210 FOR I = 2 TO 5
6220 IF M > G(I) THEN 6240
6230 LET M = G(I)
6240 NEXT I
6250 FOR G = 1 TO 5
6260 IF G(G) = M THEN 6280
6270 NEXT G
6280 RETURN
6399 REM  "ANALYZER"
6400 FOR I = 1 TO 5
6410 FOR J = 1 TO 3
6420 LET A(I, J) = B(G(I), J)
6430 NEXT J
6440 NEXT I
6450 FOR I = 1 TO 3
6460 LET P(I) = 0
6470 FOR J = 1 TO 5
6480 LET P(I) = P(I) + A(J, I)
6490 NEXT J
6500 IF P(I) = 0 THEN 6540
6510 LET T = INT(P(I) / 2)
6520 IF T * 2 = P(I) THEN 6560
6530 LET P(I) = 1
6540 NEXT I
6550 RETURN
6560 LET P(I) = 0
6570 GOTO 6540
6999 REM  "WIN CHECKER"
7000 LET W = 0
7010 FOR I = 1 TO 5
7020 IF G(I) = 0 THEN 7040
7030 LET W = W + 1
7040 NEXT I
7050 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

