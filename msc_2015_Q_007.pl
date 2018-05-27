a(1).
a(a).
b(2).
b(3).
c(X,X) :- a(X).
c(X,Y) :- a(X),!,b(Y).
% c(X,Y) :- a(X),b(Y).
c(X,X) :- b(X).

% To load file from prolog:
% [test].
%
% The goal to check is:
% c(A,B).
%
% the result of the race is:
% A = B, B = 1 ;
% A = B, B = a ;
% A = 1,
% B = 2 ;
% A = 1,
% B = 3.
