100 REM -DOUBLE
110 CALL CLEAR
120 PRINT "*** DOUBLE YOUR MONEY ***"
130 PRINT
140 PRINT
150 PRINT "SEE HOW QUICKLY YOUR MONEY GROWS IF YOU DOUBLE IT 7 YEARS IN A ROW"
160 PRINT
170 PRINT
180 PRINT "ENTER STARTING DOLLARS "
190 INPUT S
200 GOSUB 260
210 FOR Y=1 TO 7
220 S=S*2
230 PRINT Y,S
240 NEXT Y
250 GOTO 340
260 REM HEADING
270 CALL CLEAR
280 PRINT "WATCH YOUR MONEY GROW"
290 PRINT
300 PRINT
310 PRINT "YEAR","DOLLARS"
320 PRINT
330 RETURN
340 END
