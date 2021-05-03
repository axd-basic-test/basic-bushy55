
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Logarithmic Spiral
20 'Name: LOGSPIRA
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-4, -3)-(4, 3)
45 COLOR 15: LOCATE 1, 1: PRINT "Logarithmic spiral"
50 a = .05: b = .1: 'starting point and growth rate
60 PSET (a, 0)
70 FOR t = 0 TO 42 STEP .1
72    cc = t * 10 MOD 8: COLOR cc + 8
75    r = a * EXP(b * t)
80    x = r * COS(t): y = r * SIN(t)
90    LINE -(x, y)
100 NEXT t
110 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



