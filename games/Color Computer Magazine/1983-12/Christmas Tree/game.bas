
10 REM--CHRISTMAS TREE
20 CLS(3)
30 SET(31,2,1)
40 FOR H=28 TO 33
50 SET(H,4,1)
60 NEXT H
70 FOR H=26 TO 35
80 SET(H,6,1)
90 NEXT H 
100 FOR H=24 TO 37
110 SET(H,8,1)
120 NEXT H
130 FOR H=22 TO 39
140 SET(H,10,1)
150 NEXT H
160 FOR H=20 TO 41
170 SET(H,12,1)
180 NEXT H
190 FOR H=18 TO 43
200 SET(H,14,1)
210 NEXT H
220 FOR H=16 TO 45
230 SET(H,16,1)
240 NEXT H
250 FOR H=14 TO 47
260 SET(H,18,1)
270 NEXT H
280 FOR H=12 TO 49
290 SET(H,20,1)
300 NEXT H
310 FOR H=10 TO 51
320 SET(H,22,1)
330 NEXT H
340 FOR H=30 TO 33
350 SET(H,24,5)
360 SET(H,26,5)
370 NEXT H
380 REM--GREETING
390 PRINT @ 37, "MERRY";
400 PRINT @ 52, "CHRISTMAS";
410 REM--ORNAMENTS
420 SET(30,4,4)
430 LH=32:RH=28
440 FOR V=8 TO 20 STEP 4
450 LH=LH-4:RH=RH+4
460 FOR H=LH TO RH STEP 4
470 SET(H,V,4)
480 NEXT H,V
490 REM--BLINKING LIGHTS
500 RESET(30,4)
510 LH=32:RH=28
520 FOR V=8 TO 20 STEP 4
530 LH=LH-4:RH=RH+4
540 FOR H=LH TO RH STEP 4
550 RESET(H,V)
560 NEXT H,V
570 GOTO 420
