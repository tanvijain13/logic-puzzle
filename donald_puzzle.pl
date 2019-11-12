three_different(X1, X2, X3) :-
X1\=X2, X1\=X3, X2\=X3.



age(4).

age(5).

age(6).


ages(A1, A2, A3):-
age(A1),
age(A2),
age(A3),
three_different(A1, A2, A3).




animal(camel).

animal(giraffe).

animal(panda).


animals(A1, A2, A3):-
animal(A1),
animal(A2),animal(A3),
three_different(A1, A2, A3).




color(green).

color(yellow).

color(white).


colors(C1, C2, C3):-
color(C1),
color(C2),
color(C3),
three_different(C1, C2, C3).



conditionage(Huey_Age, Other_Age, green) :-Huey_Age<Other_Age.

condition5(5, camel).

condition5(Age, Animal) :- Age\=5, Animal\=camel.

conditionfail(panda, white) :- !, fail.
conditionfail(_, _).



valid(solution(huey(H_age, H_color, H_animal),
dewey(D_age, D_color, D_animal),
louie(L_age, L_color, L_animal))):-
D_color = yellow,
L_animal = giraffe,

ages(H_age, D_age, L_age),
colors(H_color, D_color, L_color),
animals(H_animal, D_animal, L_animal),
(conditionage(H_age, D_age, D_color);
conditionage(H_age, L_age, L_color)),

condition5(H_age, H_animal),condition5(D_age, D_animal),
condition5(L_age, L_animal),
conditionfail(H_animal, H_color),
conditionfail(D_animal, D_color),
conditionfail(L_animal, L_color).
