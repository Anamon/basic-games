10 REM
11 T=300
12 T2=150
13 CALL CHAR(128,"F")
14 CALL COLOR(13,7,7)
15 CALL CHAR(136,"F")
16 CALL COLOR(14,11,11)
17 CALL CHAR(144,"F")
18 CALL COLOR(15,5,5)
19 CALL CHAR(152,"F")
20 CALL COLOR(16,13,13)
21 CALL CLEAR
22 CALL COLOR(2,16,7)
23 DATA 72,79,77,69,87,79,82,75
24 RESTORE 23
25 FOR Y=9 TO 23 STEP 2
26 READ L
27 CALL HCHAR(7,Y,L)
28 NEXT Y
29 DATA 72,69,76,80,69,82
30 RESTORE 29
31 FOR Y=11 TO 21 STEP 2
32 READ L
33 CALL HCHAR(10,Y,L)
34 NEXT Y
35 GOSUB 325
36 CALL HCHAR(14,10,42,13)
37 CALL VCHAR(15,22,42,3)
38 CALL VCHAR(15,10,42,3)
39 CALL HCHAR(18,10,42,13)
40 DATA 70,82,65,67,84,73,79,78,83
41 RESTORE 40
42 FOR Y=12 TO 20
43 READ L
44 CALL HCHAR(16,Y,L)
45 NEXT Y
46 FOR I=1 TO 30
47 CALL COLOR(2,7,16)
48 CALL COLOR(2,16,7)
49 NEXT I
50 GOSUB 336
51 CALL COLOR(2,2,1)
52 CALL CLEAR
53 PRINT "1 EQUIVALENCE"
54 PRINT "2 SIMPLIFY"
55 PRINT "3 MULTIPLY"
56 PRINT "4 DIVIDE"
57 PRINT "5 ADD-LIKE DENOMINATORS"
58 PRINT "6 ADD-UNLIKE DENOMINATORS"
59 PRINT "7 COMPARISONS": : : :
60 GOSUB 487
61 GOSUB 345
62 CALL KEY(0,CH,ST)
63 IF ST<=0 THEN 62
64 IF CH<49 THEN 62
65 IF CH>55 THEN 62
66 CH=CH-48
67 CALL CLEAR
68 ON CH GOTO 69,128,160,235,262,291,504
69 DATA 69,81,85,73,86,65,76,69,78,67,69
70 RESTORE 69
71 CALL CLEAR
72 FOR Y=11 TO 21
73 READ L
74 CALL HCHAR(9,Y,L)
75 NEXT Y
76 CALL CHAR(96,"000000FF")
77 GOSUB 411
78 DATA 14,13,65,15,13,96,16,13,66,15,16,61,14,19,67,15,19,96,16,19,68
79 RESTORE 78
80 FOR I=1 TO 7
81 READ X,Y,L
82 CALL HCHAR(X,Y,L)
83 NEXT I
84 GOSUB 353
85 INPUT "WHICH IS THE UNKNOWN?":X$
86 IF X$="A" THEN 92
87 IF X$="B" THEN 98
88 IF X$="C" THEN 104
89 IF X$="D" THEN 110
90 PRINT "CHOOSE A,B,C,OR D"
91 GOTO 85
92 INPUT "ENTER B = ":B
93 INPUT "ENTER C = ":C
94 INPUT "ENTER D = ":D
95 A=B*C/D+.005
96 A=1E-2*(INT(A*1E2))
97 GOTO 115
98 INPUT "ENTER A = ":A
99 INPUT "ENTER C = ":C
100 INPUT "ENTER D = ":D
101 B=A*D/C+.005
102 B=1E-2*(INT(B*1E2))
103 GOTO 115
104 INPUT "ENTER A = ":A
105 INPUT "ENTER B = ":B
106 INPUT "ENTER D = ":D
107 C=A*D/B+.005
108 C=1E-2*(INT(C*1E2))
109 GOTO 115
110 INPUT "ENTER A = ":A
111 INPUT "ENTER B = ":B
112 INPUT "ENTER C = ":C
113 D=B*C/A+.005
114 D=1E-2*(INT(D*1E2))
115 CALL CLEAR
116 PRINT "       ";A,C
117 PRINT "      _____ = _____": :
118 PRINT "       ";B,D: : :
119 PRINT "PRESS 1 FOR NEXT PROBLEM"
120 PRINT "PRESS 2 TO STOP"
121 CALL KEY(0,K,ST)
122 IF ST<=0 THEN 121
123 IF K<>49 THEN 126
124 CALL CLEAR
125 GOTO 70
126 IF K=50 THEN 51
127 GOTO 121
128 PRINT "** SIMPLIFYING FRACTIONS **"
129 GOSUB 421
130 PRINT: :
131 GOSUB 363
132 INPUT "NUMERATOR?":NS
133 INPUT "DENOMINATOR?":DS
134 IF DS>NS THEN 137
135 PLIM=DS
136 GOTO 138
137 PLIM=NS
138 S=-2
139 IF DS/2<>INT(DS/2)THEN 141
140 IF NS/2=INT(NS/2)THEN 142
141 S=-1
142 FOR P=PLIM TO 2 STEP S
143 A=NS/P
144 IF A<>INT(A)THEN 147
145 B=DS/P
146 IF B=INT(B)THEN 150
147 NEXT P
148 PRINT:NS;"/";DS;" CANNOT BE SIMPLIFIED": : : :
149 GOTO 151
150 PRINT:NS;"/";DS;" = ";A;"/";B: : : :
151 PRINT "PRESS 1 FOR NEXT PROBLEM"
152 PRINT "PRESS 2 TO STOP"
153 CALL KEY(0,K,ST)
154 IF ST<=0 THEN 153
155 IF K<>49 THEN 158
156 CALL CLEAR
157 GOTO 128
158 IF K=50 THEN 51
159 GOTO 153
160 PRINT "** MULTIPLYING FRACTIONS **": : : :
161 GOSUB 441
162 GOSUB 373
163 INPUT "HOW MANY FRACTIONS? ":F
164 FOR I=1 TO F
165 PRINT "FRACTION";I
166 INPUT "    NUMERATOR = ":NN(I)
167 INPUT "    DENOMINATOR = ":DD(I)
168 NEXT I
169 TN=1
170 TD=1
171 FOR I=1 TO F
172 TN=TN*NN(I)
173 TD=TD*DD(I)
174 NEXT I
175 PRINT: : :"** MULTIPLY **": :
176 GOSUB 187
177 GOSUB 214
178 PRINT: :"PRESS 1 FOR NEXT PROBLEM"
179 PRINT "PRESS 2 TO STOP"
180 CALL KEY(0,K,ST)
181 IF ST<=0 THEN 180
182 IF K<>49 THEN 185
183 CALL CLEAR
184 GOTO 160
185 IF K=50 THEN 51
186 GOTO 180
187 FOR I=1 TO F
188 PRINT NN(I);"/";DD(I)
189 NEXT I
190 PRINT "_______________"
191 RETURN
192 IF TN<TD THEN 195
193 PLIM=TD
194 GOTO 196
195 PLIM=TN
196 FOR P=PLIM TO 2 STEP-1
197 A=TN/P
198 IF A<>INT(A)THEN 201
199 B=TD/P
200 IF B=INT(B)THEN 204
201 NEXT P
202 A=TN
203 B=TD
204 IF A>=B THEN 207
205 PRINT: :A;"/";B: : : :
206 GOTO 211
207 IF B=1 THEN 212
208 C=INT(A/B)
209 R=A-C*B
210 PRINT C;"   ";R;"/";B: : : :
211 RETURN
212 PRINT A: : : :
213 RETURN
214 FOR I=1 TO F
215 P=DD(I)
216 A=TN/P
217 IF A<>INT(A)THEN 222
218 B=TD/P
219 IF B<>INT(B)THEN 222
220 TN=A
221 TD=B
222 NEXT I
223 SW=0
224 FOR I=1 TO F-1
225 IF DD(I)<=DD(I+1)THEN 230
226 J=DD(I)
227 DD(I)=DD(I+1)
228 DD(I+1)=J
229 SW=1
230 NEXT I
231 IF SW=1 THEN 223
232 PLIM=DD(F)
233 GOSUB 196
234 RETURN
235 PRINT "** DIVIDING FRACTIONS **": : :
236 GOSUB 450
237 PRINT "THE FIRST FRACTION IS"
238 PRINT "DIVIDED BY THE"
239 PRINT "SECOND FRACTION.": :
240 PRINT "(N1/D1) / (N2/D2)": :
241 GOSUB 381
242 INPUT "ENTER N1 = ":N1
243 INPUT "ENTER D1 = ":D1
244 INPUT "ENTER N2 = ":N2
245 INPUT "ENTER D2 = ":D2
246 TN=N1*D2
247 TD=D1*N2
248 PRINT: : :N1;"/";D1
249 PRINT "______________": :
250 PRINT N2;"/";D2: : :
251 PRINT "EQUALS": :
252 GOSUB 192
253 PRINT:"PRESS 1 FOR NEXT PROBLEM"
254 PRINT "PRESS 2 TO STOP"
255 CALL KEY(0,K,ST)
256 IF ST<=0 THEN 255
257 IF K<>49 THEN 260
258 CALL CLEAR
259 GOTO 235
260 IF K=50 THEN 51
261 GOTO 255
262 PRINT "** ADDING FRACTIONS **": :
263 GOSUB 457
264 PRINT "THIS SECTION ADDS"
265 PRINT "FRACTIONS THAT ALL HAVE"
266 PRINT "THE SAME DENOMINATOR.": : :
267 GOSUB 389
268 INPUT "HOW MANY FRACTIONS? ":F
269 INPUT "WHAT IS THE DENOMINATOR?":TD
270 PRINT "ENTER THE NUMERATORS."
271 TN=0
272 FOR I=1 TO F
273 INPUT NN(I)
274 TN=TN+NN(I)
275 NEXT I
276 FOR I=1 TO F
277 DD(I)=TD
278 NEXT I
279 PRINT: : :
280 GOSUB 187
281 GOSUB 192
282 PRINT "PRESS 1 FOR NEXT PROBLEM"
283 PRINT "PRESS 2 TO STOP"
284 CALL KEY(0,K,ST)
285 IF ST<=0 THEN 284
286 IF K<>49 THEN 289
287 CALL CLEAR
288 GOTO 262
289 IF K=50 THEN 51
290 GOTO 284
291 PRINT "** ADDING FRACTIONS **"
292 GOSUB 472
293 PRINT: :"THIS SECTION ADDS"
294 PRINT "FRACTIONS THAT MAY HAVE"
295 PRINT "UNLIKE DENOMINATORS.": : :
296 GOSUB 400
297 INPUT "HOW MANY FRACTIONS? ":F
298 IF F<=5 THEN 301
299 PRINT "SORRY, I ACN ONLY HANDLE UP TO 5 FRACTIONS."
300 GOTO 297
301 TN=0
302 TD=1
303 FOR I=1 TO F
304 PRINT "FRACTION";I
305 INPUT "    NUMERATOR = ":NN(I)
306 INPUT "    DENOMINATOR = ":DD(I)
307 TD=TD*DD(I)
308 NEXT I
309 PRINT: :
310 FOR I=1 TO F
311 C=TD/DD(I)
312 TN=TN+NN(I)*C
313 NEXT I
314 GOSUB 187
315 GOSUB 214
316 PRINT "PRESS 1 FOR NEXT PROBLEM"
317 PRINT "PRESS 2 TO STOP"
318 CALL KEY(0,K,ST)
319 IF ST<=0 THEN 318
320 IF K<>49 THEN 323
321 CALL CLEAR
322 GOTO 291
323 IF K=50 THEN 51
324 GOTO 318
325 CALL SOUND(T,880,2,698,5)
326 CALL SOUND(T,932,2,784,5)
327 CALL SOUND(T,784,2,659,5)
328 CALL SOUND(T,880,2,698,5)
329 CALL SOUND(T,698,2,587,5)
330 CALL SOUND(T2,784,2)
331 CALL SOUND(T2,698,2)
332 CALL SOUND(T2,659,2)
333 CALL SOUND(T2,784,2)
334 CALL SOUND(T,698,2,687,5)
335 RETURN
336 CALL SOUND(T,440,2)
337 CALL SOUND(T2,466,2)
338 CALL SOUND(T2,523,2)
339 CALL SOUND(T2,587,2)
340 CALL SOUND(T2,523,2)
341 CALL SOUND(T,466,2)
342 CALL SOUND(T,440,2)
343 CALL SOUND(1000,392,2,330,5)
344 RETURN
345 CALL SOUND(T2,440,2)
346 CALL SOUND(T2,466,2)
347 CALL SOUND(T,523,2)
348 CALL SOUND(T,440,2)
349 CALL SOUND(T,587,2)
350 CALL SOUND(T,784,2)
351 CALL SOUND(500,659,2)
352 RETURN
353 CALL SOUND(T,698,2)
354 CALL SOUND(T,932,2)
355 CALL SOUND(T,784,2)
356 CALL SOUND(T,880,2)
357 CALL SOUND(T2,932,2)
358 CALL SOUND(T2,880,2)
359 CALL SOUND(T2,784,2)
360 CALL SOUND(T2,880,2)
361 CALL SOUND(500,698,2)
362 RETURN
363 CALL SOUND(T2,659,2)
364 CALL SOUND(T2,587,2)
365 CALL SOUND(T,523,2)
366 CALL SOUND(T,440,2)
367 CALL SOUND(T,698,2,440,5)
368 CALL SOUND(T,784,2,587,5)
369 CALL SOUND(T2,698,2,392,5)
370 CALL SOUND(T2,659,2)
371 CALL SOUND(1000,698,2,440,5)
372 RETURN
373 DATA 262,349,392,440,523,440,392,349,392
374 RESTORE 373
375 FOR I=1 TO 9
376 READ M
377 CALL SOUND(T2,M,2)
378 NEXT I
379 CALL SOUND(500,440,2)
380 RETURN
381 CALL SOUND(600,262,10)
382 CALL SOUND(600,311,7)
383 CALL SOUND(450,392,4)
384 CALL SOUND(150,349,4)
385 CALL SOUND(300,311,6)
386 CALL SOUND(300,294,8)
387 CALL SOUND(500,262,10)
388 RETURN
389 CALL SOUND(T,523,2)
390 CALL SOUND(T,440,2)
391 CALL SOUND(T2,440,2)
392 CALL SOUND(T2,494,2)
393 CALL SOUND(T,523,2)
394 CALL SOUND(T2,494,2)
395 CALL SOUND(T2,523,2)
396 CALL SOUND(T2,494,2)
397 CALL SOUND(T2,392,2)
398 CALL SOUND(1000,440,2)
399 RETURN
400 CALL SOUND(400,440,8)
401 CALL SOUND(200,392,8)
402 CALL SOUND(200,440,7)
403 CALL SOUND(400,587,6)
404 CALL SOUND(200,523,5)
405 CALL SOUND(200,587,4)
406 CALL SOUND(400,494,3)
407 CALL SOUND(200,440,4)
408 CALL SOUND(200,494,5)
409 CALL SOUND(500,392,6)
410 RETURN
411 CALL HCHAR(12,4,128,3)
412 CALL HCHAR(13,4,128,3)
413 FOR Y=4 TO 6
414 CALL VCHAR(14,Y,144,4)
415 NEXT Y
416 CALL VCHAR(11,27,136,3)
417 CALL VCHAR(11,28,136,3)
418 CALL VCHAR(14,27,152,6)
419 CALL VCHAR(14,28,152,6)
420 RETURN
421 FOR X=10 TO 14 STEP 2
422 FOR Y=9 TO 13 STEP 2
423 CALL HCHAR(X,Y,144)
424 CALL HCHAR(X,Y-1,136)
425 NEXT Y
426 NEXT X
427 FOR X=11 TO 13 STEP 2
428 FOR Y=8 TO 12 STEP 2
429 CALL HCHAR(X,Y,144)
430 CALL HCHAR(X,Y+1,136)
431 NEXT Y
432 NEXT X
433 CALL HCHAR(12,16,61)
434 FOR Y=19 TO 21
435 CALL VCHAR(10,Y,136,5)
436 NEXT Y
437 FOR Y=22 TO 24
438 CALL VCHAR(10,Y,144,5)
439 NEXT Y
440 RETURN
441 Y=6
442 FOR I=1 TO 5
443 CALL VCHAR(10,Y,136,2)
444 CALL VCHAR(10,Y+1,136,2)
445 CALL VCHAR(12,Y,128,4)
446 CALL VCHAR(12,Y+1,128,4)
447 Y=Y+5
448 NEXT I
449 RETURN
450 CALL HCHAR(10,11,136,13)
451 CALL HCHAR(11,11,136,13)
452 FOR X=12 TO 14
453 CALL HCHAR(X,11,144,13)
454 NEXT X
455 CALL VCHAR(7,17,93,11)
456 RETURN
457 CALL HCHAR(10,8,128,2)
458 CALL VCHAR(11,8,152,4)
459 CALL VCHAR(11,9,152,4)
460 CALL VCHAR(10,13,128,4)
461 CALL VCHAR(10,14,128,4)
462 CALL HCHAR(14,13,152,2)
463 CALL VCHAR(10,18,128,2)
464 CALL VCHAR(10,19,128,2)
465 CALL VCHAR(12,18,152,3)
466 CALL VCHAR(12,19,152,3)
467 CALL VCHAR(10,23,128,3)
468 CALL VCHAR(10,24,128,3)
469 CALL VCHAR(13,23,152,2)
470 CALL VCHAR(13,24,152,2)
471 RETURN
472 CALL VCHAR(10,8,128,4)
473 CALL VCHAR(14,8,136,3)
474 CALL VCHAR(10,12,144,2)
475 CALL VCHAR(10,13,144,2)
476 CALL VCHAR(12,12,128,3)
477 CALL VCHAR(12,13,128,3)
478 CALL HCHAR(10,17,136,3)
479 CALL HCHAR(11,17,152,3)
480 CALL HCHAR(12,17,152,3)
481 CALL HCHAR(13,17,152,3)
482 CALL VCHAR(10,23,152,2)
483 CALL VCHAR(10,24,152,2)
484 CALL VCHAR(12,23,144,4)
485 CALL VCHAR(12,24,144,4)
486 RETURN
487 CALL HCHAR(4,15,128,2)
488 CALL HCHAR(5,14,128,3)
489 CALL HCHAR(6,13,128,4)
490 CALL HCHAR(7,13,128,4)
491 CALL HCHAR(4,17,136,2)
492 CALL HCHAR(5,17,136,3)
493 CALL HCHAR(6,17,136,4)
494 CALL HCHAR(7,17,136,4)
495 CALL HCHAR(8,17,152,4)
496 CALL HCHAR(9,17,152,4)
497 CALL HCHAR(10,17,152,3)
498 CALL HCHAR(11,17,152,2)
499 CALL HCHAR(11,15,144,2)
500 CALL HCHAR(10,14,144,3)
501 CALL HCHAR(9,13,144,4)
502 CALL HCHAR(8,13,144,4)
503 RETURN
504 DATA 67,79,77,80,65,82,73,83,79,78,83,32
505 RESTORE 504
506 FOR Y=11 TO 22
507 READ L
508 CALL HCHAR(14,Y,L)
509 NEXT Y
510 GOSUB 550
511 DIM NNN(10),DDD(10),FRC(10),FRD(10)
512 PRINT "THIS ARRANGES FRACTIONS"
513 PRINT "FROM SMALLEST TO LARGEST.": :
514 INPUT "HOW MANY FRACTIONS?":NF
515 IF NF<11 THEN 518
516 PRINT "SORRY; UP TO 10 ONLY."
517 GOTO 514
518 FOR I=1 TO NF
519 PRINT: :"FRACTION ";I
520 INPUT "    NUMERATOR:":NNN(I)
521 INPUT "    DENOMINATOR:":DDD(I)
522 FRC(I)=NNN(I)/DDD(I)
523 FRD(I)=FRC(I)
524 NEXT I
525 PRINT: : : :
526 SW=0
527 FOR I=1 TO NF-1
528 IF FRC(I)<=FRC(I+1)THEN 533
529 FF=FRC(I)
530 FRC(I)=FRC(I+1)
531 FRC(I+1)=FF
532 SW=1
533 NEXT I
534 IF SW=1 THEN 526
535 FOR I=1 TO NF
536 FOR J=1 TO NF
537 IF FRC(I)=FRD(J)THEN 539
538 NEXT J
539 PRINT I;"  ";NNN(J);"/";DDD(J)
540 NEXT I
541 PRINT: : :"PRESS 1 FOR NEXT PROBLEM"
542 PRINT "PRESS 2 TO STOP"
543 CALL KEY(0,K,ST)
544 IF ST<=0 THEN 543
545 IF K<>49 THEN 548
546 CALL CLEAR
547 GOTO 505
548 IF K=50 THEN 51
549 GOTO 543
550 CALL SOUND(400,330,2,262,5)
551 CALL VCHAR(4,8,136,3)
552 CALL VCHAR(4,9,136,3)
553 CALL SOUND(100,330,2)
554 CALL HCHAR(7,8,144,2)
555 CALL SOUND(100,262,3)
556 CALL SOUND(400,330,1)
557 CALL VCHAR(4,15,128,4)
558 CALL VCHAR(8,15,152,2)
559 CALL SOUND(100,330,2)
560 CALL SOUND(100,262,3)
561 CALL SOUND(400,330,1)
562 CALL VCHAR(4,23,152,3)
563 CALL VCHAR(4,24,152,3)
564 CALL SOUND(200,392,5)
565 CALL VCHAR(7,23,136,3)
566 CALL SOUND(200,524,3)
567 CALL VCHAR(7,24,136,3)
568 CALL SOUND(400,660,1)
569 RETURN