
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Orbits of Henon's Quadratic System
20 'Name: HENON
30 SCREEN 12, 0, 0, 0: CLS : RANDOMIZE 1
35 COLOR 15: LOCATE 1, 1: PRINT "Orbits of Henon's quadratic system"
40 FOR k = 1 TO 20
45    cc = k MOD 8: COLOR cc + 8
50    x = -.4 + RND: y = -.4 + RND
60    WINDOW (-1.6, -1.2)-(1.6, 1.2)
70    a = .24: b = SQR(1 - a ^ 2)
80    FOR n = 1 TO 500
85       PSET (x, y)
90       z = x: x = x * a - (y - x * x) * b
100      y = z * b + (y - z * z) * a
110      IF (ABS(x) + ABS(y)) > 10 THEN GOTO 130
120   NEXT n
130 NEXT k
140 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



