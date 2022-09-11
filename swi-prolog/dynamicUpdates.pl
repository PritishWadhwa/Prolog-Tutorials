?- [dynamic].
true.

?- assert(friend(benvolio, mercutio)).
true.

?- friend(benvolio, X).
X = mercutio.

?- asserta(friend(mercutio, benvolio)).
true.

?- friend(X, Y).
X = mercutio,
Y = benvolio ;
X = romeo,
Y = mercutio ;
X = romeo,
Y = benovolio ;
X = benvolio,
Y = mercutio.

?- retract(likes(mercutio, dancing)).
true.

?- likes(mercutio, X).
false.

?- retractall(father(_, _)).
true.

?- father(X, Y).
false.