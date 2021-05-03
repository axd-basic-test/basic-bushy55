
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Pythagoras Tree, Backtracking
20 'Order Restricted by Diameter of Smallest Square
30 'Name: PYTHT3
40 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
50 WINDOW (-2.5, -2)-(5.5, 4)
55 COLOR 15: LOCATE 1, 1: PRINT "Pythagoras tree, backtrack method"
60 p = 32: DIM x2(p), y2(p), u2(p), v2(p), s(p)
70 f = pi / 4: c = COS(f): s = SIN(f): ' prescribed angle
80 eps = .005: ' tolerance of smallest square
90 a1 = -c * s: a2 = c ^ 2: b1 = a1 + a2: b2 = -a1 + a2
100 c1 = b2: c2 = 1 - b1: d1 = 1 - a1: d2 = 1 - a2
110 x1 = 0: y1 = 0: u1 = 1: v1 = 0: q = 0: j = 1: s(0) = 1
120 COLOR 15: : LINE (0, 0)-(1, 0): LINE -(1, -1): LINE -(0, -1): LINE -(0, 0)
130 m = q + j: x = u1 - x1: y = v1 - y1
140 xa = x1 + a1 * x - a2 * y: ya = y1 + a2 * x + a1 * y
150 xb = x1 + b1 * x - b2 * y: yb = y1 + b2 * x + b1 * y
160 x2(m) = x1 + c1 * x - c2 * y: y2(m) = y1 + c2 * x + c1 * y
170 u2(m) = x1 + d1 * x - d2 * y: v2(m) = y1 + d2 * x + d1 * y
180 s = x * x + y * y: s(m) = 1
185 COLOR 15 - m
190 LINE (x1, y1)-(xa, ya): LINE -(xb, yb)
200 LINE -(u1, v1): LINE -(u2(m), v2(m))
210 LINE -(x2(m), y2(m)): LINE -(x1, y1)
220 x1 = xa: y1 = ya: u1 = xb: v1 = yb
230 IF m = p OR s < eps THEN GOSUB 250
240 j = j + 1: GOTO 130
250 k = 1
260 IF s(m - k) = 0 THEN k = k + 1: GOTO 260
270 IF m = k THEN BEEP: COLOR 9: a$ = INPUT$(1): SYSTEM
280 q = m - k: x1 = x2(q): y1 = y2(q): u1 = u2(q): v1 = v2(q)
290 s(q) = s(q) - 1: j = 0
300 RETURN: END

