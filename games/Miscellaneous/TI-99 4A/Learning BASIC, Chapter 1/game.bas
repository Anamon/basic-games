10 QA=600
20 QZ=.6
50 GOTO 300
60 FOR Q=1 TO QA*QZ
70 NEXT Q
80 RETURN
90 R=INT(LC)
100 QQ=0
110 C=100*(LC-R)
120 FOR Q=1 TO LEN(A$)
130 QQ=QQ+1
140 IF C+QQ<31 THEN 170
150 R=R+1
160 QQ=1
170 CALL HCHAR(R,C+QQ,ASC(SEG$(A$,Q,1)))
180 NEXT Q
190 RETURN
200 INPUT "       (PRESS ENTER)":Q$
210 RETURN
300 CALL CLEAR
310 CALL SCREEN(2)
320 PRINT "COMPUTERS ARE AN IMPORTANT":"PART OF OUR MODERN WORLD.": :"MANY PEOPLE BELIEVE THAT IN"
330 PRINT "A VERY FEW YEARS,":"EVERY HOME WILL HAVE ITS":"VERY OWN COMPUTER.": : :"NOW, TO GET YOUR COMPUTER TO"
340 PRINT "DO THINGS, YOU NEED":"TO UNDERSTAND THE":"COMPUTER'S LANGUAGE.": : :
350 PRINT "ONCE YOU KNOW ITS LANGUAGE,":"YOU CAN PROGRAM THE COMPUTER":"TO WORK FOR YOU.": : :
360 PRINT "THE LANGUAGE MOST OF US":"LITTLE COMPUTERS USE IS":"THE LANGUAGE CALLED ""BASIC""."
370 CALL SCREEN(12)
380 QA=5000
390 GOSUB 60
400 CALL CLEAR
410 LC=8.03
420 A$="LEARNING BASIC"
430 GOSUB 90
440 QA=500
450 GOSUB 60
460 LC=10.03
470 A$="WITH YOUR TEXAS INSTRUMENTS99/4 HOME COMPUTER"
480 GOSUB 90
490 QA=1000
500 GOSUB 60
510 CALL CLEAR
520 PRINT "WITH THE BASIC LANGUAGE YOU":"CAN DO CALCULATIONS,":"PROGRAM GAMES,":"AND DO ALL SORTS OF COMPUTER"
530 PRINT "TYPE WORK.": :"YOUR TI 99/4 HAS ALL THESE":"CAPABILITIES."
540 QA=3000
550 GOSUB 60
560 CALL CLEAR
570 LC=1.03
580 A$="IN ADDITION, I CAN DO SOME UNUSUAL THINGS"
590 GOSUB 90
600 CALL SOUND(1000,131,4)
610 CALL SOUND(1000,165,4)
620 CALL SOUND(1000,196,4)
630 CALL SOUND(500,110,30)
640 CALL SOUND(2000,165,5,196,5,262,5,-3,10)
650 CALL SOUND(3000,175,5,220,5,262,5,-3,10)
670 PRINT "LIKE PLAY MUSIC": : : : : :"OR EVEN,": : : : :"(DRAMATIC PAUSE)"
680 CALL SOUND(3000,165,0,196,0,262,0,-3,10)
700 I=7
710 K=6
720 M=5
730 J=1
740 CALL CHAR(104,"00183C7E7E3C18")
750 CALL CHAR(100,"00183C7E7E3C18")
760 CALL CHAR(112,"00183C7E7E3C18")
770 CALL CHAR(152,"1818181818181818")
780 CALL CHAR(153,"000000FFFF")
790 CALL CLEAR
800 CALL SCREEN(2)
810 GOSUB 1060
815 CALL SCREEN(5)
820 CALL COLOR(11,11,11)
830 CALL COLOR(16,16,2)
840 CALL COLOR(9,I,K)
850 CALL COLOR(10,M,K)
860 TEMP=I
870 I=M
880 M=TEMP
890 I=I+1
900 J=J+1
910 IF I<17 THEN 940
920 I=1
930 K=K+1
940 CALL COLOR(11,I,I)
950 IF J<40 THEN 1040
960 IF J>40 THEN 1030
970 LC=2.03
980 A$="COLOR GRAPHICS"
990 GOSUB 90
1000 LC=20.21
1010 A$="PRETTY,  ISN'T IT?"
1020 GOSUB 90
1030 CALL SCREEN(16)
1040 IF J=90 THEN 1260
1050 GOTO 840
1060 FOR Q=1 TO 15
1070 CALL HCHAR(1,2*Q,100)
1080 CALL HCHAR(1,2*Q+1,104)
1090 CALL HCHAR(24,2*Q,100)
1100 CALL HCHAR(24,2*Q+1,104)
1110 NEXT Q
1120 CALL HCHAR(13,12,112,9)
1130 CALL HCHAR(12,13,112,7)
1140 CALL HCHAR(14,13,112,7)
1150 CALL HCHAR(15,14,112,5)
1160 CALL HCHAR(11,14,112,5)
1170 CALL HCHAR(10,15,112,3)
1180 CALL HCHAR(16,15,112,3)
1190 CALL HCHAR(9,16,112)
1200 CALL HCHAR(17,16,112)
1210 CALL VCHAR(4,16,152,4)
1220 CALL VCHAR(19,16,152,4)
1230 CALL HCHAR(13,3,153,8)
1240 CALL HCHAR(13,22,153,8)
1250 RETURN
1260 CALL CLEAR
1270 CALL SCREEN(12)
1280 CALL CHAR(102,"7E7E7E7E")
1290 CALL COLOR(9,5,1)
1300 PRINT "FIRST OF ALL, YOU WILL NEED":"TO KNOW HOW TO USE":"THE KEYBOARD.": : :"THE MOST IMPORTANT KEY IS"
1310 PRINT "THE ";CHR$(102);"ENTER";CHR$(102);" KEY."
1320 GOSUB 60
1330 PRINT: : : :"PRESS THE ENTER KEY WHENEVER":"YOU ARE FINISHED TALKING":"TO THE COMPUTER."
1340 GOSUB 200
1350 CALL CLEAR
1360 PRINT "GOOD!": : : :"MY NAME IS":"TEXAS INSTRUMENTS 99/4."
1370 QA=600
1380 GOSUB 60
1410 PRINT: : : :"WHAT IS YOUR NAME?": :"DON'T FORGET TO PUSH THE":"ENTER KEY":"AFTER YOU TYPE YOUR NAME."
1420 PRINT "(EVEN IF YOU MAKE A MISTAKE)"
1430 INPUT A$
1435 IF A$="" THEN 1410
1440 Q=POS(A$," ",1)
1450 IF Q>0 THEN 1480
1460 B$=A$
1470 GOTO 1490
1480 B$=SEG$(A$,1,Q-1)
1490 PRINT: : :"DID YOU MAKE A TYPING ERROR?":"(TYPE YES OR NO":"AND DON'T FORGET "ENTER".)"
1500 INPUT A$
1510 CALL CLEAR
1520 IF A$="NO" THEN 1580
1530 IF A$<>"YES" THEN 1560
1540 PRINT "DON'T WORRY. I'LL SHOW YOU":"HOW TO FIX ERRORS; BUT FIRST"
1550 GOTO 1410
1560 PRINT "(TYPE YES OR NO AND 'ENTER')"
1570 GOTO 1490
1580 PRINT "VERY GOOD, ";B$;",";"BUT JUST IN CASE YOU DO MAKE":"A MISTAKE, I'LL SHOW YOU":"HOW TO FIX IT.": :
1590 GOSUB 60
1600 Q=LEN(B$)
1610 D$=SEG$(B$,1,Q-1)
1620 E$=SEG$(B$,Q,1)
1630 D$=D$&"Q"
1640 PRINT: :"SUPPOSE YOU TYPED":D$;:" INSTEAD OF":B$;"."
1650 PRINT "WE WANT TO CHANGE THE "Q"":"TO "";E$;"".": :
1660 CALL CHAR(103,"000010207E201")
1670 CALL COLOR(9,5,16)
1680 PRINT "WE MUST USE THE ";CHR$(103);" KEY."
1690 PRINT "IF YOU HOLD THE SHIFT KEY":"DOWN AND PRESS THE ";CHR$(103);" KEY,":"THE BLINKING BOX WILL MOVE"
1700 PRINT "ONE SPACE TO THE LEFT.":"NOW, YOU CAN TYPE IN THE":"CORRECT LETTER."
1710 PRINT "TRY IT.  CHANGE":D$;" TO ";B$;".": :
1720 PRINT "FIRST TYPE ";D$;" AND THEN":"CORRECT IT."
1730 INPUT A$
1740 IF A$=B$ THEN 1790
1750 CALL CLEAR
1760 PRINT "THAT DOES NOT LOOK RIGHT.":"LET'S TRY AGAIN."
1770 PRINT:"TYPE ";D$: : :"HOLD DOWN THE SHIFT KEY AND":"PRESS ";CHR$(103):"NOW PRESS ";E$:"AND PRESS ENTER."
1780 GOTO 1720
1790 PRINT "WELL DONE!"
1800 GOSUB 60
1810 CALL CLEAR
1890 LC=2.03
1900 A$="NOW "&B$&", WE ARE READY"
1910 GOSUB 90
1920 LC=4.03
1930 A$="TO DO SOME COMPUTING."
1940 GOSUB 90
1950 LC=6.03
1960 GOSUB 60
1970 A$="ACTUALLY WE'LL START WITH  SOME NUMBER CALCULATIONS."
1980 GOSUB 90
1990 PRINT "THIS HURTS MY PRIDE."
2000 GOSUB 60
2010 PRINT:"YOU WILL BE USING ME AS A":"LITTLE CALCULATOR, NOT THE":"SNAZZY COMPUTER THAT I AM.": :
2020 GOSUB 60
2030 PRINT "BEFORE WE START, I MUST":"MENTION SOMETHING IMPORTANT!": : :
2040 GOSUB 200
2050 PRINT "THIS IS THE LETTER O:    O":"AND":"THIS IS THE NUMBER ZERO: 0": :"DON'T CONFUSE THE TWO!"
2060 GOSUB 200
2070 CALL CLEAR
2080 PRINT "LET'S START WITH EASY STUFF,": :"ADDITION OF TWO NUMBERS.": :"THE WAY WE DO THIS":"IS TO TYPE,":
2090 PRINT "PRINT 3+5    AND THEN":"PRESS "ENTER".": : : :"I WILL THEN PRINT THE ANSWER": :
2100 PRINT "TRY IT!": :"TYPE":"    PRINT 3+5": :"AND PRESS "ENTER","
2110 INPUT A$
2120 SS$=A$
2130 GOSUB 2150
2140 GOTO 2250
2150 PL=POS(SS$,"+",1)
2160 MI=POS(SS$,"-",1)
2170 MU=POS(SS$,"*",1)
2180 DI=POS(SS$,"/",1)
2190 PR=POS(SS$,"PRINT",1)
2200 LP=POS(SS$,"(",1)
2210 RP=POS(SS$,")",1)
2220 PO=POS(SS$,"^",1)
2230 TT=PL+MI+MU+DI+LP+RP+PR+PO
2240 RETURN
2250 IF PR>0 THEN 2280
2260 PRINT "ITS SUPPOSED TO START WITH":"THE WORD "PRINT".":"AGAIN!"
2270 GOTO 2100
2280 IF PL>6 THEN 2320
2290 PRINT "YOU LEFT SOMETHING OUT. OR":"DID SOMETHING WRONG.":"REMEMBER! WE ARE WORKING":"ON ADDITION."
2300 PRINT "GIVE IT ANOTHER TRY!"
2310 GOTO 2100
2320 N1$=SEG$(A$,6,PL-6)
2330 N2$=SEG$(A$,PL+1,LEN(A$))
2340 SS$=N2$
2350 GOSUB 2150
2360 IF TT=0 THEN 2390
2370 PRINT "SOMETHING IS WRONG.":"REMEMBER,":"WE ARE WORKING ONLY WITH":"TWO NUMBERS.":"ONCE AGAIN."
2380 GOTO 2100
2390 PRINT VAL(N1$)+VAL(N2$)
2400 INPUT "DO YOU WANT TO TRY IT AGAIN?":A$
2410 IF SEG$(A$,1,1)="Y" THEN 2100
2420 CALL CLEAR
2430 PRINT "FOR ADDITION":"WE USED THE PLUS SIGN: +": :"FOR SUBTRACTION":"WE USE THE MINUS SIGN: -": :
2440 GOSUB 200
2450 CALL CLEAR
2460 PRINT "FOR MULTIPLICATION,":"WE USE *.": :"2*3  MEANS TWO TIMES THREE.": :
2470 PRINT "LETS TRY MULTIPLICATION.":"TRY TO MULTIPLY TWO NUMBERS.": :"REMEMBER TO START WITH THE"
2480 PRINT "WORD "PRINT" AND TO END BY":"PRESSING THE "ENTER" KEY."
2490 INPUT A$
2500 SS$=A$
2510 GOSUB 2150
2520 IF PR>0 THEN 2550
2530 PRINT "IT MUST START WITH THE WORD":"PRINT.": :"TRY AGAIN!"
2540 GOTO 2490
2550 IF MU>6 THEN 2590
2560 PRINT "I THINK YOU LEFT SOMETHING":"OUT, OR DID SOMETHING WRONG.":"REMEMBER, WE ARE WORKING ON"
2570 PRINT "MULTIPLICATION. TRY IT AGAIN":"IT SHOULD LOOK LIKE THIS:": :"PRINT 3*5"
2580 GOTO 2490
2590 N1$=SEG$(A$,6,MU-6)
2600 N2$=SEG$(A$,MU+1,LEN(A$))
2610 SS$=N2$
2620 GOSUB 2150
2630 IF TT=0 THEN 2660
2640 PRINT "SOMETHING ELSE IS NOT RIGHT.":"REMEMBER, WE ARE MULTIPLYING":"ONLY TWO NUMBERS. TRY AGAIN."
2650 GOTO 2490
2660 PRINT VAL(N1$)*VAL(N2$)
2670 INPUT "LIKE TO DO IT AGAIN ? ":A$
2680 IF SEG$(A$,1,1)="Y" THEN 2490
2690 CALL CLEAR
2700 PRINT "THE SIGN WE USE FOR DIVISION":"IS /.": :"USE IT JUST LIKE YOU USED":"THE MULTIPLICATION SIGN (*).": : :
2710 PRINT "WE COMPUTERS USE THE SIGN ^":"FOR POWERS.":"INSTEAD OF WRITING 2*2*2,":"WHICH IS 2 RAISED TO THE"
2720 PRINT "THIRD POWER,": :"WE PREFER TO WRITE IT "2^3".": :"LET'S DO SOME POWERS.":"TRY TO RAISE A NUMBER"
2730 PRINT "TO A POWER.":
2740 INPUT A$
2750 SS$=A$
2760 GOSUB 2150
2770 IF PR>0 THEN 2800
2780 PRINT "YOU FORGOT "PRINT".":"TRY AGAIN."
2790 GOTO 2740
2800 IF PO>6 THEN 2840
2810 PRINT "THERE IS SOMETHING LEFT OUT":"OR SOMETHING WRONG.":"WE ARE WORKING WITH POWERS."
2820 PRINT "IT SOULD LOOK LIKE THIS:": :"PRINT 4^8"
2830 GOTO 2740
2840 N1$=SEG$(A$,6,PO-6)
2850 N2$=SEG$(A$,PO+1,LEN(A$))
2860 SS$=N2$
2870 GOSUB 2150
2880 IF TT=0 THEN 2910
2890 PRINT "NO, NOT QUITE RIGHT.":"REMEMBER, WE ARE RAISING A":"NUMBER TO A POWER. HAVE":"ANOTHER TRY."
2900 GOTO 2740
2910 IF VAL(N1$)<101 THEN 2940
2920 PRINT N1$;" IS TOO BIG A NUMBER":"FOR ME. TRY A NUMBER":"LESS THAN 100."
2930 GOTO 2740
2940 IF VAL(N2$)<45 THEN 2970
2950 PRINT N2$;" IS TOO HIGH FOR A POWER.":"TRY A NUMBER LESS THAN 40."
2960 GOTO 2740
2970 PRINT VAL(N1$)^VAL(N2$)
2980 IF POS(STR$(VAL(N1$)^VAL(N2$)),"E",1)=0 THEN 3000
2990 PRINT "THIS IS HOW WE COMPUTERS":"PRINT VERY BIG NUMBERS.":"I'LL  SHOW YOU HOW IT WORKS":"IN A LITTLE WHILE."
3000 PRINT "WANT TO TRY POWERS AGAIN?"
3001 INPUT A$
3010 IF SEG$(A$,1,1)="Y" THEN 2740
3020 PRINT "OK! THAT'S ENOUGH ARITHMETIC"
3030 GOSUB 60
3040 CALL CLEAR
3050 LC=10.03
3055 CALL CHAR(112,"0000000000001818")
3056 CALL COLOR(11,2,1)
3057 D$=CHR$(112)
3060 A$="THE CHARACTERS + - * / AND ^ ARE CALLED "&CHR$(102)&"OPERATORS"&CHR$(102)&D$
3070 GOSUB 90
3080 CALL COLOR(2,5,16)
3090 CALL COLOR(8,5,16)
3100 QA=1200
3110 GOSUB 60
3120 CALL CLEAR
3130 CALL COLOR(8,2,1)
3140 PRINT "A COLLECTION OF NUMBERS":"WITH OPERATORS BETWEEN THEM":"IS CALLED AN":"""ARITHMETIC EXPRESSION""";D$
3150 PRINT:"FOR EXAMPLE": :"2+3*4-6/5"
3160 QA=3000
3170 GOSUB 60
3180 PRINT:"WE COMPUTERS DO EVALUATE":"ARITHMETIC EXPRESSIONS,": :"BUT WE DO IT IN A":"PARTICULAR WAY."
3190 CALL COLOR(2,2,1)
3200 GOSUB 60
3210 CALL CLEAR
3220 PRINT "WE DO POWERS FIRST.":"THIS MEANS THAT WE FIRST":"EVALUATE PAIRS OF NUMBERS":"SEPARATED BY A ^.":
3230 PRINT "FOR EXAMPLE, IF WE HAD:": :"2+3*4^2-6": :"I WILL FIRST CALCULATE":"4^2":"4^2=16 SO THE EXPRESSION IS"
3240 PRINT "2+3*16-6":
3250 QA=2000
3260 GOSUB 60
3270 PRINT "AFTER POWERS, WE COMPUTERS":"CALCULATE MULTIPLICATIONS":"AND DIVISIONS (* AND /).":"3*16=48"
3280 PRINT "SO THE EXPRESSION BECOMES":"2+48-6"
3290 GOSUB 60
3300 PRINT:"PLUSES AND MINUSES ARE":"DONE LAST SO THAT 2+48-6":"JUST BECOMES,":"44.":
3310 GOSUB 200
3320 CALL CLEAR
3330 LC=1.03
3340 A$="HERE'S HOW WE COMPUTERS     EVALUATE 2+3*4^2-6:"
3350 GOSUB 90
3360 QA=100
3370 GOSUB 60
3380 LC=4.05
3390 A$="2+3*4^2-6"
3400 GOSUB 90
3410 LC=5.05
3420 A$="2+3*16 -6"
3430 GOSUB 90
3440 LC=6.05
3450 A$="2+48   -6"
3460 GOSUB 90
3470 LC=7.05
3480 A$="44"
3490 GOSUB 90
3500 GOSUB 200
3510 CALL CLEAR
4000 PRINT "IN THE NEXT CHAPTER":"YOU WILL HAVE THE CHANCE TO":"PLAY WITH OPERATORS,"
4005 PRINT "ARITHMETIC EXPRESSIONS,";"AND NUMBERS.": : :
4030 PRINT:"THIS IS THE END OF CHAPTER 1":B$;" LEARNS BASIC": : :
4035 QA=1000
4040 GOSUB 60
5000 PRINT "IF YOU WANT TO DO CHAPTER 1":"AGAIN, JUST TYPE":"RUN":"AND PRESS "ENTER"."
