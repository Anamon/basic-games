100 REM -"ENGLISH TO METRIC"
110 CALL CLEAR
120 PRINT "**** ENGLISH TO METRIC ****"
130 PRINT
140 PRINT
150 PRINT
160 PRINT "INCHES  TO CENTIMETERS -- 1"
170 PRINT "METERS  TO YARDS -------- 2"
180 PRINT "MILES   TO KILOMETERS --- 3"
190 PRINT "OUNCES  TO GRAMS -------- 4"
200 PRINT "POUNDS  TO GRAMS -------- 5"
210 PRINT "GALLONS TO LITERS ------- 6"
220 PRINT
230 PRINT
240 PRINT
250 PRINT "PLEASE ENTER YOUR CHOICE."
260 PRINT
270 PRINT
280 INPUT "ENTER 1 THROUGH 6 ":N
290 IF N>6 THEN 270
300 IF N<1 THEN 270
310 CALL CLEAR
320 ON N GOSUB 360,410,460,510,560,610
330 PRINT
340 PRINT
350 GOTO 120
360 INPUT "ENTER INCHES ":IN
370 GOSUB 660
380 PRINT IN;"INCHES=";2.54*IN;"CENTIMETER"
390 GOSUB 710
400 RETURN
410 INPUT "ENTER METERS ":M
420 GOSUB 660
430 PRINT M;"METERS=";1.936*M;"YARDS"
440 GOSUB 710
450 RETURN
460 INPUT "ENTER MILES ":M
470 GOSUB 660
480 PRINT M;"MILES=";1.609*M;"KILOMETERS"
490 GOSUB 710
500 RETURN
510 INPUT "ENTER OUNCES ":Z
520 GOSUB 660
530 PRINT Z;"OUNCES=";28.35*Z;"GRAMS"
540 GOSUB 710
550 RETURN
560 INPUT "ENTER POUNDS ":P
570 GOSUB 660
580 PRINT P;"POUNDS=";453.6*P;"GRAMS"
590 GOSUB 710
600 RETURN
610 INPUT "ENTER GALLONS ":G
620 GOSUB 660
630 PRINT G;"GALLONS=";3.785*G;"LITERS"
640 GOSUB 710
650 RETURN
660 REM =SKIP 3 LINES
670 FOR I=1 TO 3
680 PRINT
690 NEXT I
700 RETURN
710 REM =RETURN RTN
720 FOR I=1 TO 10
730 PRINT
740 NEXT I
750 PRINT "HIT ENTER TO CONTINUE "
760 PRINT "OR TYPE END TO STOP."
770 INPUT E$
780 IF E$="END" THEN 800
790 GOTO 110
800 END
