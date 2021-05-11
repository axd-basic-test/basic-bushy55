5 'from Lauwerier H., 1991. "Fractals Images of Chaos"  Penguin 209p.
10 'Orbits of Henon's Quadratic System
20 'Name: HENON
25 var k,a,b,n,x,y,z,red,green,blue,abx,aby,abxy,px,py
27 wcolor 0, 0, 0
30 fcolor 150,150,180: print 10,440, "Orbits of Henon's quadratic system"
32 k=1
40 while k < 20
42    red=rand(220)+8: green-rand(220)+8: blue=rand(220)+8
50    x = -.4 + rnd(1): y = -.4 + rnd(1)
55    a = 0.24; b  = sqr(1-a^)
57    n=1
80    while n < 500
82 	 px=x*200+320 : py=y*200+240
85       fcolor red, green, blue: pset px, py
90       z = x: x = x * a - (y - x * x) * b
100      y = z * b + (y - z * z) * a
105      absx=abs(x): absy=abs(y): abxy=abx+aby
110      IF abxy > 10: goto continue : endif
120   n=n+1 :swap
130 wend

150 label continue
160 k=k+1
170 wend

