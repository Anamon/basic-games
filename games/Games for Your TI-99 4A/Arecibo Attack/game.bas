10 REM  ARECIBO ATTACK
20 CALL CLEAR
30 PRINT TAB(7);"ARECIBO ATTACK":,,
40 PRINT TAB(13);"By": :
50 PRINT TAB(8);"James Turner": : : : : :
60 GOSUB 860
70 RANDOMIZE
80 CO=0
90 R=3
100 P=16
110 M=16
120 CALL CLEAR
130 CALL SCREEN(2)
140 S=INT(24*RND)+1
150 ST=INT(32*RND)+1
160 CO=CO+1
170 IF CO=35 THEN 210
180 CALL COLOR(2,16,2)
190 CALL HCHAR(S,ST,46)
200 GOTO 140
210 CALL CHAR(128,"18183C66FFE7BDFF")
220 CALL CHAR(136,"003E49497F491422")
230 CALL COLOR(13,12,2)
240 CALL COLOR(14,9,2)
250 CALL COLOR(12,7,2)
260 CALL KEY(0,K,Q)
270 CALL HCHAR(22,M,128)
280 CALL HCHAR(R,P,136)
290 IF K<>90 THEN 350
300 M=M-2
310 IF M<=1 THEN 320 ELSE 330
320 M=1
330 CALL HCHAR(22,M+2,32)
340 GOTO 410
350 IF K<>46 THEN 400
360 M=M+2
370 IF M>=32 THEN 380 ELSE 390
380 M=32
390 CALL HCHAR(22,M-2,32)
400 IF K=32 THEN 490
410 P=P+1
420 CALL HCHAR(R,P-1,32)
430 IF P<>33 THEN 480
440 P=2
450 GH=MEN+2
460 R=R+GH
470 IF R>=22 THEN 760
480 GOTO 260
490 FOR BP=17 TO R STEP -4
500 CALL VCHAR(BP,M,124)
510 CALL HCHAR(BP+4,M,32)
520 P=P+1
530 IF P<>33 THEN 560
540 P=2
550 R=R+GH
560 CALL HCHAR(R,P-1,32)
570 CALL HCHAR(R,P,136)
580 CALL SOUND(150,-4,1)
590 CALL GCHAR(BP,M,X)
600 NEXT BP
610 CALL VCHAR(1,M,32,24)
620 CALL VCHAR(1,32,32,24)
630 IF X=136 THEN 640 ELSE 260
640 CALL SOUND(1000,-5,0)
650 CALL SCREEN(10)
660 CALL SOUND(1000,-6,0)
670 CALL SCREEN(2)
680 CALL SOUND(1000,-7,0)
690 CALL SCREEN(10)
700 PRINT "HIT THE MARTIAN!"
710 GOSUB 860
720 MEN=MEN+1
730 IF MEN=5 THEN 820
740 CO=0
750 GOTO 70
760 CALL SCREEN(4)
770 PRINT :"YOU HAVE BEEN INVADED !"
780 PRINT "BETTER LUCK NEXT SHOT !"
790 CALL SOUND(2000,200,0,110,0)
800 GOSUB 860
810 GOTO 70
820 CALL SCREEN(4)
830 PRINT "YOU HAVE TRIUMPHED !"
840 GOSUB 860
850 GOTO 70
860 FOR I=1 TO 2000
870 NEXT I
880 RETURN
