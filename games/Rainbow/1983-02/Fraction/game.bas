
100 REM FRACTIONS PROGRAM-ALLOWS USER TO SELECT
110 REM WHETHER THE COMPUTER WILL MAKE UP PROBLEMS
120 REM OR MERELY CHECK PROBLEMS. VARIABLES USED ARE N(#OF FRACTIONS PER PROBLEM), NU(NUMERATOR OF INTERMEDIATE OR FINAL FRACTION),
130 REM CD(DENOMINATOR OR COMMON DENOMINATOR),W(WHOLE NUMBER PART OF FRACTION),AN(NUMERATOR INPUT),BN(DENOMINATOR INPUT)
140 REM COUNTERS USED ARE:
150 REM ZZ(ARRAY FOR AN AND BN)XT(AVOID REPEAT OF INSTRUCTIONS)K,L(LOCAL LOOP COUNTERS)TA,TB,AA(INTERMEDIATE VALUES FOR NU AND CD)
160 REM R$, DUMMY VARIABLES
170 REM B(MAKE UP OR CHECK)
180 REM C(LIKE OR UNLIKE)
190 REM M PROBLEM MODE(ADD,SUB,MUL,DIV,COM DENOM,REDUCE)
200 IF XT>0 THEN 400
210 CLS:PRINT@72,"F R A C T I O N"
220 PRINT@200,"BY CROOKS, 2/82"
230 FOR P=1TO2000:NEXT
240 CLS:PRINT:PRINT"WHAT KIND OF PROBLEMS?"
250 PRINT"1-ADDITION"
260 PRINT"2-SUBTRACTION"
270 PRINT"3-MULTIPLICATION"
280 PRINT"4-DIVISION"
290 PRINT"5-FIND COMMON DENOMINATOR"
300 PRINT"6-REDUCTION TO LOWEST TERMS":PRINT:PRINT
310 INPUT "WHICH ONE";M
320 CLS:PRINT"AM I GOING TO MAKE UP PROBLEMS"
330 PRINT"OR CHECK YOURS. TYPE <1> FOR ME"
340 PRINT"TO MAKE UP PROBLEMS OR <2> FOR"
350 PRINT"ME TO CHECK YOURS"
360 INPUTB
370 IF M=6 GOTO 400
380 PRINT:PRINT"WILL THESE BE LIKE OR UNLIKE?"
390 INPUT "1=LIKE  2=UNLIKE";C
400 XX=0:ON B GOTO 410,530
410 BN(1)=RND(8):AN(1)=RND(6):REM MAKE UP MODULE
420 BN(2)=RND(10):AN(2)=RND(9)
430 N=2
440 IF C=1 THEN 500
450 IF AN(2)/BN(2)>AN(1)/BN(1) THEN BN(2)=BN(2)*2:GOTO 450
460 IF M=6 THEN AN(1)=AN(1)*RND(6)*2
470 IF M=6 THEN BN(1)=BN(1)*RND(4)
480 REM 3 PREVIOUS STATEMENTS GUARANTEES SIZE OF FRACTIONS
490 GOTO 760
500 IF AN(1)<AN(2) THEN AN(1)=AN(1)*2:GOTO 500
510 BN(2)=BN(1)
520 GOTO 760
530 REM READ IN FRACTIONS
540 CLS:IF XT<>0 THEN 620:REM SKIP INSTRUCTIONS
550 PRINT"WHICH FORM ARE YOUR PORBLEMS?"
560 PRINT"1-COMMON FRACTIONS (LIKE 1/2)"
570 PRINT"2-IMPROPER (LIKE 9/4)"
580 PRINT"3-MIXED (LIKE 3 4/7)"
590 PRINT"ALL OF YOUR FRACTIONS HAVE TO"
600 PRINT"BE THE SAME FORM."
610 INPUT "WHICH FORM";A
620 CLS:PRINT"HOW MANY FRACTIONS IN"
630 INPUT"THIS PROBLEM";N
640 IF N>4 OR N<1 THEN 860
650 ZZ=1:REM READ IN NUM AND DENOM IN ARRAY
660 IF A=3 THEN 800
670 IF ZZ=1 THEN 730
680 INPUT"GIVE ME THE NEXT NUMERATOR";AN(ZZ)
690 INPUT"GIVE ME NEXT DENOMINATOR";BN(ZZ)
700 IF ZZ=N THEN 760
710 ZZ=ZZ+1
720 GOTO 660
730 INPUT "GIVE ME THE FIRST NUMERATOR";AN(ZZ)
740 INPUT"GIVE ME FIRST DENOMINATOR";BN(ZZ)
750 GOTO 700
760 REM END OF ARRAY FORMING
770 ON M GOSUB 1160,1320,1440,1570,1710,2130:REM M=MODE
780 XT=XT+1
790 GOTO 2210:REM PRINT ANSWER
800 REM READ MIXED FRACTIONS
810 IF ZZ<>1 THEN 840
820 INPUT"GIVE ME THE FIRST WHOLE NUMBER";W(ZZ)
830 GOTO 670
840 INPUT "GIVE ME NEXT WHOLE NUMBER";W(ZZ)
850 GOTO 670
860 CLS:PRINT"INPUT ERROR. YOU EITHER PUT"
870 PRINT"A WRONG NUMBER OR A NUMBER"
880 PRINT"GREATER THAN 4. SORRY.":GOTO 620
890 REM GET COMMON DENOM FOR ADD OR SUBTR 
900 IF N<>2 THEN 990
910 IF BN(1)<>BN(2) THEN 940
920 IF C=1 THEN DN=BN(1)
930 RETURN
940 DN=BN(1)*BN(2)
950 AN(1)=BN(2)*AN(1)
960 AN(2)=BN(1)*AN(2)
970 BN(1)=DN:BN(2)=DN
980 GOTO 930
990 IF N>3 THEN 1070
1000 IF BN(1)=BN(2) AND BN(2)=BN(3) THEN 930
1010 DN=BN(1)*BN(2)*BN(3)
1020 FOR L=1 TO N
1030 AN(L)=DN*AN(L)/BN(L)
1040 NEXT L
1050 BN(1)=DN:BN(2)=DN:BN(3)=DN
1060 GOTO 930
1070 IF BN(1)=BN(2) AND BN(2)=BN(3) AND BN(3)=BN(4) THEN 930
1080 DN=BN(1)*BN(2)*BN(3)*BN(4)
1090 FOR L=1TON
1100 AN(L)=DN*AN(L)/BN(L)
1110 NEXT L
1120 FOR L =1 TO N
1130 BN(L)=DN
1140 NEXT L
1150 GOTO 930
1160 REM SUBROUTINE TO ADD
1170 NU=0:CD=0
1180 IF B<>1 THEN 1230
1190 CLS:PRINT:PRINT"HOW MUCH IS ";AN(1);"/";BN(1);"+";AN(2);"/";BN(2)
1200 PRINT:PRINT:PRINT"YOUR ANSWER?"
1210 INPUT "NUMERATOR=";NN
1220 INPUT"DENOMINATOR =";NP
1230 GOSUB 890
1240 FOR K=1 TO N
1250 IF A=3 THEN GOSUB 1300
1260 NU=NU+AN(K)
1270 NEXT K
1280 CD=DN
1290 RETURN
1300 AN(K)=W(K)*BN(K)+AN(K)
1310 RETURN
1320 REM SUBROUTINE TO SUBTRACT
1330 IF B<>1 THEN 1380
1340 CLS:PRINT:PRINT"HOW MUCH IS ";AN(1);"/";BN(1);"-";AN(2);"/";BN(2)
1350 PRINT:PRINT"WHAT IS YOUR ANSWER?"
1360 INPUT "NUMERATOR=";NN
1370 INPUT "DENOMINATOR=";NP
1380 GOSUB 890
1390 IF A=3 THEN K=1:GOSUB 1300
1400 NU=AN(1):CD=BN(1)
1410 IF A=3 THEN GOSUB 1300
1420 NU=NU-AN(2)
1430 RETURN
1440 REM SUBROUTINE TO MULTIPLY
1450 IF A=3 THEN K=1:GOSUB 1300
1460 NU=AN(1):CD=BN(1)
1470 IF B<>1 THEN 1520
1480 CLS:PRINT:PRINT"HOW MUCH IS ";AN(1);"/";BN(1);"X";AN(2);"/";BN(2)
1490 PRINT:PRINT"YOUR ANSWER, PLEASE"
1500 INPUT"NUMERATOR=";NN
1510 INPUT "DENOMINATOR=";NP
1520 FOR K=2 TO N
1530 IF A=3 THEN GOSUB 1300
1540 NU=NU*AN(K):CD=CD*BN(K)
1550 NEXT K
1560 RETURN
1570 REM SUBROUTINE TO DIVIDE
1580 IF A=3 THEN K=1:GOSUB 1300
1590 K=K+1:IFK>N THEN 1620
1600 GOSUB 1300
1610 GOTO 1590
1620 IF B<>1 THEN 1680
1630 CLS:PRINT:PRINT"HOW MUCH IS ";AN(1);"/";BN(1);" DIVIDED"
1640 PRINT TAB(9);"BY ";AN(2);"/";BN(2)
1650 PRINT:PRINT:PRINT"YOUR ANSWER?"
1660 INPUT "NUMERATOR=";NN
1670 INPUT "DENOMINATOR=";NP
1680 NU=AN(1)*BN(2)
1690 CD=BN(1)*AN(2)
1700 RETURN
1710 REM FIND A COMMON DENOM
1720 CLS
1730 IF B=1 THEN 1910
1740 CLS:PRINT:PRINT"GIVE ME YOUR DENOMINATORS"
1750 IF Z<>0 THEN 1800
1760 PRINT"PLEASE GIVE THEM TO ME IN"
1770 PRINT"ASCENDING ORDER. THAT MEANS"
1780 PRINT"LOWEST FIRST AND HIGHEST LAST."
1790 PRINT"LIST ONLY DENOMINATORS..."
1800 INPUT"ARE YOU READY";R$
1810 IF LEFT$(R$,1)="N" THEN 1800
1820 FOR K=1TON
1830 PRINT"DENOMINATOR-";K;"=":INPUT;BN(K)
1840 NEXT K
1850 IF BN(N)<BN(N-1) THEN PRINT"NOT ASCENDING ORDER! REDO.":GOTO 1830
1860 CLS:X=1
1870 ON N GOSUB 1970,1970,2030,2080
1880 IF XX=1 THEN PRINT"I CAN'T FOR THOSE NUMBERS"
1890 CD=BN(N)*X
1900 RETURN
1910 PRINT"WHAT IS THE COMMON"
1920 PRINT"DENOMINATOR FOR 1/";BN(1);" AND 1/";BN(2)
1930 PRINT:PRINT
1940 INPUT "YOUR ANSWER= ";NP
1950 X=1
1960 GOTO 1870
1970 IF(X*BN(2)/BN(1))=INT(X*BN(2)/BN(1)) THEN 2020
1980 X=X+1
1990 IF X>BN(1)*BN(2) THEN 2010
2000 GOTO 1970
2010 PRINT"ICAN'T FOR ";BN(1);"AND";BN(2):XX=1
2020 RETURN
2030 IF (X*BN(3)/BN(1))=INT(X*BN(3)/BN(1)) AND (X*BN(3)/BN(2))=INT(X*BN(3)/BN(2)) THEN 2070
2040 X=X+1
2050 IF X>BN(3)*BN(2)*BN(1) THEN XX=1:GOTO 2070
2060 GOTO 2030
2070 RETURN
2080 IF(X*BN(4)/BN(1))=INT)X*BN(4)/BN(1)) AND (X*BN(4)/BN(2))=INT(X*BN(4)/BN(2)) AND (X*BN(4)/BN(3))=INT(X*BN(4)/BN(3)) THEN 2120
2090 X=X+1
2100 IF X>BN(4)*BN(3)*BN(2)*BN(1) THEN XX=1:GOTO 2120
2110 GOTO 2080
2120 RETURN
2130 CLS:PRINT:PRINT"REDUCE TO LOWEST TERMS":PRINT:PRINT
2140 PRINTAN(1);"/";BN(1)
2150 PRINT:PRINT"YOUR ANSWER, PLEASE?"
2160 INPUT "NUMERATOR=";NN
2170 INPUT "DENOMINATOR=";NP
2180 XT=1
2190 NU=AN(1):CD=BN(1)
2200 RETURN
2210 REM PART OF PROBLEM MODULE60001 REM AND OUTPUT ROUTINE
2220 REM THIS PORTION REDUCES THE COMPUTER'S ANSWER TO LOWEST TERMS
2230 IF XX=1 THEN GOTO 2460
2240 IF M=5 THEN 2550
2250 IF NU<=CD THEN AA=NU ELSE AA=CD
2260 FOR K=2 TO AA
2270 IF NU/K=INT(NU/K) THEN 2640
2280 NEXT K
2290 REM CHECK FOR MIXED NUMBER
2300 IF NU=<CD THEN 2340
2310 TA=INT(NU/CD):REM TA IS WHOLE NR PART OF FRACTION
2320 TB=NU-TA*CD:REM NEW NUMERATOR
2330 ZA=1:REM ZA IDENTIFIES A WHOLE NUMBER PRESENT
2340 IF B=1 THEN 2530
2350 IF ZA=0 THEN 2400
2360 IF TB=0 THEN 2670
2370 IF B=2 THEN CLS ELSE GOTO 2400
2380 PRINT:PRINT:PRINT"THE FINAL ANSWER SHOULD"
2390 PRINT"BE ";TA;TB;"/";CD;" OR IN OTHER FORM"
2400 IF NU=0 THEN 2690
2410 PRINT:PRINT:IF CD=1 THEN PRINT:PRINT"THE ANSWER IS ";NU:GOTO 2430
2420 PRINT:PRINT:PRINT"THE ANSWER IS ";NU;"/";CD
2430 REM PROBLEM COUNTING ROUTINES
2440 GOSUB 2700
2450 ZA=0
2460 FOR LL=1TO2000:NEXT
2470 GOSUB 2800:REM ENDING ROUTINE
2480 PRINT:PRINT:PRINT"PRESS <BREAK> TO STOP"
2490 PRINT"OR CHANGE PROBLEM TYPE"
2500 FORML=1TO1000:NEXT:GOTO 400
2510 IF LEFT$(R$,1)="Y" THEN XT=XT+1:GOTO 400
2520 PRINT:PRINT:PRINT"THE END":END
2530 CLS:PRINT:PRINT"YOUR ANSWER IS ";NN;"/";NP
2540 GOTO 2350
2550 CLS:PRINT:PRINT
2560 PRINT:PRINT"YOU SPECIFIED ";N;" DENOMINATORS"
2570 PRINT"THEY WERE:"
2580 FOR K=1TON
2590 PRINT"D-";K;"=";BN(K)
2600 NEXT K
2610 PRINT"THEIR COMMON DENOMINATOR IS";CD
2620 PRINT:PRINT"YOUR ANSWER WAS ";NP
2630 GOTO 2430
2640 IF CD/K=INT(CD/K) THEN 2660
2650 GOTO 2280
2660 NU=NU/K:CD=CD/K:GOTO 2260
2670 PRINT:PRINT:PRINT"THE ANSWER IS ";TA
2680 GOTO 2430
2690 PRINT:PRINT:PRINT"THE ANSWER IS ZERO":GOTO 2440
2700 REM CORRECT ANSWER COUNTER
2710 IF B<>1 THEN 2790
2720 K1=K1+1:REM NUMBER OF PROBLEMS IN THIS SET
2730 IF ZA<>0 THEN 2770
2740 IF M=5 THEN GOTO 2880
2750 IF NU=0 THEN IF NN=0 THEN K2=K2+1:GOTO 2790
2760 IF NU=NN AND  CD=NP THEN K2=K2+1:GOTO 2790
2770 IF TB=0 THEN IF TA=NN THEN K2=K2+1:GOTO 2790
2780 IF NU=NN AND  CD=NP THEN K2=K2+1:GOTO 2790
2790 RETURN
2800 IF K1<>10 THEN 2870
2810 FOR TY=1TO1000:NEXT TY:CLS:PRINT:PRINT"THAT CONCLUDES TEN PROBLEMS.":PRINT:PRINT"YOU GOT ";K2;" OF THEM RIGHT!"
2820 FOR L1=1 TO K2
2830 SOUND 100+RND(100),4
2840 NEXT
2850 K1=0:K2=0
2860 PRINT:PRINT:INPUT "PRESS <ENTER> TO CONTINUE";PO
2870 RETURN
2880 IF NP=CD THEN K2=K2+1
2890 GOTO 2800