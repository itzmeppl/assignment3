% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: Piraveen Dayananthan
%%%%% NAME: Riddhima Garg
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%%%%% SECTION: puzzleInterleaving
%%%%% Below, you should define rules for the predicate "solve", which takes in your list of
%%%%% variables and finds an assignment for each variable which solves the problem.
%%%%%

digit(2). digit(3). digit(4). digit(5). digit(6). digit(7). digit(8). digit(9). digit(0).

all_diff([]).
all_diff([H|T]) :- not member(H,T), all_diff(T).

solve([L,E,T,A,P,I,S,O,V]) :- L = 1, digit(P), digit(T), T \= P,
                              Mult is P*T, mod(Mult,10,S), div(Mult,10,C1),
                              digit(E), Pe is (P*E)+C1, mod(Pe,10,T1), T1=T, digit(A), At is A*T, mod(At,10,E1), E1=E,
                              Sum1 is T+E, mod(Sum1,10,1), div(Sum1,10,Cs),
                              div(Pe,10,C2), I is P+C2, 
                              div(At,10,C3), Ae is (A*E)+C3, mod(Ae,10,V), Sum2 is I+V+T+Cs, 
                              mod(Sum2,10,O), div(Sum2,10,Cs2), div(Ae,10,C4), Lo is A+C4,
                              mod(Lo,10,O2), O2 = O, Sum3 is O+E+Cs2, mod(Sum3,10,O3), O3=O, 
                              div(Sum3,10,Cs3), T is 2 + Cs3, all_diff([L,E,T,A,P,I,S,O,V]).


%%%%% You should also define rules for the predicate "solve_and_print" which calls your
%%%%% solve predicate and prints out the results in an easy to read, human readable format.
%%%%% The predicate "solve_and_print" should take in no arguments

solve_and_print:- solve([L,E,T,A,P,I,S,O,V]), write('The values of L,E,T,A,P,I,S,O,V respectively are: '), 
                                        write(L), write(', '), write(E), write(', '), write(T), write(', '), write(A), write(', '), write(P), write(', '), write(I),write(', '), write(S), write(', '), write(O), write(', '), write(V).
