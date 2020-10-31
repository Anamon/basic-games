100 REM  *******************    
110 REM  *                 *    
120 REM  *HOMEWORK HELPERS:*        
130 REM  *    FRACTIONS    *             
140 REM  *                 *         
150 REM  *******************         
160 REM  BY REGENA 
170 REM   99'ER VERSION 5.81.2  
180 REM  
190 T=300
200 T2=150
210 CALL CHAR(128,"F")
220 CALL COLOR(13,7,7)
230 CALL CHAR(136,"F")
240 CALL COLOR(14,11,11)
250 CALL CHAR(144,"F")
260 CALL COLOR(15,5,5)
270 CALL CHAR(152,"F")
280 CALL COLOR(16,13,13)
290 CALL CLEAR
300 CALL COLOR(2,16,7)
310 DATA 72,79,77,69,87,79,82,75
320 RESTORE 310
330 FOR Y=9 TO 23 STEP 2
340 READ L
350 CALL HCHAR(7,Y,L)
360 NEXT Y
370 DATA 72,69,76,80,69,82
380 RESTORE 370
390 FOR Y=11 TO 21 STEP 2
400 READ L
410 CALL HCHAR(10,Y,L)
420 NEXT Y
430 GOSUB 3270
440 CALL HCHAR(14,10,42,13)
450 CALL VCHAR(15,22,42,3)
460 CALL VCHAR(15,10,42,3)
470 CALL HCHAR(18,10,42,13)
480 DATA 70,82,65,67,84,73,79,78,83
490 RESTORE 480
500 FOR Y=12 TO 20
510 READ L
520 CALL HCHAR(16,Y,L)
530 NEXT Y
540 FOR I=1 TO 30
550 CALL COLOR(2,7,16)
560 CALL COLOR(2,16,7)
570 NEXT I
580 GOSUB 3380
590 CALL COLOR(2,2,1)
600 CALL CLEAR
610 PRINT "1 EQUIVALENCE"
620 PRINT "2 SIMPLIFY"
630 PRINT "3 MULTIPLY"
640 PRINT "4 DIVIDE"
650 PRINT "5 ADD-LIKE DENOMINATORS"
660 PRINT "6 ADD-UNLIKE DENOMINATORS"
670 PRINT "7 COMPARISONS": : : :
680 GOSUB 4890
690 GOSUB 3470
700 CALL KEY(0,CHOICE,STATUS)
710 IF STATUS<=0 THEN 700
720 IF CHOICE<49 THEN 700
730 IF CHOICE>55 THEN 700
740 CHOICE=CHOICE-48
750 CALL CLEAR
760 ON CHOICE GOTO 770,1350,1660,2400,2660,2940,5060
770 DATA 69,81,85,73,86,65,76,69,78,67,69
780 RESTORE 770
790 CALL CLEAR
800 FOR Y=11 TO 21
810 READ L
820 CALL HCHAR(9,Y,L)
830 NEXT Y
840 CALL CHAR(96,"000000FF")
850 GOSUB 4130
860 DATA 14,13,65,15,13,96,16,13,66,15,16,61,14,19,67,15,19,96,16,19,68
870 RESTORE 860
880 FOR I=1 TO 7
890 READ X,Y,L
900 CALL HCHAR(X,Y,L)
910 NEXT I
920 GOSUB 3550
930 INPUT "WHICH IS THE UNKNOWN?":X$
940 IF X$="A" THEN 1000
950 IF X$="B" THEN 1060
960 IF X$="C" THEN 1120
970 IF X$="D" THEN 1180
980 PRINT "CHOOSE A,B,C,OR D"
990 GOTO 930
1000 INPUT "ENTER B = ":B
1010 INPUT "ENTER C = ":C
1020 INPUT "ENTER D = ":D
1030 A=B*C/D+.005
1040 A=1E-2*(INT(A*1E2))
1050 GOTO 1230
1060 INPUT "ENTER A = ":A
1070 INPUT "ENTER C = ":C
1080 INPUT "ENTER D = ":D
1090 B=A*D/C+.005
1100 B=1E-2*(INT(B*1E2))
1110 GOTO 1230
1120 INPUT "ENTER A = ":A
1130 INPUT "ENTER B = ":B
1140 INPUT "ENTER D = ":D
1150 C=A*D/B+.005
1160 C=1E-2*(INT(C*1E2))
1170 GOTO 1230
1180 INPUT "ENTER A = ":A
1190 INPUT "ENTER B = ":B
1200 INPUT "ENTER C = ":C
1210 D=B*C/A+.005
1220 D=1E-2*(INT(D*1E2))
1230 CALL CLEAR
1240 PRINT "       ";A,C
1250 PRINT "      _____ = _____": :
1260 PRINT "       ";B,D: : :
1270 PRINT "PRESS 1 FOR NEXT PROBLEM"
1280 PRINT "PRESS 2 TO STOP"
1290 CALL KEY(0,K,STATUS)
1300 IF STATUS<=0 THEN 1290
1310 IF K<>49 THEN 1330
1320 CALL CLEAR
1325 GOTO 780
1330 IF K=50 THEN 590
1340 GOTO 1290
1350 PRINT "** SIMPLIFYING FRACTIONS **"
1360 GOSUB 4230
1370 PRINT: :
1380 GOSUB 3650
1390 INPUT "NUMERATOR?":NS
1400 INPUT "DENOMINATOR?":DS
1410 IF DS>NS THEN 1440
1420 PLIM=DS
1430 GOTO 1450
1440 PLIM=NS
1450 S=-2
1460 IF DS/2<>INT(DS/2)THEN 1480
1470 IF NS/2=INT(NS/2)THEN 1490
1480 S=-1
1490 FOR P=PLIM TO 2 STEP S
1500 A=NS/P
1510 IF A<>INT(A)THEN 1540
1520 B=DS/P
1530 IF B=INT(B)THEN 1570
1540 NEXT P
1550 PRINT:NS;"/";DS;" CANNOT BE SIMPLIFIED": : : :
1560 GOTO 1580
1570 PRINT:NS;"/";DS;" = ";A;"/";B: : : :
1580 PRINT "PRESS 1 FOR NEXT PROBLEM"
1590 PRINT "PRESS 2 TO STOP"
1600 CALL KEY(0,K,STATUS)
1610 IF STATUS<=0 THEN 1600
1620 IF K<>49 THEN 1640
1630 CALL CLEAR
1635 GOTO 1350
1640 IF K=50 THEN 590
1650 GOTO 1600
1660 PRINT "** MULTIPLYING FRACTIONS **": : : :
1670 GOSUB 4430
1680 GOSUB 3750
1690 INPUT "HOW MANY FRACTIONS? ":F
1700 FOR I=1 TO F
1710 PRINT "FRACTION";I
1720 INPUT "    NUMERATOR = ":NN(I)
1730 INPUT "    DENOMINATOR = ":DD(I)
1740 NEXT I
1750 TN=1
1760 TD=1
1770 FOR I=1 TO F
1780 TN=TN*NN(I)
1790 TD=TD*DD(I)
1800 NEXT I
1810 PRINT: : :"** MULTIPLY **": :
1820 GOSUB 1920
1830 GOSUB 2190
1840 PRINT: :"PRESS 1 FOR NEXT PROBLEM"
1850 PRINT "PRESS 2 TO STOP"
1860 CALL KEY(0,K,STATUS)
1870 IF STATUS<=0 THEN 1860
1880 IF K<>49 THEN 1900
1890 CALL CLEAR
1895 GOTO 1660
1900 IF K=50 THEN 590
1910 GOTO 1860
1920 FOR I=1 TO F
1930 PRINT NN(I);"/";DD(I)
1940 NEXT I
1950 PRINT "_______________"
1960 RETURN
1970 IF TN<TD THEN 2000
1980 PLIM=TD
1990 GOTO 2010
2000 PLIM=TN
2010 FOR P=PLIM TO 2 STEP-1
2020 A=TN/P
2030 IF A<>INT(A)THEN 2060
2040 B=TD/P
2050 IF B=INT(B)THEN 2090
2060 NEXT P
2070 A=TN
2080 B=TD
2090 IF A>=B THEN 2120
2100 PRINT: :A;"/";B: : : :
2110 GOTO 2160
2120 IF B=1 THEN 2170
2130 C=INT(A/B)
2140 R=A-C*B
2150 PRINT C;"   ";R;"/";B: : : :
2160 RETURN
2170 PRINT A: : : :
2180 RETURN
2190 FOR I=1 TO F
2200 P=DD(I)
2210 A=TN/P
2220 IF A<>INT(A)THEN 2270
2230 B=TD/P
2240 IF B<>INT(B)THEN 2270
2250 TN=A
2260 TD=B
2270 NEXT I
2280 SW=0
2290 FOR I=1 TO F-1
2300 IF DD(I)<=DD(I+1)THEN 2350
2310 J=DD(I)
2320 DD(I)=DD(I+1)
2330 DD(I+1)=J
2340 SW=1
2350 NEXT I
2360 IF SW=1 THEN 2280
2370 PLIM=DD(F)
2380 GOSUB 2010
2390 RETURN
2400 PRINT "** DIVIDING FRACTIONS **": : :
2410 GOSUB 4520
2420 PRINT "THE FIRST FRACTION IS"
2430 PRINT "DIVIDED BY THE"
2440 PRINT "SECOND FRACTION.": :
2450 PRINT "(N1/D1) / (N2/D2)": :
2460 GOSUB 3830
2470 INPUT "ENTER N1 = ":N1
2480 INPUT "ENTER D1 = ":D1
2490 INPUT "ENTER N2 = ":N2
2500 INPUT "ENTER D2 = ":D2
2510 TN=N1*D2
2520 TD=D1*N2
2530 PRINT: : :N1;"/";D1
2540 PRINT "______________": :
2550 PRINT N2;"/";D2: : :
2560 PRINT "EQUALS": :
2570 GOSUB 1970
2580 PRINT:"PRESS 1 FOR NEXT PROBLEM"
2590 PRINT "PRESS 2 TO STOP"
2600 CALL KEY(0,K,STATUS)
2610 IF STATUS<=0 THEN 2600
2620 IF K<>49 THEN 2640
2630 CALL CLEAR
2635 GOTO 2400
2640 IF K=50 THEN 590
2650 GOTO 2600
2660 PRINT "** ADDING FRACTIONS **": :
2670 GOSUB 4590
2680 PRINT "THIS SECTION ADDS"
2690 PRINT "FRACTIONS THAT ALL HAVE"
2700 PRINT "THE SAME DENOMINATOR.": : :
2710 GOSUB 3910
2720 INPUT "HOW MANY FRACTIONS? ":F
2730 INPUT "WHAT IS THE DENOMINATOR?":TD
2740 PRINT "ENTER THE NUMERATORS."
2750 TN=0
2760 FOR I=1 TO F
2770 INPUT NN(I)
2780 TN=TN+NN(I)
2790 NEXT I
2800 FOR I=1 TO F
2810 DD(I)=TD
2820 NEXT I
2830 PRINT: : :
2840 GOSUB 1920
2850 GOSUB 1970
2860 PRINT "PRESS 1 FOR NEXT PROBLEM"
2870 PRINT "PRESS 2 TO STOP"
2880 CALL KEY(0,K,STATUS)
2890 IF STATUS<=0 THEN 2880
2900 IF K<>49 THEN 2920
2910 CALL CLEAR
2915 GOTO 2660
2920 IF K=50 THEN 590
2930 GOTO 2880
2940 PRINT "** ADDING FRACTIONS **"
2950 GOSUB 4740
2960 PRINT: :"THIS SECTION ADDS"
2970 PRINT "FRACTIONS THAT MAY HAVE"
2980 PRINT "UNLIKE DENOMINATORS.": : :
2990 GOSUB 4020
3000 INPUT "HOW MANY FRACTIONS? ":F
3010 IF F<=5 THEN 3040
3020 PRINT "SORRY, I ACN ONLY HANDLE UP TO 5 FRACTIONS."
3030 GOTO 3000
3040 TN=0
3050 TD=1
3060 FOR I=1 TO F
3070 PRINT "FRACTION";I
3080 INPUT "    NUMERATOR = ":NN(I)
3090 INPUT "    DENOMINATOR = ":DD(I)
3100 TD=TD*DD(I)
3110 NEXT I
3120 PRINT: :
3130 FOR I=1 TO F
3140 C=TD/DD(I)
3150 TN=TN+NN(I)*C
3160 NEXT I
3170 GOSUB 1920
3180 GOSUB 2190
3190 PRINT "PRESS 1 FOR NEXT PROBLEM"
3200 PRINT "PRESS 2 TO STOP"
3210 CALL KEY(0,K,STATUS)
3220 IF STATUS<=0 THEN 3210
3230 IF K<>49 THEN 3250
3240 CALL CLEAR
3245 GOTO 2940
3250 IF K=50 THEN 590
3260 GOTO 3210
3270 CALL SOUND(T,880,2,698,5)
3280 CALL SOUND(T,932,2,784,5)
3290 CALL SOUND(T,784,2,659,5)
3300 CALL SOUND(T,880,2,698,5)
3310 CALL SOUND(T,698,2,587,5)
3320 CALL SOUND(T2,784,2)
3330 CALL SOUND(T2,698,2)
3340 CALL SOUND(T2,659,2)
3350 CALL SOUND(T2,784,2)
3360 CALL SOUND(T,698,2,687,5)
3370 RETURN
3380 CALL SOUND(T,440,2)
3390 CALL SOUND(T2,466,2)
3400 CALL SOUND(T2,523,2)
3410 CALL SOUND(T2,587,2)
3420 CALL SOUND(T2,523,2)
3430 CALL SOUND(T,466,2)
3440 CALL SOUND(T,440,2)
3450 CALL SOUND(1000,392,2,330,5)
3460 RETURN
3470 CALL SOUND(T2,440,2)
3480 CALL SOUND(T2,466,2)
3490 CALL SOUND(T,523,2)
3500 CALL SOUND(T,440,2)
3510 CALL SOUND(T,587,2)
3520 CALL SOUND(T,784,2)
3530 CALL SOUND(500,659,2)
3540 RETURN
3550 CALL SOUND(T,698,2)
3560 CALL SOUND(T,932,2)
3570 CALL SOUND(T,784,2)
3580 CALL SOUND(T,880,2)
3590 CALL SOUND(T2,932,2)
3600 CALL SOUND(T2,880,2)
3610 CALL SOUND(T2,784,2)
3620 CALL SOUND(T2,880,2)
3630 CALL SOUND(500,698,2)
3640 RETURN
3650 CALL SOUND(T2,659,2)
3660 CALL SOUND(T2,587,2)
3670 CALL SOUND(T,523,2)
3680 CALL SOUND(T,440,2)
3690 CALL SOUND(T,698,2,440,5)
3700 CALL SOUND(T,784,2,587,5)
3710 CALL SOUND(T2,698,2,392,5)
3720 CALL SOUND(T2,659,2)
3730 CALL SOUND(1000,698,2,440,5)
3740 RETURN
3750 DATA 262,349,392,440,523,440,392,349,392
3760 RESTORE 3750
3770 FOR I=1 TO 9
3780 READ M
3790 CALL SOUND(T2,M,2)
3800 NEXT I
3810 CALL SOUND(500,440,2)
3820 RETURN
3830 CALL SOUND(600,262,10)
3840 CALL SOUND(600,311,7)
3850 CALL SOUND(450,392,4)
3860 CALL SOUND(150,349,4)
3870 CALL SOUND(300,311,6)
3880 CALL SOUND(300,294,8)
3890 CALL SOUND(500,262,10)
3900 RETURN
3910 CALL SOUND(T,523,2)
3920 CALL SOUND(T,440,2)
3930 CALL SOUND(T2,440,2)
3940 CALL SOUND(T2,494,2)
3950 CALL SOUND(T,523,2)
3960 CALL SOUND(T2,494,2)
3970 CALL SOUND(T2,523,2)
3980 CALL SOUND(T2,494,2)
3990 CALL SOUND(T2,392,2)
4000 CALL SOUND(1000,440,2)
4010 RETURN
4020 CALL SOUND(400,440,8)
4030 CALL SOUND(200,392,8)
4040 CALL SOUND(200,440,7)
4050 CALL SOUND(400,587,6)
4060 CALL SOUND(200,523,5)
4070 CALL SOUND(200,587,4)
4080 CALL SOUND(400,494,3)
4090 CALL SOUND(200,440,4)
4100 CALL SOUND(200,494,5)
4110 CALL SOUND(500,392,6)
4120 RETURN
4130 CALL HCHAR(12,4,128,3)
4140 CALL HCHAR(13,4,128,3)
4150 FOR Y=4 TO 6
4160 CALL VCHAR(14,Y,144,4)
4170 NEXT Y
4180 CALL VCHAR(11,27,136,3)
4190 CALL VCHAR(11,28,136,3)
4200 CALL VCHAR(14,27,152,6)
4210 CALL VCHAR(14,28,152,6)
4220 RETURN
4230 FOR X=10 TO 14 STEP 2
4240 FOR Y=9 TO 13 STEP 2
4250 CALL HCHAR(X,Y,144)
4260 CALL HCHAR(X,Y-1,136)
4270 NEXT Y
4280 NEXT X
4290 FOR X=11 TO 13 STEP 2
4300 FOR Y=8 TO 12 STEP 2
4310 CALL HCHAR(X,Y,144)
4320 CALL HCHAR(X,Y+1,136)
4330 NEXT Y
4340 NEXT X
4350 CALL HCHAR(12,16,61)
4360 FOR Y=19 TO 21
4370 CALL VCHAR(10,Y,136,5)
4380 NEXT Y
4390 FOR Y=22 TO 24
4400 CALL VCHAR(10,Y,144,5)
4410 NEXT Y
4420 RETURN
4430 Y=6
4440 FOR I=1 TO 5
4450 CALL VCHAR(10,Y,136,2)
4460 CALL VCHAR(10,Y+1,136,2)
4470 CALL VCHAR(12,Y,128,4)
4480 CALL VCHAR(12,Y+1,128,4)
4490 Y=Y+5
4500 NEXT I
4510 RETURN
4520 CALL HCHAR(10,11,136,13)
4530 CALL HCHAR(11,11,136,13)
4540 FOR X=12 TO 14
4550 CALL HCHAR(X,11,144,13)
4560 NEXT X
4570 CALL VCHAR(7,17,93,11)
4580 RETURN
4590 CALL HCHAR(10,8,128,2)
4600 CALL VCHAR(11,8,152,4)
4610 CALL VCHAR(11,9,152,4)
4620 CALL VCHAR(10,13,128,4)
4630 CALL VCHAR(10,14,128,4)
4640 CALL HCHAR(14,13,152,2)
4650 CALL VCHAR(10,18,128,2)
4660 CALL VCHAR(10,19,128,2)
4670 CALL VCHAR(12,18,152,3)
4680 CALL VCHAR(12,19,152,3)
4690 CALL VCHAR(10,23,128,3)
4700 CALL VCHAR(10,24,128,3)
4710 CALL VCHAR(13,23,152,2)
4720 CALL VCHAR(13,24,152,2)
4730 RETURN
4740 CALL VCHAR(10,8,128,4)
4750 CALL VCHAR(14,8,136,3)
4760 CALL VCHAR(10,12,144,2)
4770 CALL VCHAR(10,13,144,2)
4780 CALL VCHAR(12,12,128,3)
4790 CALL VCHAR(12,13,128,3)
4800 CALL HCHAR(10,17,136,3)
4810 CALL HCHAR(11,17,152,3)
4820 CALL HCHAR(12,17,152,3)
4830 CALL HCHAR(13,17,152,3)
4840 CALL VCHAR(10,23,152,2)
4850 CALL VCHAR(10,24,152,2)
4860 CALL VCHAR(12,23,144,4)
4870 CALL VCHAR(12,24,144,4)
4880 RETURN
4890 CALL HCHAR(4,15,128,2)
4900 CALL HCHAR(5,14,128,3)
4910 CALL HCHAR(6,13,128,4)
4920 CALL HCHAR(7,13,128,4)
4930 CALL HCHAR(4,17,136,2)
4940 CALL HCHAR(5,17,136,3)
4950 CALL HCHAR(6,17,136,4)
4960 CALL HCHAR(7,17,136,4)
4970 CALL HCHAR(8,17,152,4)
4980 CALL HCHAR(9,17,152,4)
4990 CALL HCHAR(10,17,152,3)
5000 CALL HCHAR(11,17,152,2)
5010 CALL HCHAR(11,15,144,2)
5020 CALL HCHAR(10,14,144,3)
5030 CALL HCHAR(9,13,144,4)
5040 CALL HCHAR(8,13,144,4)
5050 RETURN
5060 DATA 67,79,77,80,65,82,73,83,79,78,83,32
5070 RESTORE 5060
5080 FOR Y=11 TO 22
5090 READ L
5100 CALL HCHAR(14,Y,L)
5110 NEXT Y
5120 GOSUB 5510
5130 DIM NNN(10),DDD(10),FRC(10),FRD(10)
5140 PRINT "THIS ARRANGES FRACTIONS"
5150 PRINT "FROM SMALLEST TO LARGEST.": :
5160 INPUT "HOW MANY FRACTIONS?":NF
5170 IF NF<11 THEN 5200
5180 PRINT "SORRY; UP TO 10 ONLY."
5190 GOTO 5160
5200 FOR I=1 TO NF
5210 PRINT: :"FRACTION ";I
5220 INPUT "    NUMERATOR:":NNN(I)
5230 INPUT "    DENOMINATOR:":DDD(I)
5240 FRC(I)=NNN(I)/DDD(I)
5250 FRD(I)=FRC(I)
5260 NEXT I
5270 PRINT: : : :
5280 SW=0
5290 FOR I=1 TO NF-1
5300 IF FRC(I)<=FRC(I+1)THEN 5350
5310 FF=FRC(I)
5320 FRC(I)=FRC(I+1)
5330 FRC(I+1)=FF
5340 SW=1
5350 NEXT I
5360 IF SW=1 THEN 5280
5370 FOR I=1 TO NF
5380 FOR J=1 TO NF
5390 IF FRC(I)=FRD(J)THEN 5410
5400 NEXT J
5410 PRINT I;"  ";NNN(J);"/";DDD(J)
5420 NEXT I
5430 PRINT: : :"PRESS 1 FOR NEXT PROBLEM"
5440 PRINT "PRESS 2 TO STOP"
5450 CALL KEY(0,K,STATUS)
5460 IF STATUS<=0 THEN 5450
5470 IF K<>49 THEN 5490
5480 CALL CLEAR
5485 GOTO 5070
5490 IF K=50 THEN 590
5500 GOTO 5450
5510 CALL SOUND(400,330,2,262,5)
5520 CALL VCHAR(4,8,136,3)
5530 CALL VCHAR(4,9,136,3)
5540 CALL SOUND(100,330,2)
5550 CALL HCHAR(7,8,144,2)
5560 CALL SOUND(100,262,3)
5570 CALL SOUND(400,330,1)
5580 CALL VCHAR(4,15,128,4)
5590 CALL VCHAR(8,15,152,2)
5600 CALL SOUND(100,330,2)
5610 CALL SOUND(100,262,3)
5620 CALL SOUND(400,330,1)
5630 CALL VCHAR(4,23,152,3)
5640 CALL VCHAR(4,24,152,3)
5650 CALL SOUND(200,392,5)
5660 CALL VCHAR(7,23,136,3)
5670 CALL SOUND(200,524,3)
5680 CALL VCHAR(7,24,136,3)
5690 CALL SOUND(400,660,1)
5700 RETURN
