5 PRINT TAB(27); "DR.Z"
6 PRINT TAB(20); "CREATIVE COMPUTING"
7 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
8 PRINT: PRINT: PRINT
10 RANDOMIZE TIMER
20 PRINT "HELLO THERE, I'M YOUR COMPUTER THERAPIST."
30 PRINT "WHAT IS YOUR NAME? AND TELL ME SOMETHING ABOUT YOURSELF."
40 PRINT "HOWEVER, DON'T TYPE MORE THAN ONE LINE. I TIRE EASILY."
50 INPUT A$
60 PRINT "WHAT DID YOU SAY YOUR NAME WAS AGAIN?"
70 INPUT B$
80 PRINT "HOW DO YOU FEEL TODAY?"
90 LET C = 0: U = 0: V = 0
100 INPUT A$
110 PRINT
120 PRINT
130 IF C = 10 THEN 720
140 LET Z = INT(10 * RND(1))
150 IF U = Z THEN 140
160 IF V = Z THEN 140
170 LET U = Z
180 ON Z + 1 GOTO 690, 420, 450, 480, 510, 540, 570, 600, 630, 660
380 GOTO 690
390 PRINT "THAT'S VERY INTERESTING, TELL ME MORE."
400 PRINT
410 GOTO 690
420 PRINT "HAVE YOU FELT THIS WAY LONG?"
430 PRINT
440 GOTO 690
450 PRINT "DO YOU THINK THIS IS REASONABLE IN LIGHT OF YOUR INTERESTS?"
460 PRINT
470 GOTO 690
480 PRINT "DO YOUR FRIENDS FIND THIS ACCEPTABLE?"
490 PRINT
500 GOTO 690
510 PRINT "DO YOU FEEL COMFORTABLE WITH THIS FEELING?"
520 PRINT
530 GOTO 690
540 PRINT "DO YOU THINK THAT THIS IS A NORMAL FEELING?"
550 PRINT
560 GOTO 690
570 PRINT "WHY DO YOU THINK YOU FEEL THIS WAY?"
580 PRINT
590 GOTO 690
600 PRINT "HAVE YOU TALKED TO ANYONE ABOUT THIS?"
610 PRINT
620 GOTO 690
630 PRINT "WHY ARE YOU HERE?"
640 PRINT
650 GOTO 690
660 PRINT "ARE YOU SATISFIED WITH THE WAY YOUR IDEAS ARE DEVELOPING?"
670 PRINT
690 LET C = C + 1
700 LET U = Z
710 GOTO 100
720 PRINT "I THINK YOU ARE MAKING A GREAT ATTEMPT TO SOLVE YOUR"
730 PRINT "DIFFICULTIES, AND I SEE NO NEED TO CONTINUE THIS"
740 PRINT "SESSION ANY FURTHER."
750 PRINT B$; " WOULD YOU MAKE ANOTHER APPOINTMENT WITH MY COMPUTER"
760 PRINT "FOR SOMETIME IN THE NEXT FEW WEEKS. WHAT DATE WOULD YOU"
770 PRINT "PREFER?"
780 INPUT A$
790 PRINT "THAT WILL BE FINE ."
800 PRINT "I'VE ENJOYED COMMUNICATING WITH YOU."
810 PRINT "HAVE A NICE DAY."
820 FOR T = 1 TO 6
830 PRINT
840 NEXT T
850 END
