5 REM *** PEPERONI, PLEASE!10 REM HOWARD BOGGESS20 CLEAR 50030 DIMG(12)55 FOR L1=1TO8:READ P(L1):NEXT60 FOR L1=1TO12:READ G(Ll):NEXT100 CLS105 PRINT@39,"PEPPERONI, PLEASE!"115 PRINT@105,"AN EXERCISE IN"125 PRINT@171,"FRACTIONS"130 FOR DLAY=1 TO 6000:NEXT200 M=RND(7)+1201 N=M220 IF M=3 THEN N=M*RND(2)224 IF M=4 THEN N=M*RND(2)230 IF M = 2 THEN N=M*RND(4)240 GOSUB 7005:REM DRAW PEOPLE245 GOSUB 9010:REM DRAW PIZZA250 ON N GOSUB 0,3000,3500,4000,4500,5000,5500,6000260 REM * ABOVE DISPLAYS SLICES300 PRINT@385,"count the people"; 310 PRINT@449,"count the slices";320 FOR DLAY=1 TO 6000:NEXT322 PRINT@385,"                ";324 PRINT@449,"                ";326 SOUND 176,2335 PRINT@385,"HOW MANY slices";336 PRINT@449,"PER person?";337 A$=INKEY$:IF A$=""THEN337338 YY=VAL(A$):IF YY<1 OR YY>8 THEN SOUND32,2:GOTO 337339 PRINT@461,YY;340 PRINT@417,"IN THE whole    ";342 PRINT@449,"                ";344 PRINT@449,"pizza?";345 SOUND176,2346 A$=INKEY$:IFA$=""THEN 346348 YZ=VAL(A$):IF YZ<1 OR YZ>8 THEN SOUND32,2:GOTO 346350 PRINT@456,YZ;380 IF YY=N/M AND YZ=N THEN 395382 CLS:GOSUB 2010383 ERROR = ERROR +1384 IF ERROR>2 THEN ERROR=0:GOTO 397390 GOTO 240395 CLS:GOSUB 1010:REM HAPPY FACE397 GOSUB 8010:REM DISPLAY FRACTION400 PRINT§392,"PLAY AGAIN <Y/N>?";410 A$=INKEY$:IF A$="" THEN 410420 IF A$="Y" THEN 200430 IF A$<>"N" THEN 400440 CLS:END1000 REM ***HAPPY FACE***1010 FOR A=0 TO 21015 PRINT @A*32+365,CHR$(128);1020 PRINT CHR$(128);CHR$(128);1025 PRINT CHR$(128);1030 NEXT A1050 REM MOUTH RED1055 SET(27,26,4):SET(28,27,4)1060 SET(29,27,4):SET(30,27,4)1065 SET(31,27,4):SET(32,26,4)1070 REM NOSE ORANGE1075 SET(29,25,8)1110 SET(28,23,3)1140 SET(31,23,3)1200 PRINT@492,"RIGHT!";1260 FOR W=180 TO 240 STEP 81270 SOUND W,11280 NEXT W1290 FOR A=1 TO 900:NEXT A1300 FOR A=1 TO 4:PRINT @(333+32*A)," ":NEXT A:PRINT @492,"      ";1350 RETURN2000 REM ***SAD FACE***2010 FOR A=0 TO 22020 PRINT @A*32+365,CHR$(128);2025 PRINT CHR$(128);CHR$(128);2030 PRINT CHR$(128);2035 NEXT A2050 REM MOUTH RED2055 SET(28,26,4):SET(29,25,4)2070 SET(30,25,4):SET(31,26,4)2075 SET(27,27,4):SET(32,27,4)2105 REM EYES BLUE2110 SET(28,23,3)2140 SET(31,23,3)2150 PRINT@486, "SORRY ... TRY AGAIN";2160 REM SAD SOUND2170 SOUND 32,82180 SOUND 16,162220 FOR A=1 TO 500: NEXT A2230 FOR A=1 TO 52235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                   ";2250 RETURN3000 REM 2 SLICES OP PIZZA3010 FOR L1=2 TO 34 STEP 23020 SET(L1,10,3)3030 NEXT L13040 RETURN3500 REM 3 SLICES OF PIZZA3510 FOR L1=2 TO 18 STEP 23520 SET(L1,10,3)3530 NEXT L13540 FOR L1=1 TO 73550 SET(18+L1,10+L1,3)3560 SET(18+L1,10-L1,3)3570 NEXT L13580 RETURN4000 REM 4 SLICES OF PIZZA4010 GOSUB 30104020 FOR L1=2 TO 18 STEP 24030 SET(18,L1,3)4040 NEXT L14050 RETURN4500 REM ** 5 SLICES4510 FOR L1=2 TO 8 STEP 24520 SET(18,L1,3)4530 NEXT L14540 SET(30,7,3):SET(27,8,3)4550 SET(24,9,3):SET(21,10,3)4560 SET(7,7,3):SET(10,8,3)4570 SET(13,9,3):SET(16,10,3)4590 FOR L1=2 TO 10 STEP 24600 SET(19-L1,L1/2+10,3)4610 SET(17+L1,Ll/2+10,3)4620 NEXT L14640 RETURN5000 REM *** 6 SLICES5010 GOSUB 35005020 FOR L1=l TO 75030 SET(18-L1,10+L1,3)5040 SET(10+L1,2+L1,3)5050 NEXT L15060 FOR L1=2 TO 16 STEP 25070 SET(18+L1,10,3)5080 NEXT L15490 RETURN5500 REM ** 7 SLICES OF PIZZA5510 GOSUB 30005520 FOR L1=2 TO 8 STEP 25530 SET(18,L1+11,3)5540 NEXT L15550 FOR L1=2 TO 85560 SET(9+L1,1+L1,3) 5570 SET(17+L1,11-L1,3)5580 NEXT L15590 FOR L1=2 TO 10 STEP 25600 SET(19-L1,L1/2+10,3)5610 SET(17+L1,L1/2+10,3)5620 NEXT L15630 RETURN6000 REM *** 8 SLICES6010 GOSUB 40106020 FOR L1=2 TO 8 STEP 26030 SET(7+L1,L1/2+4,3)6040 SET(30-L1,L1/2+4,3)6050 SET(17-L1,L1/2+12,3)6060 SET(20+L1,L1/2+12,3)6070 NEXT L16080 RETURN7000 REM FIGURE SUBROUTINE7005 CLS07010 CO=240:REM ORANGE7050 FOR P1=1 TO M: REM PEOPLE7060 P=P(P1)7070 FOR P3 = 1 TO 12: REM GRAPHICS7080 PRINT@P+RC,CHR$((G(P3))+CO);7090 RC=RC+1:IF RC=4 THEN RC=0:P=P+327100 NEXT:NEXT7150 RETURN8000 REM *** DISPLAY FRACTION8010 CLS8017 IF N/M=1 THEN PRINT@38,N/M;"SLICE PER PERSON":GOTO 80308020 PRINT@38,N/M;"SLICES PER PERSON"8030 PRINT@101,N;"TOTAL PIZZA SLICES"8060 PRINT@168,"EACH PERSON EATS"8090 PRINT@204,N/M;"/";N8100 PRINT@233,"OF THE PIZZA"8110 FOR DLAY=1 TO 3000:NEXT8120 RETURN9000 REM *** DRAW PIZZA9010 CO=49050 FOR L1=1 TO 13:SET(11+L1,0,CO):SET(11+L1,21,CO):NEXT9060 FOR L1=1 TO 6:SET(0,7+L1,CO):SET(36,7+L1,CO):NEXT9064 HP=13:VP=0:CL=1:FOR L1=1 TO 7 9066 SET(VP+CL+24,0+L1,CO)9068 SET(VP+CL+24,21-L1,CO)9071 SET(VP+CL,8-L1,CO)9072 SET(VP+CL,HP+L1,CO):VP=VP+CL9074 CL=CL+1:IF CL=3 THEN CL=19076 NEXT9290 RETURN9300 DATA 20,25,148,153,276,281,404,4099310 DATA 1,13,14,2,3,11,7,3,1,14,13,2