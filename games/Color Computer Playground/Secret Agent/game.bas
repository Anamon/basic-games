
50 REM *** SECRET AGENT
60 CLS
65 PRINT@34,"***  SECRET AGENT GAME  ***"
66 FOR PAUSE=1 TO 1000:NEXT PAUSE
100 CLS
110 PRINT@129,"WHAT IS YOUR CODE NAME?"
112 INPUT N$
120 CLS
130 PRINT@129,"GOOD NAME!  I LIKE IT!"
140 PRINT
150 PRINTN$;", WHAT IS YOUR SECRET"
155 PRINT"MESSAGE";:INPUT M$
160 CLS:M2$=""
170 PRINT@35,"coding machine working"
180 FOR PAUSE=1 TO 3000:NEXT PAUSE
190 FOR I=1 TO LEN(M$)
195 IF MID$(M$,I,1)=" "THEN M2$=M2$+" ":GOTO 210
200 T$=MID$(M$,I,1) 
202 T=ASC(T$)
204 T=T+1
206 T$=CHR$(T)
208 M2$=M2$+T$
210 NEXT I
220 CLS
230 PRINT@129,"ORIGINAL MESSAGE:"
240 PRINT
250 PRINTM$
260 PRINT:PRINT
270 PRINT" CODED MESSAGE:"
280 PRINT
290 PRINTM2$
300 PRINT:PRINT:PRINT
310 PRINT"PLAY AGAIN <Y/N>";:INPUT A$
320 IF A$="Y" THEN CLS:GOTO 150 
330 IF A$<>"N" THEN 310
340 CLS:END
1800 FOR PAUSE=1 TO 3000:NEXT PAUSE
