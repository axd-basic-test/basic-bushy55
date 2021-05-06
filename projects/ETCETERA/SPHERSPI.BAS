
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Spherical Spiral
20 'Name: SPHERSPI
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-2, -1.5)-(2, 1.5)
45 COLOR 15: LOCATE 1, 1: PRINT "Spherical spiral"
50 a = .2: 'spiral parameter
60 c = .9: 'slope projection plane
70 p = 1 / SQR(2): q = p * SQR(1 - c * c): 'projection constants
75 COLOR 9
80 FOR n = -500 TO 500
90    s = n * pi / 50: t = ATN(a * s)
100   x = COS(s) * COS(t): y = SIN(s) * COS(t): z = SIN(t)
110   u = p * (y - x): v = c * z - q * (x + y)
120   IF n = -500 THEN PSET (u, v) ELSE LINE -(u, v)
130 NEXT n
140 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



