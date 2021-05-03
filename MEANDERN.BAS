5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Fractal Curve, Number System Method, Koch Cross
20 'Name:  MEANDERN
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-2.8, -2.1)-(2.8, 2.1)
45 COLOR 15: LOCATE 1, 1: PRINT "Meandering line with given starting line and motif, number system method"
50 p = 4: DIM t(p): 'order
60 u = 4: DIM a(u), b(u): 'number of elements of base line
70 'Base line, vectors in length and direction in degrees
80 DATA 2, 0, 2, 90, 2, 180, 2, -90
90 x0 = -1: y0 = -1: 'coordinate starting point
100 xm = x0: ym = y0
110 FOR i = 0 TO u - 1
115    READ a(i), b(i): b(i) = b(i) * pi / 180
120 NEXT i
130 v = 4: DIM l(v), f(v): 'number elements of motif
140 'Motif, vectors in relative length and direction in degrees
150 DATA 1, 0, 1, 60, 1, -60, 1, 0
160 FOR i = 1 TO v
165    READ l(i), f(i): f(i) = f(i) * pi / 180
170 NEXT i
180 s = 0
182 FOR i = 0 TO v - 1
184    s = s + l(i) * COS(f(i))
186 NEXT i
190 FOR i = 0 TO v - 1
192    l(i) = l(i) / s
194 NEXT i
200 COLOR 9: PSET (x0, y0)
205 FOR k = 0 TO u - 1
210    FOR n = 0 TO v ^ p - 1: ' main loop
215       m = n
220       FOR j = 0 TO p - 1
230          t(j) = m MOD v: m = m \ v
235       NEXT j
240       l = a(k): f = b(k)
250       FOR j = 0 TO p - 1
255          l = l * l(t(j)): f = f + f(t(j))
260       NEXT j
270       xs = l * COS(f): ys = l * SIN(f)
280       xm = xm + xs: ym = ym + ys: LINE -(xm, ym)
285    NEXT n
290 NEXT k
300 BEEP: COLOR 9: a$ = INPUT$(1): SYSTEM

