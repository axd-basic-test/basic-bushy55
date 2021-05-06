
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Archimedes Spiral
20 'Name: ARCH1
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-12, -9)-(12, 9)
45 COLOR 15: LOCATE 1, 1: PRINT "Archimedes spiral"
50 a = .1: PSET (0, 0)
60 FOR t = 0 TO 16 * pi STEP .1
62    cc = t * 10 MOD 8: COLOR cc + 8
65    r = a * t
70    x = r * COS(t): y = r * SIN(t)
80    LINE -(x, y)
90 NEXT t
100 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



