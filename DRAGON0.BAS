
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dragon Curve between Two Points
20 'Name: DRAGON0
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-.7, -1)-(1.7, .8)
45 COLOR 15: LOCATE 1, 1: PRINT "Dragon curve between two points"
50 p = 12: 'choice of order
60 h = 2 ^ (-p / 2): s = 0
70 x = h * COS(p * pi / 4): y = h * SIN(p * pi / 4): COLOR 10
80 LINE (0, 0)-(x, y)
90 FOR n = 1 TO 2 ^ p - 1
92     cc = n MOD 4: COLOR cc + 8
95     m = n
100    IF m MOD 2 = 0 THEN m = m / 2: GOTO 100
110    IF m MOD 4 = 1 THEN d = 1 ELSE d = -1
120    s = s + d: f = (s - p / 2) * pi / 2
130    x = x + h * COS(f): y = y + h * SIN(f)
140    LINE -(x, y)
150 NEXT n
170 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



