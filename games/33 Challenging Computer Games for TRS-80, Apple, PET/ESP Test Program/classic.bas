10 CLS: RANDOMIZE TIMER
20 PRINT: PRINT "THIS PROGRAM TESTS YOUR KNOWLEDGE OF ESP."
30 PRINT "THEIR ARE TWO PARTS TO THE ENTIRE PROGRAM, UPON SELECTION"
40 PRINT "OF AN INDIVIDUAL PART, FURTHER INSTRUCTIONS WILL BE LISTED."
50 PRINT: PRINT "SELECT BY NUMBER ONLY:"
60 PRINT "(1) TELEPATHY (REQUIRES TWO PEOPLE)"
70 PRINT "(2) PRECOGNITION"
80 INPUT X
90 ON X GOTO 100, 550
100 CLS: PRINT
105 F = 0: N = 0: T = 10
110 PRINT "THIS PART OF THE PROGRAM DEALS WITH TELEPATHY."
120 PRINT "TELEPATHY IS THE TRANSFERENCE OF THOUGHTS FROM ONE"
130 PRINT "PERSON TO ANOTHER WITHOUT USE OF THE FIVE SENSES."
140 PRINT "HAVE ANOTHER PERSON (THE RECEIVER) SIT WHERE THE VIDEO"
150 PRINT "SCREEN IS NOT VISIBLE TO THEIR SIGHT. AFTER EXECUTION"
160 PRINT "OF THIS PROGRAM A NUMBER WILL BE PRINTED ON THE"
170 PRINT "SCREEN (THESE WILL BE CALLED RANDOM TARGET NUMBERS)."
180 PRINT "LOOK AT THE NUMBER, CONCENTRATE ON IT VERY HARD. THEN"
190 PRINT "ASK THE RECEIVER WHAT THE NUMBER IS. THERE WILL BE TEN"
200 PRINT "TARGET NUMBERS. DO THESE TESTS IN QUIET SURROUNDINGS."
205 GOSUB 500
210 REM GET TARGET NUMBER
220 T = INT(10 * RND(1) + 1)
230 PRINT: PRINT
240 PRINT: PRINT TAB(30); T
250 PRINT
260 PRINT "THIS IS THE RANDOM TARGET NUMBER, CONCENTRATE ON IT"
270 PRINT "ASK THE RECEIVER WHAT IT IS, THEN ENTER THE RECEIVER'S"
280 PRINT "SCORE (ENTER 1 FOR A CORRECT RESPONSE AND 0 FOR AN"
290 PRINT "INCORRECT RESPONSE)."
300 GOSUB 530: REM TIME LOOP
310 INPUT "ENTER THE RECEIVERS SCORE"; A
320 N = N + 1: REM AMOUNT OF NUMBERS PRINTED
330 IF A = 1 THEN F = F + 1
340 IF A = 0 THEN F = F
350 S = INT(100 * F / T): REM PRECENT SCORE
360 PRINT "NUMBER OF TRIES -"; N
370 PRINT "SCORE THUS FAR"; S; "% CORRECT ..."
380 IF N <> 10 THEN GOSUB 500: GOTO 210
390 GOTO 910
400 GOTO 550
500 PRINT: PRINT "PRESS ANY KEY "
510 A$ = INKEY$: IF A$ = "" THEN 510
520 CLS: RETURN
530 FOR I = 1 TO 2500: NEXT: RETURN
550 CLS: A = 10: F = 0: N = 0
555 FOR I = 1 TO 5: READ C$(I): NEXT
560 PRINT
570 PRINT "THIS PORTION OF THE PROGRAM DEALS WITH PRECOGNITION."
580 PRINT "WHICH IS TO KNOW BEFOREHAND. YOU'LL ATTEMPT TO READ (THE COMPUTER'S)"
590 PRINT "MEMORY BEFORE IS PRINTED ON THE SCREEN IN A"
600 PRINT "GIVEN AMOUNT OF TIME (NAMES OF COLORS WILL BE USED)."
610 REM L= TIME LOOP / 500
620 PRINT "TO SET THE TIME RATE, HAVE YOU HAD ANY PRECOGNITIONS"
630 PRINT "THAT YOU CAN REMEMBER? (ENTER 0,1,2,3, ETC. - NOT MORE"
635 PRINT "THAN 10)";
640 INPUT P
650 IF P < 0 OR P > 10 THEN PRINT 'TRY AGAIN... INVALID RESPONSE.":GOTO 640
660 IF P > 5 THEN P = 5000: L = P / 500: GOTO 680
670 P = 7500: L = P / 500
680 PRINT: PRINT "YOU'LL HAVE"; L; "SECONDS BEFORE EACH COLOR IS"
685 PRINT "PRINTED ON THE SCREEN....."
690 GOSUB 500: PRINT
700 PRINT "AFTER EXECUTION OF THIS PORTION, CONCENTRATE ON THE"
710 PRINT "DIFFERENT COLORS THAT MIGHT BE CONTAINED IN THE COMPUTER'S"
715 PRINT "MEMORY, WRITE DOWN YOUR ANSWER ON A PIECE OF PAPER."
720 PRINT "AFTER YOUR ALLOTTED TIME, THE COMPUTER WILL PRINT THE"
725 PRINT "COLOR. ENTER YOUR SCORE: 1 FOR CORRECT, 0 FOR INCORRECT."
730 PRINT "THE ROOM YOU ARE IN MUST BE QUIET !!"
760 GOSUB 500
765 PRINT
770 PRINT "CONCENTRATE, THEN WRITE YOUR ANSWER ON PAPER."
780 PRINT "REMEMBER, YOU ONLY HAVE"; L; "SECONDS."
790 N = N + 1: I = INT(4 * RND(1) + 1)
800 ST = TIMER + L
805 IF TIMER < ST THEN 805
810 PRINT: PRINT "TIME'S UP !!!"
820 PRINT: PRINT: PRINT
825 PRINT TAB(25); C$(I)
830 PRINT: PRINT "DID YOUR ANSWER MATCH THE COMPUTERS MEMORY? (1/0)";
840 INPUT M
850 IF M = L THEN F = F + 1
860 IF M = 0 THEN F = F
870 S = INT(100 * F / A)
880 PRINT: PRINT "NUMBER OF TRIES -"; N
890 PRINT "SCORE THUS FAR"; S; "% CORRECT."
900 IF N <> 10 THEN GOSUB 500: GOTO 770
910 GOSUB 500
920 PRINT: PRINT "YOU HAD"; N; "TRIES... PERCENTAGE AS LISTED:"
930 PRINT "CHANCE SCORE 10% TO 30%"
940 PRINT "GOOD SCORE 40% TO 60%"
950 PRINT "EXCELLENT SCORE 70% TO 100%"
955 PRINT
960 PRINT "YOUR TOTAL SCORE WAS -"; S; "% CORRECT."
970 GOSUB 500
975 PRINT
980 PRINT "SHALL WE TRY AGAIN";
990 INPUT N$
1000 IF LEFT$(N$, 1) = "Y" THEN RESTORE: GOSUB 500: GOTO 50
1010 PRINT
1020 PRINT "WHAT'S THE MATTTER, GOT A HEADACHE ???"
1030 END
1050 DATA RED,GREEN,BROWN,YELLOW,BLUE

