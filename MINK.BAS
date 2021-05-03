5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Minkowski Sausage
20 'Name: MINK
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-.3, -.7)-(1.3, .5)
45 COLOR 15: LOCATE 1, 1: PRINT "Minkowski sausage"
50 DIM a(7)
60 FOR i = 0 TO 7: READ a(i): NEXT i
65 DATA 0, 1, 0, 3, 3, 0, 1, 0
70 p = 3: DIM t(p): ' order
80 h = 4 ^ (-p): x = 0: y = 0: COLOR 9: PSET (0, 0)
90 FOR n = 0 TO 8 ^ p - 1
100    m = n
105    FOR l = 0 TO p - 1
110       t(l) = m MOD 8: m = INT(m / 8)
115    NEXT l
120    s = 0
125    FOR k = 0 TO p - 1
130       s = s + a(t(k)): s = s MOD 4
140    NEXT k
150    IF s = 0 THEN x = x + h
160    IF s = 1 THEN y = y + h
170    IF s = 2 THEN x = x - h
180    IF s = 3 THEN y = y - h
190    LINE -(x, y)
200 NEXT n
210 BEEP: COLOR 9: a$ = INPUT$(1): SYSTEM

