loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet).

male(albert).
male(bill).
male(bob).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

happy(albert).
happy(alice).
happy(bob).
happy(bill).

with_albert(alice).
near_water(albert).

% rules

% albert runs as long as he is happy 
runs(albert) :-
    happy(albert).

dances(alice) :-
    happy(alice),
    with_albert(alice).


% Predicate
does_alice_dance :-
    dances(alice),
    write('When Alice is happy and with Albert she dances').

% here if the first swims will hold, then we would not refer to the second, prolog will give us an option to look if we want to follow the first one or the second one.
swims(bill) :-
    happy(bill).

swims(bill) :-
    near_water(bill).


parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, charlie).
parent(bob, carl).

get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Albert is the grandparent of '),
    write(Y).

get_grandparent :-
    parent(X, carl), 
    parent(X, charlie),
    format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

blushes(X) :- human(X).
human(derek).

stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).

what_grade(5) :-
    write('Go to Kindergarten').

what_grade(6) :-
    write('Go to 1st grade').

% if some other value than 5 or 6 is entered, then grade = other - 5 and we will print that grade
what_grade(Other) :-
    Grade is Other - 5,
    format('Go to grade ~w', [Grade]).

owns(albert, pet(cat, olive)).

customer(tom, smith, 20.55).
customer(sally, smith, 120.55).

get_customer_balance(FName, LName) :-
    customer(FName, LName, Balance),
    format('~w ~w owes us $~3f ~n', [FName, LName, Balance]).

% know whether a line is horizontal or vertical
vertical(line(point(X, Y), point(X, Y2))).
horizontal(line(point(X, Y), point(X2, Y))).