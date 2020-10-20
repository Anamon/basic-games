100 REM WORD PUZZLE PLUS
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES
120 REM 4/1/83
130 REM PROGRAM RUNS IN TI-BASIC
140 DIM A(26)
150 CALL CLEAR
160 FOR X=1 TO 26
170 A(X)=X+64
180 NEXT X
190 RANDOMIZE
200 CALL CLEAR
210 RN=INT(RND*26)+1
220 CV=CV+1
230 PRINT CHR$(A(RN));
240 IF CV<=28 THEN 260
250 CV=0
260 GH=GH+1
270 IF GH=616 THEN 290
280 GOTO 210
290 READ A$
300 IF A$="END END" THEN 310 ELSE 340
310 CALL CLEAR
320 PRINT "NO MORE PUZZLES!!"
330 END
340 IF A$="END" THEN 350 ELSE 410
350 PRINT
360 PRINT
370 INPUT "PRESS ENTER FOR NEW PUZZLE.":ER$
380 GH=0
390 CV=0
400 GOTO 200
410 LV=LEN(A$)
420 I=INT(RND*27)+2
430 II=INT(RND*19)+3
440 IF I+LV>28 THEN 420
450 FOR T=1 TO LV
460 Q$=SEG$(A$,T,1)
470 W=ASC(Q$)
480 CALL HCHAR(II,I+T,W)
490 NEXT T
500 GOTO 290
510 DATA BASIC,LOGIC,KEY,DATA,INPUT, OUTPUT,MEMORY,HARDWARE,SOFTWARE,MATRIX,END
520 DATA TRANSISTOR,CHIP,FLOWCHART,BIT,BYTE,PRINTER,MODEM,DISK,FLOPPY,TRACK,END
530 DATA HANDSHAKE,PARITY,DATA,LOGIC,MONITOR,DISKETTE,RGB,JACK,MODULATOR,FANOUT,END
540 DATA DRIVE,CARD,CHIP,GIGO,CMOS,CIRCUIT,CHASSIS,DATABASE,END
550 DATA END END
