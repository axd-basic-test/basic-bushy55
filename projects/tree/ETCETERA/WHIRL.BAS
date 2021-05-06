
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Rotating and Reducing Polygon
20 'Name: WHIRL
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-4 / 3, -1)-(4 / 3, 1)
50 PRINT "Select number of sides"
60 INPUT p: CLS : DIM x(p), y(p)
65 COLOR 15: LOCATE 1, 1: PRINT "Rotating and shrinking polygon"
70 b = .05: 'rotation angle in radians
80 a = pi * (1 - 2 / p): c = SIN(a) / (SIN(b) + SIN(a + b))
90 FOR k = 0 TO p
95    t = (2 * k + 1) * pi / p
100   x(k) = SIN(t): y(k) = COS(t)
110 NEXT k
120 FOR n = 1 TO 64
122   cc = n MOD 8: COLOR cc + 8
125   PSET (x(0), y(0))
130   FOR l = 1 TO p
135      LINE -(x(l), y(l))
140   NEXT l
150   FOR m = 0 TO p
155      z = x(m)
160      x(m) = (x(m) * COS(b) - y(m) * SIN(b)) * c
170      y(m) = (z * SIN(b) + y(m) * COS(b)) * c
180   NEXT m
190 NEXT n
200 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM






