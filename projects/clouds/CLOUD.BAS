
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Orbits of a Dynamic System
20 'Name: CLOUD
30 SCREEN 12, 0, 0, 0: CLS
40 WINDOW (-120, -90)-(120, 90)
45 COLOR 15: LOCATE 1, 1: PRINT "Orbits of dynamical system"
50 a = 3.5: b = -3
60 x = 3.21: y = 6.54: GOSUB 110
70 FOR n = 0 TO 10000
72    cc = n MOD 64: COLOR cc / 8 + 7
75    PSET (x, y)
80    z = x: x = y + w
90    GOSUB 110
100   y = w - z
105 NEXT n
107 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
110 IF x > 1 THEN w = a * x + b * (x - 1): RETURN
120 IF x < -1 THEN w = a * x + b * (x + 1): RETURN
130 w = a * x: RETURN: END
140 'Alternatives for Gosub
150 'Try various a,b values each with a number of starting x,y values
160 w = a * x + b * SIN(x): RETURN
170 w = a * x + b * COS(x): RETURN
180 w = a + b * SIN(x): RETURN
190 w = a + b * COS(x): RETURN
200 IF ABS(x) < 1 THEN w = a * x ELSE w = b * x + (a - b) / x
210 RETURN: END






