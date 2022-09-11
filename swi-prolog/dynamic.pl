:- dynamic(father/2).
:- dynamic(likes/2).
:- dynamic(friend/2).
:- dynamic(stabs/3).

father(lord_montague, romeo).
father(lord_capulet, juliet).

likes(mercutio, dancing).
likes(benovolio, dancing).
likes(romeo, dancing).
likes(juliet, dancing).
likes(romeo, juliet).
likes(juliet, romeo).

friend(romeo, mercutio).
friend(romeo, benovolio).

stabs(tybalt, mercutio, sword).
stabs(romeo, tybalt, sword).