
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Brownian Line
20 'Name: BROWNL
30 SCREEN 12, 0, 0, 0: CLS : RANDOMIZE TIMER
40 WINDOW (-1.2, -.9)-(1.2, .9)
45 COLOR 15: LOCATE 1, 1: PRINT "Brownian line"
50 w = 40: y = 0
60 COLOR 2: LINE (1, 0)-(-1, 0)
70 FOR k = 0 TO 2000
75    cc = k MOD 8: COLOR cc + 8
80    x = -1 + k / 1000: y = y + w * (RND - .5) / 2000
90    LINE -(x, y)
100 NEXT k
110 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM

