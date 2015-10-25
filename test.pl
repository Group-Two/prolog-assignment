link(a, b).
link(b, p).
link(b, c).
link(c, d).
link(d, q).
link(d, r).

path(X, Y) :- link(X, Y), format("~w -> ~w", [X, Y]), nl.

path(Node1, Node2) :- link(Node1, SomeNode), format("~w -> ~w", [Node1, SomeNode]), nl, path(SomeNode, Node2).


/*
path(a,c) :- link(a, b), link(b, c), write('a -> b -> c'), nl.

path(c,a) :- path(a, c), write('In reverse.'), nl.

path(a,r) :- path(a, c), link(c, d), link(d, r), write('c -> d -> r'), nl.


path(a, X) :-  link(a, b), link(b, p), link(b, c), link(c, d), link(d, q), link(d, r),
	format("a to ~w is ~s.", [X, "a ->"]), nl.

*/