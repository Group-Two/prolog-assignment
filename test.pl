link(a, b).
link(b, p).
link(b, c).
link(c, d).
link(d, q).
link(d, r).

path(a,c) :- link(a, b), link(b, c), write('a -> b -> c'), nl.

path(c,a) :- path(a, c), write('In reverse.'), nl.

path(a,r) :- path(a, c), link(c, d), link(d, r), write('c -> d -> r'), nl.
