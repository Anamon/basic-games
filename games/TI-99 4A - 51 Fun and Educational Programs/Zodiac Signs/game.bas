100 REM ZODIAC SIGN
110 CALL CLEAR
120 PRINT "*** FIND ZODIAC SIGN ***"
130 PRINT
140 PRINT
150 PRINT "ENTER BIRTHDAY MONTH (1-12)"
160 INPUT M
170 IF M<1 THEN 140
180 IF M>12 THEN 140
190 PRINT
200 PRINT "ENTER BIRTHDAY DATE (1-31)"
210 INPUT D
220 IF D<1 THEN 190
230 IF D>31 THEN 190
240 N=(M*100)+D
250 RESTORE
260 READ SIGN$,DATE
270 IF SIGN$="END" THEN 570
280 IF N>DATE THEN 260
290 PRINT
300 PRINT
310 PRINT "****************************" 
320 PRINT
330 PRINT "YOUR ZODIAC SIGN IS :";SIGN$
340 PRINT
350 PRINT
360 PRINT "****************************"
370 PRINT
380 PRINT "TO END TYPE  END"
390 PRINT "TO CONTINUE HIT ENTER"
400 INPUT RESPONSE$
410 IF RESPONSE$="END" THEN 570
420 GOTO 130
430 DATA CAPRICORN,0119
440 DATA AQUARIUS,0218
450 DATA PISCES,0320
460 DATA ARIES,0419
470 DATA TAURUS,0520
480 DATA GEMINI,0621
490 DATA CANCER,0722
500 DATA LEO,0822
510 DATA VIRGO,0922
520 DATA LIBRA,1023
530 DATA SCORPIO,1121
540 DATA SAGITTARIUS,1221
550 DATA CAPRICORN,1231
560 DATA END,9999
570 END