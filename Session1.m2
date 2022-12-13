1+1

k = ZZ/11
k = QQ
1/2
k = RR

k = QQ
R = k[x,y,z,w]
x + y^2 - w*x

I = ideal(x^2,y^2,z^2)
J = ideal(x*y*z)

I+J
intersect(I,J)

R/I -- Ring of polynomials with x,y,z degree <= 1, w degree anything

use (R/I) -- ties variables to the ring R/I instead of R
x^3

k
k = ideal(x+y+z)

k = symbol k -- to "deasign" a variable

--indexed variables
x = symbol x
R = QQ[x_0,x_1,x_2,x_3]
R =QQ[x_0..x_3]
vars R

x_0

R = symbol R
R = ring x_0

-- order matters
restart
R = QQ[x,y,z]
I = ideal(x+y)
S = QQ[x,y]
J = ideal(x+y)

J == I -- is I and J equal?
sub(J,R) == I

use R
K = ideal(x+y+z)
sub(K,S) -- sub is a bit dangerous

use R
phi = map(R,S,{x,y}) -- inclusion map from S into R with x\mapsto x and y\mapsto y
phi J -- equivalent to sub(J,R) in this case

use S
psi = map(S,R,{x,y,0}) -- inclusion map from R to S, sending x to x, y to y and z to 0
psi K -- equivalent to sub(K,S) in this case

restart
R = QQ[x,y,a,MonomialOrder => Lex, Degrees => {{-1,2},{2,3},{4,5}}] -- other option for example: GRevLex (this is default)
describe R
x > y
a > y

x > a^102832

3:1
degree(x^2*y^3)
degree(x)

-- finding things
viewHelp
viewHelp inverse
?inverse
apropos "inverse"
viewHelp ideal

--
-- lists
l = {"abc",I,R}
l#0
l#1
l#2

l | {hello,"hello"}

s = ("abc", I, R)
a..t
(0,0)..(6,4)
(0,0,0)..(6,7,8)
toList((0,0)..(6,4)) -- list

(0,0)..<(6,4) -- sequence
0..7
0..<7
0..(7-1)

s = a..c
R = QQ[s]
describe R

x = Symbol x
s = x_(0,0)..x_(3,3)

restart
s = x_(0,0)..x_(3,3)




