
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Star Fractal
20 'Name: STAR
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-.5, -.8)-(1.5, .7)
45 COLOR 15: LOCATE 1, 1: PRINT "Star fractal"
50 p = 5: v = 4: a = 144: r = .35: a = a * pi / 180
60 PSET (0, 0): x = 0: y = 0
70 FOR n = 0 TO (v + 1) * v ^ (p - 1) - 1
75     cc = n MOD 5: COLOR cc + 8
80     m = n: b = n * a: f = 0
90     IF m MOD v <> 0 OR f >= p - 1 THEN GOTO 110
100    f = f + 1: m = INT(m / v): GOTO 90
110    x = x + r ^ (p - f - 1) * COS(b): y = y + r ^ (p - f - 1) * SIN(b)
120    LINE -(x, y)
130 NEXT n
140 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



