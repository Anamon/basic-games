100 REM -"SPEED READING"
110 CALL CLEAR
120 PRINT "**** SPEED READING ****"
130 PRINT
140 PRINT
150 PRINT "THIS PROGRAM WILL"
160 PRINT "HELP YOU READ FASTER"
170 PRINT
180 PRINT "THE TEXT IS IN THE DATA"
190 PRINT "STATEMENTS AND MAY BE EASILY CHANGED"
200 PRINT
210 PRINT
220 PRINT "READING SPEEDS RANGE FROM 1=FASTEST TO 10=SLOWEST"
230 PRINT
240 PRINT
250 PRINT
260 INPUT "ENTER READING SPEED (1 TO 10)":S
270 IF S<1 THEN 250
280 IF S>10 THEN 250
290 F=-2
300 SEC=(2*S)/10*1000
310 CALL SOUND(SEC,F,30)
320 READ A$
330 IF A$="XXX" THEN 460
340 CALL CLEAR
350 PRINT A$
360 CALL SOUND(SEC,F,30)
370 GOTO 320
380 DATA "SNOWFLAKES ARE TINY CRYSTALS"
390 DATA "OF ICE. THEY FORM WHEN WATER"
400 DATA "VAPOR FREEZES. WHEN THEY HIT"
410 DATA "THE GROUND THEY BLANKET OUR"
420 DATA "ROADS AND HIGHWAYS AND MAKE"
430 DATA "IT DIFFICULT TO DRIVE. BUT"
440 DATA "THEY TRULY ARE BEAUTIFUL."
450 DATA XXX
460 CALL CLEAR
470 END
