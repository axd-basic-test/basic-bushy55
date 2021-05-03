5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Modern Art
20 'Name: MONDRIAN
30 SCREEN 12, 0, 0, 0: CLS : pi = 3.141593: RANDOMIZE 111
40 WINDOW (-.5, -.3)-(1.5, 1.2)
50 DIM x(200), y(200)
52 FOR i = 1 TO 200: x(i) = RND: y(i) = RND: NEXT i
60 COLOR 7: PRINT : PRINT "This program forms with a given motif of random position"
70 PRINT "and size": PRINT : PRINT "A Modern Art Composition": PRINT
80 PRINT "The following Ornaments are available": PRINT
90 PRINT "Key 1  for Horizontal and Vertical Lines"
100 PRINT "Key 2  for Equilateral Triangles in Fixed orientation"
110 PRINT "Key 3  for Equilateral Triangles in Random orientation"
120 PRINT "Key 4  for Squares"
130 PRINT "Key 5  for Pentagons"
140 PRINT "Key 6  for Circles"
150 PRINT "Key 7  for End": PRINT
160 INPUT s: CLS
170 IF s = 7 THEN SYSTEM
175 IF s > 6 OR s < 1 THEN BEEP: GOTO 60
180 PRINT : PRINT "Select number of Ornaments as an integer <=200"
190 PRINT : INPUT n: IF n > 200 THEN n = 200 ELSE IF n < 1 THEN n = 1
200 PRINT : PRINT "Select Scale Factor as an integer between 1 and 9"
210 PRINT "9 gives the largest scale"
215 PRINT : INPUT h: IF h < 1 THEN h = 1 ELSE IF h > 9 THEN h = 9
220 CLS : WINDOW (-.5, -.3)-(1.5, 1.2)
225 COLOR 15: LOCATE 1, 1: PRINT "Pattern of random horizontal and vertical lines"
230 FOR k = 1 TO n
235    cc = k MOD 8: COLOR cc + 8
240    v = h * (1 - SQR(RND)) / 50
250    ON s GOSUB 270, 290, 320, 360, 380, 450
260 NEXT k
265 BEEP: a$ = INPUT$(1): CLS : GOTO 60
270 IF RND > .5 THEN LINE (x(k) - v, y(k))-(x(k) + v, y(k)) ELSE LINE (x(k), y(k) - v)-(x(k), y(k) + v)
280 RETURN
290 b = 2 * pi / 3: u1 = x(k) + v: v1 = y(k)
300 u2 = x(k) + v * COS(b): v2 = y(k) + v * SIN(b): u3 = u2: v3 = y(k) - v * SIN(b)
310 LINE (u1, v1)-(u2, v2): LINE -(u3, v3): LINE -(u1, v1)
305 RETURN
320 b = 2 * pi / 3: a = b * RND: u1 = x(k) + v * COS(b): v1 = y(k) + v * SIN(b)
330 u2 = x(k) + v * COS(a + b): v2 = y(k) + v * SIN(a + b)
340 u3 = x(k) + v * COS(a - b): v3 = y(k) + v * SIN(a - b)
350 LINE (u1, v1)-(u2, v2): LINE -(u3, v3): LINE -(u1, v1)
355 RETURN
360 w = v / 2: LINE (x(k) + w, y(k) + w)-(x(k) - w, y(k) + w): LINE -(x(k) - w, y(k) - w)
370 LINE -(x(k) + w, y(k) - w): LINE -(x(k) + w, y(k) + w)
375 RETURN
380 b = 2 * pi / 5: u1 = x(k) + v: v1 = y(k)
390 u2 = x(k) + v * COS(b): v2 = y(k) + v * SIN(b)
400 u3 = x(k) + v * COS(2 * b): v3 = y(k) + v * SIN(2 * b)
410 u4 = x(k) + v * COS(3 * b): v4 = y(k) + v * SIN(3 * b)
420 u5 = x(k) + v * COS(4 * b): v5 = y(k) + v * SIN(4 * b)
430 LINE (u1, v1)-(u3, v3): LINE -(u5, v5): LINE -(u2, v2)
440 LINE -(u4, v4): LINE -(u1, v1)
445 RETURN
450 CIRCLE (x(k), y(k)), v
455 RETURN
460 END

