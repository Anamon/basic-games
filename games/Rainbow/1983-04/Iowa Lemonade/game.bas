
0 '       iowa lemonade
1 CLEAR 450
2 IOWASONG$="T3;P1;O3;L16.;G;A;B;O4;L2;C;O3;L8;A;L2;G;P8;O4;L2;G;L8;E;L2;G;P8;L8.;E;L8;G;L8.;E;L8;G;L2;D;P8;L8.;E;L8;G;L8.;E;L8;G;L2;D;P1"
3 '   INTRO
4 CLS0
5 FOR I=1 TO 3
6 FOR J=1 TO 13
7 READ CH
8 IA$(I)=IA$(I)+CHR$(CH)
9 NEXT J,I
10 FOR I=1 TO 3
11 FOR J=1 TO 28
12 READ CH
13 LE$(I)=LE$(I)+CHR$(CH)
14 NEXT J,I
15 RESTORE
16 FOR LO=480 TO -96 STEP -32
17 CLS0
18 SOUND 204,1
19 IF LO=-32 THEN 24
20 IF LO=-64 THEN 26
21 IF LO=-96 THEN 29
22 PRINT@LO+9, IA$(1);
23 IF LO=480 THEN GOSUB 45: NEXT
24 PRINT@LO+41, IA$(2);
25 IF LO=448 THEN GOSUB 45: NEXT
26 PRINT@LO+73, IA$(3);
27 IF LO=416 THEN GOSUB 45: NEXT
28 IF LO=384 THEN GOSUB 45: NEXT
29 PRINT@LO+130, LE$(1);
30 IF LO=352 THEN GOSUB 45: NEXT
31 PRINT@LO+162, LE$(2);
32 IF LO=320 THEN GOSUB 45: NEXT
33 PRINT@LO+194, LE$(3);
34 IF LO=128 THEN PLAY IOWASONG$
35 NEXT
36 FOR DE=1 TO 900: NEXT: GOTO 46
37 '   CHR$ CODES FOR IOWA
38 DATA 157,152,149,156,157,128,154,149,128,154,149,156,157
39 DATA 149,128,149,128,149,128,154,149,128,154,149,147,151
40 DATA 151,146,149,147,151,128,155,151,147,154,149,128,149
41 '   CHR$ CODES FOR LEMONADE
42 DATA 154,128,128,149,156,156,128,158,157,156,154,149,156,157,128,159,128,154,149,156,157,128,158,157,146,149,156,156
43 DATA 154,128,128,149,146,128,128,154,149,128,154,149,128,149,128,154,154,154,149,147,151,128,154,128,154,149,146,128
44 DATA 155,147,146,149,147,147,128,154,149,128,154,149,147,151,128,154,149,154,149,128,149,128,155,151,152,149,147,147
45 FOR DE=1 TO 250: CLS0: RETURN
46 DIM A(30),L(30),H(30),B(30),    S(30),P(30),G(30)
47 P9=10
48 S3=.15
49 S2=30
50 A2=2.00
51 C9=.5
52 C2=1
53 '   DEF MUSIC
54 MONEYSONG$="T3;O3;L8;G;F;G;F;L4;E;C"
55 SUNSONG$="T4;O3;L4;B-;G;D;E-;G;B-;L2.;O4;D-;C;P1;P2"
56 HOTSONG$="T3;O4;L4;E;C;L1;E;L8;E;P8;L8.;D;L16;C;L8.;D;L16;E;L4;C;O3;L2;A;L2.;E;P1"
57 CLOUDSONG$="T3;O4;L8;D;C+;L4;D;C;C;O3;L8;B;L2.;B;P1;P2"
58 RAINSONG$="T2;O3;L4;A;L8.;A;L16;A;L8.B-;L16;A;L8.;G;L16;F;L4.;A"
59 BANKRUPT$="T2;O3;L8;A;L8.;A;L8;E;L8.;G;L2;A;P8;L8.;G;L8;A;L16;EC;L4;O2;A;L8;G;O3;C"
60 '   START OF GAME
61 '   TITLE PAGE
62 CLS
63 PRINT "HI!  WELCOME TO LEMONSVILLE, IA."
64 PRINT "IN THIS SMALL TOWN, YOU ARE IN"
65 PRINT "CHARGE OF RUNNING YOUR OWN"
66 PRINT "LEMONADE STAND.  YOU CAN COMPETE";
67 PRINT "WITH UP TO 30 OTHER PEOPLE, BUT"
68 PRINT "HOW MUCH PROFIT YOU MAKE IS UP"
69 PRINT "TO YOU (THE OTHER STANDS' SALES"
70 PRINT "WILL NOT AFFECT YOUR BUSINESS)."
71 PRINT: PRINT "IF YOU MAKE THE MOST MONEY,"
72 PRINT "YOU'RE THE WINNER!": PRINT
73 PRINT@416, "IS THIS A NEW GAME (Y OR N)";: INPUT A$
74 A$=LEFT$(A$,1): IF A$<>"Y" AND A$<>"N" THEN 62
75 PRINT@448, "HOW MANY PEOPLE ARE PLAYING";: INPUT N$
76 N=VAL(N$): IF N<1 OR N>30 THEN 62
77 FOR I=1 TO N: B(I)=0: A(I)=A2: NEXT
78 IF A$="N" THEN 115
79 '   NEW BUSINESS
80 CLS
81 PRINT "TO MANAGE YOUR LEMONADE STAND,"
82 PRINT "YOU WILL NEED TO MAKE THESE"
83 PRINT "DECISIONS EACH DAY:"
84 PRINT:PRINT "(1) HOW MANY GLASSES OF LEMONADE";
85 PRINT "    TO MAKE FOR THE DAY,"
86 PRINT "(2) HOW MANY ADVERTISING SIGNS"
87 PRINT "    TO MAKE (SIGNS COST 15 CENTS";
88 PRINT "    EACH),"
89 PRINT "(3) WHAT PRICE TO CHARGE FOR"
90 PRINT "    EACH GLASS."
91 PRINT:PRINT "YOU WILL BEGIN WITH $2.00 CASH"
92 PRINT "(ASSETS)."
93 FS=0: GOSUB 367
94 CLS
95 PRINT "BECAUSE YOUR MOTHER GAVE YOU"
96 PRINT "SOME SUGAR, YOUR COST TO MAKE"
97 PRINT "LEMONADE IS TWO CENTS A GLASS"
98 PRINT "(THIS MAY CHANGE IN THE FUTURE)."
99 PRINT "YOUR EXPENSES ARE THE COST OF"
100 PRINT "THE LEMONADE PLUS THE COST OF"
101 PRINT "THE SIGNS."
102 PRINT: PRINT "YOUR PROFITS ARE THE DIFFERENCE"
103 PRINT "BETWEEN THE INCOME FROM SALES"
104 PRINT "AND YOUR EXPENSES."
105 FS=0: GOSUB 367
106 CLS: PRINT "THE NUMBER OF GLASSES YOU SELL"
107 PRINT "EACH DAY DEPENDS ON THE PRICE"
108 PRINT "YOU CHARGE AND ON THE NUMBER"
109 PRINT "OF ADVERTISING SIGNS YOU USE."
110 PRINT: PRINT "KEEP TRACK OF YOUR ASSETS,"
111 PRINT "BECAUSE YOU CAN'T SPEND MORE"
112 PRINT "THAN YOU HAVE."
113 GOSUB 371
114 GOTO 138
115 '   CONTINUE OLD GAME
116 CLS: I=0
117 PRINT "HI!  WELCOME BACK TO"
118 PRINT "LEMONSVILLE.  LET'S CONTUNUE"
119 PRINT "YOUR LAST GAME WHERE YOU LEFT"
120 PRINT "IT.  DO YOU REMEMBER WHAT DAY"
121 PRINT "NUMBER IT WAS";
122 INPUT A$: A=VAL(A$): PRINT: IF A<>0 THEN 126
123 A$=LEFT$(A$,1): IF A$="Y" THEN PRINT "WHAT DAY WAS IT";: I=I+1: GOTO 122
124 IF A$="N" OR I>0 THEN 128
125 PRINT "YES OR NO?": I=I+1: GOTO 122
126 IF A<1 OR A>99 OR A<>INT(A) THEN 128
127 D=A
128 PRINT "OK - WE'LL START WITH DAY" D+1: PRINT
129 FOR I=1 TO N: PRINT
130 PRINT "PLAYER" I "HOW MUCH MONEY"
131 PRINT "(ASSETS) DID YOU HAVE";
132 INPUT A$: A=VAL(A$): PRINT
133 IF A<2 THEN PRINT "OK - WE'LL START YOU OUT WITH   $2.00": A=2: GOTO 135
134 IF A>40 THEN PRINT "JUST TO BE FAIR, LET'S MAKE     THAT $10.00": A=10
135 A(I)=INT(A*100+.5)/100: NEXT
136 PRINT: INPUT "       ...READY TO BEGIN"; A$
137 IF LEFT$(A$,1)="N" THEN 79
138 '     WEATHER REPORT
139 SC=RND(0)
140 IF SC<.6 THEN SC=2: GOTO 143
141 IF SC<.8 THEN SC=10: GOTO 143
142 SC=7
143 IF D<3 THEN SC=2
144 GOSUB 316
145 CLS
146 '     START OF NEW DAY
147 D=D+1
148 PRINT "ON DAY" D "THE COST OF"
149 PRINT "LEMONADE IS ";
150 C=2: IF D>2 THEN C=4
151 IF D>6 THEN C=5
152 C1=C*.01
153 PRINT USING "$$.##"; C1
154 R1=1
155 '     CURRENT EVENTS
156 IF D<>3 THEN 158
157 PRINT "(YOUR MOTHER QUIT GIVING YOU    FREE SUGAR)"
158 IF D<>7 THEN 160
159 PRINT "(THE PRICE OF LEMONS WENT UP)"
160 '  THINGS HAPPEN AFTER DAY 2
161 IF D>2 THEN 271
162 '     INPUT VALUES
163 PRINT
164 FOR I=1 TO N
165 G(I)=1: H(I)=0
166 PRINT "STAND" I; TAB(16) "ASSETS ";: PRINT USING "$$###.##"; A(I)
167 PRINT
168 IF B(I)=0 THEN 172
169 PRINT "YOU'RE BANKRUPT!  NO DECISIONS."
170 IF N=1 AND A(1)<C THEN 312
171 GOTO 211
172 PRINT "HOW MANY GLASSES OF LEMONADE DO YOU WANT TO MAKE";
173 INPUT L(I)
174 IF L(I)<0 OR L(I)>1000 THEN 176
175 GOTO 178
176 PRINT "LET'S BE REASONABLE.  TRY AGAIN.";
177 GOTO 172
178 IF L(I)<>INT(L(I)) THEN 176
179 IF L(I)*C1<=A(I) THEN 187
180 PRINT "YOU HAVE ONLY";
181 PRINT USING "$$###.##"; A(I);
182 PRINT " IN CASH."
183 PRINT "TO MAKE"; L(I) "GLASSES OF"
184 PRINT "LEMONADE, YOU NEED";
185 PRINT USING "$$###.##"; L(I)*C1;: PRINT "."
186 GOTO 172
187 PRINT
188 PRINT "HOW MANY SIGNS (";:PRINT USING "## "; S3*100;:PRINT "CENTS"
189 PRINT "EACH) DO YOU WANT";
190 INPUT S(I)
191 IF S(I) <0 OR S(I) >50 THEN 193
192 GOTO 195
193 PRINT "BE REASONABLE.  TRY AGAIN."
194 GOTO 187
195 IF S(I)<>INT(S(I)) THEN 193
196 IF S(I)*S3<=A(I)-L(I)*C1 THEN 202
197 PRINT
198 PRINT "SORRY, YOU HAVE ONLY";
199 PRINT USING "$$###.##"; A(I)-L(I)*C1
200 PRINT "AFTER MAKING YOUR LEMONADE."
201 GOTO 187
202 PRINT: PRINT "WHAT PRICE ARE YOU CHARGING FOR"
203 PRINT "FOR EACH GLASS (IN CENTS)";
204 INPUT P(I)
205 IF P(I)<0 OR P(I)>99 THEN 207
206 GOTO 209
207 PRINT:PRINT "BE REASONABLE.  TRY AGAIN."
208 GOTO 202
209 IF P(I)<>INT(P(I)) THEN 207
210 IF C5=1 THEN 211
211 PRINT: INPUT "WANT TO CHANGE ANYTHING"; A$
212 IF LEFT$(A$,1)="Y" THEN CLS: C5=1: GOTO 165
213 CLS
214 NEXT I
215 C5=0: CLS
216 IF SC=10 AND RND(0)<.25 THEN 296
217 PRINT "  LEMONSVILLE FINANCIAL REPORT"
218 PLAY MONEYSONG$
219 '   CALCULATE PROFITS
220 IF R2=2 THEN 292
221 IF R3=3 THEN 301
222 FOR I=1 TO N
223 IF A(I)<0 THEN A(I)=0
224 IF R2=2 THEN 234
225 IF P(I)>=P9 THEN 228
226 N1=(P9-P(I))/P9*.8*S2+S2
227 GOTO 229
228 N1=((P9^2)*S2/P(I)^2)
229 W=-S(I)*C9
230 V=1-(EXP(W)*C2)
231 N2=R1*(N1+(N1*V))
232 N2=INT(N2*G(I))
233 IF N2<=L(I) THEN 235   'SALES >= PRODUCTION
234 N2=L(I)
235 M=N2*P(I)*.01
236 E=S(I)*S3+L(I)*C1
237 P1=M-E   'PROFIT
238 A(I)=A(I)+P1
239 IF H(I)=1 THEN 296
240 IF I>1 THEN PRINT "  LEMONSVILLE FINANCIAL REPORT"
241 PRINT
242 IF B(I)<>1 THEN 245
243 PRINT "STAND" I "BANKRUPT": GOSUB 371
244 GOTO 267
245 PRINT "  DAY" D TAB(22) "STAND" I: PRINT
246 PRINT USING " #### "; N2;: PRINT "GLASSES SOLD"
247 PRINT " $.";: IF P(I)<10 THEN 248 ELSE PRINT USING "## "; P(I);: GOTO 249
248 PRINT "0";: PRINT USING "# "; P(I);
249 PRINT "PER GLASS"
250 PRINT TAB(15) "INCOME";: PRINT USING "$$####.##"; M
251 PRINT: PRINT USING " #### "; L(I);: PRINT "GLASSES MADE"
252 PRINT USING " #### "; S(I);: PRINT "SIGNS MADE"
253 PRINT TAB(13) "EXPENSES";: PRINT USING "$$####.##"; E
254 PRINT: PRINT TAB(15) "PROFIT";: PRINT USING "$$####.##"; P1
255 PRINT: PRINT TAB(15) "ASSETS";: PRINT USING "$$####.##"; A(I)
256 GOSUB 371
257 CLS
258 IF A(I)>C/100 THEN 267
259 PRINT "STAND" I
260 PRINT " ... YOU DON'T HAVE ENOUGH MONEY";
261 PRINT "LEFT TO STAY IN BUSINESS."
262 PRINT "YOU'RE BANKRUPT!"
263 PLAY BANKRUPT$
264 B(I)=1
265 GOSUB 371: CLS
266 IF N=1 AND B(1)=1 THEN 312
267 NEXT I
268 R1=1
269 R2=0
270 GOTO 138
271 '   RANDOM EVENTS
272 IF SC=10 THEN 277
273 IF SC=7 THEN 308
274 IF RND(0)<.25 THEN 283
275 GOTO 163
276 IF X1=1 THEN 163
277 J=30+INT(RND(0)*5)*10
278 PRINT "THERE IS A";:PRINT USING " ##"; J;:PRINT "% CHANCE OF RAIN"
279 R1=1-J/100
280 X1=1
281 GOTO 163
282 IF X2=1 THEN 163
283 PRINT "THE STREET DEPT. IS WORKING ON"
284 PRINT "YOUR STREET AND THERE WILL BE"
285 PRINT "NO TRAFFIC TODAY."
286 IF RND(0)<.5 THEN 289
287 R2=2
288 GOTO 290
289 R1=.1
290 X2=1
291 GOTO 163
292 PRINT "THE STREET CREWS BOUGHT ALL YOUR";
293 PRINT "LEMONADE AT LUNCH TIME!"
294 FS=1:GOSUB 367
295 GOTO 222
296 '   THUNDERSTORM
297 X3=1:R3=0
298 SC=5:GOSUB 316:CLS
299 PRINT "WEATHER REPORT:  A SEVERE"
300 PRINT "THUNDERSTORM HIT LEMONSVILLE"
301 PRINT "TODAY JUST AS THE LEMONADE"
302 PRINT "STANDS WERE BEING SET UP."
303 PRINT "EVERYTHING WAS RUINED!"
304 FS=1:GOSUB 367
305 FOR J=1 TO N:G(J)=0:NEXT
306 GOTO 222
307 IF X4=1 THEN 163
308 X4=1
309 PRINT "A HEAT WAVE IS PREDICTED TODAY!"
310 R1=2
311 GOTO 163
312 FOR I=1 TO 2000: NEXT: CLS: PRINT@256, "WOULD YOU LIKE TO PLAY AGAIN?"
313 INPUT IN$: IN$=LEFT$(IN$,1): IF IN$="Y" THEN 47
314 CLS
315 END
316 '   WEATHER DISPLAY
317 CLS3
318 PRINT@416,STRING$(64,143)
319 PRINT@144,CHR$(128);"lemonade";CHR$(128);
320 PRINT@176,CHR$(128);"for";CHR$(128);"sale";CHR$(128);
321 FOR LO=208 TO 272 STEP 32: PRINT@LO, CHR$(165);: NEXT
322 FOR LO=217 TO 281 STEP 32: PRINT@LO, CHR$(170);: NEXT
323 FOR LO=304 TO 400 STEP 32: PRINT@LO, STRING$(10,128);: NEXT
324 FOR LO=274 TO 278 STEP 2: PRINT@LO, CHR$(159);: NEXT
325 PRINT@480,"WEATHER REPORT:";
326 IF SC=5 THEN 344
327 PRINT@36, STRING$(5,255);
328 PRINT@67, STRING$(7,255);
329 PRINT@99, STRING$(7,255);
330 PRINT@132, STRING$(5,255);
331 IF SC<>2 THEN 334
332 PRINT@496, "SUNNY";: PLAY SUNSONG$
333 RETURN
334 IF SC<>7 THEN 337
335 PRINT@496, "HOT AND DRY";: PLAY HOTSONG$
336 RETURN
337 PRINT@51, STRING$(10,207);
338 PRINT@82, STRING$(12,207);
339 PRINT@116, STRING$(11,207);
340 PRINT@154, STRING$(4,207);
341 PRINT@186, STRING$(2,207);
342 PRINT@496, "CLOUDY & COOLER";: PLAY CLOUDSONG$
343 RETURN
344 PRINT@33, STRING$(13,128);STRING$(2,175);STRING$(13,128);
345 PRINT@67, STRING$(12,128);STRING$(3,175);STRING$(12,128);
346 PRINT@99, STRING$(11,128);STRING$(6,175);STRING$(11,128);
347 PRINT@133, STRING$(8,128);
348 PRINT@154, STRING$(4,128);
349 PRINT@167, STRING$(5,128);
350 PRINT@496, "THUNDERSTORMS";: PLAY RAINSONG$
351 FOR LO=1 TO 2
352 FOR DE=1 TO 123: READ J: NEXT
353 FOR DE=1 TO 18
354 READ I,J
355 POKE I,J
356 NEXT
357 FOR DE=1 TO 40: NEXT
358 FOR DE=1 TO 18
359 READ I,J
360 POKE I,J 
361 NEXT
362 RESTORE
363 NEXT LO
364 RETURN
365 DATA 1160,207,1192,207,1225,207,1258,207,1291,207,1323,207,1356,207,1160,128,1389,207,1192,128,1422,207,1225,175,1258,175,1291,175,1323,175,1356,175,1389,175,1422,143
366 DATA 1145,207,1178,207,1211,207,1244,207,1276,207,1309,207,1145,128,1341,207,1178,128,1373,207,1211,175,1406,207,1244,175,1276,175,1309,175,1341,175,1373,175,1406,175
367 PRINT@480, "push  c  to continue   ";: FOR QP=1527TO1534:POKEQP,32:NEXT : POKE 1508,32: POKE 1509,27: POKE 1511,29: POKE 1512,32: POKE 1515,32: POKE1524,46: POKE1525,46: POKE1526,46: POKE1535,32
368 IN$=INKEY$:IF IN$<>"C" THEN 368
369 IF FS=1 THEN CLS:PRINT "  LEMONSVILLE FINANCIAL REPORT" ELSE RETURN
370 FS=0:RETURN
371 '
372 PRINT@480, "push  c  to continue   e  to en";: POKE 1508,32: POKE 1509,27: POKE 1511,29: POKE 1512,32: POKE 1515,32: POKE 1524,44: POKE 1525,32: POKE 1526,27: POKE 1528,29: POKE 1529,32: POKE 1532,32: POKE 1535,4
373 IN$=INKEY$:DE=RND(-TIMER)
374 IF IN$="E" THEN 312
375 IF IN$="C" THEN RETURN
376 GOTO 373
