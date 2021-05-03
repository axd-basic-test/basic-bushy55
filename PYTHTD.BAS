
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Pythagoras Tree, Backtracking
20 'With Random Disturbances
30 'Name: PYTHTD
40 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593: RANDOMIZE 100
50 WINDOW (-9.5, -3)-(10.5, 12)
52 COLOR 15: LOCATE 1, 1: PRINT "Pythagoras tree with random disturbances, backtracking method"
55 w = .15: 'chance factor 0 = symmetrical, +/-0.1 = windblown
60 p = 10: DIM x1(p), y1(p), x2(p), y2(p), u1(p), v1(p), u2(p), v2(p)
70 a1 = 0: a2 = 3: b1 = .5: b2 = 3.5: c1 = 1: c2 = 3
80 x1(0) = 0: y1(0) = 0: u1(0) = 1: v1(0) = 0
90 COLOR 15: : LINE (0, 0)-(1, 0)
100 s = 1: GOSUB 270: GOSUB 170
110 FOR m = 1 TO 2 ^ (p - 1) - 1
112    cc = m MOD 8: COLOR cc + 8
115    s = p: n = m
120    IF s < 5 THEN GOSUB 270
130    IF n MOD 2 = 0 THEN n = n \ 2: s = s - 1: GOTO 130
140    GOSUB 150
145 NEXT m
148 BEEP: COLOR 9: a$ = INPUT$(1): SYSTEM
150 x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
160 u1(s - 1) = u2(s - 1): v1(s - 1) = v2(s - 1)
170 FOR j = s TO p
180    x = x1(j - 1): y = y1(j - 1): u = u1(j - 1): v = v1(j - 1)
190    x3 = u - x: y3 = v - y
200    x1(j) = x + a1 * x3 - a2 * y3: y1(j) = y + a2 * x3 + a1 * y3
210    u1(j) = x + b1 * x3 - b2 * y3: v1(j) = y + b2 * x3 + b1 * y3
220    x2(j) = u1(j): y2(j) = v1(j)
230    u2(j) = x + c1 * x3 - c2 * y3: v2(j) = y + c2 * x3 + c1 * y3
240    LINE (x, y)-(x1(j), y1(j)): LINE (u1(j), v1(j))-(x2(j), y2(j))
250    LINE (u2(j), v2(j))-(u, v)
260 NEXT j
265 RETURN
270 a2 = a2 * (1 + (RND - .5) * w)
280 c = c2 * (1 + (RND - .5) * w)
290 b2 = (a2 + c2) / 2 + .5
300 RETURN: END

