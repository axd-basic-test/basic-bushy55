
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Pythagoras Tree
20 'Using Binary Number System
30 'Name: PYTHT1
40 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
50 WINDOW (-8, -4)-(8, 8)
55 COLOR 15: LOCATE 1, 1: PRINT "Pythagoras tree, number system method"
60 p = 9: DIM a(p): 'order
70 x = 0: y = 0: u = 1: v = 1: c = 1 / SQR(2)
80 FOR m = 0 TO p
90     FOR n = 2 ^ m TO 2 ^ (m + 1) - 1
100       l = n: h = 1: x = 0: y = 0: f = 0
110       FOR k = 0 TO m - 1
120          a(m - k) = l MOD 2: l = INT(l / 2)
125       NEXT k
130       x = 0: y = 0
140       FOR j = 1 TO m
150          IF a(j) = 0 THEN GOSUB 230 ELSE GOSUB 260
160       NEXT j
170       u = h * (COS(f) + SIN(f))
180       v = h * (COS(f) - SIN(f))
190       COLOR 15 - m: GOSUB 210
192    NEXT n
194 NEXT m
200 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
210 LINE (x - v, y - u)-(x + u, y - v): LINE -(x + v, y + u)
220 LINE -(x - u, y + v): LINE -(x - v, y - u)
225 RETURN
230 x = x - h * (COS(f) + 2 * SIN(f))
240 y = y + h * (2 * COS(f) - SIN(f))
250 f = f + pi / 4: h = c * h
255 RETURN
260 x = x + h * (COS(f) - 2 * SIN(f))
270 y = y + h * (2 * COS(f) + SIN(f))
280 f = f - pi / 4: h = c * h
285 RETURN
290 END

