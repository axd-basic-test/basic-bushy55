
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dust Fractal, Monti Carlo Metthod
20 'Name: DUST
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593: RANDOMIZE 100
40 WINDOW (-1.1, -1.2)-(2.1, 1.2)
45 COLOR 15: LOCATE : PRINT "Dust fractal of two rotations or mirrorings, Monte Carlo method"
50 r1 = .6: a = r1 * COS(2 * pi / 3): b = r1 * SIN(2 * pi / 3)
60 r2 = .6: c = r2 * COS(2 * pi / 3): d = r2 * SIN(2 * pi / 3)
70 x = a: y = b: 'coordinate staring point
80 FOR k = 0 TO 10000
85    cc = k MOD 8: COLOR cc + 8
90    IF RND < .5 THEN GOSUB 120 ELSE GOSUB 130
100   PSET (x, y)
105 NEXT k
110 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
120 z = x: x = a * x - b * y: y = b * z + a * y: RETURN
130 z = x: x = c * x - d * y + 1 - c: y = d * z + c * y - d: RETURN
140 END



