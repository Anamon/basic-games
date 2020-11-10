100 REM MORSE CODE
110 CALL CLEAR
120 PRINT "THIS IS A MORSE CODE        TRANSLATOR.": : : : : : : : :
130 CALL CHAR(46,"0000001818000000")
140 TL=50
150 TONE=2000
160 DIM CODE$(26)
170 FOR I=1 TO 26
180 READ CODE$(I)
190 NEXT I
200 INPUT "ENTER YOUR MESSAGE IN       ENGLISH:":MESSAGE$
210 PRINT : :
220 FOR I=1 TO LEN(MESSAGE$)
230 X=ASC(SEG$(MESSAGE$,I,1))-64
240 LETTER_CODE$="   "
250 IF (X<1)+(X>26)THEN 270
260 LETTER_CODE$=CODE$(X)
270 FOR J=1 TO LEN(LETTER_CODE$)
280 TEMP$=SEG$(LETTER_CODE$,J,1)
290 PRINT TEMP$;
300 IF TEMP$=" " THEN 390
310 IF TEMP$="." THEN 420 ELSE 440
320 FOR T=1 TO TL*.5
330 NEXT T
340 NEXT J
350 PRINT " ";
360 NEXT I
370 PRINT : :
380 END
390 FOR T=1 TO 25
400 NEXT T
410 GOTO 320
420 CALL SOUND(TL,TONE,0)
430 GOTO 320
440 CALL SOUND(TL*3,TONE,0)
450 GOTO 320
460 DATA ".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-"
470 DATA ".-.","...","-","..-","...-",".--","-..-","-.--","--.."