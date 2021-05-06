5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Mandelbrot Set, Total View
20 'Name: MANDEL
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-2.2, -1.4)-(1.1, 1.4)
45 COLOR 15: LOCATE 1, 1: PRINT "Mandelbrot set of quadratic system, pixel method"
50 n1 = 160: n2 = 100: ' Resolution
60 FOR i = -n1 TO n1
65    a = -.55 + 1.65 * i / n1
70    FOR j = 0 TO n2
75       b = 1.4 * j / n2
80       u = 4 * (a * a + b * b): v = u - 2 * a + 1 / 4
90       IF u + 8 * a + 15 / 4 < 0 THEN k = 1: GOTO 170
100      IF v - SQR(v) + 2 * a - 1 / 2 < 0 THEN k = 1: GOTO 170
110      x = a: y = b
120      FOR k = 1 TO 50
130         u = x * x: v = y * y: w = 2 * x * y
140         x = u - v + a: y = w + b
150         IF u + v > 16 THEN GOTO 170
160      NEXT k
170      l = k MOD 2: PSET (a, b), l: PSET (a, -b), l
180   NEXT j
185 NEXT i
190 BEEP: COLOR 9: a$ = INPUT$(1)
200 SYSTEM

