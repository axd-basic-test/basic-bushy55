
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Pythagoras Tree
20 'Name: PYTHTB
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-3.5, -2)-(4.5, 4)
45 COLOR 15: LOCATE 1, 1: PRINT "Bare branching Pythagoras tree"
50 DIM x(2048), y(2048)
60 'Choice of angle
70 f = pi / 4: c = COS(f): s = SIN(f)
80 a1 = -c * s: a2 = c ^ 2: b1 = a1 + a2: b2 = -a1 + a2
90 c1 = b2: c2 = 1 - b1: d1 = 1 - a1: d2 = 1 - a2
100 x(2) = 0: y(2) = 0: x(3) = 1: y(3) = 0
110 LINE (.5, -1)-(.5, 0)
120 FOR m = 1 TO 9
125    COLOR 16 - m
130    FOR j = 0 TO 2 ^ (m - 1) - 1
140       x0 = x(2 ^ m + 2 * j): y0 = y(2 ^ m + 2 * j)
150       x1 = x(2 ^ m + 2 * j + 1): y1 = y(2 ^ m + 2 * j + 1)
160       u = x1 - x0: v = y1 - y0
170       xa = x0 + a1 * u - a2 * v: ya = y0 + a2 * u + a1 * v
180       xb = x0 + b1 * u - b2 * v: yb = y0 + b2 * u + b1 * v
190       xc = x0 + c1 * u - c2 * v: yc = y0 + c2 * u + c1 * v
200       xd = x0 + d1 * u - d2 * v: yd = y0 + d2 * u + d1 * v
210       x(2 ^ (m + 1) + 4 * j) = xa: y(2 ^ (m + 1) + 4 * j) = ya
220       x(2 ^ (m + 1) + 4 * j + 1) = xb: y(2 ^ (m + 1) + 4 * j + 1) = yb
230       x(2 ^ (m + 1) + 4 * j + 2) = xc: y(2 ^ (m + 1) + 4 * j + 2) = yc
240       x(2 ^ (m + 1) + 4 * j + 3) = xd: y(2 ^ (m + 1) + 4 * j + 3) = yd
250       LINE ((x0 + x1) / 2, (y0 + y1) / 2)-((xa + xb) / 2, (ya + yb) / 2)
260       LINE ((x0 + x1) / 2, (y0 + y1) / 2)-((xc + xd) / 2, (yc + yd) / 2)
270    NEXT j
275 NEXT m
280 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM

