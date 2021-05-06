
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Sierpinski Sieve
20 'Name: SIER
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-2.6, -2.4)-(2.6, 1.5)
45 COLOR 15: LOCATE 1, 1: PRINT "Sierpinski sieve"
50 p = 5: DIM t(p): a = SQR(3)
60 FOR m = 0 TO p
65    COLOR m + 9
70    FOR n = 0 TO 3 ^ m - 1
80       n1 = n
85       FOR l = 0 TO m - 1
90          t(l) = n1 MOD 3: n1 = n1 \ 3
95       NEXT l
100      x = 0: y = 0
110      FOR k = 0 TO m - 1
120         x = x + COS((4 * t(k) + 1) * pi / 6) / 2 ^ k
130         y = y + SIN((4 * t(k) + 1) * pi / 6) / 2 ^ k
140      NEXT k
150      u1 = x + a / 2 ^ (m + 1): u2 = x - a / 2 ^ (m + 1): v1 = y - 1 / 2 ^ (m + 1): v2 = y + 1 / 2 ^ m
160      LINE (u1, v1)-(x, v2)
170      LINE -(u2, v1): LINE -(u1, v1)
180   NEXT n
190 NEXT m
200 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



