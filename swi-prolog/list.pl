member(X, [X | _]).
member(X, [_ | T]) :- 
    member(X, T).

size([], 0).
size([_ | T], N) :-
    size(T, N1),
    N is N1 + 1.

sum([], 0).
sum([H | T], S) :-
    sum(T, S1),
    S is S1 + H.

is_sorted([]).
is_sorted([_]).
is_sorted([X, Y | T]) :-
    X =< Y,
    is_sorted([Y | T]).

append([], L2, L2).
append([H | T], L2, [H | L3]) :-
    append(T, L2, L3).

