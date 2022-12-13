1+1

restart
-- Rewriting Polynomials
R = QQ[x,y]
I = ideal(x^2+y^2,x^2*y^2,x^3*y-x*y^3)
S = R/I
use R
y^4
viewHelp "//"
M = gens I
y^4//M

restart
-- Minimal Polynomials
R = QQ[x,y]
f = x^5-3
g = y^3-5
I = ideal(f,g)
Q = R/I
S = QQ[z]
use Q
phi = map(Q,S,{x+y})
gens (kernel phi)



restart
-- ring maps
R = QQ[x,y,z]
Q = R/ideal"xyz-1"
phi = map(Q,Q,{y*z, x*z, x*y})
kernel phi