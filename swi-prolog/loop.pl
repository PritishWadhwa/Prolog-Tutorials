count_to_ten(10) :-
    write(10), nl.

count_to_ten(N) :-
    write(N), nl,
    M is N + 1,
    count_to_ten(M).
    
count_down(Low, High) :-
    between(Low, High, N),
    X is High - N,
    write(X), nl.

count_up(Low, High) :-
    between(Low, High, N),
    X is N + Low,
    write(X), nl.

guess_number :-
    loop(start).

loop(15) :-
    write('You guessed it!').

loop(N) :-
    N \= 15,
    write('Guess a number: '),
    read(X),
    write(X),
    write(' is not the number. Try again.'), nl,
    loop(X).
    