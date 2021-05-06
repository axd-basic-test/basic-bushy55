
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Pythagoras or Levy Curve
20 'Name: LEVY
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-.7, -1.3)-(1.7, .5)
50 PRINT "Select order P as a small integer less than 12"
60 INPUT p: CLS
65 COLOR 15: LOCATE 1, 1: PRINT "Levy curve"
70 h = 2 ^ (-(p / 2)): a = h * COS(p * pi / 4): b = h * SIN(p * pi / 4)
80 COLOR 10: LINE (0, 0)-(a, -b): LINE -(a + b, a - b)
90 x = 1: y = 1
100 FOR n = 2 TO 2 ^ p - 1
110    m = n: s = 1
120    IF m MOD 2 = 1 THEN s = s + 1
130    m = m \ 2
140    IF m > 1 THEN GOTO 120
150    IF s MOD 4 = 0 THEN x = x + 1: COLOR 9
160    IF s MOD 4 = 1 THEN y = y + 1: COLOR 10
170    IF s MOD 4 = 2 THEN x = x - 1: COLOR 12
180    IF s MOD 4 = 3 THEN y = y - 1: COLOR 13
190    LINE -(a * x + b * y, a * y - b * x)
200 NEXT n
210 COLOR 2: BEEP: a$ = INPUT$(1): SYSTEM



