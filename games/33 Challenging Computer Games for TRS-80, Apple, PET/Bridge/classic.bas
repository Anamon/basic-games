100 RANDOMIZE TIMER: DIM W$(20)
105 CLS: PRINT
110 PRINT "THE BRIDGE"
120 PRINT
130 PRINT "DO YOU NEED INSTRUCTIONS PRINTED";
140 INPUT A$
150 IF A$ = "NO" THEN N = 1: GOTO 290
160 IF A$ = "YES" THEN 190
165 PRINT
170 PRINT "CAN'T RESPOND TO THAT ANSWER"
180 PRINT: GOTO 130
190 PRINT
200 PRINT "IN THIS SIMULATION YOU WILL ATTEMPT TO BLOW UP A BRIDGE"
210 PRINT "BEFORE THE ENEMY HAS TIME TO ADVANCE THEIR TROOPS ACROSS"
220 PRINT "IT. THE BRIDGE'S NAME, WEAK AREAS AND AMOUNT OF DYNAMITE WILL"
230 PRINT "ALL BE COMPUTER SELECTED. YOU MUST REMEMBER THE NAME AND"
240 PRINT "YOU MUST SELECT WHICH OF THE WEAK AREAS WILL"
250 PRINT "BE MOST EFFECTIVE. THEN YOU WILL SELECT AN AMOUNT OF"
260 PRINT "DYNAMITE TO BE PLACED IN THAT AREA. YOU'LL HAVE ALL"
270 PRINT "THE TIME YOU NEED--AS LONG AS THE ENEMY DOESN'T ADVANCE"
280 PRINT "BEFORE IT'S BLOWN UP."
290 REM GET NAMES OF BRIDGES
300 FOR I = 1 TO 3: READ N$(I): NEXT
310 DATA LOST RIVER,RANGE CREEK,AREA FIVE
315 REM NOW SELECT ONE
320 I = INT(3 * RND(1) + 1)
330 NB$ = N$(I)
340 REM NOW GET WEAK AREAS
350 FOR W = 1 TO 5: READ WA$(W): NEXT
360 DATA LEFT CENTER,RIGHT CENTER,MIDDLE,LOWER BEAMS,UPPER BEAMS
370 REM NOW SELECT TWO
380 W = INT(5 * RND(1) + 1)
390 W$(W) = WA$(W)
400 M = W + INT(2 * RND(1) + 1): IF M > 5 THEN M = (W - INT(2 * RND(1) + 1))
410 W$(M) = WA$(M)
420 REM NOW SET DYNAMITE NEEDED
430 D = INT(10 * RND(1) + 1): IF N = 1 THEN 460
435 GOSUB 440: GOTO 460
440 PRINT: PRINT "PRESS A KEY....."
445 A$ = INKEY$: IF A$ = "" THEN 445
450 RETURN
460 PRINT
470 PRINT "YOUR TARGET IS THE "; NB$; " BRIDGE"
480 PRINT "THIS NAME WILL ONLY BE PRINTED ONCE...."
500 PRINT "HERE ARE THE FIVE WEAK AREAS:"
510 FOR I = 1 TO 5: PRINT WA$(I): NEXT
520 PRINT "YOU MUST CHOOSE WHICH TWO WILL BE MOST EFFECTIVE."
530 PRINT "THE COMPUTER HAS SELECTED AN AMOUNT OF DYNAMITE THAT"
540 PRINT "WILL DO THE JOB. YOU MUST MEET OR EXCEED THAT AMOUNT"
550 PRINT "BUT INPUT NO MORE THAN 10 STICKS."
560 GOSUB 440
570 CLS
580 PRINT
585 REM IF T=2 ENEMY HAS ADVANCED
590 T = INT(5 * RND(1) + 1)
595 IF T = 2 THEN 960
600 PRINT "THE ENEMY HASN'T ADVANCED YET....."
605 IF A = 1 THEN 640
610 PRINT "INPUT THE NAME OF YOUR TARGET";
620 INPUT T$
640 PRINT "INPUT WHICH TWO AREAS WILL BE MOST EFFECTIVE";
650 INPUT E$, EF$
670 PRINT "HOW MUCH DYNAMITE DO YOU WANT PLACED THERE";
680 INPUT DY
700 IF DY > 10 THEN PRINT "DUMMY !! IT WON'T TAKE THAT MUCH !!": GOTO 680
710 GOSUB 440: GOSUB 900: GOTO 850
720 FOR I = 1 TO 5000: NEXT
750 PRINT "YOU JUST BLEW UP THE WRONG BRIDGE, LUCKY FOR YOU"
760 PRINT "THAT NONE OF YOUR TROOPS WERE ON IT !!!"
770 GOTO 1000
780 PRINT: PRINT "SORRY... THE TWO SELECTIONS WERE INCORRECT."
790 PRINT "THE ENEMY CAN STILL ADVANCE, THE BRIDGE WASN'T COMPLETELY"
800 PRINT "DESTROYED... TRY AGAIN."
805 P = P + 1: IF P = 3 THEN GOSUB 1100
810 GOSUB 440: A = 1: GOTO 570
820 PRINT "YOU DIDN'T PLACE ENOUGH DYNAMITE AT THE LOCATIONS"
830 PRINT "YOU SELECTED. VERY LITTLE DAMAGE WAS DONE TO THE BRIDGE."
840 GOTO 810
850 PRINT: PRINT "CONGRATULATIONS !!"
860 PRINT "YOU'VE BLOWN UP THE BRIDGE WITHIN PLENTY OF TIME"
870 PRINT "TO STOP THE ENEMY FORCES. VERY WELL DONE, I MIGHT ADD."
880 GOTO 1000
900 REM WAS BRIDGE DESTROYED???
910 IF T$ <> NB$ THEN 750
920 IF E$ <> W$(W) OR EF$ <> W$(M) THEN 780
930 IF DY < D THEN 820
940 REM RETURN IF DESTROYED
950 RETURN
960 PRINT: PRINT "SORRY... YOU ARE TOO LATE, THE ENEMY HAS ALREADY"
970 PRINT "ADVANCED ACROSS THE "; NB$; " BRIDGE. YOU CAN'T STOP"
980 PRINT "THEM NOW... TURKEY !!"
1000 GOSUB 440
1010 PRINT
1020 PRINT "WOULD YOU LIKE TO TRY THE BRIDGE ONCE MORE";
1030 INPUT A$
1040 IF A$ = "YES" THEN RESTORE: GOTO 130
1050 IF A$ = "NO" THEN 1080
1060 PRINT "LET'S TRY A STRAIGHT YES/NO ANSWER"
1070 GOTO 1020
1080 PRINT: PRINT "THE ENEMY WILL THANK YOU AFTER THEY'RE"
1085 PRINT "ACROSS THE OTHER BRIDGES !!"
1090 END
1100 PRINT
1105 PRINT
1110 PRINT "WHY DON'T YOU WRITE THEM DOWN ON PAPER."
1120 PRINT "CROSS OUT THE ORDER WHICH YOU'VE TRIED.."
1130 PRINT "AND TAKE IT FROM THERE !!"
1140 P = 0: RETURN

