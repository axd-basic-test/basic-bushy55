
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Julia Fractal of Z:=Z^2+C, Backtrack
20 'Name: JULIAB
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-2, -1.5)-(2, 1.5)
45 COLOR 15: LOCATE 1, 1: PRINT "Julia fractal of quadratic system, backtrack method"
50 p = 12: DIM x1(p), y1(p), x2(p), y2(p)
60 a = .25: b = .25
70 a1 = (.25 - a) / 2: b1 = -b / 2: r1 = SQR(a1 * a1 + b1 * b1)
80 x1(0) = .5 + SQR(r1 + a1): y1(0) = SQR(r1 - a1)
90 IF b > 0 THEN y1(0) = -y1(0)
100 PSET (x1(0), y1(0)): s = 1: GOSUB 150
110 FOR m = 1 TO 2 ^ (p - 1) - 1
115    s = p: n = m
120    IF n MOD 2 = 0 THEN n = n \ 2: s = s - 1: GOTO 120
130    GOSUB 140
135 NEXT m
137 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
140 x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
150 FOR j = s TO p
160    x = x1(j - 1): y = y1(j - 1)
170    r = SQR((x - a) ^ 2 + (y - b) ^ 2) / 2: t = (x - a) / 2
180    x1(j) = SQR(r + t): x2(j) = -x1(j)
190    y1(j) = SQR(r - t): IF y < b THEN y1(j) = -y1(j)
200    y2(j) = -y1(j)
210    PSET (x1(j), y1(j)): PSET (x2(j), y2(j))
220 NEXT j
230 RETURN
240 END






