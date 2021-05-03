
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dust Fractal, Backtracking
20 'Name: DUSTB
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-1.1, -1)-(2.1, 1.4)
45 COLOR 15: LOCATE 1, 1: PRINT "Dust fractal of two rotations, backtrack method"
50 p = 11: DIM x1(p), y1(p), x2(p), y2(p)
60 a = .5: b = .5: c = .5: d = -.5: 'transformation parameters
70 x1(0) = a: y1(0) = b
80 PSET (0, 0): PSET (1, 0): PSET (a, b)
90 s = 1: GOSUB 140
100 FOR m = 1 TO 2 ^ (p - 1) - 1
102    cc = m MOD 8: COLOR cc + 8
105    s = p: n = m
110    IF n MOD 2 = 0 THEN n = n \ 2: s = s - 1: GOTO 110
120    GOSUB 140
125 NEXT m
130 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
140 x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
150 FOR j = s TO p
160    x = x1(j - 1): y = y1(j - 1)
170    x1(j) = a * x - b * y: y1(j) = b * x + a * y
180    x2(j) = c * x - d * y + 1 - c: y2(j) = d * x + c * y - d
190    PSET (x1(j), y1(j)): PSET (x2(j), y2(j))
195 NEXT j
197 RETURN
200 END



