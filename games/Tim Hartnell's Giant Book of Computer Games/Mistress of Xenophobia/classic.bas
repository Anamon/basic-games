10 REM Mistress of Xenophobia
20 GOSUB 700: REM Initialise
30 REM *********************************
40 FOR Y = 1 TO 20
50 CLS
60 PRINT: PRINT: PRINT
70 PRINT "Mistress of Xenophobia, a report for"
80 PRINT "you from the Office of Information"
90 PRINT "regarding the state of your planet"
100 PRINT "in this year of Grace,"; 1994 + Y
110 PRINT: PRINT
120 PRINT "The planet's population is"; INT(P)
130 GOSUB 880
140 PRINT "The grovelling peasants could work"
150 PRINT "some"; L; "acres this year..."
160 GOSUB 880
170 PRINT "Your treasury holds gold, gems"
180 PRINT "and coins worth $"; INT(U)
190 GOSUB 880
200 PRINT "Time to issue a decree..."
210 PRINT: PRINT "How much land is to be farmed"
220 INPUT "this year"; W
230 U = U - W * 10
240 IF U < 1 THEN 780
250 L = L + W
260 GOSUB 880
270 PRINT: PRINT "And how much will you spend"
280 INPUT "on food for the peasants"; W
290 U = U - W * 10
300 IF U < 1 THEN 780
310 R = INT(RND * 10) + 1
320 GOSUB 880
330 IF P - W * R * 5 > P / 4 THEN PRINT "Oh dear!! There's not": PRINT "enough food for everyone...": GOSUB 580
340 P = P + RND * (W * R * 5 - P)
350 IF P > 149 THEN 410
360 GOSUB 880
370 PRINT "The population of Xenophobia is"
380 PRINT "now down to"; P; "and that"
390 PRINT "just ain't enough, Your Xeno"
400 GOTO 480
410 U = U + INT(P * L) / 93
420 NEXT Y
430 PRINT: PRINT: PRINT "Well, Your Xenophobic, that's"
440 PRINT "the end of your 20 year domination of"
450 PRINT "our little planet. You managed"
460 PRINT "to accumulate some $"; U; "which"
470 PRINT "I guess ain't too bad..."
480 GOSUB 880
490 PRINT: PRINT "If you'd like another shot"
500 PRINT "ruling, then just press 'Y' or"
510 PRINT "press 'N' to end this farce.."
520 A$ = INKEY$
530 IF A$ <> "N" AND A$ <> "n" AND A$ <> "Y" AND A$ <> "y" THEN 520
540 IF A$ = "N" OR A$ = "n" THEN PRINT: PRINT "Your wish is my command": PRINT "oh Mistress of Xenophobia": END
550 RUN
560 END
570 REM ********************************
580 PRINT: PRINT "Horrors, your Xenoness"
590 PRINT "There's been a rebellion!!!"
600 PRINT "The peasants are revolting"
610 PRINT "(I had to get that line in!)"
620 GOSUB 880
630 IF RND < .2 THEN PRINT "And your cops couldn't stop them": GOTO 480
640 PRINT "But your ruthless police have"
650 PRINT "put a stop to all that nonsense"
660 GOSUB 880
670 RETURN
680 GOTO 420
690 REM ********************************
700 REM Initialisation
710 RANDOMIZE VAL(RIGHT$(TIME$, 2))
720 CLS
730 P = 200 + INT(RND * 300)
740 U = 700 + INT(RND * 500)
750 L = 70 + INT(RND * 50)
760 RETURN
770 REM **********
780 REM Bankruptcy
790 PRINT: PRINT "Well, Xeno, that's a fine"
800 PRINT "mess you've got yourself, and"
810 PRINT "our little planet into."
820 GOSUB 880
830 PRINT: PRINT "The Treasury is bankrupt!!"
840 GOSUB 880
850 PRINT: PRINT "Guess who blew it?????????"
860 GOTO 490
870 REM ************************
880 REM Delay
890 FOR J = 1 TO lS00: NEXT J
900 PRINT
910 RETURN

