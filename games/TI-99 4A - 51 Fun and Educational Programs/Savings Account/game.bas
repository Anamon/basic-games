100 REM -"SAVINGS ACCOUNT"
110 CALL CLEAR
120 PRINT "**** SAVINGS ACCOUNT ****"
130 PRINT
140 PRINT
150 INPUT "HOW MUCH DO YOU WANT TO SAVE EVERY WEEK? $":WS
160 PRINT
170 INPUT "AVG ANNUAL INT RATE %= ":I
180 PRINT
190 INPUT "HOW MUCH IS IN YOUR ACCOUNT NOW?  $":BAL
200 PRINT
210 INPUT "STARTING YEAR ":YEAR
220 CALL CLEAR
230 PRINT "**WATCH YOUR SAVINGS GROW**"
240 PRINT
250 PRINT
260 PRINT " YEAR","BALANCE"
270 PRINT
280 YS=WS*52
290 FOR N=1 TO 10
300 BAL=BAL+YS+(I/100*(BAL+YS/2))
310 BAL=INT(BAL)
320 PRINT (YEAR+N),BAL
330 NEXT N
340 END
