
1 '***COPYRIGHT 1983***
2 '***PRICKLY-PEAR SOFTWARE***
3 '***ALL RIGHTS RESERVED***
5 CLEAR2000,32344:GOSUB11030
20 FORX=32345TO32383:READXX:POKEX,XX:NEXTX:POKE346,169
100 CLS:XJ=USR0(XJ):PRINT@46,"MENU";:PRINT@98,"1. LOAD OR SAVE INFORMATION";:PRINT@130,"2. PRINT OUT INFORMATION";:PRINT@162,"3. START A NEW CHARACTER";:PRINT@194,"4. UPDATE BASIC INFORMATION";:PRINT@226,"5. NON-MAGICAL POSSESSIONS";
110 PRINT@258,"6. MAGICAL POSSESSIONS";:PRINT@290,"7. SPELL BOOK";:PRINT@322,"8. THIEF ABILITIES";:PRINT@354,"9. SAVING THROWS";:PRINT@386,"0. COMBAT INFORMATION";:PRINT@453,"KEY YOUR CHOICE (1-0)";:K$=INKEY$
120 K$=INKEY$:IFK$<>"0"ANDVAL(K$)<1THEN120ELSEK=VAL(K$):GOSUB11020:IFK=0THENK=10
130 ONK GOTO1000,2000,3000,4000,5000,6000,7000,8000,9000,10000
999 '***SAVE INFORMATION***
1000 CLS:PRINT" DO YOU WANT TO LOAD OR SAVE A   CHARACTER (L/S)?":K$=INKEY$
1010 K$=INKEY$:IFK$<>"L"ANDK$<>"S"THEN1010ELSEGOSUB11020:IFK$="L"THEN1500
1020 INPUT"CHARACTER NAME (8 OR FEWER      LETTERS PLEASE)";CN$
1030 PRINT"PRESS PLAY AND RECORD ON THE    TAPE RECORDER, AND THEN HIT ANY KEY TO SAVE THE CHARACTER":K$=INKEY$:GOSUB11000
1040 OPEN"O",#1,CN$
1050 FORX=0TO18:PRINT#1,B$(X):NEXTX
1060 FORX=0TO60:PRINT#1,NP$(X):NEXTX:PRINT#1,NC
1070 FORX=0TO20:PRINT#1,MP$(X,0):PRINT#1,MP$(X,1):NEXTX:PRINT#1,MC
1080 FORX=0TO60:PRINT#1,SB$(X,0):PRINT#1,SB$(X,1):NEXTX:PRINT#1,SC
1090 FORX=1TO5:PRINT#1,ST(X):NEXTX
1100 FORX=0TO20:PRINT#1,CI$(X):NEXTX
1200 CLOSE#1:GOTO100
1500 CLS:PRINT"LOADING A CHARACTER WILL ERASE  THE CURRENT MEMORY.  ARE YOU    sure YOU WANT TO DO THIS (Y/N)?":K$=INKEY$:GOSUB11060:IFK$="N"THEN100
1510 CLEAR:GOSUB11030:CLS:INPUT"NAME OF THE CHARACTER YOU WANT  TO LOAD";CN$:GOSUB11020
1520 OPEN"I",#1,CN$
1530 FORX=0TO18:INPUT#1,B$(X):NEXTX
1540 FORX=0TO60:INPUT#1,NP$(X):NEXTX:INPUT#1,NC
1550 FORX=0TO20:INPUT#1,MP$(X,0):INPUT#1,MP$(X,1):NEXTX:INPUT#1,MC
1560 FORX=0TO60:INPUT#1,SB$(X,0):INPUT#1,SB$(X,1):NEXTX:INPUT#1,SC
1570 FORX=1TO5:INPUT#1,ST(X):NEXTX
1580 FORX=0TO20:INPUT#1,CI$(X):NEXTX
1600 CLOSE#1:GOTO100
1999 '***PRINT INFORMATION***
2000 CLS:PRINT"DO YOU WANT THE INFORMATION     PRINTED ON THE SCREEN OR ON THE PRINTER? (S/P)":K$=INKEY$
2010 K$=INKEY$:IFK$<>"S"ANDK$<>"P"THEN2010ELSEGOSUB11020:IFK$="S"THENDV=0ELSEDV=-2
2020 CLS:IFDV=-2THENPRINT"MAKE SURE THE PRINTER IS ON LINEAND THEN HIT ANY KEY TO START.":K$=INKEY$:GOSUB11000
2030 PRINT#DV,C$(7);" = ";B$(7):FORX=0TO6:PRINT#DV,C$(X);" = ";B$(X):NEXTX:IFDV=0THENGOSUB11050
2040 FORX=8TO18:PRINT#DV,C$(X);" = ";B$(X):NEXTX:IFDV=0THENGOSUB11050
2050 ZX=0:CLS:PRINT#DV,"NON-MAGICAL POSSESSIONS":FORX=0TO60:IFNP$(X)=""THEN2070
2060 PRINT#DV,NP$(X):ZX=ZX+1:IFZX>13ANDDV=0THENGOSUB11050
2070 NEXTX:IFDV=0THENPRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000
2080 ZX=0:CLS:PRINT#DV,"MAGIC ITEMS           CHARGES":FORX=0TO20:IFMP$(X,1)=""THEN2100
2090 PRINT#DV,MP$(X,0);TAB(27);MP$(X,1):ZX=ZX+1:IFZX>13ANDDV=0THENGOSUB11050
2100 NEXTX:IFDV=0THENPRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000
2110 ZX=0:CLS:PRINT#DV,"SPELL BOOK":FORX=0TO60:IFSB$(X,1)=""THEN2130
2120 PRINT#DV,SB$(X,0);TAB(4);SB$(X,1):ZX=ZX+1:IFZX>13ANDDV=0THENGOSUB11050
2130 NEXTX:IFDV=0THENPRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000
2140 IFB$(17)="0"ORB$(17)=""THEN2200
2150 CLS:PRINT#DV,"PICK POCKETS ---- ";PP:PRINT#DV,"OPEN LOCKS ------ ";OL:PRINT#DV,"FIND TRAPS ------ ";FT
2160 PRINT#DV,"MOVE SILENTLY --- ";MS:PRINT#DV,"HIDE IN SHADOWS - ";HS:PRINT#DV,"HEAR NOISE ------ ";HN:PRINT#DV,"CLIMB WALLS ----- ";CW:PRINT#DV,"READ LANGUAGES -- ";RL
2170 IFDV=0THENPRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000
2200 CLS:PRINT#DV,"SAVING THROWS":PRINT#DV,"DEATH, POISON, ETC. =";ST(1):PRINT#DV,"PETRIFICATION OR POLY. =";ST(2):PRINT#DV,"RODS AND WANDS =";ST(3):PRINT#DV,"BREATH WEAPONS =";ST(4):PRINT#DV,"SPELLS =";ST(5)
2210 IFDV=0THENPRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000
2220 CLS:PRINT#DV,"ARMOR CLASS = ";CI$(0):PRINT#DV,"TO HIT ADJ. = ";CI$(1):PRINT#DV,"DAMAGE ADJ. = ";CI$(2)
2230 IFDV=0THENPRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000
2240 CLS:PRINT#DV,"WEAPONS OF PROFICIENCY":ZX=0:FORX=3TO20:IFCI$(X)=""THEN2260
2250 PRINT#DV,CI$(X):ZX=ZX+1:IFZX>13ANDDV=0THENGOSUB11050
2260 NEXTX:PRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000:GOTO100
2999 '***START CHARACTER***
3000 CLS4:PRINT@128,"STARTING A NEW CHARACTER WILL   CLEAR INFORMATION CURRENTLY IN  MEMORY!!!  ARE YOU sure YOU WANTTO DO THIS (Y/N)???";:K$=INKEY$
3010 K$=INKEY$:IFK$<>"Y"ANDK$<>"N"THEN3010ELSEGOSUB11020:IFK$="N"THEN100
3015 CLEAR:GOSUB11030
3020 CLS:INPUT" CHARACTER NAME";B$(7):GOSUB11020:PRINT:INPUT" STRENGTH";B$(0):GOSUB11020:INPUT" EX. STRENGTH %";B$(1):GOSUB11020:INPUT" INTELLIGENCE";B$(2):GOSUB11020:INPUT" WISDOM";B$(3):GOSUB11020:INPUT" DEXTERITY";B$(4):GOSUB11020
3030 INPUT" CONSTITUTION";B$(5):GOSUB11020:INPUT" CHARISMA";B$(6):GOSUB11020
3040 CLS:PRINT" ";B$(7):PRINT:PRINT" CLASS OR CLASSES SEPARATED BY   A SLASH (/)":INPUT" ";B$(8):GOSUB11020:INPUT" ALIGNMENT";B$(9):GOSUB11020
3050 CLS:PRINT@68,"INDICATE RACE";:PRINT@134,"1. DWARF";:PRINT@166,"2. ELF";:PRINT@198,"3. GNOME";:PRINT@230,"4. HALF-ELF";
3060 PRINT@262,"5. HALFLING";:PRINT@294,"6. HALF-ORC";:PRINT@326,"7. HUMAN";:K$=INKEY$
3070 K$=INKEY$:K=VAL(K$):IFK<1ORK>7THEN3070ELSEGOSUB11020:B$(18)=K$
3080 ONK GOTO3090,3100,3110,3120,3130,3140,3150
3090 B$(10)="DWARF":GOTO3160
3100 B$(10)="ELF":GOTO3160
3110 B$(10)="GNOME":GOTO3160
3120 B$(10)="HALF-ELF":GOTO3160
3130 B$(10)="HALFLING":GOTO3160
3140 B$(10)="HALF-ORC":GOTO3160
3150 B$(10)="HUMAN"
3160 CLS:PRINT" ";B$(7):PRINT" ";B$(8):PRINT:PRINT" LEVEL(S) (SEPARATE WITH /)":INPUT" ";B$(16):GOSUB11020:PRINT:PRINT" THIEVING SKILLS LEVEL":INPUT" ";B$(17):GOSUB11020:IFVAL(B$(17))>17THENB$(17)="17"
3170 CLS:PRINT" ";B$(7):PRINT:INPUT" AGE";B$(11):GOSUB11020:PRINT:INPUT" SEX";B$(14):GOSUB11020:PRINT:INPUT" HEIGHT";B$(12):GOSUB11020:PRINT:INPUT" WEIGHT";B$(13):GOSUB11020:PRINT:INPUT" HIT POINTS";B$(15):GOSUB11020:GOTO100
3999 '***UPDATE INFORMATION***
4000 CLS:XJ=USR0(XJ):FOR X=0 TO 18
4010 PRINT@34,"IS THIS CORRECT? (Y/N)";
4020 PRINT@98,C$(X);" = ";B$(X);:K$=INKEY$
4030 K$=INKEY$:IFK$<>"Y"ANDK$<>"N"THEN4030ELSEGOSUB11020:IFK$="N"THEN4045
4040 CLS:XJ=USR0(XJ):NEXT X:GOTO 100
4045 IFX=18THENPRINT@353,"1=DWARF, 2=ELF, 3=GNOME,        4=HALF-ELF, 5=HALFLING,         6=HALF-ORC, 7=HUMAN"
4050 PRINT@162,"ENTER THE NEW ";C$(X);:PRINT@194,"";:INPUTB$(X):GOSUB11020:GOTO4040
4999 '***NON-MAGICAL ITEMS***
5000 CLS:XJ=USR0(XJ):PRINT@98,"1. INVENTORY";:PRINT@162,"2. ADD ITEMS";:PRINT@226,"3. DELETE ITEMS";:PRINT@290,"4. RETURN";:PRINT@420,"KEY YOUR CHOICE";:K$=INKEY$
5010 K$=INKEY$:K=VAL(K$):IFK<1ORK>4THEN5010ELSEGOSUB11020
5020 ONK GOTO5100,5200,5300,100
5100 ZX=0:CLS:PRINT@10,"INVENTORY":FORX=0TO60
5110 IFNP$(X)=""THEN5150
5120 PRINTNP$(X):ZX=ZX+1:IFZX>13THENGOSUB11050
5130 NEXTX
5150 PRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000:GOTO5000
5200 CLS:PRINT"ENTER AN ITEM (ZZ TO QUIT)":INPUT" ";K$:GOSUB11020:IFK$="ZZ"THEN5000
5205 IFNC>60THEN5230
5210 NP$(NC)=K$:NC=NC+1:IFNC>60THEN5230
5220 GOTO5200
5230 PRINT"FILE FULL":FORX=1TO2000:NEXTX:GOTO5000
5300 CLS:PRINT"WHAT DO YOU WANT TO DELETE?":INPUTK$:GOSUB11020
5310 FORX=0TONC:IFK$=NP$(X)THEN5330
5320 NEXTX:PRINT"FILE NOT FOUND":FORX=1TO2000:NEXTX:GOTO5000
5330 NP$(X)=""
5340 FORY=X TONC:NP$(Y)=NP$(Y+1):NEXTY
5350 FORX=0TO61:IFNP$(X)=""THENNC=X:GOTO5000
5360 NEXTX
5999 '***MAGICAL POSSESSIONS***
6000 CLS:XJ=USR0(XJ):PRINT@98,"1. INVENTORY";:PRINT@162,"2. ADD ITEMS";:PRINT@226,"3. DELETE ITEMS";:PRINT@290,"4. CHANGE CHARGES";:PRINT@354,"5. RETURN";:PRINT@420,"KEY YOUR CHOICE";:K$=INKEY$
6010 K$=INKEY$:K=VAL(K$):IFK<1ORK>5THEN6010ELSEGOSUB11020
6020 ONK GOTO6100,6200,6300,6400,100
6100 ZX=0:CLS:PRINT@10,"INVENTORY":FORX=0TO20
6110 IFMP$(X,0)=""THEN6150
6120 PRINTMP$(X,0);TAB(27);MP$(X,1):ZX=ZX+1:IFZX>13THENGOSUB11050
6130 NEXTX
6150 PRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000:GOTO6000
6200 CLS:PRINT"ENTER AN ITEM (ZZ TO QUIT)":INPUT" ";K$:GOSUB11020:IFK$="ZZ"THEN6000
6205 IFMC>20THEN6230
6207 INPUT"ENTER THE CHARGES";MP$(MC,1):GOSUB11020
6210 MP$(MC,0)=K$:MC=MC+1:IFMC>20THEN6230
6220 GOTO6200
6230 PRINT"FILE FULL":FORX=1TO2000:NEXTX:GOTO6000
6300 CLS:PRINT"WHAT DO YOU WANT TO DELETE?":INPUTK$:GOSUB11020
6310 FORX=0TOMC:IFK$=MP$(X,0)THEN6330
6320 NEXTX:PRINT"FILE NOT FOUND":FORX=1TO2000:NEXTX:GOTO6000
6330 MP$(X,0)="":MP$(X,1)=""
6340 FORY=X TOMC:MP$(Y,1)=MP$(Y+1,1):MP$(Y,0)=MP$(Y+1,0):NEXTY
6350 FORX=0TO21:IFMP$(X,0)=""THENMC=X:GOTO6000
6360 NEXTX
6400 CLS:PRINT" ON WHICH ITEM DO YOU WANT TO    CHANGE THE CHARGES?":INPUT" ";K$
6410 FORX=0TO21:IFMP$(X,0)=K$THEN6450
6420 NEXTX
6430 PRINT" ITEM NOT FOUND":FORX=1TO2000:NEXTX:GOTO6000
6450 PRINT:PRINT" THE ITEM HAS ";MP$(X,1);" CHARGES":PRINT" NOW.  INPUT THE CORRECT.":INPUT" NUMBER";MP$(X,1):GOSUB11020:GOTO6000
6999 '***MAGIC SPELLS***
7000 CLS:XJ=USR0(XJ):PRINT@98,"1. ADD A SPELL";:PRINT@162,"2. DELETE A SPELL";:PRINT@226,"3. SORT THE SPELLS";:PRINT@290,"4. SPELL BOOK";:PRINT@354,"5. RETURN";:PRINT@450,"KEY YOUR CHOICE";:K$=INKEY$
7010 K$=INKEY$:K=VAL(K$):IFK<1ORK>5THEN7010ELSEGOSUB11020
7020 ONK GOTO7100,7200,7300,7400,100
7100 CLS:IFSC>60THEN7190
7105 PRINT" ENTER THE SPELL NAME (ZZ TO     QUIT)":INPUT" ";SB$(SC,1):GOSUB11020:IFSB$(SC,1)="ZZ"THENSB$(SC,1)="":GOTO7000
7110 PRINT:INPUT" WHAT LEVEL";SB$(SC,0):GOSUB11020:SC=SC+1:IFSC>60THEN7190
7120 GOTO7100
7190 PRINT"FILE FULL":FORX=1TO2000:NEXTX:GOTO7000
7200 CLS:PRINT" SPELL TO DELETE":INPUT" ";K$:GOSUB11020
7210 FORX=0TOSC:IFK$=SB$(X,1)THEN7240
7220 NEXTX:PRINT" FILE NOT FOUND":FORX=1TO2000:NEXTX:GOTO7000
7240 SB$(X,0)="":SB$(X,1)="":FORXX=X TO60:SB$(XX,0)=SB$(XX+1,0):SB$(XX,1)=SB$(XX+1,1):NEXTXX
7250 FORX=0TO60:IFSB$(X,1)=""THENSC=X:GOTO7000
7260 NEXTX
7300 CLS:PRINT" SORTING":FORX=0TOSC-2:IFSB$(X,0)>SB$(X+1,0)THENK$=SB$(X,0):SB$(X,0)=SB$(X+1,0):SB$(X+1,0)=K$:K$=SB$(X,1):SB$(X,1)=SB$(X+1,1):SB$(X+1,1)=K$:GOTO7300
7310 NEXTX:GOTO7000
7400 ZX=0:CLS:PRINT@10,"SPELLBOOK":FORX=0TO60
7410 IFSB$(X,1)=""THEN7450
7420 PRINTSB$(X,0);TAB(4);SB$(X,1):ZX=ZX+1:IFZX>13THENGOSUB11050
7430 NEXTX
7450 PRINT"HIT ANY KEY":K$=INKEY$:GOSUB11000:GOTO7000
7999 '***THIEVING SKILLS***
8000 CLS
8020 L=VAL(B$(17)):IFL=0THEN100
8030 PP=DA(L,0):OL=DA(L,1):FT=DA(L,2):MS=DA(L,3):HS=DA(L,4):HN=DA(L,5):CW=DA(L,6):RL=DA(L,7)
8040 D=VAL(B$(4)):IFD>18THEND=18
8050 D=D-8:OND GOSUB8180,8190,8200,8210,8220,8220,8220,8230,8240,8250
8090 K=VAL(B$(18))
8100 ONK GOSUB8110,8120,8130,8140,8150,8160,8170:GOTO8260
8110 OL=OL+10:FT=FT+15:CW=CW-10:RL=RL-5:RETURN
8120 PP=PP+5:OL=OL-5:MS=MS+5:HS=HS+10:HN=HN+5:RETURN
8130 OL=OL+5:FT=FT+10:MS=MS+5:HS=HS+5:HN=HN+10:CW=CW-15:RETURN
8140 PP=PP+10:HS=HS+5:RETURN
8150 PP=PP+5:OL=OL+5:FT=FT+5:MS=MS+10:HS=HS+15:HN=HN+5:CW=CW-15:RL=RL-5:RETURN
8160 PP=PP-5:OL=OL+5:FT=FT+5:HN=HN+5:CW=CW+5:RL=RL-10:RETURN
8170 RETURN
8180 PP=PP-15:OL=OL-10:FT=FT-10:MS=MS-20:HS=HS-10:RETURN
8190 PP=PP-10:OL=OL-5:FT=FT-10:MS=MS-15:HS=HS-5:RETURN
8200 PP=PP-5:FT=FT-5:MS=MS-10:RETURN
8210 MS=MS-5:RETURN
8220 RETURN
8230 OL=OL+5:RETURN
8240 PP=PP+5:OL=OL+10:MS=MS+5:HS=HS+5:RETURN
8250 PP=PP+10:OL=OL+15:FT=FT+5:MS=MS+10:HS=HS+10:RETURN
8260 PRINT@67,"PICK POCKETS ----  ";PP
8270 PRINT@99,"OPEN LOCKS ------  ";OL
8280 PRINT@131,"FIND TRAPS ------  ";FT
8290 PRINT@163,"MOVE SILENTLY ---  ";MS
8300 PRINT@195,"HIDE IN SHADOWS -  ";HS
8310 PRINT@227,"HEAR NOISE ------  ";HN
8320 PRINT@259,"CLIMB WALLS -----  ";CW
8330 PRINT@291,"READ LANGUAGES --  ";RL
8340 PRINT@355,"PRESS ANY KEY TO GO ON";:K$=INKEY$:GOSUB11000:GOTO100
8999 '***SAVING THROWS***
9000 CLS:PRINT"ENTER THE SAVING THROW AGAINST:":PRINT:INPUT"DEATH, POISON, PARALY.";ST(1):GOSUB11020
9010 PRINT:INPUT"PETRIFICATION OR POLY.";ST(2):GOSUB11020:PRINT:INPUT"RODS AND WANDS";ST(3):GOSUB11020
9020 PRINT:INPUT"BREATH WEAPONS";ST(4):GOSUB11020:PRINT:INPUT"SPELLS";ST(5):GOSUB11020:GOTO100
9999 '***COMBAT INFORMATION***
10000 CLS:INPUT" ARMOR CLASS";CI$(0):GOSUB11020:PRINT:INPUT" ADJ. TO HIT";CI$(1):GOSUB11020:PRINT:INPUT" DAMAGE ADJ.";CI$(2):GOSUB11020
10010 PRINT:PRINT" DO YOU WANT TO ADD WEAPONS OF   PROFICIENCY? (Y/N)":K$=INKEY$
10020 GOSUB11060:IFK$="N"THEN100
10030 FORX=3TO20:IFCI$(X)<>""THEN10060
10040 CLS:INPUT" ENTER THE WEAPON YOU WANT TO    ADD. (OR ENTER 'ZZ' TO QUIT)   ";CI$(X):GOSUB11020
10050 IFCI$(X)="ZZ"THENCI$(X)="":GOTO100
10060 NEXTX
10070 PRINT"NO MORE SPACE":FORX=1TO2000:NEXTX:GOTO100
11000 REM***HIT A KEY TO GO ON***
11010 IFINKEY$=""THEN11010ELSEGOSUB11020:RETURN
11019 '***KEY BEEP***
11020 PLAY"T255L255O5CDEFGABAGFEDC":RETURN
11029 '***DIMENSION ARRAYS***
11030 DIMDA(17,7),B$(18),C$(18),NP$(62),ST(5),CI$(20),MP$(22,1),SB$(62,1)
11032 DEFUSR0=32345
11035 RESTORE:FORX=1TO17:FORY=0TO7:READDA(X,Y):NEXTY,X
11038 FORX=0TO18:READC$(X):NEXTX
11040 RETURN
11049 '***LIST ROUTINE***
11050 PRINT"HIT ANY KEY FOR MORE";:K$=INKEY$:GOSUB11000:ZX=0:CLS:RETURN
11059 '***YES OR NO***
11060 K$=INKEY$:IFK$<>"Y"ANDK$<>"N"THEN11060ELSEGOSUB11020:RETURN
12000 '***THIEVING DATA***
12010 DATA 30,25,20,15,10,10,85,0,35,29,25,21,15,10,86,0,40,33,30,27,20,15,87,0,45,37,35,33,25,15,88,20,50,42,40,40,31,20,90,25,55,47,45,47,37,20,92,30,60,52,50,55,43,25,94,35
12020 DATA 65,57,55,62,49,25,96,40,70,62,60,70,56,30,98,45,80,67,65,78,63,30,99,50,90,72,70,86,70,35,99.1,55,100,77,75,94,77,35,99.2,60,105,82,80,99,85,40,99.3,65,110,87,85,99,93,40,99.4,70,115,92,90,99,99,50,99.5,75
12030 DATA 125,97,95,99,99,50,99.6,80,125,99,99,99,99,55,99.7,80
12032 '***CHARACTERISTICS***
12034 DATA STRENGTH,EX.STR. %,INTELLIGENCE,WISDOM,DEXTERITY,CONSTITUTION,CHARISMA,NAME,CLASS,ALIGNMENT,RACE,AGE,HEIGHT,WEIGHT,SEX,HIT POINTS,LEVELS,THIEVING LEVEL,RACE #
12040 '***ML ROUTINE DATA***
12050 DATA 198,32,182,1,90,142,4,0,167,128,140,4,31,38,249,142,5,224,167,128,140,6,0,38,249,142,4,32,167,132,167,31,58,140,6,0,38,246,57