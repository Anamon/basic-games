10 REM **** EBAUCHE ****
20 CALL SCREEN(4)
30 CALL CLEAR
40 FOR T=2 TO 10
50 CALL CHAR(24+(T*8),"")
60 CALL COLOR(T,T,T)
70 NEXT T
80 FOR T=1 TO 10
90 CALL HCHAR(T,T,32+(T*8),20-(T*2))
100 CALL HCHAR(20-T,T,32+(T*8),20-(T*2))
110 CALL VCHAR(T,T,32+(T*8),20-(T*2))
120 CALL VCHAR(T,19-T,32+(T*8),20-(T*2))
130 NEXT T
140 FOR Y=1 TO 8
150 A(Y)=Y
160 NEXT Y
170 FOR Y=1 TO 8
180 A(Y)=A(Y)+1
190 IF A(Y)<>9 THEN 210
200 A(Y)=1
210 CALL COLOR(Y+1,2,A(Y)+1)
220 NEXT Y
230 GOTO 170
