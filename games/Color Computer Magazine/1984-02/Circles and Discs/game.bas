100 REM * CIRCLES AND DISCS * TRS-80 EXTENDED COLOR BASIC *110 REM * SORCERER'S PUZZLES #5 * RICHARD RAMELLA120 CLS130 PRINT @ 232, "CIRCLES AND DISCS";140 FOR T=1 TO 1000150 NEXT T160 PMODE 3,1170 PCLS180 SCREEN 1,1190 CIRCLE(128,96),60200 PAINT(128,96),4210 Y=96220 X=69230 FOR A=1 TO 5240 IF Y>36 AND (PEEK(341)AND8)=0 THEN Y=Y-2250 IF Y<156 AND (PEEK(342)AND8)=0 THEN Y=Y+2260 IF X>69 AND (PEEK(343)AND8)=0 THEN X=X-2270 IF X<189 AND (PEEK(344)AND8)=0 THEN X=X+2280 Z=PPOINT(X,Y)290 PSET(X,Y,2)300 FOR T=1 TO 100310 NEXT T320 PSET(X,Y,Z)330 IF INKEY$<>"D" GOTO 240 ELSE CIRCLE(X,Y),38,3: PAINT(X-17,Y),3: PAINT(X+17,Y),3: PAINT(X,Y-17),3: PAINT(X,Y+17),3340 NEXT A350 GOTO 350360 END