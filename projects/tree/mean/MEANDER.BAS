5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Fractal Curve with a Given Base Line and Motif, Koch Cross
20 'Name: MEANDER
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593: COLOR 9
40 DIM x(2048), y(2048)
50 WINDOW (-2.4, -1.8)-(2.4, 1.8)
60 u = 4: DIM a(u), b(u): ' number elements base line
70 v = 4: DIM c(v), d(v): ' number elements motif
80 DATA 1,1,  -1,1,  -1,-1,  1,-1,  1,1: ' data base line
90 DATA .333, 0, .5, .2887, .667, 0: ' data motif
92 'DATA .4,.2,.6,-.2
100 PRINT "Select order P as a small integer <=5"
110 INPUT p: CLS
115 COLOR 15: LOCATE 1, 1: PRINT "Island with meandering coastline"
120 FOR i = 0 TO u: READ a(i), b(i): NEXT i
130 FOR i = 1 TO v - 1: READ c(i), d(i): NEXT i
140 'Determination coordinates vertices of meandering line
150 c(0) = 0: d(0) = 0: x(0) = 0: y(0) = 0: x(v ^ p) = 1: y(v ^ p) = 0
160 FOR i = 0 TO p - 1
170    FOR j = 0 TO v ^ p - 1 STEP v ^ (p - i)
180       m1 = j + v ^ (p - i): x1 = x(m1) - x(j): y1 = y(m1) - y(j)
190       FOR k = 1 TO v - 1
200          m2 = j + k * v ^ (p - i - 1)
210          x(m2) = x1 * c(k) - y1 * d(k) + x(j): y(m2) = y1 * c(k) + x1 * d(k) + y(j)
220       NEXT k
223    NEXT j
226 NEXT i
230 'Graphics, for each side of the base line the meander is drawn
240 PSET (a(0), b(0))
250 FOR m = 0 TO u - 1
255    a = a(m + 1) - a(m): b = b(m + 1) - b(m)
260    FOR n = 0 TO v ^ p
270       x = a * x(n) - b * y(n) + a(m): y = b * x(n) + a * y(n) + b(m)
280       LINE -(x, y)
290   NEXT n
295 NEXT m
300 BEEP: COLOR 9: a$ = INPUT$(1)
310 SYSTEM



