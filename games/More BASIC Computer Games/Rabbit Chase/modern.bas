5 CLS: COLOR 12
10 PRINT TAB(34); "Rabbit Chase"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT
40 PRINT
50 PRINT: COLOR 15
60 RANDOMIZE TIMER
100 REM ('T' IS THE SQUARE OF THE CAPTURE DISTANCE)
105 LET T = 400
115 REM --   INITALIZE VELOCITIES AND POSITIONS
125 LET V1 = INT(RND(1) * 10 + .5) * 10 + 50
130 LET V2 = (INT(RND(1) * 2 + .5) + 1) * V1
135 LET X1 = (INT(RND(1) * 400) + 100) * SGN(RND(1) - .5)
140 LET Y1 = (INT(RND(1) * 400) + 100) * SGN(RND(1) - .5)
145 IF Y1 = 0 OR X1 = 0 THEN 135
150 LET X2 = 0
155 LET Y2 = 0
160 PRINT "Speeds (units/hop):"
165 PRINT "Rabbit:"; V1, "You:"; V2
170 PRINT
180 PRINT
185 LET C = (X2 - X1) ^ 2 + (Y2 - Y1) ^ 2
190 LET P1 = 3.141592653589 / 180
195 LET H = 1
200 REM --   PRINT OUT
215 LET D1 = INT(RND(1) * 359)
220 COLOR 11: PRINT "Hop #:";
225 LET Z = H
230 GOSUB 510
235 PRINT "  Distance to rabbit: ";
240 LET Z = SQR((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
245 GOSUB 510
250 PRINT "   Closest approach: ";
255 LET Z = SQR(C)
260 GOSUB 510
265 PRINT: COLOR 15
270 PRINT "Rabbit ---     Position: (";
275 LET Z = X1
280 GOSUB 520
285 PRINT ",";
290 LET Z = Y1
295 GOSUB 520
300 PRINT ")   and direction:";
305 LET Z = D1
310 GOSUB 510
315 PRINT
320 PRINT "You ------     Position: (";
325 LET Z = X2
330 GOSUB 520
335 PRINT ",";
340 LET Z = Y2
345 GOSUB 520
350 PRINT ")   ";: COLOR 10: PRINT "and direction";
355 INPUT D2: COLOR 15
360 IF D2 < 0 OR D2 >= 360 THEN 355
365 PRINT
370 PRINT
380 REM --   COMPUTE PATHS AND SEE IF THEY INTERSECT
390 LET X3 = V1 * COS(D1 * P1) / 100
395 LET Y3 = V1 * SIN(D1 * P1) / 100
400 LET X4 = V2 * COS(D2 * P1) / 100
405 LET Y4 = V2 * SIN(D2 * P1) / 100
410 LET C = (X2 - X1) ^ 2 + (Y2 - Y1) ^ 2
415 FOR I = 1 TO 100
420 LET X1 = X1 + X3
425 LET Y1 = Y1 + Y3
430 LET X2 = X2 + X4
435 LET Y2 = Y2 + Y4
440 IF C < (X2 - X1) ^ 2 + (Y2 - Y1) ^ 2 THEN 445
443 C = (X2 - X1) ^ 2 + (Y2 - Y1) ^ 2
445 NEXT I
450 LET H = H + 1
455 IF C > T THEN 215
460 PRINT
465 PRINT: COLOR 12
470 PRINT "**********"
475 PRINT "* GOT YA *"
480 PRINT "**********"
485 PRINT: COLOR 15
490 PRINT
500 END
510 REM --   CONVERTS NUMBERS TO STRINGS FOR CLEANER OUTPUT
520 Z = INT(Z + .5)
525 PRINT RIGHT$("     " + STR$(Z), 5);
585 RETURN
590 END
