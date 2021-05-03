
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Koch Curve
20 'Name: KOCH
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-.1, -.4)-(1.1, .5)
45 COLOR 15: LOCATE 1, 1: PRINT "Koch curve"
50 p = 4: DIM t(p): 'order
60 h = 3 ^ (-p): PSET (0, 0)
70 FOR n = 0 TO 4 ^ p - 1
80 'Quarternary Notation of N
85    cc = n MOD 8: COLOR cc + 8
90    m = n
95    FOR l = 0 TO p - 1
100      t(l) = m MOD 4: m = m \ 4
105   NEXT l
110 '  Determination of Slope  of Next Line Segment
120   s = 0
125   FOR k = 0 TO p - 1
130      s = s + (t(k) + 1) MOD 3 - 1
140   NEXT k
150 '  Graph of Nth Line Segment
160   x = x + COS(pi * s / 3) * h
170   y = y + SIN(pi * s / 3) * h
180   LINE -(x, y)
190 NEXT n
200 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM





