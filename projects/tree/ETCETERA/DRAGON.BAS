
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Dragon Curve with Arbitrary Angle
20 'Name: DRAGON
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593
40 WINDOW (-4, -3)-(4, 3): 'adapt if necessary
50 PRINT "Select order P as an integer less than 11"
60 INPUT p: CLS : h = 2 ^ (-p / 2)
70 PRINT "Select angle in degrees, take A = 90 or slightly larger"
80 INPUT a: CLS : a = a * pi / 180
85 COLOR 15: LOCATE 1, 1: PRINT "Dragon curve with arbitrary angle"
90 b = pi - a: x = h: y = 0: LINE (0, 0)-(h, 0): s = 0
100 FOR n = 1 TO 2 ^ p - 1
102    cc = n MOD 8: COLOR cc + 8
105    m = n
110    IF m MOD 2 = 0 THEN m = m / 2: GOTO 110
120    IF m MOD 4 = 1 THEN d = 1 ELSE d = -1
130    s = s + d
140    x = x + h * COS(s * b)
150    y = y + h * SIN(s * b)
160    LINE -(x, y)
165 NEXT n
170 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM



