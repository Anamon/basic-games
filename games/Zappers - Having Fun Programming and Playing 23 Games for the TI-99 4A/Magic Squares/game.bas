100 REM MAGIC SQUARES
110 CALL CLEAR
120 PRINT "THIS PROGRAM GENERATES MAGICSQUARES (NXN WHERE N IS ODD)": : : : : : :
130 DIM M(9,9)
140 INPUT "ENTER AN ODD VALUE FOR N:":N
150 IF (N/2=INT(N/2))+(N<3)+(N>9)THEN 140
160 X=1
170 Y=INT(N/2)+1
180 FOR C=1 TO N*N
190 M(X,Y)=C
200 X0=X
210 Y0=Y
220 X=X-1
230 IF X>0 THEN 250
240 X=N
250 Y=Y+1
260 IF Y<=N THEN 280
270 Y=1
280 IF M(X,Y)=0 THEN 310
290 X=X0+1
300 Y=Y0
310 NEXT C
320 CALL CLEAR
330 FOR I=1 TO N
340 FOR J=1 TO N
350 PRINT TAB(J*4-3);M(I,J);
360 NEXT J
370 PRINT : :
380 NEXT I