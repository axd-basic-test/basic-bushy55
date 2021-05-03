
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Bifurcation of the Vehulst Model
20 'with the Bifurcation Diagram after Collet
30 'Name: COLLET
40 SCREEN 1: CLS : LOCATE 10, 1
50 PRINT "Iteration of X:=AX(1-X) for successive"
60 LOCATE 12, 14: PRINT "Values of A"
70 FOR i = 0 TO 10000: NEXT i
80 'Iteration of A*X*(1-X) for successive values
90 SCREEN 12, 0, 0, 0: CLS
100 WINDOW (-.1, -.1)-(1.5, 1.1)
110 FOR i = 1 TO 12
115    CLS
120    a = 2.8 + i / 10: x = .01: m = 40: x0 = x
130    PSET (0, 0)
135    FOR k = 0 TO 100
140       LINE -(k / 100, a * k * (1 - k / 100) / 100)
150    NEXT k
160    LINE (0, 0)-(1, 0): LINE (0, 0)-(1, 1)
170    LOCATE 4, 2
180    PRINT "A="; a
190    PSET (x, 0)
195    FOR n = 0 TO m + 5 * i
200       y = a * x * (1 - x)
210       LINE -(x, y): LINE -(y, y)
220       x = y
225    NEXT n
230    FOR j = 0 TO 10000: NEXT j
240 NEXT i
250 SCREEN 1: CLS : LOCATE 8, 4
260 PRINT "Bifucation Diagram of X:=AX(1-X)"
270 LOCATE 12, 10
280 PRINT "A runs from 2.8 to 4"
290 FOR i = 0 TO 10000: NEXT i
300 'Bifurcation Diagram of X:=AX(1-X)
310 SCREEN 12: CLS
320 LINE (40, 390)-(600, 390)
330 FOR i = 0 TO 12
340    LINE (40 + i * 140 / 3, 390)-(40 + i * 140 / 3, 385)
350 NEXT i
360 FOR n = 0 TO 280 STEP 2
370    a = 2.8 + 1.2 * n / 280: x = .7
380    FOR k = 1 TO 150
390       x = a * x * (1 - x)
400       IF k > 50 THEN PSET (40 + 2 * n, 300 - 250 * x)
410    NEXT k
415 NEXT n
420 FOR i = 0 TO 10000: NEXT i
430 'Period Doubling Window
440 SCREEN 1: CLS : LOCATE 10, 9
450 PRINT "Period Doubling Window"
460 LOCATE 12, 12
470 PRINT " 3.44 < A < 3.6 "
480 FOR i = 0 TO 10000: NEXT i
490 SCREEN 12: CLS
500 FOR n = 0 TO 280 STEP 1.5
510    a = 3.4 + .2 * n / 280: x = .7
520    FOR k = 1 TO 160
530       x = a * x * (1 - x)
540       IF k > 80 THEN PSET (40 + 2 * n, 540 - 600 * x)
550    NEXT k
555 NEXT n
560 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM





