100 REM FAMILY BUDGET
110 CALL CLEAR
120 PRINT "*** FAMILY BUDGET ***"
130 PRINT
140 PRINT
150 PRINT "ITEM","AMOUNT"
160 PRINT
170 PRINT
180 READ ITEM$,AMT
190 IF ITEM$="END" THEN 230
200 PRINT ITEM$,AMT
210 TOTAL=TOTAL+AMT
220 GOTO 180
230 PRINT " ","------"
240 PRINT "TOTAL",TOTAL
250 PRINT
260 PRINT
270 END
280 DATA FOOD,100
290 DATA RENT,95
300 DATA GAS,25
310 DATA ELECTRICITY,15
320 DATA PHONE,4
330 DATA CAR,50
340 DATA CLOTHING,20
350 DATA SAVINGS,20
360 DATA END,0
