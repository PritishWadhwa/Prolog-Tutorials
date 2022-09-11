say_hi :-
    write('What is your name? '), nl, 
    read(X),
    write('Hello '), write(X), nl.

fav_char :-
    write('What is your favorite character? '), nl,
    get(X),
    format('The ascii value ~w is ', [X]),
    put(X), nl.