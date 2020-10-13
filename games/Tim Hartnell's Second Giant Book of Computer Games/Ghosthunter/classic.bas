10 REM GHOSTHUNTER
20 RANDOMIZE TIMER
30 GOSUB 5970
40 PRINT TAB(12); "GHOSTHUNTER"
50 PRINT: PRINT
60 PRINT TAB(11); "PLEASE STAND BY"
70 'DEF FNR(X)=INT(RND(1)*X)+1
80 DIM R$(17), F(11), P(10), X(11), I$(11), Q$(10), O$(10)
90 R = 1: Q = 1
100 REM **************
110 REM READ ROOM DATA
120 FOR X = 1 TO 17: READ R$(X): NEXT X
130 REM *********
140 REM PLACE RUG
150 A = INT(RND(1) * 4) + 5
160 R$(A) = R$(A) + "01"
170 FOR X = 5 TO 8
180 IF X = A THEN 200
190 R$(X) = R$(X) + "00"
200 NEXT X
210 REM ****************************
220 REM DISTRIBUTE ITEMS/INHABITANTS
230 FOR X = 1 TO 3
240 A = INT(RND(1) * 13) + 5
250 IF LEN(R$(A)) > 12 THEN 240
260 R$(A) = R$(A) + "00"
270 NEXT X
280 REM
290 FOR X = 1 TO 10
300 X$ = STR$(X)
310 IF X < 10 THEN MID$(X$, 1, 1) = "0"
320 IF X = 10 THEN X$ = RIGHT$(X$, 2)
330 A = INT(RND(1) * 17) + 1
340 IF LEN(R$(A)) > 12 THEN 330
350 R$(A) = R$(A) + X$
360 NEXT X
370 REM *******************
380 REM SET STARTING VALUES
390 DX = INT(RND(1) * 5) + 8
400 ST = INT(RND(1) * 3) + 6
410 SP = INT(RND(1) * 7) + 4
420 CO = 3: CO$ = "GOOD"
430 REM ******************
440 REM SET MONSTER VALUES
450 FOR X = 1 TO 10: READ I$(X): NEXT X
460 FOR X = 5 TO 10
470 F(X) = INT(RND(1) * 5) + 6
480 P(X) = INT(RND(1) * 7) + 4
490 X(X) = INT(RND(1) * 5) + 6
500 NEXT X
510 F(11) = INT(RND(1) * 10) + 11
520 X(11) = INT(RND(1) * 5) + 8
530 REM **********
540 REM START GAME
550 GOSUB 5970
560 INPUT "WHAT'S YOUR NAME, HERO"; N$
570 GOSUB 5970
580 PRINT "WELCOME, "; N$; "."
590 PRINT: PRINT "YOUR ABILITIES ARE:"
600 PRINT: PRINT TAB(11); "DEXTERITY:"; DX
610 PRINT TAB(13); "STAMINA:"; ST
620 PRINT TAB(15); "SPEED:"; SP
630 PRINT TAB(11); "CONDITION: "; CO$
640 IF CO = 0 THEN 5900
650 IF R > 8 THEN 680
660 ON R GOSUB 5600, 5690, 5770, 5830, 4760, 4850, 4900, 4970
670 GOTO 690
680 ON R - 8 GOSUB 5080, 5140, 5180, 5210, 5270, 5310, 5390, 5440, 5520
690 IF MID$(R$(R), 11, 2) <> "00" THEN GOSUB 2730: GOTO 710
700 PRINT
710 F = 0: IX = 0: ES = 0
720 IF VAL(MID$(R$(R), 13, 2)) = 0 THEN 810
730 P = VAL(MID$(R$(R), 13, 2))
740 PRINT "YOU CAN SEE: "; I$(P)
750 IF P < 5 OR P > 10 THEN 790
760 PRINT "IT HAS A SCARE FACTOR OF"; F(P); "AND"
770 PRINT "A DEXTERITY OF"; X(P): PRINT
780 F = 1: GOTO 810
790 IX = 1
800 REM ********************
810 PRINT: INPUT "WHAT DO YOU WANT TO DO"; V$
820 PRINT
830 Z$ = LEFT$(V$, 1)
840 IF LEFT$(V$, 2) = "DR" THEN 1400
850 IF LEFT$(V$, 3) = "EAT" THEN 3260
860 IF Z$ = "I" THEN 1320
870 IF Z$ = "P" THEN 1690
880 IF Z$ = "O" THEN 3080
890 IF Z$ = "F" THEN 2140
900 IF Z$ = "R" THEN 2860
910 IF Z$ = "G" THEN 1240
920 IF Z$ = "L" THEN 570
930 IF Z$ = "U" OR Z$ = "D" THEN 1140
940 IF Z$ = "N" THEN T = 1: GOTO 1060
950 IF Z$ = "S" THEN T = 3: GOTO 1060
960 IF Z$ = "E" THEN T = 5: GOTO 1060
970 IF Z$ = "W" THEN T = 7: GOTO 1060
980 X = INT(RND(1) * 4) + 1
990 ON X GOTO 1000, 1010, 1020, 1030
1000 PRINT "WHAT?": GOTO 810
1010 PRINT "I DON'T UNDERSTAND, "; N$: GOTO 810
1020 PRINT "WHATCHA MEAN BY THAT?": GOTO 810
1030 PRINT "DON'T TALK WEIRD TO ME": GOTO 810
1040 REM **********
1050 REM N, S, E, W
1060 X = VAL(MID$(R$(R), T, 2))
1070 PRINT
1080 IF F = 1 AND ES <> 1 THEN PRINT "THE "; I$(P); " STOPS YOU": GOTO 2150
1090 IF X = 0 THEN PRINT "YOU CAN'T GO THAT WAY": IF ES = 1 THEN 2140
1100 IF X = 0 AND ES <> 1 THEN 810
1110 R = X: GOTO 570
1120 REM **********
1130 REM UP OR DOWN
1140 X = VAL(MID$(R$(R), 9, 2))
1150 PRINT
1160 IF F = 1 AND ES <> 1 THEN PRINT "THE "; I$(P); " SAYS 'NO GO'": GOTO 2150
1170 IF Z$ = "U" AND X = 13 THEN R = X: GOTO 570
1180 IF Z$ = "D" AND X = 9 THEN R = X: GOTO 570
1190 IF Z$ = "D" AND MID$(R$(R), 11, 2) = "02" AND TD = 1 THEN 1830
1200 PRINT "YOU CAN'T GO THAT WAY!": GOTO 810
1210 END
1220 REM ***
1230 REM GET
1240 IF IX = 0 THEN PRINT "THERE'S NOTHING HERE TO GET": GOTO 810
1250 PRINT TAB(12); "> IT'S BEEN DONE"
1260 O$(Q) = I$(P): Q = Q + 1
1270 MID$(R$(R), 13, 2) = "00"
1280 GOTO 810
1290 REM *********
1300 REM INVENTORY
1310 PRINT
1320 IF Q = 1 THEN PRINT "YOU'RE NOT CARRYING ANYTHING": GOTO 810
1330 PRINT "YOU'RE CARRYING:"
1340 FOR X = 1 TO Q - 1
1350 PRINT TAB(5); "> "; O$(X)
1360 NEXT X
1370 GOTO 810
1380 REM ****
1390 REM DROP
1400 IF Q = 1 THEN PRINT "YOU AREN'T CARRYING IT!": GOTO 810
1410 LA = 0
1420 IF RIGHT$(R$(R), 2) <> "00" THEN LA = 1
1430 IF LA = 1 THEN PRINT "THERE'S ALREADY SOMETHING HERE": GOTO 810
1440 IF V$ = "DROP" THEN 1510
1450 Z$ = ""
1460 IF RIGHT$(V$, 3) = "OPE" THEN V$ = "ROPE": Z$ = "01"
1470 IF RIGHT$(V$, 3) = "KEY" THEN V$ = "KEY": Z$ = "02"
1480 IF RIGHT$(V$, 3) = "NCH" THEN V$ = "LUNCH": Z$ = "03"
1490 IF RIGHT$(V$, 3) = "LUB" THEN V$ = "CLUB": Z$ = "04"
1500 GOTO 1530
1510 PRINT: INPUT "WHAT DO YOU WANT TO DROP"; V$
1520 V = 1: GOTO 1460
1530 V = 0: X = 0
1540 X = X + 1
1550 IF V$ <> O$(X) AND X < Q THEN 1540
1560 IF X = Q THEN 1640
1570 Q = Q - 1
1580 Q$(X) = ""
1590 IF X = Q + 1 THEN 1610
1600 FOR Y = X TO Q - 1: O$(Y) = O$(Y + 1): NEXT Y
1610 MID$(R$(R), 13, 2) = Z$
1620 PRINT TAB(12); "> IT'S BEEN DONE"
1630 GOTO 810
1640 PRINT "YOU AREN'T CARRYING IT": GOTO 810
1650 REM ********
1660 REM PULL RUG
1670 RUG = 0
1680 PRINT
1690 IF MID$(R$(R), 11, 2) <> "00" THEN RUG = 1
1700 IF RIGHT$(V$, 3) = "ULL" THEN PRINT: INPUT "WHAT DO YOU WANT TO PULL"; V$
1710 IF RIGHT$(V$, 3) = "RUG" THEN 1730
1720 PRINT "YOU CAN'T PULL THAT HERE": GOTO 810
1730 IF RUG <> 1 THEN PRINT "I DON'T SEE ANY RUG HERE": GOTO 810
1740 IF MID$(R$(R), 11, 2) <> "02" THEN 1770
1750 PRINT "YOU DON'T HAVE ENOUGH STRENGTH TO"
1760 PRINT TAB(6); "MOVE IT AGAIN": GOTO 810
1770 MID$(R$(R), 11, 2) = "02"
1780 PRINT: PRINT "THE RUG MOVES AWAY TO REVEAL A"
1790 PRINT "TRAPDOOR SET INTO THE FLOOR"
1800 GOTO 810
1810 REM ********************
1820 REM DOWN INTO THE DEPTHS
1830 X = 0
1840 X = X + 1
1850 IF O$(X) = "ROPE" THEN 1880
1860 IF X < Q - 1 THEN 1840
1870 PRINT "IT IS TOO FAR DOWN. YOU MAY NEED A ROPE": GOTO 810
1880 PRINT: PRINT "WITH THE ROPE SECURELY FASTENED, YOU"
1890 PRINT "SLOWLY LOWER YOURSELF INTO THE HOLE."
1900 PRINT: PRINT
1910 XX = 1.0: GOSUB 10000: GOTO 3470
1920 REM **********************
1930 REM FIGHT TABLE SUBROUTINE
1940 REM ** GHOST RESOLUTION **
1950 NUM = ST - F(P): DEX = X(P)
1960 X = INT(RND(1) * 3) + 4: GOSUB 4010
1970 IF NUM > 3 THEN NUM = 3
1980 IF NUM < -3 THEN NUM = -3
1990 DEX = DEX + NUM
2000 ROLL = INT(RND(1) * 18) + 1
2010 IF ROLL > DEX THEN F1 = 1: T = T + 1
2020 RETURN
2030 REM ** HUMAN RESOLUTION **
2040 NUM = F(P) = ST: DEX = X(P)
2050 X = INT(RND(1) * 3) + 4: GOSUB 4010
2060 IF NUM > 3 THEN NUM = 3
2070 IF NUM < -3 THEN NUM = -3
2080 DEX = DEX + NUM
2090 ROLL = INT(RND(1) * 18) + 1
2100 IF ROLL > DEX THEN F2 = 1: T = T + 1
2110 RETURN
2120 REM *********
2130 REM THE FIGHT
2140 IF F <> 1 THEN PRINT "THERE'S NOTHING HERE TO FIGHT!": GOTO 810
2150 GOSUB 1950
2160 T = 0: ES = 0
2170 IF F1 = 1 THEN F1 = 0: GOSUB 2260: GOSUB 2630: T = T + 1: ST = ST - 1
2180 IF CO = 0 THEN XX = 1.0: GOSUB 10000: GOTO 570
2190 GOSUB 2040
2200 IF F2 = 1 THEN F2 = 0: GOSUB 2450: MID$(R$(R), 13, 2) = "00": ST = ST + 1: F = 0: T = T + 1
2210 IF T = 0 THEN PRINT "THE "; I$(P); " BACKS AWAY......"
2220 GOTO 810
2230 REM *************
2240 REM FIGHT RESULTS
2250 PRINT
2260 X = INT(RND(1) * 5) + 1
2270 ON X GOTO 2280, 2310, 2340, 2370, 2400
2280 PRINT "THE "; I$(P); " KNOCKS INTO YOU,"
2290 PRINT "SENDING YOU SPRAWLING ONTO THE FLOOR."
2300 RETURN
2310 PRINT "YOU'VE JUST BEEN BITTEN BY"
2320 PRINT "THE "; I$(P); "!!!"
2330 RETURN
2340 PRINT "THE "; I$(P); " KICKS YOU IN"
2350 PRINT "YOUR BIG FAT STOMACH!"
2360 RETURN
2370 PRINT "YOU'RE ALMOST SCARED TO DEATH BY"
2380 PRINT "THE FEROCIOUS "; I$(P); "!!"
2390 RETURN
2400 PRINT "THE "; I$(P); " RAISES ITS FIST"
2410 PRINT "AND SENDS YOU FLYING ACROSS THE ROOM"
2420 RETURN
2430 REM **********
2440 REM SMASHEROO!
2450 X = INT(RND(1) * 5) + 1
2460 ON X GOTO 2470, 2500, 2530, 2560, 2590
2470 PRINT "YOU LASH OUT AT THE "; I$(P); ","
2480 PRINT "SENDING IT INTO OBLIVION"
2490 RETURN
2500 PRINT "YOUR ATTACK CAUSES THE "; I$(P)
2510 PRINT "TO VANISH FOREVER"
2520 RETURN
2530 PRINT "YOU JUST MANAGE TO SEND THE "; I$(P)
2540 PRINT "AWAY FROM THE MATERIAL WORLD"
2550 RETURN
2560 PRINT "YOU GOT IT! THE "; I$(P)
2570 PRINT "DISAPPEARS, NEVER TO BE SEEN AGAIN"
2580 RETURN
2590 PRINT "BASH! SWIPE! YOU WIN! THE"
2600 PRINT I$(P); " VANISHES INTO THIN AIR."
2610 RETURN
2620 REM ******
2630 REM INJURY
2640 CO = CO - 1
2650 REM *********
2660 REM CONDITION
2670 IF CO = 3 THEN CO$ = "GOOD"
2680 IF CO = 2 THEN CO$ = "FAIR"
2690 IF CO = 1 THEN CO$ = "POOR"
2700 IF CO = 0 THEN CO$ = "DEAD"
2710 RETURN
2720 REM ***********
2730 REM RUG IN ROOM
2740 PRINT "THERE IS A LARGE LAVISH RUG, DETAILED"
2750 PRINT "WITH PICTURES AND COLORFUL DESIGNS"
2760 IF MID$(R$(R), 11, 2) = "02" THEN 2790
2770 PRINT "IN THE MIDDLE OF THE ROOM"
2780 PRINT: RETURN
2790 PRINT "PULLED TO ONE SIDE OF THE ROOM. A"
2800 PRINT "LARGE TRAPDOOR IS SET INTO THE FLOOR"
2810 PRINT "IN THE MIDDLE OF THE ROOM"
2820 GOSUB 3000
2830 PRINT: RETURN
2840 REM ***
2850 REM RUN
2860 IF F <> 1 THEN PRINT "THERE IS NOTHING HERE TO RUN FROM!": GOTO 810
2870 NUM = SP - P(P)
2880 IF NUM < -3 THEN NUM = -3
2890 IF NUM > 3 THEN NUM = 3
2900 RN = 5 + NUM
2910 X = INT(RND(1) * 10) + 1: IF X < RN THEN 2950
2920 PRINT "THE "; I$(P); " IS TOO FAST FOR"
2930 PRINT "YOU. YOU MUST STAY AND FIGHT."
2940 GOTO 2140
2950 PRINT: INPUT "WHICH WAY TO ESCAPE"; V$
2960 Z$ = LEFT$(V$, 1)
2970 ES = 1: GOTO 930
2980 REM *******************
2990 REM TRAPDOOR SUBROUTINE
3000 IF TD = 1 THEN 3030
3010 PRINT "THE TRAPDOOR IS CLOSED"
3020 RETURN
3030 PRINT "THE TRAPDOOR LIES OPEN, REVEALING A"
3040 PRINT "LARGE HOLE UNDER THE HOUSE."
3050 RETURN
3060 REM ****
3070 REM OPEN
3080 IF MID$(R$(R), 11, 2) <> "02" THEN PRINT "THERE'S NOTHING TO OPEN": GOTO 810
3090 IF TD = 1 THEN PRINT "IT'S ALREADY OPEN, TURKEY!": GOTO 810
3100 IF RIGHT$(V$, 3) = "PEN" THEN INPUT "WHAT DO YOU WANT TO OPEN?"; V$
3110 IF RIGHT$(V$, 3) = "OOR" THEN 3130
3120 PRINT "YOU CAN'T OPEN THAT!": GOTO 810
3130 X = 0
3140 X = X + 1
3150 IF O$(X) = "KEY" THEN 3200
3160 IF X < Q - 1 THEN 3140
3170 PRINT "THE TRAPDOOR IS LOCKED AND YOU DON'T"
3180 PRINT "HAVE THE KEY TO OPEN IT,"
3190 GOTO 810
3200 PRINT "THE TRAPDOOR OPENS TO REVEAL A DARK"
3210 PRINT "HOLE UNDER THE HOUSE"
3220 X = 0: TD = 1
3230 GOTO 810
3240 REM ***
3250 REM EAT
3260 IF RIGHT$(V$, 3) <> "EAT" THEN 3280
3270 INPUT "WHAT DO YOU WANT TO EAT?"; V$
3280 IF RIGHT$(V$, 3) = "NCH" OR RIGHT$(V$, 3) = "OOD" THEN 3360
3290 X = INT(RND(1) * 5) + 1
3300 ON X GOTO 3310, 3320, 3330, 3340, 3350
3310 PRINT "I'M GOING TO BE SICK!": GOTO 810
3320 PRINT "THAT'S DISGUSTING!": GOTO 810
3330 PRINT "YUKKK!!!!!!!!!": GOTO 810
3340 PRINT "I JUST LOST MY APPETITE": GOTO 810
3350 PRINT "THINK AGAIN, TURKEYI": GOTO 810
3360 X = 0
3370 X = X + 1
3380 IF O$(X) = "LUNCH" THEN 3410
3390 IF X < Q - 1 THEN 3370
3400 PRINT "YOU DON'T HAVE ANY LUNCH": GOTO 810
3410 PRINT TAB(10); "* GULP! *"
3420 Q = Q - 1: O$(X) = "": IF X = Q THEN 3440
3430 FOR Y = X TO Q - 1: O$(Y) = O$(Y + 1): NEXT Y
3440 CO = 3: GOSUB 2670: GOTO 810
3450 REM *******
3460 REM FINALE
3470 PRINT N$; " YOUR ABILITIES ARE:"
3480 PRINT TAB(5); "DEXTERITY:"; DX
3490 PRINT TAB(5); "STAMINA:  "; ST
3500 PRINT TAB(5); "SPEED:    "; SP
3510 PRINT TAB(5); "CONDITION:"; CO$
3520 PRINT
3530 PRINT "THE TRAPDOOR SLAMS SHUT ABOVE YOU."
3540 PRINT "YOU ARE NOW IN THE CELLAR. IT IS LIT"
3550 PRINT "BY LIGHT WHICH COMES THROUGH CRACKS"
3560 PRINT "IN THE EAST WALL. THE STENCH OF"
3570 PRINT "THIS PLACE IS UNREAL."
3580 PRINT
3590 PRINT "SUDDENLY, A VOICE BOOMS OUT:"
3600 PRINT TAB(2); "WHO DARES INVADE MY PLACE OF"
3610 PRINT TAB(2); "SANCTUARY? I SHALL DESTROY"
3620 PRINT TAB(2); "YOU FOR THIS INTRUSION!!"
3630 PRINT: PRINT "A GHASTLY FORM DRIFTS FROM OUT OF THE"
3640 PRINT "SHADOWS...IT IS THE SPIRIT OF SILICON"
3650 PRINT "GULCH! HIS SCARE FACTOR IS"; F(11); "AND"
3660 PRINT "HIS DEXTERITY IS"; X(11); "WHICH IS PRETTY"
3670 PRINT "BAD. THERE'S NO RUNNING AWAY HERE,"
3680 PRINT "YOU MUST STAND AND FIGHT!!"
3690 P = 11: I$(11) = "SPIRIT!"
3700 X = 0
3710 X = X + 1
3720 IF O$(X) = "CLUB" THEN 3780
3730 IF X < Q - 1 THEN 3710
3740 X = 0
3750 PRINT: PRINT "YOU MUST FIGHT WITH YOUR BARE HANDS,"
3760 PRINT "WHICH PUTS YOU AT A MAJOR DISADVANTAGE."
3770 GOTO 3830
3780 PRINT "THE CLUB INCREASES YOUR CHANCES OF"
3790 PRINT "SUCCESS AGAINST THE SPIRIT, ADDING"
3800 PRINT "TO YOUR STAMINA!!"
3810 ST = ST + 5: PRINT
3820 PRINT "YOUR STAMINA RATING IS NOW"; ST
3830 PRINT: INPUT "PRESS <RETURN> TO START THE FIGHT", A$
3840 H1 = 3: H2 = 3: T = 0
3850 REM *************
3860 REM SPIRIT ATTACK
3870 GOSUB 1940
3880 IF F1 = 1 THEN H2 = H2 - 1: IF H2 <= 0 THEN GOSUB 2450: GOTO 4230
3890 REM ************
3900 REM HUMAN ATTACK
3910 GOSUB 2030
3920 IF F2 = 1 THEN H2 = H2 - 1: IF H2 <= 0 THEN GOSUB 2450: GOTO 4230
3930 IF F2 = 1 THEN F2 = 0: GOSUB 4310: PRINT "THE SPIRIT CAN TAKE"; H1; "MORE HITS"
3940 IF H1 <= 0 THEN 4120
3950 IF T = 0 THEN 3870
3960 T = 0
3970 PRINT: INPUT "HIT <RETURN> TO CONTINUE FIGHT!", A$
3980 GOTO 3870
3990 REM ************
4000 REM FIGHT SOUNDS
4010 FOR Y = 1 TO X
4020 Z = INT(RND(1) * 5) + 1: TA = INT(RND(1) * 23) + 1
4030 ON Z GOSUB 4070, 4080, 4090, 4100, 4110
4040 XX = 0.25: GOSUB 10000
4050 NEXT Y
4060 PRINT: RETURN
4070 PRINT TAB(TA); "BITE!!": RETURN
4080 PRINT TAB(TA); "CLAW!!": RETURN
4090 PRINT TAB(TA); "PUNCH!!": RETURN
4100 PRINT TAB(TA); "POW!!": RETURN
4110 PRINT TAB(TA); "KICK!!": RETURN
4120 IF H2 = 0 THEN 4170
4130 CLS
4140 PRINT: PRINT "THE SPIRIT OF SILICON GULCH DEFEATED"
4150 PRINT TAB(8); "YOU, "; N$; "."
4160 GOTO 5900
4170 PRINT: PRINT "YOU DEFEATED THE SPIRIT OF SILICON"
4180 PRINT "GULCH, BUT DIED YOURSELF IN THE PROCESS!"
4190 PRINT "SEVERAL DAYS AFTER THE FINAL FIGHT,"
4200 PRINT "YOUR BODY IS FOUND, AND YOU ARE GIVEN"
4210 PRINT "A HERO'S BURIAL. YOUR NAME WILL LIVE ON"
4220 END
4230 PRINT: PRINT "YOU DID IT!! THE SPIRIT OF SILICON"
4240 PRINT "GULCH HAS BEEN DEFEATED AT LAST. AS YOU"
4250 PRINT "SIT DOWN TO CATCH YOUR BREATH, THE EAST"
4260 PRINT "DOOR SUDDENLY CRASHES IN, AND A GROUP"
4270 PRINT "OF POLICEMEN ENTER. YOU ARE TAKEN TO"
4280 PRINT "THE PRESIDENT'S OFFICE TO BE AWARDED"
4290 PRINT "THE CONGRESSIONAL MEDAL OF HONOR!"
4300 END
4310 X = FNR(5)
4320 ON X GOTO 4330, 4360, 4390, 4420, 4450
4330 PRINT "YOU HIT THE SPIRIT WITH SUCH FORCE"
4340 PRINT "THAT IT ALMOST FLIES THROUGH THE WALL!"
4350 RETURN
4360 PRINT "YOUR FOOT FLIES OUT, AND WHACKS THE"
4370 PRINT "SPIRIT IN THE STOMACH, OOF!"
4380 RETURN
4390 PRINT "YOUR ARM LASHES OUT, CATCHING THE"
4400 PRINT "SILICON GULCH SPIRIT IN THE NECK"
4410 RETURN
4420 PRINT "YOU HIT THE SPIRIT IN THE HEAD, ALMOST"
4430 PRINT "KNOCKING HIM DOWN!"
4440 RETURN
4450 PRINT "A SWIFT BLOW TO THE NECK INFLICTS A"
4460 PRINT "NASTY WOUND TO THE SPIRIT!!"
4470 RETURN
4480 REM *********
4490 REM ROOM DATA
4500 DATA "00000204000000"
4510 DATA "03010000000000"
4520 DATA "00000204000000"
4530 DATA "03010500000000"
4540 DATA "0000100400"
4550 DATA "1000090000"
4560 DATA "0008001200"
4570 DATA "0700000900"
4580 DATA "120008061300"
4590 DATA "110612050000"
4600 DATA "001000000000"
4610 DATA "000907100000"
4620 DATA "151714160900"
4630 DATA "000000130000"
4640 DATA "001300000000"
4650 DATA "000013000000"
4660 DATA "130000000000"
4670 REM **********
4680 REM ITEM NAMES
4690 DATA "ROPE","KEY","LUNCH","CLUB"
4700 REM *************
4710 REM MONSTER NAMES
4720 DATA "GHOST","SKELETON","MUMMY","ZOMBIE"
4730 DATA "GHOUL","SPECTRE"
4740 REM *****************
4750 REM ROOM DESCRIPTIONS
4760 PRINT: PRINT "THIS WAS ONCE THE DEN. ALL OF THE"
4770 PRINT "FURNITURE IN THIS ROOM IS COVERED WITH"
4780 PRINT "SHEETS. THERE ARE SEVERAL PAINTINGS ON"
4790 PRINT "THE WALL OF BYGONE MEN AND WOMEN, AND"
4800 PRINT "YOU SEE A FIREPLACE IN THE WEST WALL."
4810 PRINT "THERE'S A DOOR IN THE EAST WALL, AND"
4820 PRINT "ONE IN THE WEST WALL."
4830 RETURN
4840 PRINT: PRINT "THIS APPEARS TO HAVE BEEN A BEDROOM."
4850 PRINT "THERE IS AN OLD ROTTING BED BESIDE THE"
4860 PRINT "THE SOUTH WALL, AND A DRESSER AGAINST"
4870 PRINT "THE EAST WALL. THERE ARE DOORS IN THE"
4880 PRINT "NORTH AND EAST WALLS."
4890 RETURN
4900 PRINT: PRINT "THIS WAS ONCE THE DINING ROOM. A LARGE"
4910 PRINT "HEAVY OAKEN TABLE IS IN THE MIDDLE OF"
4920 PRINT "THE ROOM, WITH SIX CHAIRS AROUND IT."
4930 PRINT "DUST COVERS THE TABLE. THERE'S A DOOR"
4940 PRINT "IN THE WEST WALL, AND AN OPEN PORTAL"
4950 PRINT TAB(10); "TO THE SOUTH."
4960 RETURN
4970 PRINT: PRINT "THIS IS THE LIVING ROOM. A LONG SOFA"
4980 PRINT "SITS AGAINST THE EAST WALL; A COFFEE"
4990 PRINT "TABLE RESTS IN FRONT OF IT. THERE'S A"
5000 PRINT "CHAIR UNDER A LARGE WINDOW IN THE SOUTH"
5010 PRINT "WALL, AND A PIANO RESTS BY THE WEST WALL"
5020 PRINT "THROUGH THE WINDOW YOU CAN SEE A"
5030 PRINT "COBBLED PATH LEADING UP FROM THE ROAD"
5040 PRINT "TO THE HOUSE. THERE'S A DOOR IN THE"
5050 PRINT "WEST WALL, AND AN OPEN PORTAL IN THE"
5060 PRINT TAB(18); "NORTHERN WALL."
5070 RETURN
5080 PRINT: PRINT "THIS IS THE FOYER. THERE'S A TALL DOOR"
5090 PRINT "IN THE SOUTH WALL WHICH APPEARS TO BE"
5100 PRINT "NAILED SHUT. THERE ARE DOORS IN EACH OF"
5110 PRINT "THE OTHER WALLS. A STAIRWAY LEADS UP"
5120 PRINT TAB(8); "AGAINST THE WEST WALL."
5130 RETURN
5140 PRINT: PRINT "YOU'RE IN A SHORT HALL WAY. THERE'S A"
5150 PRINT "DOOR IN THE NORTH, SOUTH AND WEST"
5160 PRINT "WALLS, AND AN OPEN PORTAL TO THE EAST."
5170 RETURN
5180 PRINT: PRINT "THIS IS AN EMPTY CLOSET. THE ONLY EXIT"
5190 PRINT TAB(12); "IS THE SOUTH DOOR."
5200 RETURN
5210 PRINT: PRINT "THIS ROOM WAS OBVIOUSLY THE KITCHEN."
5220 PRINT "THERE'S AN OLD SINK AND OVEN BY THE"
5230 PRINT "NORTH WALL, AND A TABLE BY THE SOUTHERN"
5240 PRINT "WALL. THERE ARE DOORS IN THE EAST AND"
5250 PRINT "SOUTH WALLS, AND A PORTAL TO THE WEST."
5260 RETURN
5270 PRINT: PRINT "THIS IS AN UPSTAIRS FOYER. YOU CAN SEE"
5280 PRINT "DOORS IN EACH WALL, AND A STAIR CASE"
5290 PRINT TAB(8); "LEADS DOWN FROM HERE."
5300 RETURN
5310 PRINT: PRINT "THIS IS A BEDROOM. THE REMAINS OF A BED"
5320 PRINT "FILL THE SOUTHERN HALF OF THE ROOM AND"
5330 PRINT "A BROKEN DRESSER IS AGAINST THE WEST"
5340 PRINT "WALL. THERE ARE DUSTY SHEETS DRAPED"
5350 PRINT "OVER SEVERAL CHAIRS IN THE MIDDLE OF"
5360 PRINT "THE NORTH AND SOUTH SIDES OF THE HOUSE."
5380 RETURN
5390 PRINT: PRINT "THIS IS A CLOSET. THE ROTTED REMAINS OF"
5400 PRINT "SEVERAL ITEMS OF CLOTHING HANG LOOSELY"
5410 PRINT "ON RUSTED HANGERS. THE ONLY DOOR IS"
5420 PRINT TAB(12); "IN THE SOUTH WALL."
5430 RETURN
5440 PRINT: PRINT "THIS ROOM WAS APPARENTLY THE LIBRARY."
5450 PRINT "THERE IS A BOOKCASE AGAINST EACH WALL."
5460 PRINT "ALTHOUGH THEY ARE MOSTLY EMPTY, A FEW"
5470 PRINT "OF THE SHELVES HAVE ONE OR TWO BOOKS ON"
5480 PRINT "THEM. THESE BOOKS ARE VERY OLD, AND"
5490 PRINT "CRUMBLE WHEN TOUCHED. THERE'S A DOOR"
5500 PRINT TAB(8); "IN THE EAST WALL."
5510 RETURN
5520 PRINT: PRINT "YOU'RE NOW IN WHAT WAS ONCE THE STUDY."
5530 PRINT "AN ANCIENT BROKEN DESK LIES AGAINST THE"
5540 PRINT "SOUTH WALL, AND A CHAIR RESTS NEXT TO"
5550 PRINT "IT. THERE'S A BOOKSHELF AGAINST THE"
5560 PRINT "EAST WALL, AND AN EMPTY CHEST AGAINST"
5570 PRINT "THE WEST ONE. THE ONLY EXIT IS DOOR IN"
5580 PRINT TAB(8); "THE NORTHERN WALL."
5590 RETURN
5600 PRINT: PRINT "YOU'RE AT THE FRONT OF A DARK,"
5610 PRINT "FOREBODING HOUSE. THE FRONT DOOR SEEMS"
5620 PRINT "TO BE NAILED SHUT. THROUGH AN OPEN"
5630 PRINT "WINDOW YOU CAN SEE A ROOM CONTAINING"
5640 PRINT "DUSTY FURNITURE, AND AN OLD, SCRATCHED"
5650 PRINT "PIANO. THE OTHER WINDOWS ARE BOARDED"
5660 PRINT "YOU CAN GO TO THE EAST OR WEST SIDES"
5670 PRINT TAB(12); "OF THE HOUSE."
5680 RETURN
5690 PRINT: PRINT "YOU'RE NOW AT THE EAST SIDE OF THE"
5700 PRINT "HOUSE. THERE'S A DOOR HERE, WHICH SEEMS"
5710 PRINT "TO LEAD TO THE BASEMENT, BUT IT'S ALL"
5720 PRINT "BOARDED UP AND IMPASSABLE. THE WINDOWS"
5730 PRINT "ON THIS SIDE OF THE HOUSE ARE BOARDED"
5740 PRINT "UP. YOU CAN GO TO THE NORTH OR THE"
5750 PRINT TAB(5); "SOUTH SIDES OF THE HOUSE."
5760 RETURN
5770 PRINT: PRINT "YOU'RE NOW BEHIND THE HOUSE, ON THE"
5780 PRINT "NORTH SIDE. ALL YOU CAN SEE ON THIS"
5790 PRINT "SIDE ARE BOARDED-UP WINDOWS. YOU CAN"
5800 PRINT "GO TO THE EAST OR WEST SIDES OF THIS"
5810 PRINT TAB(15); "OLD HOUSE."
5820 RETURN
5830 PRINT: PRINT "YOU ARE NOW ON THE WEST SIDE OF THE"
5840 PRINT "HOUSE. THERE'S A DOOR LEADING INTO THE"
5850 PRINT "HOUSE TO THE EAST. YOU CAN ALSO EXPLORE"
5860 PRINT "THE NORTH AND SOUTH SIDES OF THE HOUSE."
5870 RETURN
5880 REM *****
5890 REM DEATH
5900 PRINT: PRINT "YOU ARE NOW DEAD. BECAUSE OF YOUR"
5910 PRINT "BRAVENESS AND STRENGTH, THE SPIRIT HAS"
5920 PRINT "DECIDED TO GIVE YOU THE HONOR OF"
5930 PRINT "JOINING HIS MINIONS IN INHABITING THIS"
5940 PRINT "HOUSE FOREVER. HAPPY HAUNTING!!!"
5950 END
5960 REM *************
5970 REM CLS/SPACE OUT
5980 CLS
5990 PRINT: PRINT: PRINT
6000 RETURN
10000 STX = TIMER + XX
10010 IF TIMER < STX THEN 10010
10020 RETURN
