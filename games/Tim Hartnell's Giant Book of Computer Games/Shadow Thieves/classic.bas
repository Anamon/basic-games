5 DIM A(20, 4), R$(4), B$(20), C$(20), D$(20), E$(20), F$(20)
10 REM CAVERN OF THE SHADOW THIEVES
20 RANDOMIZE TIMER
40 CLS
50 GOSUB 1130: REM BUILD CAVERNS
60 GOSUB 1030: REM FILL ARRAYS
70 GOSUB 920: REM ALLOT INHABITANTS/GOODIES
80 Q = 50: REM TIMER
90 Y = 1: X = 0
100 CLS
110 REM ****** MAJOR GAME CYCLE *********
120 GOTO 230
130 PRINT "*********************************"
140 Q = Q - 1: IF Q < 1 THEN 880
150 PRINT: PRINT "TIME REMAINING:"; Q
160 PRINT: PRINT TAB(RND(1) * 6); "YOU ARE IN CAVERN"; Y
170 IF X > 0 THEN PRINT "YOU HAVE COME FROM CAVERN"; X
180 IF R$(1) > "" OR R$(2) > "" OR R$(3) > "" OR R$(4) > "" THEN PRINT "YOU ARE CARRYING:"
190 Z = 1
200 IF R$(Z) > "" THEN PRINT Z; " - "; R$(Z)
210 IF Z < 4 THEN Z = Z + 1: GOTO 200
220 RETURN
230 GOSUB 130
240 IF LEN(F$(Y)) = 0 THEN 430
250 PRINT: PRINT "THE CAVERN CONTAINS A "; F$(Y)
260 IF INKEY$ <> "" THEN 260
270 PRINT: PRINT "DO YOU WANT IT (Y OR N)?"
280 Q$ = INKEY$
290 IF Q$ <> "Y" AND Q$ <> "y" AND Q$ <> "N" AND Q$ <> "n" THEN 280
300 IF Q$ = "N" OR Q$ = "n" THEN 430
310 IF R$(1) = "" OR R$(2) = "" OR R$(3) = "" OR R$(4) = "" THEN 390
320 PRINT "YOU ARE CARRYING TOO MUCH"
330 INPUT "WHICH ITEM DO YOU WANT TO DROP"; S
340 IF S < 1 OR S > 4 THEN 330
350 T$ = R$(S)
360 R$(S) = F$(Y)
370 F$(Y) = ""
380 GOTO 420
390 G = 1
400 IF R$(G) = "" THEN R$(G) = F$(Y): F$(Y) = "": GOTO 420
410 IF G < 4 THEN G = G + 1: GOTO 400
420 GOSUB 130
430 IF LEN(D$(Y)) = 0 THEN 600
440 IF ASC(D$(Y)) = 42 THEN 820
450 PRINT: PRINT "THERE IS A "; D$(Y); " HERE, WHO"
460 PRINT "WANTS A "; E$(Y); " TO LET YOU PASS"
470 XX = 1.5: GOSUB 2000
480 G = 1
490 IF R$(G) = E$(Y) AND E$(Y) <> "" THEN 550
500 IF G < 4 THEN G = G + 1: GOTO 490
510 PRINT: PRINT "YOU MUST RETURN TO"; X
520 XX = 2.0: GOSUB 2000
530 P = X: X = Y: Y = P
540 GOTO 230
550 PRINT "AND YOU HAVE IT!"
560 XX = 1.5: GOSUB 2000
570 PRINT "THE "; D$(Y); " VANISHES!": D$(Y) = ""
580 F$(Y) = R$(G)
590 R$(G) = ""
600 PRINT: PRINT "TUNNELS LEAD TO"; A(Y, 1); ","; A(Y, 2); ","; A(Y, 3); "AND"; A(Y, 4)
610 PRINT: INPUT "WHERE DO YOU WANT TO GO"; M
620 IF M = 0 THEN Q = Q - 5: M = 1 + INT(RND(1) * 16): GOTO 670
630 G = 1
640 IF A(Y, G) = M THEN 670
650 IF G < 4 THEN G = G + 1: GOTO 640
660 GOTO 610
670 X = Y
680 Y = M
690 IF Y = 20 THEN 710
700 GOTO 230
710 REM ******************
720 REM **** SUCCESS *****
730 CLS
740 FOR I = 1 TO 32: PRINT TAB(I); "*": NEXT I
750 PRINT: PRINT "YOU HAVE MADE IT!!"
760 PRINT: PRINT "YOUR CAVERN-MASTER RATING IS"; 100 * (100 - Q) + 2 * Q
770 IF R$(1) > "" OR R$(2) > "" OR R$(3) > "" OR R$(4) > "" THEN PRINT "YOU GOT OUT WITH:"
780 FOR T = 1 TO 4
790 PRINT TAB(INT(RND(1) * 7 + 1)); R$(T)
800 NEXT T
810 END
820 REM *** TELEPORTATION ***
830 FOR I = 1 TO 32: PRINT TAB(I); "*": NEXT I
840 X = Y
850 Y = INT(RND(1) * 9) + 8
860 GOTO 230
870 REM ****************
880 REM *** END 'O THE LINE ***
890 PRINT: PRINT "SORRY, FRIEND, BUT TIME IS UP"
900 END
910 REM ****************
920 REM *** DISTRIBUTE INHABITANTS/GOODIES ***
930 FOR E = 1 TO 16
940 F = INT(RND(1) * 18) + 2
950 D$(F) = B$(INT(RND(1) * 20) + 1): REM INHABITANTS
960 E$(F) = C$(INT(RND(1) * 20) + 1): REM BRIBES
970 F = INT(RND(1) * 19) + 2
980 F$(F) = C$(INT(RND(1) * 20) + 1): REM CAVERN CONTENTS
990 IF RND(1) > .9 THEN D$(F) = "*": REM TELEPORTATION
1000 NEXT E
1010 RETURN
1020 REM ****************
1030 REM *** CREATE CAVERNS ***
1040 PRINT "PLEASE STAND BY AS I HIDE THE GOODIES..."
1050 FOR D = 1 TO 20
1060 READ B$(D)
1070 NEXT D
1080 FOR D = 1 TO 20
1090 READ C$(D)
1100 NEXT D
1110 RETURN
1120 REM ********************
1130 REM **** CONSTRUCT CAVERN ****
1140 PRINT "PLEASE STAND BY AS I CONSTRUCT THE CAVE..."
1150 FOR B = 1 TO 20
1160 PRINT TAB(B); "*"
1170 FOR C = 1 TO 4
1180 A(B, C) = B + INT(RND(1) * 7 - RND(1) * 6)
1190 IF A(B, C) = B OR A(B, C) < 1 OR A(B, C) > 20 THEN 1180
1200 NEXT C
1210 IF A(B, 1) = A(B, 2) OR A(B, 1) = A(B, 3) OR A(B, 1) = A(B, 4) OR A(B, 2) = A(B, 3) OR A(B, 3) = A(B, 4) OR A(B, 2) = A(B, 4) THEN 1170
1220 IF RND(1) < .19 AND B > 12 THEN A(B, (INT(RND(1) * 4) + 1)) = 20
1230 NEXT B
1240 CLS
1250 RETURN
1260 REM ********************
1270 REM **** INHABITANTS ****
1280 DATA "HAIRY HOBGOBLIN","BALD BERSERKER","SKINNY SKELETON","GRUESOME GNOME","CUNNING CONJURER"
1290 DATA "CRAZY CENTIPEDE","DEMENTED DWARF","SAVAGE SHRIEKER","CREEPY CRAWLIE","ROTTEN RODENT"
1300 DATA "TERRIBLE TOAD","STICKY STURGE","GHASTLY GHOUL","WICKED WEASEL","LUMPY LEGEND"
1310 DATA "ZANY ZOMBIE","CROOKED CRAB","WRATHFUL WRAITH","WEIRD WEREWOLF","GIANT GARGOYLE"
1320 REM ********************
1330 REM **** THE LOOT ****
1340 DATA "PIECE OF COPPER","SPUNKTRUM COIN","PLATINUM SHIELD","COPPER HEADBAND","MAGIC SCROLL"
1350 DATA "FABULOUS POTION","WAND OF HEALING","SWORD OF FIRE","SPARKLING AMULET","WAR HAMMER"
1360 DATA "PIECE OF COPPER","SPUNKTRUM COIN","PLATINUM SHIELD","COPPER HEADBAND","MAGIC SCROLL"
1370 DATA "FABULOUS POTION","WAND OF HEALING","SWORD OF FIRE","SPARKLING AMULET","WAR HAMMER"
2000 ST = TIMER + ZZ
2010 IF TIMER < ST THEN 2010
2020 RETURN

