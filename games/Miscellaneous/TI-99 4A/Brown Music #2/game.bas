100 CALL CLEAR
110 PRINT "     BROWN MUSIC #2": : : : : : : :
120 DIM S(36)
130 F=262
140 FOR N=1 TO 36
150 S(N)=INT(F*1.059463094^N)
160 NEXT N
170 N=12
180 CALL SOUND(-999,S(N),0,S(N)*1.01,0)
190 X=INT(8*RND)
200 IF X<>1 THEN 280
210 T=INT(15*RND+1)
220 FOR TT=T TO T+INT(2*RND+2)
230 CALL SOUND(-999,S(TT),0,S(TT)*1.01,0)
240 FOR D=1 TO 30
250 NEXT D
260 NEXT TT
265 N=TT-1
270 GOTO 190
280 IF X<>2 THEN 360
290 T=INT(20*RND+10)
300 FOR TT=T TO T-INT(2*RND+2)STEP-1
310 CALL SOUND(-999,S(TT),0,S(TT)*1.01,0)
320 FOR D=1 TO 30
330 NEXT D
340 NEXT TT
345 N=TT+1
350 GOTO 190
360 IF X<>0 THEN 440
370 Y=INT(8*RND+1)
380 Z=INT(2*RND+1)
390 ON Z GOTO 400,420
400 N=N+Y-ABS(N=36)*Y
410 GOTO 450
420 N=N-Y+ABS(N=1)*Y
430 GOTO 450
440 N=N+INT(3*RND-1)
450 IF(N>0)*(N<37)THEN 180
460 N=12
470 GOTO 180
