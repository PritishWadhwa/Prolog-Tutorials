likes(mary, wine).
likes(bob, beer).
likes(wini, apple).
likes(charlie, wine).

% john likes anyone who likes wine
likes(john, X) :-
    likes(X, wine).

thief(wini).
thief(john).
thief(william).

likes(wini, ball).
likes(william, shoe).
likes(john, snow).
likes(john, dollar).

may_steal(john, X) :- 
    thief(john),
    likes(john, X).

