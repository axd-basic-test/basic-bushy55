5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Orbits of Mira's System
20 'Name: MIRA
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-20, -15)-(20, 15)
45 COLOR 15: LOCATE 1, 1: PRINT "Orbits of Mira's dynamical system"
50 a = .7: b = .9998: p = 12000: c = 2 - 2 * a
60 x = 0: y = 12.1: ' starting point
70 w = a * x + c * x * x / (1 + x * x)
80 FOR n = 0 TO p
85     cc = n MOD 8: COLOR cc + 8
90     IF n > 100 THEN PSET (x, y)
100    z = x: x = b * y + w: u = x * x
110    w = a * x + c * u / (1 + u): y = w - z
120 NEXT n
130 BEEP: COLOR 9: a$ = INPUT$(1): SYSTEM

