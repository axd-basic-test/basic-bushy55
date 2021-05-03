
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'H-Fractal, Backtracking
20 'Name: TREEH2
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-1.2, -.9)-(1.2, .9)
45 COLOR 15: LOCATE 1, 1: PRINT "H-fractal, backtrack method"
50 p = 6: DIM x1(p), x2(p), x3(p), x4(p), y1(p), y2(p), y3(p), y4(p)
60 a = .5: 'reduction
70 x(0) = 0: y(0) = 0: s = 1: GOSUB 140
80 FOR m = 1 TO 4 ^ (p - 1) - 1
85      n = m: s = p
90      IF n MOD 4 = 0 THEN n = n \ 4: s = s - 1: GOTO 90
100     GOSUB 120
105 NEXT m
110 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
120 x1(s - 1) = x2(s - 1): x2(s - 1) = x3(s - 1): x3(s - 1) = x4(s - 1)
130 y1(s - 1) = y2(s - 1): y2(s - 1) = y3(s - 1): y3(s - 1) = y4(s - 1)
140 FOR j = s TO p
150    x = x1(j - 1): y = y1(j - 1): b = a ^ j: c = a * b * 1.5
160    x1(j) = x + b: y1(j) = y + c
170    x2(j) = x + b: y2(j) = y - c
180    x3(j) = x - b: y3(j) = y + c
190    x4(j) = x - b: y4(j) = y - c
195    cc = j MOD 8: COLOR cc + 8
200    LINE (x - b, y)-(x + b, y)
210    LINE (x1(j), y1(j))-(x2(j), y2(j))
220    LINE (x3(j), y3(j))-(x4(j), y4(j))
230 NEXT j
240 RETURN: END


