100 REM MATCHGAME
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 2/11/83
120 REM PROGRAM RUNS IN TI-BASIC
130 DIM A$(10)
140 DIM B$(10)
150 RANDOMIZE
160 CALL CLEAR
170 INPUT "HOW MANY COUPLES?":C
180 CALL CLEAR
190 FOR X= 1 TO C
200 INPUT "NAME OF BOY?":B$(X)
210 CALL CLEAR
220 NEXT X
230 FOR X=1 TO C
240 INPUT "NAME OF GIRL?":A$(X)
250 CALL CLEAR
260 NEXT X
270 I=INT(RND*C)+1
280 IF A$(I)="0" THEN 270
290 PRINT A$(I);
300 A$(I)="0"
310 II=INT(RND*C)+1
320 IF B$(II)="0" THEN 310
330 PRINT TAB(15);B$(II)
340 B$(II)="0"
350 GOTO 270
