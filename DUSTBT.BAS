
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dust Fractal of Three Rotations, Backtracking
20 'Name: DUSTBT
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-.8, -.6)-(1.6, 1.2)
45 COLOR 15: LOCATE 1, 1: PRINT "Dust fractal of three rotations, backtrack method"
50 p = 7: DIM x1(p), y1(p), x2(p), y2(p), x3(p), y3(p)
60 t1 = .5: t2 = .866: 'position top
70 a = .43: b = .3: c = a: d = b: e = a: f = b: 'transformation parameters
80 g = t1 * (1 - e) + t2 * f: h = -t1 * f + t2 * (1 - e)
90 PSET (0, 0): PSET (1, 0): PSET (t1, t2)
100 x1(0) = .5: y1(0) = .289: PSET (x1(0), y1(0))
110 FOR m = 0 TO 3 ^ (p - 1) - 1
115    s = p: n = m
117    cc = m MOD 8: COLOR cc + 8
120    IF m = 0 THEN s = 1: GOTO 160
130    IF n MOD 3 = 0 THEN n = n \ 3: s = s - 1: GOTO 130
140    x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
150    x2(s - 1) = x3(s - 1): y2(s - 1) = y3(s - 1)
160    FOR j = s TO p
170       x = x1(j - 1): y = y1(j - 1)
180       x1(j) = a * x - b * y: y1(j) = b * x + a * y
190       x2(j) = c * x - d * y + 1 - c: y2(j) = d * x + c * y - d
200       x3(j) = e * x - f * y + g: y3(j) = f * x + e * y + h
210       PSET (x1(j), y1(j)): PSET (x2(j), y2(j)): PSET (x3(j), y3(j))
215    NEXT j
217 NEXT m
220 COLOR 2: BEEP: a$ = INPUT$(1): SYSTEM



