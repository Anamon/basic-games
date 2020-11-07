100 REM SCRAMBLER
110 CALL CLEAR
120 PRINT "WELCOME TO ...": : : : : : : : :
130 FOR J=1 TO 3
140 FOR I=1 TO 10
150 CALL KEY(3,KEY,STATUS)
160 IF STATUS THEN 230
170 CALL SOUND(50,110*I,0)
180 CALL SCREEN(INT(RND*16)+1)
190 CALL HCHAR(23,13,ASC(SEG$("SCRAMBLER ",I,1)),5)
200 PRINT TAB(13);SEG$("SCRAMBLER ",I,1)
210 NEXT I
220 NEXT J
230 PRINT : : : : : : : : : :
240 CALL SCREEN(13)
250 DIM WORD$(100)
260 N=10
270 FOR I=1 TO N
280 READ WORD$(I)
290 NEXT I
300 DIM SCRAMBLER(15),VICTORY(5)
310 FOR I=1 TO 5
320 READ VICTORY(I)
330 NEXT I
340 INPUT "ENTER THE STARTING LEVEL    (1-9) ":LEVEL
350 IF (LEVEL<1)+(LEVEL>9)+(LEVEL<>INT(LEVEL))THEN 340
360 FOR L=LEVEL TO 9
370 LF=(20-2*LEVEL)*25
380 CALL CLEAR
390 PRINT "LEVEL:";L: :
400 RIGHT=0
410 FOR Q=1 TO 10
420 RANDOMIZE
430 SCRAMBLE$=""
440 ANSWER$=""
450 R=INT(RND*N)+1
460 TEMP$=WORD$(R)
470 LNG=LEN(TEMP$)
480 FOR I=1 TO LNG
490 CALL SOUND(100,110*1.3^I,0)
500 SCRAMBLER(I)=ASC(SEG$(TEMP$,I,1))
510 NEXT I
520 FOR I=1 TO LNG
530 CALL SOUND(100,(LNG-I+1)*110,0)
540 R=INT(RND*LNG)+1
550 TEMP=SCRAMBLER(I)
560 SCRAMBLER(I)=SCRAMBLER(R)
570 SCRAMBLER(R)=TEMP
580 NEXT I
590 FOR I=1 TO LNG
600 SCRAMBLE$=SCRAMBLE$&CHR$(SCRAMBLER(I))
610 NEXT I
620 TL=LF*2*LOG(LNG)
630 PRINT SCRAMBLE$:
640 FOR T=1 TO TL
650 CALL KEY(3,A,X)
660 IF X=1 THEN 700
670 NEXT T
680 PRINT :"SORRY, YOU EXCEEDED THE     TIME LIMIT. THE ANSWER WAS: ";TEMP$: :
690 GOTO 760
700 T$=CHR$(A)
710 PRINT T$;
720 ANSWER$=ANSWER$&T$
730 IF LEN(ANSWER$)<LNG THEN 670
740 IF ANSWER$=TEMP$ THEN 830
750 PRINT : :"SORRY, THAT IS INCORRECT.   THE RIGHT ANSWER IS:";TEMP$: :
760 NEXT Q
770 INPUT "WOULD YOU LIKE TO TRY AGAIN?":QUERY$
780 IF SEG$(QUERY$,1,1)="N" THEN 820
790 IF RIGHT<7 THEN 940 ELSE 960
800 NEXT L
810 PRINT "YOU ARE A GRANDMASTER OF    SCRAMBLING. CONGRATULATIONS."
820 END
830 FOR I=1 TO 5
840 CALL SOUND(100,VICTORY(I),0)
850 NEXT I
860 PRINT : :"THAT'S RIGHT! GOOD SHOW!": :
870 RIGHT=RIGHT+1
880 FOR T=1 TO 300
890 NEXT T
900 GOTO 760
910 DATA "COMPUTER","PROGRAM","NAIVE","EXISTENTIAL","PARTIAL","REITERATE","INTEGRAL","COEXIST","FOREIGN"
920 DATA "DEMEANOR"
930 DATA 444,604,670,704,772
940 PRINT "SORRY, YOU SEEM TO HAVE HAD A ROUGH TIME ON THIS LEVEL.": :
950 GOTO 410
960 FOR I=1 TO 5
970 CALL SOUND(50,VICTORY(I),0)
980 NEXT I
990 PRINT : :
1000 ON INT(RND*3)+1 GOSUB 1050,1070,1090
1010 PRINT "YOU SCORED";RIGHT*10;"%"
1020 FOR T=1 TO 400
1030 NEXT T
1040 GOTO 800
1050 PRINT "THAT'S GREAT!"
1060 RETURN
1070 PRINT "GOOD JOB. PROCEED TO THE    NEXT LEVEL"
1080 RETURN
1090 PRINT "MAGNIFICENT WORK!"
1100 RETURN
