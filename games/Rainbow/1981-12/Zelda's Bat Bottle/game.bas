10 CLEAR500:CLS(0):PMODE3,1:COLOR3,1:PCLS(0):SCREEN0,1:LINE(20,8)-(234,92),PSET,B:DRAW"BM5,20U8R5D8U4L5":DRAW"BM5,32U8F5D3U8"
20 COLOR4,2:LINE(28,16)-(60,84),PRESET,BF
30 LINE(68,32)-(104,84),PRESET,BF:CIRCLE(86,32),20,2,.9,.52,.98:PAINT(86,19),2,2:PSET(86,15)
40 LINE(108,32)-(144,84),PRESET,BF:CIRCLE(126,32),20,2,.9,.52,.98:PAINT(126,17),2,2:PSET(126,15)
50 LINE(132,16)-(212,48),PRESET,BF:CIRCLE(212,32),18,2,1,.77,.23:PAINT(215,17),2,2:PSET(230,32):LINE(152,52)-(212,84),PRESET,BF:CIRCLE(212,68),18,2,1,.77,.23:PAINT(217,53),2,2:PSET(230,68):SCREEN1,1
60 PMODE4,1:SCREEN1,1:FORI=1TO48STEP2:CIRCLE(60,144),I,8,.9:NEXT
70 DRAW"BM140,104;C0L28D80R2BU34L12":DRAW"BM144,184;C0U80R28D80U34L28"
80 DRAW"BM176,184;U80R18ND46R18D80":DRAW"BM244,104L28D46R28L28D34R28":SOUND200,1:SOUND200,1:SCREEN1,1:FORI=1TO1000:NEXT
90 CLS(0):PRINT@172,"ZELDA'S";:PRINT@238,"BAT";:PRINT@300,"BOTTLE!";:FORI=1TO1500:NEXT
100 BB$="NUHG2DEDEDEDRUFUFUFUH2GNUL":BF$="NUHL2F2RNDRNDRE2L2GNUL":DIMA(13), B(4):G=0:FORI=32TO224STEP16:G=G+1:A(G)=I:NEXTI:G=0:FORI=26TO74STEP16:G=G+1:B(G)=I:NEXTI
110 PRINT896,"ZELDA NEEDS YOUR HELP. SHE HAS":PRINT"TO ZAP 10 BATS INTO HER GLASS":PRINT"BOTTLE SO SHE CAN MAKE HER BREW.";:PRINT"YOU CAN DIRECT HER MAGIC BLAST":PRINT"BY PRESSING 1 WHEN THE BATS ARE":PRINT"ON THE LEFT,  2  WHEN THEY ARE"
120 PRINT"IN THE MIDDLE, &  3  WHEN THEY":PRINT"ARE ON THE RIGHT.";:FORI=1TO600:NEXT
130 DB=0:PMODE3,1:PCLS(4):SCREEN0,0:LINE(0,182)-(256,192),PRESET,B:PAINT(10,186),3,1:CIRCLE(126,160),43,5,.55:PAINT(126,160),2,5
140 LINE(82,134)-(171,144),PSET,BF:LINE(82,134)-(171,144),PRESET,B:PAINT(126,135),3,1:LINE(92,120)-(104,134),PRESET
150 PMODE4,1:SCREEN0,1:DRAW"S16BM126,160;C0"+BB$
160 DRAW"S10BM15,110;C0E9G4H2L7G2R3F4D6ENU6ENU6EU6END3END2NR2FDF2LDNL2GFGHL2RDFR3E8DGFG2DNH2FD6GL3GD18HNU18L2FNU17L2FU16NE6D16L7U16H2L4U4E8"
170 PAINT(24,98),0,0:PAINT(24,140),0,0
180 LINE(10,178)-(42,181),PRESET,BF:LINE(200,181)-(248,120),PRESET,B:LINE(210,120)-(238,110),PRESET,BF:LINE(205,110)-(243,105),PRESET,B:LINE(80,178)-(172,186),PRESET,BF:GOSUB370:SCREEN1,1:TIMER=0
190 GOSUB260
200 GOSUB350:GOSUB260:DRAW"S12BM"+X$+","+Y$+";C5"+BB$+"C0"+BF$+"C5"+BF$+"C0"+BB$+"C5"+BB$:DRAW"BM"+A$+","+B$+";C0"+BB$
210 IF DB=>10THEN330
220 FORI=1TO2:PLAY"V31;O1;L190;E":NEXT
230 Q$=INKEY$
240 IFQ$="1"THEN270ELSEIFQ$="2"THEN280ELSEIFQ$="3"THEN290
250 GOTO200
260 X$=A$:Y$=B$:C=RND(13):D=RND(4):A$=STR$(A(C)):B$=STR$(B(D)):RETURN
270 W=RND(4):LINE(55,97)-(A(W),B(D)),PRESET:COLOR5,0:LINE-(55,97),PSET:GOSUB300:GOTO200
280 W=RND(5)+4:LINE(55,97)-(A(W),B(D)),PRESET:COLOR5,0:LINE-(55,97),PSET:GOSUB300:GOTO200
290 W=RND(4)+9:LINE(55,97)-(A(W),B(D)),PRESET:COLOR5,0:LINE-(55,97),PSET:GOSUB300:GOTO200
300 PLAY"V8;O5;L255;C;O1;E":IF A(W)=A(C) THEN320
310 RETURN
320 DB=DB+1:DRAW"BM"+A$+","+B$+";C5"+BB$:PMODE4,1:SCREEN1,0:FORK=1TO3:PLAY"O5;L255;GCGC;O1;DD":NEXTK:PMODE4,1:SCREEN1,1:GOSUB360:RETURN
330 K=TIMER:PMODE4,1:SCREEN1,0:SOUND220,16:CLS(0):PRINT@130,"YOU TOOK";:PRINT USING"#####.#";K/60;:PRINT"  SECONDS. ";
340 FORI=1TO4000:NEXT:GOTO130
350 FORJ=1TO2:F=RND(40)+110:FORH=0TO5STEP5:CIRCLE(F,133),3,H,.7,.5,1:NEXTH:NEXTJ:RETURN
360 BH=(178-(DB*5)):BH$=STR$(BH):DRAW"BM224,"+BH$+";C0"+BB$:RETURN
370 FORJ=10TO250STEP40:M=RND(10)+10:FORI=4TO32STEP2:CIRCLE(J,M),I,0,.7:NEXTI:NEXTJ:RETURN
380 REM 'ZELDA'S BAT BOTTLE!' BY FRED B. SCERBO, IMB, COPYRIGHT 1981, ILLUSTRATED MEMORY BANKS, P.O.BOX 289, WILLIAMSTOWN, MA., 01267-0289.