10 PRINT TAB(26); "TVPLOT"
20 PRINT TAB(20); "CREATIVE COMPUTING"
40 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
45 RANDOMIZE TIMER
50 PRINT: PRINT: PRINT
55 PRINT "THIS PROGRAM AUTOMATICALLY COMES UP WITH TELEVISION"
60 PRINT "SHOWS GUARANTEED TO APPEAL TO THE MASSES AND WIN"
70 PRINT "HIGH NEILSEN RATINGS.": PRINT
80 PRINT "HERE IS THE FIRST PLOT:"
100 PRINT: GOSUB 800
110 ON X GOTO 120, 130, 140, 150, 160, 120, 130, 140, 150, 160
120 A$ = "PROGRAM": GOTO 170
130 A$ = "REPORT": GOTO 170
140 A$ = "SPECIAL": GOTO 170
150 A$ = "SERIES": GOTO 170
160 A$ = "STORY"
170 GOSUB 800
180 ON X GOTO 190, 200, 210, 220, 230, 240, 250, 260, 270, 280
190 B$ = "SWINGING": GOTO 290
200 B$ = "BRILLIANT": GOTO 290
210 B$ = "SALTY": GOTO 290
220 B$ = "HILARIOUS": GOTO 290
230 B$ = "SENSITIVE": GOTO 290
240 B$ = "DODDERING": GOTO 290
250 B$ = "HENPECKED": GOTO 290
260 B$ = "DEDICATED": GOTO 290
270 B$ = "THOUGHTFUL": GOTO 290
280 B$ = "HEAVY"
290 GOSUB 800
300 ON X GOTO 310, 320, 330, 340, 350, 360, 370, 380, 390, 400
310 C$ = "GIRL COWHAND": GOTO 410
320 C$ = "LITTLE BOY": GOTO 410
330 C$ = "SCIENTEST": GOTO 410
340 C$ = "LAWYER": GOTO 410
350 C$ = "TOWN MARSHALL": GOTO 410
360 C$ = "DENTIST": GOTO 410
370 C$ = "BUS DRIVER": GOTO 410
380 C$ = "JUNGLE MAN": GOTO 410
390 C$ = "SECRET AGENT": GOTO 410
400 C$ = "COLLIE"
410 GOSUB 800
420 ON X GOTO 430, 440, 450, 460, 470, 430, 440, 450, 460, 470
430 D$ = "A WHIZ": GOTO 480
440 D$ = "A FLOP": GOTO 480
450 D$ = "MEDIOCRE": GOTO 480
460 D$ = "A SUCCESS": GOTO 480
470 D$ = "A DISASTER"
480 GOSUB 800
490 ON X GOTO 500, 510, 520, 530, 540, 550, 560, 570, 580, 590
500 E$ = "SOLVING CRIMES": GOTO 600
510 E$ = "ROPING COWS": GOTO 600
520 E$ = "COOKING HEALTH FOOD": GOTO 600
530 E$ = "PITCHING WOO": GOTO 600
540 E$ = "PROTECTING ECOLOGY": GOTO 600
550 E$ = "HELPING CHILDREN": GOTO 600
560 E$ = "TWO-FISTED DRINKING": GOTO 600
570 E$ = "FIGHTING FIRES": GOTO 600
580 E$ = "HERDING ELEPHANTS": GOTO 600
590 E$ = "WINNING RACES": GOTO 600
600 GOSUB 800
610 ON X GOTO 620, 630, 640, 650, 660, 670, 680, 690, 700, 710
620 F$ = "RECOVERS THE JEWELS": GOTO 720
630 F$ = "FOILS THE SPIES": GOTO 720
640 F$ = "DESTROYS THE CITY": GOTO 720
650 F$ = "FINDS LOVE": GOTO 720
660 F$ = "SAVES THE ANIMALS": GOTO 720
670 F$ = "CONFESSES": GOTO 720
680 F$ = "DISCOVERS THE SECRET": GOTO 720
690 F$ = "STOPS THE FLOOD": GOTO 720
700 F$ = "HELPS THE DOG": GOTO 720
710 F$ = "MAKES THE SACRIFICE"
720 PRINT "THE "; A$; " IS ABOUT A "; B$; " "; C$; " WHO IS "; D$; " AT"
730 PRINT E$; " AND WHO "; F$; ".": PRINT: PRINT
740 INPUT "ANOTHER (YES OR NO)"; A$
750 IF A$ = "NO" THEN 999
760 GOTO 100
800 X = INT(10 * RND(1) + 1): RETURN
999 PRINT: PRINT "O.K.  HOPE YOU HAVE A SUCCESSFUL TV SHOW!!": END

