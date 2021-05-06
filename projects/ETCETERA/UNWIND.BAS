
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Evolute Circle
20 'Name: UNWIND
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-12, -9)-(12, 9)
45 COLOR 15: LOCATE 1, 1: PRINT "Evolute curve"
50 a = 1.2: 'radius of circle
60 COLOR 1: CIRCLE (0, 0), a: PSET (a, 0)
70 FOR n = 0 TO 100
75    t = 2 * pi * n / 80
80    x = a * (COS(t) + t * SIN(t))
90    y = a * (SIN(t) - t * COS(t))
100   LINE -(x, y)
110   IF n MOD 10 = 0 THEN LINE (a * COS(t), a * SIN(t))-(x, y)
120 NEXT n
130 PAINT (0, 0)
140 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



