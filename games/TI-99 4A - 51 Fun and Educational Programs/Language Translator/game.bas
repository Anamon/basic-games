100 REM LANGUAGE TRANSLATOR
110 CALL CLEAR
120 DIM LANG$(2,200),ENG$(200)
130 READ L$(1),L$(2)
140 GOSUB 190
150 GOSUB 250
160 GOSUB 410
170 GOSUB 620
180 GOTO 160
190 REM -READ VOCABULARY
200 N=N+1
210 READ ENG$(N),LANG$(1,N),LANG$(2,N)
220 IF ENG$(N)="END" THEN 240
230 GOTO 200
240 RETURN
250 REM -TRANSLATION CHOICE
260 CALL CLEAR
270 PRINT "--- LANGUAGE TRANSLATOR ---"
280 GOSUB 820
290 GOSUB 820
300 PRINT "HOW WOULD YOU LIKE TO TRANSLATE?"
310 GOSUB 820
320 PRINT "1-ENGLISH TO ";L$(1)
330 PRINT "2-ENGLISH TO ";L$(2)
340 GOSUB 820
350 GOSUB 820
360 PRINT "PLEASE ENTER CHOICE. TYPE  1 OR 2  AND HIT ENTER."
370 INPUT CHOICE
380 IF CHOICE>2 THEN 340
390 IF CHOICE<0 THEN 340
400 RETURN
410 REM -WORD TO TRANSLATE
420 CALL CLEAR
430 L=0
440 PRINT "** MY VOCABULARY **"
450 PRINT
460 L=0
470 FOR I=1 TO N-1
480 PRINT ENG$(I)
490 L=L+1
500 IF L<9 THEN 550
510 PRINT
520 PRINT "HIT ENTER TO CONTINUE"
530 INPUT RESPONSE$
540 L=0
550 NEXT I
560 GOSUB 820
570 PRINT "WHICH WORD WOULD YOU LIKE TO TRANSLATE TO ";L$(CHOICE)
580 PRINT "(TO CHANGE LANGUAGES, ENTER: CHANGE)."
590 INPUT WORD$
600 IF WORD$="CHANGE" THEN 150
610 RETURN
620 REM -TRANSLATE
630 CALL CLEAR
640 FOR I=1 TO N-1
650 IF WORD$<>ENG$(I)THEN 760
660 PRINT "ENGLISH",L$(CHOICE)
670 PRINT "--------","-------"
680 PRINT
690 PRINT WORD$,LANG$(CHOICE,I)
700 GOSUB 820
710 PRINT "TO END, TYPE: END."
720 PRINT "TO CONTINUE, HIT ENTER."
730 INPUT RESPONSE$
740 IF RESPONSE$="END" THEN 1030
750 GOTO 810
760 NEXT I
770 GOSUB 820
780 PRINT WORD$;"- NOT IN MY VOCABULARY."
790 PRINT
800 GOTO 440
810 RETURN
820 REM -SKIP 3 LINES
830 FOR Z=1 TO 3
840 PRINT
850 NEXT Z
860 RETURN
870 DATA FRENCH,SPANISH
880 DATA LOVE,AMOUR,AMAR
890 DATA HOUSE,CHATEAU,CASA
900 DATA MAN,HOMME,HOMBRE
910 DATA WOMAN,FEMME,HEMBRA
920 DATA I,JE,YO
930 DATA YOU,VOUS,USTED
940 DATA UNDERSTAND,COMPRENDRE,COMPRENDER
950 DATA PRETTY,JOLI,BONITO
960 DATA WHITE,BLANC,BLANCO
970 DATA STREET,RUE,CALLE
980 DATA ONE,UN,UNO
990 DATA TWO,DEUX,DOS
1000 DATA THREE,TROIS,TRES
1010 DATA RED,ROUGE,ROJO
1020 DATA END,END,END
1030 END