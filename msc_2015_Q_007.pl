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
% A = 1, B = 2 ;
% A = 1, B = 3.
% full trace
%[debug]  ?- c(A,B).
%  T Call: (7) c(_G3256, _G3257)
%  T Exit: (7) c(1, 1)
% A = B, B = 1 ;
%  T Exit: (7) c(a, a)
% A = B, B = a ;
%  T Redo: (7) c(_G3256, _G3257)
%  T Exit: (7) c(1, 2)
% A = 1,
% B = 2 ;
%  T Exit: (7) c(1, 3)
% A = 1,
% B = 3.
