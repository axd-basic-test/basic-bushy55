
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Structure of a Ternary Tree
20 'Name: TREE3
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-1.2, -.9)-(1.2, .9)
45 COLOR 15: LOCATE 1, 1: PRINT "Ternary tree"
50 p = 5: DIM t(p): 'order
60 a = .45: 'reduction
70 FOR m = 0 TO p
75      COLOR m + 9
80      FOR n = 0 TO 3 ^ m - 1
90 '       ternary notation of N     
100        n1 = n
105        FOR l = 1 TO m
110             t(l) = n1 MOD 3: n1 = n1 \ 3
115        NEXT l
120        x = 0: y = 0
130        FOR k = 1 TO m
140             f = (2 * t(k) * pi) / 3
150             x = x + COS(f) * a ^ k: y = y + SIN(f) * a ^ k
160        NEXT k
170        LINE (x, y)-(x + a ^ k, y)
180        LINE (x, y)-(x - .5 * a ^ k, y + SQR(3) / 2 * a ^ k)
190        LINE (x, y)-(x - .5 * a ^ k, y - SQR(3) / 2 * a ^ k)
200     NEXT n
210 NEXT m
220 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



