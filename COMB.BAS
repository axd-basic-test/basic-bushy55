
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Cantor Comb
20 'Name: COMB
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-.3, -.4)-(1.3, .8)
45 COLOR : LOCATE 1, 1: PRINT "Cantor comb"
50 DIM a(729), b(729): a(0) = 0: a(1) = 1
60 b = .1: LINE (0, 0)-(1, 0): LINE -(1, -b): LINE -(0, -b): LINE -(0, 0)
70 FOR p = 1 TO 6
75    COLOR p + 8
80    FOR i = 0 TO 2 ^ p - 1
90       b(i) = a(i) / 3: b(i + 2 ^ p) = 1 - (1 - a(i)) / 3
100   NEXT i
110   FOR j = 1 TO 2 ^ (p + 1) - 1
115      a(j) = b(j)
120   NEXT j
130   FOR k = 0 TO 2 ^ (p + 1) - 1 STEP 2
140      LINE (a(k), b * p)-(a(k + 1), b * p)
150      LINE (a(k), b * p)-(a(k), b * p - b)
160      LINE (a(k + 1), b * p)-(a(k + 1), b * p - b)
170   NEXT k
175 NEXT p
180 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



