120 CALL CLEAR
130 PRINT TAB(8);"MAKE A FACE"
140 PRINT : : :"CHOOSE EYES, EYEBROWS,"
150 PRINT :"NOSE, AND MOUTH BY PRESSING"
160 PRINT :"THE CORRESPONDING NUMBER.": : : : :
170 FOR C=96 TO 147
180 READ C$
190 CALL CHAR(C,C$)
200 NEXT C
210 DATA 2424242424424242,424242428181817E,020404080810102,20404080808C936,,1824428181422481,0
220 DATA 18242442428181FF,000000073B274F8F,000000E0D8E4F2F1,4F2F170F03,F2F4E8F0C,0F1020408083878FF
230 DATA F008040201C1E1F1,4F4F4F2F2F2F708,F2F2F2F4F4F40E01,00030C1020214347,00C030080484C2E2
240 DATA 47432120100C03,E2C284040830C,00000000000F7,0000031CE,0000C03807,0000000000F00E,00000000030C30C
250 DATA 00000000C02418,00000000032418,00000000C0300C03,0000071860808,0000E018060101,0000071860808
260 DATA 0000E018060101,0102040808040201,FF000000000000FF,804020101040208,030F3FFF7F1F07,C7EFFFFFFFFFFFFE
270 DATA 80E0F8FEFCF0C,2040A010080601,000000000000817E,0402050810608,8060783F1F0F03,00000000FFFFFFFF
280 DATA 01061EFCF8F0C,,,,,FF,010204081020408,0101010101010101,8040201008040201
290 CALL COLOR(13,7,1)
300 CALL COLOR(14,7,1)
310 CALL COLOR(15,9,1)
320 CALL CLEAR
330 CALL HCHAR(4,20,144,5)
340 CALL VCHAR(7,16,146,6)
350 CALL VCHAR(7,27,146,6)
360 CALL HCHAR(17,21,144,3)
370 RESTORE 380
380 DATA 4,19,145,4,25,147,5,18,145,5,26,147,6,17,145,6,27,147,13,17,147,13,27,145
390 DATA 14,18,147,14,26,145,15,19,147,15,25,145,16,20,147,16,24,145
400 DATA 5,3,67,5,4,72,5,5,79,5,6,79,5,7,83,5,8,69,5,9,58,8,3,49,12,3,50,16,3,51
410 FOR C=1 TO 24
420 READ A,B,G
430 CALL HCHAR(A,B,G)
440 NEXT C
450 FOR C=1 TO 3
460 G=100+C*4
470 CALL HCHAR(4+C*4,5,G)
480 CALL HCHAR(4+C*4,6,G+1)
490 CALL HCHAR(5+C*4,5,G+2)
500 CALL HCHAR(5+C*4,6,G+3)
510 NEXT C
520 CALL SOUND(150,1497,2)
530 CALL KEY(0,K,S)
540 IF (K<49)+(K>51)THEN 530
550 G=100+(K-48)*4
560 FOR C=20 TO 23 STEP 3
570 CALL HCHAR(8,C,G)
580 CALL HCHAR(8,C+1,G+1)
590 CALL HCHAR(9,C,G+2)
600 CALL HCHAR(9,C+1,G+3)
610 NEXT C
620 CALL VCHAR(8,5,32,10)
630 CALL VCHAR(8,6,32,10)
640 CALL HCHAR(20,3,52)
650 FOR C=1 TO 4
660 G=94+2*C
670 CALL HCHAR(4+C*4,5,G)
680 CALL HCHAR(5+C*4,5,G+1)
690 NEXT C
700 CALL SOUND(150,1497,2)
710 CALL KEY(0,K,S)
720 IF (K<49)+(K>52)THEN 710
730 C=K-48
740 CALL HCHAR(10,22,94+2*C)
750 CALL HCHAR(11,22,95+2*C)
760 CALL VCHAR(8,5,32,14)
770 FOR C=1 TO 4
780 G=C*3+125
790 CALL HCHAR(4+C*4,5,G)
800 CALL HCHAR(4+C*4,6,G+1)
810 CALL HCHAR(4+C*4,7,G+2)
820 NEXT C
830 CALL SOUND(150,1497,2)
840 CALL KEY(0,K,S)
850 IF (K<49)+(K>52)THEN 840
860 C=K-48
870 G=125+C*3
880 CALL HCHAR(13,21,G)
890 CALL HCHAR(13,22,G+1)
900 CALL HCHAR(13,23,G+2)
910 CALL VCHAR(8,5,32,13)
920 CALL VCHAR(8,6,32,13)
930 CALL VCHAR(8,7,32,13)
940 CALL HCHAR(20,3,32)
950 FOR C=1 TO 3
960 G=112+C*4
970 CALL HCHAR(4+C*4,5,G)
980 CALL HCHAR(4+C*4,6,G+1)
990 NEXT C
1000 CALL SOUND(150,1497,2)
1010 CALL KEY(0,K,S)
1020 IF (K<49)+(K>51)THEN 1010
1030 C=K-48
1040 G=112+C*4
1050 CALL HCHAR(6,20,G)
1060 CALL HCHAR(6,21,G+1)
1070 CALL HCHAR(6,23,G+2)
1080 CALL HCHAR(6,24,G+3)
1090 CALL VCHAR(8,5,32,9)
1100 CALL VCHAR(8,6,32,9)
1110 CALL VCHAR(5,3,32,12)
1120 CALL HCHAR(5,4,32,6)
1130 PRINT "TRY AGAIN? (Y/N)";
1140 CALL KEY(0,K,S)
1150 IF K=89 THEN 320
1160 IF K<>78 THEN 1140
1170 CALL CLEAR
1180 END
