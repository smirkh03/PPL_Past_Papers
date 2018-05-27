max(A, B, C) :-
  C > B,
  C > A.

max2(X,Y,Y) :- X =< Y.
max2(X,Y,X) :- X > Y.
