
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'H-Fractal
20 'Name: TREEH1
30 DIM x(2048), y(2048)
40 SCREEN 12, 0, 0, 0: CLS
50 WINDOW (-2.4, -1.8)-(2.4, 1.8)
55 LOCATE 10, 35: COLOR 10: PRINT "Calculating"
60 p = 9: 'order
70 a = SQR(1 / 2): 'reduction
80 x(1) = 0: y(1) = 0
90 FOR m = 0 TO p
97      s = m MOD 2
100     FOR n = 2 ^ m TO 2 ^ (m + 1) - 1
110         IF s = 1 THEN GOSUB 160 ELSE GOSUB 190
120     NEXT n
125 NEXT m
127 CLS
128 COLOR 15: LOCATE 1, 1: PRINT "H-fractal"
130 FOR n = 1 TO 2 ^ (p + 1) - 1
135     cc = n MOD 8: COLOR cc + 8
140     LINE (x(2 * n), y(2 * n))-(x(2 * n + 1), y(2 * n + 1))
145 NEXT n
150 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
160 x(2 * n) = x(n): y(2 * n) = y(n) + a ^ m
170 x(2 * n + 1) = x(n): y(2 * n + 1) = y(n) - a ^ m
180 RETURN
190 x(2 * n) = x(n) + a ^ m: y(2 * n) = y(n)
200 x(2 * n + 1) = x(n) - a ^ m: y(2 * n + 1) = y(n)
210 RETURN
220 END


