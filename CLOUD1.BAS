
5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Orbits of a Dynamic System
20 'Name: CLOUD1
30 DIM x(8), y(8), p(8)
40 SCREEN 12, 0, 0, 0: CLS
45 COLOR 15: LOCATE 1, 1: PRINT "Orbits of dynamical system"
50 WINDOW (-40, -30)-(40, 30)
60 a = -.5: b = 2: 'parameter values
70 DATA 2,0,200,4,0,400,6,0,600,8,0,800
80 DATA 10,0,1000,12,0,1200,14,0,1400,16,0,1600
90 FOR i = 1 TO 8
95    READ x(i), y(i), p(i)
97 NEXT i
100 FOR k = 1 TO 8
105    x = x(k): y = y(k): p = p(k)
110    GOSUB 140
115    FOR n = 0 TO p
116       cc = n MOD 8: COLOR cc + 8
117       PSET (x, y)
120       z = x: x = y + w: GOSUB 140: y = w - z
130    NEXT n
135 NEXT k
137 BEEP: COLOR 2: a$ = INPUT$(1): SYSTEM
140 w = x * (a + b / (1 + ABS(x))): RETURN: END





