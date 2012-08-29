#const something
#hide test/3.

%comment test.

range(1..10).

predicate( test , Var ).

head :- body(something, Else, huh), another(S, t). 
head :- body(something, Else, huh), another(S, t).

something(x) :- hah(x #mod 9).

1{ choice(x) }1.
1{ choice(x) }1 :- body(huh, U), something, else(X).
1{ choice(x) : option(Y) }1 :- body(huh, U), something, else(X).

test(ok).
test(NOTOK).
test. 
Var.
Var.

something something Something.

Something something.

