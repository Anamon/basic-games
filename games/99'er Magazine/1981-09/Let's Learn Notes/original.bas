100 REM   
110 REM  
120 REM    
130 REM   
140 REM       
150 T=1500
160 CALL CLEAR
170 CALL COLOR(11,13,1)
180 CALL COLOR(12,13,1)
190 CALL COLOR(13,14,1)
200 CALL COLOR(14,5,1)
210 CALL COLOR(15,5,1)
220 CALL CHAR(112,"0000020705050505")
230 CALL CHAR(113,"0505050303020202")
240 CALL CHAR(114,"050D091030206040")
250 CALL CHAR(115,"0000008080809CE3")
260 CALL CHAR(116,"40C1C2C2868686C2")
270 CALL CHAR(117,"C040404020202020")
280 CALL CHAR(118,"8080404040404040")
290 CALL CHAR(119,"C1404020100C07")
300 CALL CHAR(120,"20201011121CF010")
310 CALL CHAR(121,"808080")
320 CALL CHAR(122,"109090E0")
330 CALL SOUND(T,262,2)
340 CALL CHAR(136,"0000030F1F1F3F3F")
350 CALL CHAR(137,"0202E2FAFAFEFEFE")
360 CALL CHAR(138,"1F1F0F03")
370 CALL CHAR(139,"FCFCF8E0")
380 CALL CHAR(140,"0202020202020202")
390 CALL CHAR(141,"0000000303020202")
400 CALL CHAR(142,"0000000000804020")
410 CALL CHAR(143,"2020101010080808")
420 CALL CHAR(144,"00011EE")
430 CALL CHAR(145,"0FF0")
440 CALL CHAR(146,"0000000000031CE0")
450 CALL CHAR(147,"000000003EC20202")
460 CALL SOUND(T,294,2)
470 DATA 76,69,84,39,83,32,76,69,65,82,78,32
480 RESTORE 470
490 FOR Y=12 TO 23
500 READ L
510 CALL HCHAR(6,Y,L)
520 NEXT Y
530 CALL SOUND(T,330,2)
540 DATA 78,79,84,69,83,32
550 RESTORE 540
560 FOR Y=13 TO 23 STEP 2
570 READ L
580 CALL HCHAR(10,Y,L)
590 NEXT Y
600 CALL SOUND(T,349,2)
610 DATA 8,4,138,8,5,139,7,4,136,7,5,137,6,5,140,5,5,140,4,5,141,4,6,144,4,7,145
620 RESTORE 610
630 FOR I=1 TO 9
640 READ X,Y,G
650 CALL HCHAR(X,Y,G)
660 NEXT I
670 CALL SOUND(T,392,2)
680 DATA 3,8,146,3,9,147,4,9,140,5,9,140,6,9,137,6,8,136,7,8,138,7,9,139
690 RESTORE 680
700 FOR I=1 TO 8
710 READ X,Y,G
720 CALL HCHAR(X,Y,G)
730 NEXT I
740 CALL SOUND(T,440,2)
750 CALL VCHAR(16,12,49)
760 DATA 75,69,89,66,79,65,82,68
770 RESTORE 760
780 FOR Y=14 TO 21
790 READ G
800 CALL HCHAR(16,Y,G)
810 NEXT Y
820 CALL SOUND(T,494,2)
830 DATA 4,26,112,5,26,113,6,26,114,6,27,115,7,26,116,7,27,117
840 RESTORE 830
850 FOR I=1 TO 6
860 READ X,Y,G
870 CALL HCHAR(X,Y,G)
880 NEXT I
890 CALL SOUND(T,523,2)
900 DATA 7,28,118,8,26,119,8,27,120,8,28,121,9,27,122
910 RESTORE 900
920 CALL SOUND(T,262,2)
930 FOR I=1 TO 5
940 READ X,Y,G
950 CALL HCHAR(X,Y,G)
960 NEXT I
970 CALL SOUND(T,330,2)
980 CALL HCHAR(18,12,50)
990 DATA 84,82,69,66,76,69,32,67,76,69,70
1000 RESTORE 990
1010 FOR Y=14 TO 24
1020 READ L
1030 CALL HCHAR(18,Y,L)
1040 NEXT Y
1050 CALL SOUND(T,392,2)
1060 CALL SOUND(T,523,2)
1070 CALL HCHAR(20,12,51)
1080 DATA 66,65,83,83,32,67,76,69,70
1090 RESTORE 1080
1100 FOR Y=14 TO 22
1110 READ L
1120 CALL HCHAR(20,Y,L)
1130 NEXT Y
1140 CALL SOUND(T,392,2)
1150 DATA 18,27,138,18,28,139,17,27,136,17,28,137,16,28,140,15,28,140,14,28,141,14,29,142,15,29,143
1160 RESTORE 1150
1170 FOR I=1 TO 9
1180 READ X,Y,G
1190 CALL HCHAR(X,Y,G)
1200 NEXT I
1210 CALL SOUND(T,330,2)
1220 CALL SOUND(T,262,2)
1230 GOTO 5430
1240 CALL CLEAR
1250 CALL COLOR(4,2,7)
1260 CALL COLOR(9,2,1)
1270 CALL COLOR(10,2,16)
1280 CALL CHAR(96,"FF")
1290 CALL CHAR(104,"FF")
1300 CALL CHAR(105,"7F7F7F7F7F7F7F7F")
1310 CALL CHAR(106,"FEFEFEFEFEFEFEFE")
1320 CALL CHAR(107,"0101010101010101")
1330 CALL CHAR(108,"8080808080808080")
1340 CALL CHAR(109,"0")
1350 RANDOMIZE
1360 COUNT=0
1370 KB=INT(2*RND)+1
1380 CALL CLEAR
1390 DATA 78,65,77,69,32,84,72,69,32,75,69,89
1400 RESTORE 1390
1410 FOR Y=11 TO 22
1420 READ L
1430 CALL HCHAR(4,Y,L)
1440 NEXT Y
1450 PAT=KB
1460 REM  
1470 CALL HCHAR(8,1,104,32)
1480 CALL HCHAR(18,1,96,32)
1490 CALL VCHAR(8,1,109,10)
1500 CALL VCHAR(8,32,109,10)
1510 FOR Y=3 TO 30 STEP 3
1520 CALL VCHAR(8,Y-1,109,10)
1530 CALL VCHAR(8,Y,107,10)
1540 CALL VCHAR(8,Y+1,108,10)
1550 NEXT Y
1560 IF KB=2 THEN 1660
1570 REM  
1580 DATA 3,6,12,15,18,24,27,27
1590 RESTORE 1580
1600 FOR I=1 TO 8
1610 READ Y
1620 CALL VCHAR(8,Y,105,7)
1630 CALL VCHAR(8,Y+1,106,7)
1640 NEXT I
1650 GOTO 1740
1660 REM  
1670 DATA 3,6,9,15,18,24,27,30,30
1680 RESTORE 1670
1690 FOR I=1 TO 9
1700 READ Y
1710 CALL VCHAR(8,Y,105,7)
1720 CALL VCHAR(8,Y+1,106,7)
1730 NEXT I
1740 REM   
1750 NN=INT(11*RND)+1
1760 J=3*NN-1
1770 CALL HCHAR(16,J,63)
1780 FOR I=1 TO 10
1790 CALL COLOR(4,2,7)
1800 CALL COLOR(4,16,7)
1810 NEXT I
1820 CALL KEY(0,N,S)
1830 IF S<>1 THEN 1820
1840 IF KB=2 THEN 1860
1850 ON NN GOTO 2050,2120,2190,2260,2330,2400,2470,2540,2580,2620,2660
1860 ON NN GOTO 1890,1930,1970,2010,2050,2120,2190,2260,2330,2400,2470
1870 CALL SOUND(500,-4,2)
1880 GOTO 1820
1890 IF N<>70 THEN 1870
1900 CALL SOUND(T,175,2)
1910 CALL HCHAR(16,2,70)
1920 GOTO 2690
1930 IF N<>71 THEN 1870
1940 CALL SOUND(T,196,2)
1950 CALL HCHAR(16,5,71)
1960 GOTO 2690
1970 IF N<>65 THEN 1870
1980 CALL SOUND(T,220,2)
1990 CALL HCHAR(16,8,65)
2000 GOTO 2690
2010 IF N<>66 THEN 1870
2020 CALL SOUND(T,247,2)
2030 CALL HCHAR(16,11,66)
2040 GOTO 2690
2050 IF N<>67 THEN 1870
2060 CALL SOUND(T,262,2)
2070 IF KB=2 THEN 2100
2080 CALL HCHAR(16,2,67)
2090 GOTO 2690
2100 CALL HCHAR(16,14,67)
2110 GOTO 2690
2120 IF N<>68 THEN 1870
2130 CALL SOUND(T,294,2)
2140 IF KB=2 THEN 2170
2150 CALL HCHAR(16,5,68)
2160 GOTO 2690
2170 CALL HCHAR(16,17,68)
2180 GOTO 2690
2190 IF N<>69 THEN 1870
2200 CALL SOUND(T,330,2)
2210 IF KB=2 THEN 2240
2220 CALL HCHAR(16,8,69)
2230 GOTO 2690
2240 CALL HCHAR(16,20,69)
2250 GOTO 2690
2260 IF N<>70 THEN 1870
2270 CALL SOUND(T,349,2)
2280 IF KB=2 THEN 2310
2290 CALL HCHAR(16,11,70)
2300 GOTO 2690
2310 CALL HCHAR(16,23,70)
2320 GOTO 2690
2330 IF N<>71 THEN 1870
2340 CALL SOUND(T,392,2)
2350 IF KB=2 THEN 2380
2360 CALL HCHAR(16,14,71)
2370 GOTO 2690
2380 CALL HCHAR(16,26,71)
2390 GOTO 2690
2400 IF N<>65 THEN 1870
2410 CALL SOUND(T,440,2)
2420 IF KB=2 THEN 2450
2430 CALL HCHAR(16,17,65)
2440 GOTO 2690
2450 CALL HCHAR(16,29,65)
2460 GOTO 2690
2470 IF N<>66 THEN 1870
2480 CALL SOUND(T,494,2)
2490 IF KB=2 THEN 2520
2500 CALL HCHAR(16,20,66)
2510 GOTO 2690
2520 CALL HCHAR(16,32,66)
2530 GOTO 2690
2540 IF N<>67 THEN 1870
2550 CALL SOUND(T,523,2)
2560 CALL HCHAR(16,23,67)
2570 GOTO 2690
2580 IF N<>68 THEN 1870
2590 CALL SOUND(T,587,2)
2600 CALL HCHAR(16,26,68)
2610 GOTO 2690
2620 IF N<>69 THEN 1870
2630 CALL SOUND(T,659,2)
2640 CALL HCHAR(16,29,69)
2650 GOTO 2690
2660 IF N<>70 THEN 1870
2670 CALL SOUND(T,698,2)
2680 CALL HCHAR(16,32,70)
2690 FOR D=1 TO 1000
2700 NEXT D
2710 CALL HCHAR(16,J,109)
2720 COUNT=COUNT+1
2730 IF COUNT=10 THEN 5400
2740 KB=INT(2*RND)+1
2750 IF KB=PAT THEN 1740 ELSE 1380
2760 REM  
2770 CALL CLEAR
2780 FOR I=9 TO 15
2790 CALL COLOR(I,2,1)
2800 NEXT I
2810 CALL CHAR(96,"FF")
2820 CALL CHAR(104,"0000071F3F78F0E0")
2830 CALL CHAR(105,"000000C0F0F0783C")
2840 CALL CHAR(106,"C080808080808080")
2850 CALL CHAR(107,"1C0C0C0C0C040404")
2860 CALL CHAR(108,"8080808080808040")
2870 CALL CHAR(109,"0404040408080818")
2880 CALL CHAR(110,"FF40404040202020")
2890 CALL CHAR(111,"FF3040604040C080")
2900 CALL CHAR(112,"21213312161C1C18")
2910 CALL CHAR(113,"FF00000103070F1E")
2920 CALL CHAR(114,"FF78E8C884840404")
2930 CALL CHAR(115,"000000010103070F")
2940 CALL CHAR(116,"3C78F0E0C08080")
2950 CALL CHAR(117,"0404020202020202")
2960 CALL CHAR(118,"FF0E1C1838307070")
2970 CALL CHAR(119,"FF01070F1F3D3971")
2980 CALL CHAR(120,"FFFFFFC0")
2990 CALL CHAR(121,"FFFEFF0F0301")
3000 CALL CHAR(122,"FF000080C0C0E060")
3010 CALL CHAR(123,"606060E0E0606060")
3020 CALL CHAR(125,"60E0C0C0C0C0C0E0")
3030 CALL CHAR(126,"8080808080808080")
3040 CALL CHAR(127,"3030101010101010")
3050 CALL CHAR(128,"FF707038383C1C1E")
3060 CALL CHAR(129,"FF60603010")
3070 CALL CHAR(130,"FF40404040404040")
3080 CALL CHAR(131,"FF1020202040C080")
3090 CALL CHAR(132,"0F070301")
3100 CALL CHAR(133,"0080C0F0F83C0F03")
3110 CALL CHAR(134,"00000000000000C0")
3120 CALL CHAR(135,"202020202020212E")
3130 CALL CHAR(136,"01030608106080")
3140 CALL CHAR(137,"FF20202020202020")
3150 CALL CHAR(138,"1010101010101010")
3160 CALL CHAR(139,"3C7EFEFEFC7C391F")
3170 CALL CHAR(140,"10101030204080")
3180 CALL CHAR(141,"FF80808080808080")
3190 CALL CHAR(152,"030F1F3F7FFFFFFF")
3200 CALL CHAR(153,"FCFFFFFFFFFFFFFF")
3210 CALL CHAR(154,"FFFFFF7F3F1F0F03")
3220 CALL CHAR(155,"FFFFFFFFFFFFFFFC")
3230 CALL CHAR(156,"F0F0F0E0C080")
3240 CALL CHAR(157,"101090D0F0F0F0F0")
3250 CALL CHAR(158,"000080C0E0F0F0F0")
3260 CALL CHAR(159,"0101010101010101")
3270 CALL COLOR(16,7,1)
3280 GOSUB 4980
3290 DATA 78,65,77,69,32,84,72,69,32,78,79,84,69
3300 RESTORE 3290
3310 FOR Y=10 TO 22
3320 READ L
3330 CALL HCHAR(6,Y,L)
3340 NEXT Y
3350 IF GAME=3 THEN 4040
3360 REM  
3370 DATA 9,5,104,9,6,105,10,5,106,10,6,107,11,5,108,11,6,109,12,5,110,12,6,111,13,5,112
3380 RESTORE 3370
3390 DATA 14,4,113,14,5,114,15,3,115,15,4,116,15,5,117,16,3,118,16,5,119,16,6,120,16,7,121,16,8,122
3400 DATA 17,3,123,17,5,125,17,6,126,17,8,127,18,3,128,18,5,129,18,6,130,18,8,131,19,3,132
3410 DATA 19,4,133,19,5,134,19,6,135,19,7,136,20,6,137,21,6,138,22,5,139,22,6,140,1,1,32
3420 FOR I=1 TO 37
3430 READ X,Y,G
3440 CALL HCHAR(X,Y,G)
3450 NEXT I
3460 COUNT=0
3470 RANDOMIZE
3480 NN=INT(11*RND)+1
3490 M=22-NN
3500 GOSUB 5070
3510 IF NN<>1 THEN 3540
3520 CALL HCHAR(M+1,14,96)
3530 CALL HCHAR(M+1,18,96)
3540 CALL KEY(0,N,S)
3550 IF S<>1 THEN 3540
3560 ON NN GOTO 3590,3630,3670,3710,3750,3790,3830,3870,3910,3950,3990
3570 CALL SOUND(600,-8,2)
3580 GOTO 3540
3590 IF N<>67 THEN 3570
3600 CALL SOUND(T,262,2)
3610 CALL HCHAR(M+1,16,67)
3620 GOTO 4020
3630 IF N<>68 THEN 3570
3640 CALL SOUND(T,294,2)
3650 CALL HCHAR(M+1,16,68)
3660 GOTO 4020
3670 IF N<>69 THEN 3570
3680 CALL SOUND(T,330,2)
3690 CALL HCHAR(M+1,16,69)
3700 GOTO 4020
3710 IF N<>70 THEN 3570
3720 CALL SOUND(T,349,2)
3730 CALL HCHAR(M+1,16,70)
3740 GOTO 4020
3750 IF N<>71 THEN 3570
3760 CALL SOUND(T,392,2)
3770 CALL HCHAR(M+1,16,71)
3780 GOTO 4020
3790 IF N<>65 THEN 3570
3800 CALL SOUND(T,440,2)
3810 CALL HCHAR(M+1,16,65)
3820 GOTO 4020
3830 IF N<>66 THEN 3570
3840 CALL SOUND(T,494,2)
3850 CALL HCHAR(M+1,16,66)
3860 GOTO 4020
3870 IF N<>67 THEN 3570
3880 CALL SOUND(T,523,2)
3890 CALL HCHAR(M+1,16,67)
3900 GOTO 4020
3910 IF N<>68 THEN 3570
3920 CALL SOUND(T,587,2)
3930 CALL HCHAR(M+1,16,68)
3940 GOTO 4020
3950 IF N<>69 THEN 3570
3960 CALL SOUND(T,659,2)
3970 CALL HCHAR(M+1,16,69)
3980 GOTO 4020
3990 IF N<>70 THEN 3570
4000 CALL SOUND(T,698,2)
4010 CALL HCHAR(M+1,16,70)
4020 GOSUB 5220
4030 GOTO 3480
4040 CALL CHAR(97,"FF000000003078FC")
4050 CALL CHAR(98,"FC7830")
4060 CALL CHAR(99,"FFFF7E3C")
4070 CALL CHAR(100,"18102060607C7EFF")
4080 CALL CHAR(101,"FF00000103060408")
4090 CALL CHAR(102,"FF0F70C0")
4100 CALL CHAR(103,"FFC0381C0E070303")
4110 CALL CHAR(124,"C0C0603038383838")
4120 CALL CHAR(142,"FF1C1C1C1C1C1C1C")
4130 CALL CHAR(143,"1C1C1C1C1C1C1C1C")
4140 CALL CHAR(144,"FF3838387070C0C0")
4150 CALL CHAR(145,"030306040C1870C0")
4160 CALL CHAR(146,"FF03060C106080")
4170 DATA 14,3,99,13,3,100,12,3,101,12,4,102,12,6,103,13,7,124,14,7,142
4180 RESTORE 4170
4190 DATA 15,7,143,16,7,144,17,6,145,18,5,146,12,9,97,13,9,98,14,9,97,15,9,98,1,1,32
4200 FOR I=1 TO 16
4210 READ X,Y,G
4220 CALL HCHAR(X,Y,G)
4230 NEXT I
4240 COUNT=0
4250 RANDOMIZE
4260 NN=INT(11*RND)+1
4270 M=20-NN
4280 GOSUB 5070
4290 IF NN<>11 THEN 4320
4300 CALL HCHAR(M+1,14,96)
4310 CALL HCHAR(M+1,18,96)
4320 CALL KEY(0,N,S)
4330 IF S<>1 THEN 4320
4340 ON NN GOTO 4370,4420,4470,4520,4570,4620,4670,4720,4770,4820,4870
4350 CALL SOUND(600,-8,2)
4360 GOTO 4320
4370 IF N<>71 THEN 4350
4380 J=110
4390 GOSUB 4930
4400 CALL HCHAR(20,16,71)
4410 GOTO 4910
4420 IF N<>65 THEN 4350
4430 J=116
4440 GOSUB 4930
4450 CALL HCHAR(19,16,65)
4460 GOTO 4910
4470 IF N<>66 THEN 4350
4480 J=123
4490 GOSUB 4930
4500 CALL HCHAR(18,16,66)
4510 GOTO 4910
4520 IF N<>67 THEN 4350
4530 J=131
4540 GOSUB 4930
4550 CALL HCHAR(17,16,67)
4560 GOTO 4910
4570 IF N<>68 THEN 4350
4580 J=147
4590 GOSUB 4930
4600 CALL HCHAR(16,16,68)
4610 GOTO 4910
4620 IF N<>69 THEN 4350
4630 J=165
4640 GOSUB 4930
4650 CALL HCHAR(15,16,69)
4660 GOTO 4910
4670 IF N<>70 THEN 4350
4680 J=175
4690 GOSUB 4930
4700 CALL HCHAR(14,16,70)
4710 GOTO 4910
4720 IF N<>71 THEN 4350
4730 J=196
4740 GOSUB 4930
4750 CALL HCHAR(13,16,71)
4760 GOTO 4910
4770 IF N<>65 THEN 4350
4780 J=220
4790 GOSUB 4930
4800 CALL HCHAR(12,16,65)
4810 GOTO 4910
4820 IF N<>66 THEN 4350
4830 J=247
4840 GOSUB 4930
4850 CALL HCHAR(11,16,66)
4860 GOTO 4910
4870 IF N<>67 THEN 4350
4880 J=262
4890 GOSUB 4930
4900 CALL HCHAR(10,16,67)
4910 GOSUB 5220
4920 GOTO 4260
4930 FOR I=1 TO 5
4940 CALL SOUND(200,J,2)
4950 J=J+15
4960 NEXT I
4970 RETURN
4980 REM  
4990 FOR X=12 TO 20 STEP 2
5000 CALL HCHAR(X,1,96,31)
5010 NEXT X
5020 FOR X=12 TO 18 STEP 2
5030 CALL HCHAR(X,1,96,31)
5040 CALL HCHAR(X+1,1,126)
5050 NEXT X
5060 RETURN
5070 REM  
5080 CALL HCHAR(M,15,152)
5090 CALL HCHAR(M,16,153)
5100 CALL HCHAR(M+1,15,154)
5110 CALL HCHAR(M+1,16,155)
5120 CALL HCHAR(M+1,17,156)
5130 IF GAME=3 THEN 5210
5140 IF NN<8 THEN 5180
5150 CALL HCHAR(M,17,158)
5160 CALL VCHAR(M+1,14,159,6)
5170 RETURN
5180 CALL HCHAR(M,17,157)
5190 CALL VCHAR(M-5,17,138,5)
5200 RETURN
5210 IF NN<5 THEN 5180 ELSE 5150
5220 REM  
5230 FOR D=1 TO 1000
5240 NEXT D
5250 COUNT=COUNT+1
5260 IF COUNT=10 THEN 5400
5270 CALL HCHAR(M,14,32,5)
5280 CALL HCHAR(M+1,14,32,5)
5290 IF GAME=3 THEN 5350
5300 IF NN<8 THEN 5330
5310 CALL VCHAR(M+1,14,32,6)
5320 GOTO 5360
5330 CALL VCHAR(M-5,17,32,5)
5340 GOTO 5360
5350 IF NN<5 THEN 5330 ELSE 5310
5360 FOR K=12 TO 20 STEP 2
5370 CALL HCHAR(K,14,96,5)
5380 NEXT K
5390 RETURN
5400 PRINT "PRESS 1 FOR KEYBOARD QUIZ"
5410 PRINT TAB(7);"2 FOR TREBLE NOTES"
5420 PRINT TAB(7);"3 FOR BASS NOTES"
5430 PRINT TAB(7);"4 TO END PROGRAM"
5440 CALL KEY(0,K,S)
5450 IF K=52 THEN 5500
5460 IF K>51 THEN 5440
5470 IF K<49 THEN 5440
5480 GAME=K-48
5490 IF GAME=1 THEN 1240 ELSE 2770
5500 END