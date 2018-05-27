
something([H|T]) :- somethingelse(H, T).
somethingelse(X, [X]).
somethingelse(X, [_|T]) :- somethingelse(X, T).

% part (a)
% what is the result of the call
% somethingelse(X, [1, 2, 3, 4]).
% What does this predicate compute in general?
% answer: 4, finds last element in the list

% part (b)
% When will the something predicate succeed?
% answer: On lists where the length of the list is ≥ 2.
%         When the first argument is the last element in the second argument as a list.

% part (c)
% my solution
my_duplicate([X1, X2| T], X) :-
  X1 \= X2,
  my_duplicate([X2|T], X).

my_duplicate([X1, X2 | T], X) :-
  X1 = X2,
  X = X1.

% my revised solution
my_duplicate2([X1, X1 | T], X1).
my_duplicate2([X1, X2| T], X) :-
  X1 \= X2,
  my_duplicate2([X2|T], X).


% tutor solution
duplicate([X, X|_], X).
duplicate([_|Tail], X) :- duplicate(Tail, X).
