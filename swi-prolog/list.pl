member(X, [X | _]).
member(X, [_ | T]) :- 
    member(X, T).

size([], 0).
size([_ | T], N) :-
    size(T, N1),
    N is N1 + 1.