100 REM -"COIN COUNT"
110 GOAL=10
120 GOSUB 520
130 READ NH,NQ,ND,NN,NP
140 RANDOMIZE
150 RH=INT(RND*NH)+1
160 RQ=INT(RND*NQ)+1
170 RD=INT(RND*ND)+1
180 RN=INT(RND*NN)+1
190 RP=INT(RND*NP)+1
200 T=(RH*50)+(RQ*25)+(RD*10)+(RN*5)+(RP*1)
210 T=T/100
220 GOSUB 730
230 IF ANS=T THEN 360
240 REM =WRONG
250 PRINT
260 PRINT
270 PRINT "SORRY-THAT'S WRONG"
280 PRINT "THE CORRECT ANSWER IS  $";T
290 T9=T9-T
300 IF T9>0 THEN 390
310 T9=0
320 PRINT "YOU NOW HAVE  $";T9
330 FOR I=1 TO 1000
340 NEXT I
350 GOTO 220
360 REM =RIGHT
370 PRINT
380 T9=T9+T
390 PRINT "CORRECT-YOU EARN  $";T
400 PRINT
410 PRINT "YOU NOW HAVE  $";T9
420 FOR I=1 TO 1000
430 NEXT I
440 IF T9<10 THEN 140
450 REM =FINAL
460 FOR K=1 TO 500
470 NEXT K
480 CALL CLEAR
490 PRINT "CONGRATULATIONS"
500 PRINT "YOU HAVE REACHED THE GOAL OF $";GOAL
510 GOTO 910
520 REM =RULES
530 CALL CLEAR
540 PRINT TAB(7);"COIN COUNT"
550 PRINT
560 PRINT
570 PRINT "IN MY POCKET I HAVE SOME"
580 PRINT "COINS"
590 PRINT
600 PRINT "IF YOU FIGURE OUT HOW MUCH THEY ARE WORTH IN DOLLARS,  THIS AMOUNT WILL BE ADDED TO YOUR TOTAL"
610 PRINT
620 PRINT "IF YOU GUESS WRONG THIS"
630 PRINT "AMOUNT WILL BE TAKEN AWAY"
640 PRINT "FROM YOUR TOTAL"
650 PRINT
660 PRINT "AS SOON AS YOU REACH  $";GOAL
670 PRINT "YOU WILL WIN"
680 PRINT
690 PRINT
700 PRINT "HIT ENTER TO CONTINUE"
710 INPUT ENTER$
720 RETURN
730 REM -SCREEN
740 CALL CLEAR
750 PRINT "IN MY POCKET I HAVE:"
760 PRINT
770 PRINT
780 PRINT
790 PRINT RH;"--HALVES"
800 PRINT RQ;"--QUARTERS"
810 PRINT RD;"--DIMES"
820 PRINT RN;"--NICKELS"
830 PRINT RP;"--PENNIES"
840 PRINT
850 PRINT
860 PRINT "HOW MUCH MONEY DO I HAVE:"
870 PRINT
880 INPUT "ENTER IN DOLLARS  $":ANS
890 RETURN
900 DATA 3,3,5,5,9
910 END
