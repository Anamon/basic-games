
50 REM *** WORD MUSIC
60 CLS
65 PRINT@37,"***   WORD MUSIC   ***"
66 FOR PAUSE=1 TO 1000:NEXT PAUSE
80 DIM MUSIC(15)
82 FOR I=1 TO15:READ MUSIC(I):NEXT I
100 CLS
110 PRINT@386,"YOUR WORD";:INPUT WD$
115 IF WD$="" THEN CLS:END
120 IF LEN(WD$)>16 THEN WD$=LEFT$(WD$,15)
130 CLS
140 PRINT@386,"*** TYPE YOUR WORD ***"
145 PRINT@449," ";
150 FOR I=1 TO LEN(WD$)
160 K$=INKEY$:IF K$=""THEN 160
162 K=ASC(K$)
165 IF K=13 THEN 100
170 IF K$<> MID$(WD$,I,1) THEN 160
180 PRINTK$;
181 SOUND MUSIC(I),8
190 NEXT I
200 FOR PAUSE =1 TO 300:NEXT PAUSE
210 GOSUB 3510
220 GOTO 130
3500 REM *** PLAY WORD/NOTES
3510 CLS
3515 PRINT@34,"*** A LITTLE WORD MUSIC ***"
3517 FOR J=1 TO 5
3518 PRINT@103," ":
3519 PRINT@103," ";
3520 FOR I=1 TO LEN(WD$)
3530 PRINTMID$(WD$,I,1);
3540 SOUND MUSIC(I),8
3560 NEXT I
3570 NEXT J
3580 RETURN
4000 DATA 89,108,147,176,193,204,218,227,232,133,159,176,197,210,216
