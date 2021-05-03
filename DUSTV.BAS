
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dust Fractal, Varia, Monti Carlo Method
20 'Name: DUSTV
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593: RANDOMIZE 100
40 WINDOW (-3.1, -2.7)-(4.1, 2.7)
45 COLOR 15: LOCATE 1, 1: PRINT "Dust fractal, Monte Carlo method"
50 r = .7: a = r * COS(2 * pi / 3): b = r * SIN(2 * pi / 3): c = 2.5: d = .9
60 x = 1: y = 0: 'coordinate staring point
70 FOR k = 0 TO 10000
80    IF RND < .5 THEN GOSUB 110 ELSE GOSUB 130
85    cc = k MOD 16: COLOR cc
90    PSET (x, y)
95 NEXT k
100 COLOR 2: BEEP: a$ = INPUT$(1): SYSTEM
110 z = x: x = a * x - b * y: y = b * z + a * y: RETURN
120 z = x: x = d * x + y + 1 - d: y = -z - d * y + 1: RETURN
130 z = x: x = .2 * (x - 1) * (x - 1) - y + 1: y = .8 * z: RETURN
140 z = x: x = (x * x - y * y + c - 1) / c: RETURN
150 z = x: x = (x * x + y + y + c - 1) / c: y = 2 * z * y / c: RETURN
160 END



