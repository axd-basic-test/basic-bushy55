
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dragon Curve with Rounded Corners
20 'Name: DRAGON1
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-.7, -1.1)-(1.7, .7)
45 COLOR 15: LOCATE 1, 1: PRINT "Dragon curve with rounded corners"
50 p = 10: 'choice of order
60 h = 2 ^ (-p / 2): s = 0
70 x1 = h * COS(p * pi / 4): y1 = h * SIN(p * pi / 4)
80 LINE (0, 0)-(.75 * x1, .75 * y1)
90 FOR n = 1 TO 2 ^ p - 1
92     cc = n MOD 8: COLOR cc + 8
95     m = n
100    IF m MOD 2 = 0 THEN m = m / 2: GOTO 100
110    IF m MOD 4 = 1 THEN d = 1 ELSE d = -1
120    s = (s + d) MOD 4
130    x2 = x1 + h * COS((s - p / 2) * pi / 2)
140    y2 = y1 + h * SIN((s - p / 2) * pi / 2)
150    xa = (3 * x1 + x2) / 4: ya = (3 * y1 + y2) / 4
160    xb = (x1 + 3 * x2) / 4: yb = (y1 + 3 * y2) / 4
170    LINE -(xa, ya): LINE -(xb, yb)
180    x1 = x2: y1 = y2
185 NEXT n
190 LINE -(1, 0)
200 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



