
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Orbits of a Dynamic System
20 'Name: CLOUD2
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-8, -5)-(8, 7)
45 COLOR 15: LOCATE 1, 1: PRINT "Orbits of dynamical system"
50 'Parameter values
60 a = .51: b = -.49: c = .9995
70 x = 4: y = 1: GOSUB 110
80 FOR n = 0 TO 9000
82    cc = n MOD 64: COLOR cc / 8 + 7
85    PSET (y, x)
90    z = x: x = c * y + w: GOSUB 110: y = w - z
100 NEXT n
115 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
110 IF x > 0 THEN w = a * x ELSE w = b * x
120 RETURN: END





