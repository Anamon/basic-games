10 PRINT TAB(26); "UFO"
20 PRINT TAB(19); "CREATIVE COMPUTING"
30 PRINT TAB(18); "MORRISTOWN NEW JERSEY"
40 PRINT: PRINT: PRINT
50 RANDOMIZE TIMER
60 DIM P(1)
80 REM UFO
90 PRINT " DO YOU WANT INSTRUCTIONS";
100 INPUT A$
102 IF LEFT$(A$, 1) = "N" THEN 480
104 IF LEFT$(A$, 1) = "Y" THEN 110
106 GOTO 90
110 PRINT "YOU ARE ABOUT TO RECEIVE HIGH SECURITY INFORMATION"
120 PRINT "PLEASE EAT THE COMPUTER READ OUT AFTER READING"
130 PRINT: PRINT: PRINT
140 PRINT "THIS IS THE YEAR 2000...CIVILIZATION AS YOU KNOW IT HAS"
150 PRINT "BEEN DESTROYED...NATIONS HAVE BEEN REDUCED TO RUBBLE"
160 PRINT "IN A MASSIVE SPACE WAR"
170 PRINT "YOU ARE ONBOARD A SPACE SHIP WHOSE SOLE PURPOSE"
180 PRINT "IS TO SAFE GUARD THE 150 PEOPLE ON YOUR SHIP...THE"
190 PRINT "SOLE SURVIVORS...YOUR MISSION: FIND A PLANET SUITABLE"
200 PRINT "FOR YOUR COLONISTS.....PROBLEM: THE ENEMY OF EARTH STILL"
210 PRINT "EXISTS. STRANGE CREATURES NEVER SEEN BY MAN": PRINT
220 PRINT "BY THE TIME YOU READ THIS EARTH WILL NO LONGER EXIST......."
230 PRINT "HERE IS YOUR VITAL DATUM:"
240 PRINT TAB(10); "YOU ARE EQUIPT WITH 10000 UNITS OF ENERGY"
250 PRINT TAB(10); "WHEN YOU RUN OUT THE ALIENS WILL DESTROY YOU"
255 INPUT Z$
260 PRINT: PRINT: PRINT: PRINT TAB(25); "WEAPONRY"
270 PRINT "TYPE"; TAB(5); "DESCRIPTION"; TAB(17); "CAPACITY"; TAB(26);
275 PRINT "FUEL DRAIN"
280 PRINT "  1"; TAB(5); "HEAVY GUNS"; TAB(17); "0-11000"; TAB(27);
285 PRINT "10 UNITS"
290 PRINT "  2"; TAB(5); "WARHEADS"; TAB(14); "10000-100000"; TAB(27);
295 PRINT "100 UNITS"
300 PRINT "  3"; TAB(5); "LASER"; TAB(13); "10000-20000"; TAB(27);
305 PRINT "1000 UNITS"
310 PRINT: PRINT: PRINT TAB(25); "OPTIONS"
320 PRINT "  4"; TAB(5); "APPROACH"; TAB(17); "---------"; TAB(26);
325 PRINT "100 UNITS"
327 PRINT "  5"; TAB(5); "RETREAT"; TAB(17); "---------"; TAB(26);
328 PRINT "100 UNITS"
330 PRINT "  6"; TAB(5); "BY TYPING 6 YOU CAN PASS AND GAIN 100 UNITS"
350 PRINT TAB(5); "(LABORERS WORK TO PRODUCE POWER)"
355 INPUT Z$
360 PRINT: PRINT: PRINT TAB(25); "ENEMY"
370 PRINT: PRINT "THE ENEMY HAS THE SAME CAPABILITIES THAT YOU HAVE"
380 PRINT "EACH TIME A SHIP IS HIT ITS ENERGY DRAIN IS EQUAL TO"
390 PRINT "THE AMOUNT OF ENERGY SPENT*10 (EXCEPT LASER WHICH EQUALS"
400 PRINT TAB(30); "THE AMOUNT SPENT*3 UNITS)"
410 PRINT "BOTH SHIPS ARE ON THE SAME MISSION, DESTINATION AND BOTH"
420 PRINT "ARE ON EQUAL TERMS"
430 PRINT "UNFORTUNATLY YOU MUST KILL EACH OTHER TO WIN"
440 PRINT "YOUR MAXIMUM SPEED IS A JUMP OF 50000 UNITS, HOWEVER"
450 PRINT "SPEEDS VARY BETWEEN 10000-50000"
460 PRINT "WARHEADS TRAVEL AT 35000 FEET PER SEC...SHELLS 1000";
465 PRINT " PER SECOND"
470 PRINT "THIS MESSAGE WAS RECORDED EARTH IS DEAD...GOOD LUCK"
480 PRINT: PRINT: PRINT: PRINT "THIS IS COMPUTER CONTROL WHAT IS YOUR NAME";
490 INPUT A$: PRINT "VERY GOOD "; A$
500 P = 10000: P(1) = 10000: A = RND(1) * 200000
510 PRINT "LEAVING PLANETARY ORBIT "; A$; B$; C$; " SHIP APPROACHING AT";
512 PRINT
515 PRINT A; "MILES"
520 PRINT "WHAT ARE YOUR ORDERS "; A$; B$; C$;: INPUT C
530 O = INT(RND(1) * 2) + 1
540 ON C GOTO 570, 650, 710, 750, 780, 820
560 PRINT "LETS NOT CRACK UNDER PRESSURE": GOTO 520
570 IF A > 11005 THEN 560
580 P = P - 10
590 PRINT "GUNS FIRED":
595 FOR X = 1 TO A * 2 STEP 1000
600 NEXT X
610 IF O = 1 THEN 630
620 PRINT "MISSED TO BAD": GOTO 830
630 PRINT "DIRECT HIT.......ENEMY SHIP'S POWER DOWN"
640 P(1) = P(1) - 100: GOTO 830
650 IF A > 100000 THEN 560
655 IF A < 10000 THEN 560
660 P = P - 100: PRINT "WARHEAD LAUNCHED": FOR X = 1 TO A * 2 STEP 35000
670 NEXT X
680 IF O = 1 THEN 690: ELSE PRINT "MISSED TOO BAD": GOTO 830
690 PRINT "DIRECT HIT.....ENEMY SHIP'S POWER DOWN"
700 P(1) = P(1) - 1000
705 GOTO 830
710 IF A < 100000 THEN 560
714 P = P - 1000
716 PRINT "LASER FIRED"
720 IF O = 1 THEN 730
725 PRINT "MISSED TOO BAD": GOTO 830
730 PRINT "DIRECT HIT.....ENEMY SHIP'S POWER DOWN"
740 P(1) = P(1) - 3000: GOTO 830
750 B = RND(1) * 40000 + 10000: A = A - B: P = P - 100: IF A < 1 THEN 770
760 GOTO 830
770 PRINT "***COLLISION***": PRINT "BOTH SHIPS DESTROYED": GOTO 1080
780 B = RND(1) * 40000 + 10000: A = A + B: P = P - 100: IF A > 200050 THEN 800
790 GOTO 830
800 PRINT A$; " YOUR RANGE IS "; A; "BUT WE CANNOTR RUN, RANGE IS NOW ";
805 PRINT "200000"
810 A = 200000: GOTO 830
820 P = P + 100
830 PRINT "ENEMY SHIP REPORT": PRINT "RANGE="; A; "  POWER="; P(1)
840 IF P(1) < 1 THEN 1110
850 IF P(1) < 500 THEN 1040
860 IF A < 5000 THEN 1070
870 R = INT(RND(1) * 3) + 1: O = INT(RND(1) * 2 + 1)
880 ON R GOTO 970, 920
885 'IF R=W THEN
890 IF A < 100000 THEN 870
892 P(1) = P(1) - 1000
894 PRINT "ENEMY FIRES LASER"
900 IF O = 1 THEN 910: ELSE PRINT "MISSED...WHEW!!": GOTO 1010
910 PRINT "DIRECT HIT..... POWER DOWN": P = P - 3000: GOTO 1010
920 IF A > 100000 THEN 870: ELSE IF A < 10000 THEN 870
930 P(1) = P(1) - 100: PRINT "ENEMY WARHEAD FIRED"
940 FOR D = 1 TO A STEP 35000: NEXT D
950 IF O = 1 THEN 960: ELSE PRINT "MISSED... WHEW!": GOTO 1010
960 P = P - 1000: PRINT "DIRECT HIT!...POWER DOWN": GOTO 1010
970 IF A > 11000 THEN 870: ELSE P(1) = P(1) - 10: PRINT "ENEMY FIRES SHELL"
980 FOR D = 1 TO A STEP 1000: NEXT D
990 IF O = 1 THEN 1000: ELSE PRINT "MISSED...WHEW!": GOTO 1010
1000 PRINT "DIRECT HIT .....POWER DOWN": P = P - 100
1010 PRINT: PRINT: PRINT TAB(10); "STATUS OF SHIP"
1020 PRINT "RANGE="; A; "POWER SUPPLY="; P: IF P < 1 THEN 1130
1030 GOTO 520
1040 P(1) = P(1) + 100: PRINT "ENEMY SHIP RESTING": GOTO 1010
1050 B = INT(RND(1) * 40000) + 10000: A = A - B: PRINT "ENEMY SHIP APPROACHING  "; A$; B$;
1055 PRINT C$
1060 GOTO 1010
1070 B = RND(1) * 40000 + 10000: A = A + B: PRINT "ENEMY SHIP RETREATING": GOTO 1010
1080 PRINT "THAT WAS A PRETTY DUMB THING TO DO "; A$; B$; C$
1090 PRINT "YOUR MISSION IS TO PROTECT YOUR PASSENGERS NOT DESTROY"
1100 GOTO 1140
1110 PRINT "ENEMY SHIPS POWER GONE NO LIFE PRESENT"
1120 PRINT "MISSION SUCCESSFUL": GOTO 1210
1130 PRINT "ENEMY IS VICTOR LIFE SUPPORT FADING CREW DYING"
1140 REM
1150 PRINT
1160 PRINT
1170 PRINT
1180 PRINT "PLAY AGAIN";
1190 INPUT A$
1200 IF LEFT$(A$, 1) = "Y" THEN 80
1210 END

