100 REM -REPEAT NAME
110 CALL CLEAR
120 PRINT "*** REPEAT-A-NAME ***"
130 PRINT
140 PRINT
150 PRINT "ENTER ANY NAME"
160 INPUT NAME$
170 CALL CLEAR
180 FOR I=1 TO 100
190 PRINT NAME$;" ";
200 NEXT I
210 PRINT
220 PRINT
230 PRINT "DO YOU WISH TO DO THIS AGAIN? (YES OR NO)"
240 INPUT DECISION$
250 IF DECISION$="YES" THEN 110
260 IF DECISION$="NO" THEN 300
270 PRINT
280 PRINT "PLEASE ANSWER YES OR NO"
290 GOTO 210
300 END