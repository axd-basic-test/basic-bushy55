
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Pythagoras Tree
20 'Using Binary Number System
30 'Name: PYTHT2
40 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
50 WINDOW (-2.5, -2)-(5.5, 4)
55 COLOR 15: LOCATE 1, 1: PRINT "Lopsided Pythagoras tree"
60 DIM x(2048), y(2048)
70 'Choice of angle
80 f = pi / 4: c = COS(f): s = SIN(f)
90 a1 = -c * s: a2 = c ^ 2: b1 = a1 + a2: b2 = -a1 + a2
100 c1 = b2: c2 = 1 - b1: d1 = 1 - a1: d2 = 1 - a2
110 x(2) = 0: y(2) = 0: x(3) = 1: y(3) = 0
120 COLOR 15: LINE (0, 0)-(1, 0): LINE -(1, -1): LINE -(0, -1): LINE -(0, 0)
130 FOR m = 1 TO 9
125    COLOR 15 - m
140    FOR j = 0 TO 2 ^ (m - 1) - 1
150       x0 = x(2 ^ m + 2 * j): y0 = y(2 ^ m + 2 * j)
160       x1 = x(2 ^ m + 2 * j + 1): y1 = y(2 ^ m + 2 * j + 1)
170       u = x1 - x0: v = y1 - y0
180       xa = x0 + a1 * u - a2 * v: ya = y0 + a2 * u + a1 * v
190       xb = x0 + b1 * u - b2 * v: yb = y0 + b2 * u + b1 * v
200       xc = x0 + c1 * u - c2 * v: yc = y0 + c2 * u + c1 * v
210       xd = x0 + d1 * u - d2 * v: yd = y0 + d2 * u + d1 * v
220       x(2 ^ (m + 1) + 4 * j) = xa: y(2 ^ (m + 1) + 4 * j) = ya
230       x(2 ^ (m + 1) + 4 * j + 1) = xb: y(2 ^ (m + 1) + 4 * j + 1) = yb
240       x(2 ^ (m + 1) + 4 * j + 2) = xc: y(2 ^ (m + 1) + 4 * j + 2) = yc
250       x(2 ^ (m + 1) + 4 * j + 3) = xd: y(2 ^ (m + 1) + 4 * j + 3) = yd
260       LINE (x0, y0)-(xa, ya): LINE -(xb, yb)
270       LINE -(x1, y1): LINE -(xd, yd)
280       LINE -(xc, yc): LINE -(x0, y0)
290    NEXT j
295 NEXT m
300 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM

