parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carol).
parent(bob, carl).

related(X, Y) :-
    parent(X, Y).

related(X, Y) :-
    parent(X, Z),
    related(Z, Y).