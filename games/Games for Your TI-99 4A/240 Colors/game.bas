10 REM **** 240 COLORS ****
20 REM
30 REM *** BY DAMON ***
40 REM
50 CALL CLEAR
60 INPUT "SPEED  (1-300)":SP
70 CALL CHAR(97,"AA55AA55AA55AA55")
80 CALL HCHAR(1,1,97,(32*24))
90 FOR T=2 TO 16
100 FOR J=1 TO 16
110 FOR G=1 TO SP
120 NEXT G
130 CALL COLOR(9,T,J)
140 NEXT J
150 NEXT T
160 CALL CLEAR
170 PRINT ,,,,,,,,"240 COLORS"
