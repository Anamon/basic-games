5 CLS: COLOR 12
10 PRINT TAB(37); "Bounce"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: COLOR 14
90 DIM T(20)
100 PRINT "This simulation lets you specify the initial velocity of a ball thrown straight"
110 PRINT "up, and the coefficient of elasticity of the ball.  Please use a decimal"
120 PRINT "fraction (less than 1)."
130 PRINT
132 PRINT "You also specify the time increment to be used in 'strobing' the ball's flight"
133 PRINT "(try 0.1 initially)."
134 PRINT
135 COLOR 10: INPUT "Time increment (sec)"; S2
150 INPUT "Velocity (feet/sec)"; V
170 INPUT "Coefficient of elasticity"; C: COLOR 15
180 PRINT
182 PRINT "Feet"
184 PRINT
186 S1 = INT(70 / (V / (16 * S2)))
190 FOR I = 1 TO S1
200 T(I) = V * C ^ (I - 1) / 16
210 NEXT I
220 FOR H = INT(-16 * (V / 32) ^ 2 + V ^ 2 / 32 + .5) TO 0 STEP -.5
221 IF INT(H) <> H THEN 225
222 PRINT H;
225 L = 0
230 FOR I = 1 TO S1
240 FOR T = 0 TO T(I) STEP S2
245 L = L + S2
250 IF ABS(H - (.5 * (-32) * T ^ 2 + V * C ^ (I - 1) * T)) > .25 THEN 270
260 COLOR 13: PRINT TAB(L / S2); CHR$(2);: COLOR 15
270 NEXT T
275 T = T(I + 1) / 2
276 IF -16 * T ^ 2 + V * C ^ (I - 1) * T < H THEN 290
280 NEXT I
290 PRINT
300 NEXT H
310 PRINT TAB(1);
320 FOR I = 1 TO INT(L + 1) / S2 + 1
330 PRINT ".";
340 NEXT I
350 PRINT
355 PRINT " 0";
360 FOR I = 1 TO INT(L + .9995)
380 PRINT TAB(INT(I / S2)); I;
390 NEXT I
400 PRINT
410 PRINT TAB(INT(L + 1) / (2 * S2) - 2); "Seconds"
420 PRINT
430 GOTO 135
440 END

