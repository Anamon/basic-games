100 REM BINGO CALLER
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 3/6/83
120 REM PROGRAM RUNS IN TI-BASIC
130 RANDOMIZE
140 CALL CLEAR
150 DIM A(75)
160 FOR X=1 TO 75
170 A(X)=X
180 NEXT X
190 Y=INT(RND*75)+1
200 IF A(Y)=0 THEN 190
210 IF A(Y) < 16 THEN 220 ELSE 240
220 Q$="B"
230 GOTO 340
240 IF A(Y) < 31 THEN 250 ELSE 270
250 Q$="I"
260 GOTO 340
270 IF A(Y) < 46 THEN 280 ELSE 300
280 Q$="N"
290 GOTO 340
300 IF A(Y) < 61 THEN 310 ELSE 330
310 Q$="G"
320 GOTO 340
330 Q$="0"
340 INPUT "PRESS (ENTER)":ER$
350 CALL CLEAR
360 PRINT " ";Q$;A(Y)
370 PRINT
380 PRINT
390 PRINT
400 PRINT
410 PRINT
420 PRINT
430 PRINT
440 PRINT
450 PRINT
460 PRINT
470 PRINT
480 A(Y)=0
490 GOTO 190
