5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Fractal Line with a Given Motif, Backtracking
20 'Name:  MEANDERB
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-3.2, -2.4)-(3.2, 2.4)
50 u = 4: DIM a(u), b(u): 'number elements of base line
60 'Base line, vectors in true length and direction in degrees
70 DATA 2, 0, 2, 90, 2, 180, 2, -90
80 x0 = -1: y0 = -1: 'coordinate starting point
90 xm = x0: ym = y0
100 FOR i = 0 TO u - 1
110    READ a(i), b(i): b(i) = b(i) * pi / 180
115 NEXT i
120 v = 4: DIM c(v), d(v), l(v), f(v): 'number elements of motif
130 'Motif, vectors in relative length and direction in degrees
140 DATA 1, 0, 1, 60, 1, -60, 1, 0
150 FOR i = 1 TO v
155    READ l(i), f(i): f(i) = f(i) * pi / 180
160 NEXT i
170 s = 0
172 FOR i = 1 TO v
174    s = s + l(i) * COS(f(i))
176 NEXT i
180 FOR i = 1 TO v
182    l(i) = l(i) / s
184    c(i) = l(i) * COS(f(i)): d(i) = l(i) * SIN(f(i))
190 NEXT i
200 PRINT "Take order P as a small integer"
210 INPUT p: CLS
212 COLOR 15: LOCATE 1, 1: PRINT "Meandering line with given starting line and motif, backtrack method"
215 DIM x(v, p), y(v, p): COLOR 10
220 PSET (x0, y0)
230 FOR q = 0 TO u - 1
235    x(1, 0) = 1: y(1, 0) = 0: s = 1
240    a = a(q) * COS(b(q)): b = a(q) * SIN(b(q)): GOSUB 310
250    FOR m = 1 TO v ^ (p - 1) - 1
255       n = m: s = p
260       IF n MOD v = 0 THEN n = n \ v: s = s - 1: GOTO 260
270       GOSUB 290
274    NEXT m
278 NEXT q
280 BEEP: COLOR 9: a$ = INPUT$(1): SYSTEM
290 FOR i = 1 TO v - 1
300    x(i, s - 1) = x(i + 1, s - 1): y(i, s - 1) = y(i + 1, s - 1)
305 NEXT i
310 FOR j = s TO p
315    FOR k = 1 TO v
320       x(k, j) = c(k) * x(1, j - 1) - d(k) * y(1, j - 1)
330       y(k, j) = d(k) * x(1, j - 1) + c(k) * y(1, j - 1)
335    NEXT k
340 NEXT j
350 FOR t = 1 TO v
360    xs = a * x(t, p) - b * y(t, p): ys = b * x(t, p) + a * y(t, p)
370    xm = xm + xs: ym = ym + ys: LINE -(xm, ym)
380 NEXT t
390 RETURN
400 SYSTEM






