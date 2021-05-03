
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Structure of a Binary Tree
20 'Name: TREE2
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-2, -.5)-(2, 2.5)
45 COLOR 15: LOCATE 1, 1: PRINT "Binary tree"
47 COLOR 2
50 LINE (0, 0)-(0, 1)
60 FOR k = 1 TO 7
65       h = 2 ^ (-k + 1)
70       FOR l = 1 TO 2 ^ k
80       x = -2 + (4 * l - 2) * h: y = 2 - h
90       LINE (x - h, y + h / 2)-(x - h, y)
100      LINE (x - h, y)-(x + h, y): LINE -(x + h, y + h / 2)
110      NEXT l
120 NEXT k
130 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



