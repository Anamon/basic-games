100 REM -"TWINKLING STARS"
110 CALL CLEAR
120 READ F
130 IF F=0 THEN 230
140 CALL SOUND(400,F,2)
150 C$=C$&"*"
160 PRINT C$
170 GOTO 120
180 DATA 698,698,1047,1047
190 DATA 1175,1175,1047,1047
200 DATA 932,932,880,880
210 DATA 784,784,698
220 DATA 0
230 FOR I=1 TO 250
240 NEXT I
250 RESTORE
260 N=N+1
270 IF N=4 THEN 290
280 GOTO 120
290 CALL CLEAR
300 PRINT TAB(10);"THE END"
310 FOR I=1 TO 10
320 PRINT
330 NEXT I
340 END