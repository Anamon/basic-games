
5 CLEAR 50,32384:CLEAR500
10 DATA 8E,4,0,C6,80,A6,84,81,60,26,2,E7,84,A6,80,8C,6,0,26,F1,8E,4,0,A6,84,8B,10,A7,80,8C,6,0,26,F5,39
15 FOR X=32384 TO 32418:READ PP$:B=VAL("&H"+PP$):POKEX,B:NEXT:DEFUSR0=32384
25 CLS
30 PRINT@32
35 FOR T=1 TO 8:READ WD$(T):NEXT
40 V$=CHR$(175):W$=" ":H$="AG":I$="GA":J$="FE":G$="EF":DIMX(200):T$=H$+I$+J$:PLAY"V25;O5;T150;L255"
45 PLAY T$
50 PRINT TAB(5)STRING$(6,175)W$V$V$W$W$W$V$V$W$STRING$(5,175)
55 PLAY T$
60 PRINT TAB(7)V$+V$+W$+W$+W$+V$+V$+W$+W$+W$+V$+V$+W$+V$+V$
65 PLAY T$
70 PRINTTAB(7)V$+V$+W$+W$+W$+V$+V$+V$+V$+V$+V$+V$+W$+V$+V$+V$+V$
75 PLAY T$
80 PRINT TAB(7)V$+V$+W$+W$+W$+V$+V$+W$+W$+W$+V$+V$+W$+V$+V$
85 PLAY T$
90 PRINTTAB(7)V$+V$+W$+W$+W$+V$+V$+W$+W$+W$+V$+V$+W$+V$+V$+V$+V$+V$
95 PLAY H$+J$+I$
100 PRINT
105 PLAY H$+J$+I$
110 PRINT TAB(2)V$+V$+W$+W$+W$+V$+V$+W$+V$+V$+V$+V$+V$+V$+W$+V$+V$+V$+V$+V$+V$+W$+V$+V$+V$+V$+V$
115 PRINT TAB(2)V$+V$+W$+W$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$
120 PLAY T$
125 PRINT TAB(2)V$+V$+W$+W$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$
130 PLAY T$
135 PRINT TAB(2)V$+V$+W$+V$+W$+V$+V$+W$+V$+V$+W$+W$+V$+V$+W$+V$+V$+V$+V$+V$+V$+W$+V$+V$+W$+W$+V$+V$
140 PLAY T$
145 PRINT TAB(2)V$+V$+V$+V$+V$+V$+V$+W$+V$+V$+V$+V$+V$+V$+W$+V$+V$+W$+W$+V$+V$+W$+V$+V$+V$+V$+V$
150 PLAY H$+J$+I$
155 FOR T=1024 TO 1055:POKE T,147:NEXT
160 PLAY T$
165 FOR T=1055 TO 1535 STEP 32:POKE T,154:NEXT
170 PLAY T$
175 FOR T=1024 TO 1505 STEP 32:POKE T,149:NEXT
180 PLAY T$
185 FOR T=1505 TO 1534:POKE T,156:NEXT:PLAY T$
190 PLAY"V0"
195 POKE 65494,0:FOR T=1 TO 31:A=USR(0):PLAY "V+"+H$:NEXTT
200 FOR T=1 TO 400:NEXT:PLAY"GGGGFFFFFEEEEEDDDDDDCCCCCBBBBBAAAAA"
205 T1=1024:T2=1504
210 FOR T=0 TO 511 STEP 32:PRINT @T,"":PLAYI$+H$+J$:NEXT
215 POKE 65494,0
220 CT=0:CO=1
225 FOR T=64 TO 192 STEP 32:PRINT@T:PLAY"V20;O5;A":NEXT:PRINT@0,;
230 D$=STRING$(32,131):K$="":CH$="":CH=0:P$="V20;L255;O3;AAAA":Q$="BBBB":C1$=CHR$(175)
235 IF CO=1 THEN PRINTTAB(10)"THE WORD:":PRINTD$;:PRINT:PRINT " YOUR NAME  ";:INPUT NM$:CLS:CO=0
240 IF W+R=10 THEN GOTO 450
245 PRINT "    NAME THE PART OF SPEECH:":PRINT D$;
250 CT=CT+1:CT$=STR$(CT)+".":PRINT CT$" ";
255 READ A$,B$,C$:A$=A$+" "
260 IF A$="END " THEN GOTO 595
265 A=INSTR(B$," ")-1:IF A<5 AND A>0 THEN 270 ELSE IF A=<1 THEN A=INSTR(B$,".")-1 ELSE IF A=<1 THEN A=INSTR(B$,"!")-1 ELSE IF A=<1 THEN A=INSTR(B$,"?")-1
270 L$=LEFT$(B$,A)
275 PRINT A$;:P=PEEK(136):P1=PEEK(137):PRINT B$
280 PRINT@485,"RIGHT="R"  WRONG="W;
285 FOR T=1 TO A
290 X(T)=PEEK(P1+1023+T)
295 NEXT T
300 POKE 65495,0
305 FOR F=1 TO 2
310 FOR T=1 TO A:POKE P1+1023+T,X(T)-64:NEXT:PLAY Q$
315 FOR T=1 TO A:POKE P1+1023+T,X(T):NEXT:PLAY P$
320 FOR T=1 TO A:POKE P1+1023+T,X(T)-64:NEXT:NEXT F
325 POKE 65494,0
330 PRINT@218:FOR T=1 TO 8 STEP 2:PRINT TAB(1)WD$(T);TAB(17)WD$(T+1):NEXT
335 DATA 1. NOUN,2. VERB,3. PRONOUN,4. PREPOSITION,5. ADJECTIVE,6. ADVERB,7. CONJUNCTION,8. ARTICLE
340 PRINT:PRINT@384,D$;
345 PRINT"   ";:Q=PEEK(137):Q1=PEEK(136): PRINT "PRESS NUMBER OF YOUR CHOICE"
350 PRINT D$;:BL$="V0;L1;A"
355 Y=(1024+Q)+254
360 K$=INKEY$:POKEY,128:PLAY BL$: POKEY,202:PLAY BL$:POKE Y,197:PLAY BL$:POKEY,128:IF K$="" THEN 360
365 CH=VAL(K$)
370 IF CH<1 OR CH>8 THEN 360
375 IF CH=1 THEN CH$="NOUN"
380 IF CH=2 THEN CH$="VERB"
385 IF CH=3 THEN CH$="PRONOUN"
390 IF CH=4 THEN CH$="PREPOSITION"
395 IF CH=5 THEN CH$="ADJECTIVE"
400 IF CH=6 THEN CH$="ADVERB"
405 IF CH=7 THEN CH$="CONJUNCTION"
410 IF CH=8 THEN CH$="ARTICLE"
415 IF CH$=C$ THEN 425
420 IF CH$<>C$ THEN 435
425 PRINT@357,STRING$(21,175);:PLAY"V20L50O5"+ I$:R$="RIGHT":R1$="right":FOR T=1 TO 8:PRINT@365,R$;:PRINT@365,S$;:PRINT@365,R1$;:PLAYG$:NEXT:FOR T=1 TO 200:NEXT
430 R=R+1:GOTO 225
435 PRINT@357,STRING$(21,255);:SOUND 10,2:W$="WRONG":W1$="wrong":FOR T=1 TO 8:PRINT@365,W$;:PRINT@365,S$;:PRINT@365,W1$;:SOUND 1,1:NEXT:FOR T=1 TO 200:NEXT
440 CLS0:LK$=LEFT$(C$,1):IF LK$="A" OR LK$="E" OR LK$="I" OR LK$="O" OR LK$="U" THEN AN$="AN " ELSE AN$="A "
442 PRINT@128," "A$;B$:PRINTD$;:PRINT TAB(2)NM$":":PRINT"(";L$") IS "AN$;C$:PRINT:PRINTD$;:PRINT TAB(2)"PRESS <ENTER> TO CONTINUE  ";:INPUT Z$
445 W=W+1:CLS:GOTO 225
450 CLS:PRINTTAB(7)NM$"'S ";"SCORE:":PRINTD$;
455 PRINT" THAT IS" R"RIGHT OUT OF" R+W"       QUESTIONS"
460 PRINT
465 PRINT" YOUR PERCENTAGE IS"R/(R+W)*100"%"
470 PRINT D$
475 PRINT" PRESS <ENTER> TO CONTINUE ";:LINEINPUTZ$
480 W1=W1+W:R1=R1+R:W=0:R=0
485 GOTO 225
490 DATA TO,COIN A PHRASE YOU NEED       SOME  CENTS.,VERB
495 DATA ROSCO RESCUED THE,RAVISHING     REDHEAD.,ADJECTIVE
500 DATA THE RAIN IN,SPAIN FALLS         MAINLY ON THE SPANISH.,NOUN
505 DATA PINTOS ARE,SPOTTY               PERFORMERS.,ADJECTIVE
510 DATA  YOU CAN FINISH THIS QUIZ,OR     FLUNK THE COURSE!,CONJUNCTION
515 DATA RED RYDER HAS ,HORSE SCENTS.,ADJECTIVE
520 DATA HE SAID THE MINE WAS,MINE.,PRONOUN
525 DATA HERBIE WENT BANANAS AND WOW     WHAT,A FRUITCAKE!,ARTICLE
530 DATA,HOPE SPRINGS ETERNAL IN THE     WORLD.,NOUN
535 DATA COME TO ME WITH,ZEAL !,ADVERB
540 DATA THE SPINX SWORE THE SPHERE      WAS SWAYING,SWEETLY.,ADVERB
545 DATA STANLEY WASHED AND,DRIED        THE DISHES.,VERB
550 DATA "HE HITS, HE RUNS,",HE SLIDES    HE RIPS HIS PANTS!,PRONOUN
555 DATA ,SICK BEARS GET HIVES.,ADJECTIVE
560 DATA CREEPY CRAWLING CRITTERS        CATCH,UNDER GARTERS.,PREPOSITION
565 DATA I,BELIEVE YOU DON'T ALWAYS      CARE FOR GRAMMER.,VERB
570 DATA TERINA TOOTH-FAIRY FLEW         FOR FREEDOM ON A               ,POWDER-PUFF.,NOUN
575 DATA RED RYDER BRINGS HORSE          SCENTS,WITH HIM.,PREPOSITION
580 DATA THE MISSING MISSLE WASN'T      ,MISSING ME!,VERB
585 DATA I THOUGHT THE THOUGHT HE       THOUGHT WAS A THOUGHT,OF ME.,PREPOSITION
590 DATA END,END,END
595 CLS:PRINT@192,D$;:PRINT " THAT'S ALL THE QUESTIONS
600 PRINT" TOTAL RIGHT="R+R1;" TOTAL WRONG="W+W1
605 PRINT" TYPE 'R' TO REVIEW QUESTIONS    AGAIN OR PRESS 'ENTER' TO END"
610 PRINT D$
615 IN$=INKEY$:IF IN$="" THEN 615
620 RESTORE:FOR T=1 TO 43:READ XX$:NEXT
625 CT=0:CLS:IF IN$="R" THEN PLAY T$+P$+Q$:R1=0:W1=0:GOTO 240
630 CLS:PRINT@234,"THE END";:SOUND 50,2:SOUND 1,5:END
