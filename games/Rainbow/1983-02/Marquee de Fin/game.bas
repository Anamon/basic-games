
1 'MARQUIS
6 'MORTON GOLDBERG
11 '143 PEARL STREET
16 'NEWTON,MASSACHUSETTS 02158
21 CLS(8)
26 FOR H=0 TO 63
31 SET(H,0,3)
36 NEXT H
41 FOR V=0 TO 31
46 SET(63,V,3)
51 NEXT V
56 FOR H=63 TO 0 STEP-1
61 SET(H,31,3)
66 NEXT H
71 FOR V=31 TO 0 STEP-1
76 SET(0,V,3)
81 NEXT V
86 FOR H=3 TO 60
91 SET(H,2,1)
96 NEXT H
101 FOR V=3 TO 29
106 SET(60,V,1)
111 NEXT V
116 FOR H=60 TO 3 STEP-1
121 SET(H,29,1)
126 NEXT H
131 FOR V=29 TO 3 STEP-1
136 SET(3,V,1)
141 NEXT V
146 FOR H=7 TO 56 STEP 2
151 RESET(H,6)
156 NEXT H
161 FOR V=8 TO 24 STEP 2
166 RESET(57,V)
171 NEXT V
176 FOR H=56 TO 6 STEP-2
181 RESET(H,26)
186 NEXT H
191 FOR V=24 TO 7 STEP-2
196 RESET(6,V)
201 NEXT V
206 REM ("T")
211 FOR H=9 TO 13
216 RESET (H,12)
221 NEXT H
226 FOR V=13 TO 18
231 RESET (11,V)
236 NEXT V
241 REM ("H")
246 FOR H=17 TO 20
251 RESET (H,15)
256 NEXT H
261 FOR V=12 TO 18
266 RESET (16,V)
271 NEXT V
276 FOR V=12 TO 18
281 RESET (21,V)
286 NEXT V
291 REM ("E")
296 FOR H=25 TO 27
301 RESET (H,12)
306 NEXT H
311 FOR H=25 TO 27
316 RESET (H,15)
321 NEXT H
326 FOR H=25 TO 27
331 RESET (H,18)
336 NEXT H
341 FOR V=12 TO 18
346 RESET (24,V)
351 NEXT V
356 REM ("E")
361 FOR H=34 TO 37
366 RESET (H,12)
371 NEXT H
376 FOR H=34 TO 37
381 RESET (H,15)
386 NEXT H
391 FOR H=34 TO 37
396 RESET (H,18)
401 NEXT H
406 FOR V=12 TO 18
411 RESET (34,V)
416 NEXT V
421 REM ("N")
426 FOR V=12 TO 18
431 RESET (40,V)
436 NEXT V
441 FOR V=12 TO 18
446 RESET (46,V)
451 NEXT V
456 H=41
461 RESET (H,12)
466 H=41
471 RESET (H,13)
476 H=42
481 RESET (H,14)
486 H=43
491 RESET (H,15)
496 H=44
501 RESET (H,16)
506 H=45
511 RESET (H,17)
516 H=45
521 RESET (H,18)
526 REM ("D")
531 FOR H=49 TO 54
536 RESET (H,12)
541 NEXT H
546 FOR H=49 TO 54
551 RESET (H,18)
556 NEXT H
561 FOR V=13 TO 17
566 RESET (50,V)
571 NEXT V
576 FOR V=13 TO 17
581 RESET (54,V)
586 NEXT V
591 REM (ANIMATION)
596 FOR H=5 TO 56 STEP 2
601 SET(2+H,6,8)
606 NEXT H
611 FOR H=5 TO 56 STEP 2
616 RESET(2+H,6)
621 NEXT H
626 FOR V=6 TO 25 STEP 2
631 SET(57,2+V,8)
636 NEXT V
641 FOR V=6 TO 23 STEP 2
646 RESET(57,2+V)
651 NEXT V
656 FOR H=56 TO 6 STEP-2
661 SET(2+H,26,8)
666 NEXT H
671 FOR H=54 TO 5 STEP-2
676 RESET(2+H,26)
681 NEXT H
686 FOR V=24 TO 6 STEP-2
691 SET(6,2+V,8)
696 NEXT V
701 FOR V=24 TO 6 STEP-2
706 RESET(6,2+V)
711 NEXT V
716 GOTO 596
721 END