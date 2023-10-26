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

%%%%% SECTION: networkSolve
%%%%% Below, you should define rules for the predicate "solve", which takes in your list of
%%%%% variables and finds an assignment for each variable which solves the problem.
%%%%%
%%%%% You should also define rules for the predicate "solve_and_print" which calls your
%%%%% solve predicate and prints out the results in an easy to read, human readable format.
%%%%% The predicate "solve_and_print" should take in no arguments


link(out,1).
link(1,out).
link(1,2).
link(2,1).
link(2,3).
link(3,2).
link(3,4).
link(4,3).
link(3,5).
link(5,3).
link(5,6).
link(6,5).


allDiff([]).
allDiff([H|T]):- not member(H,T), allDiff(T).


trip(Start, End, Path) :-
    trip(Start, End, [Start], Path, []).

trip(Start, End, Visited, [End|AccPath], AccPath) :-
    link(Start, End).

trip(Start, End, Visited, Path, AccPath) :-
    link(Start, Next),
    Next \== End,
    \+ member(Next, Visited),
    trip(Next, End, [Next|Visited], Path, [Next|AccPath]).





sys(1). sys(2). sys(3). sys(4). sys(5). sys(6).


solve([Elby,Kim,Osborne,Tsuji, Wolverton, Zickerman,Catarina,Lizzie,Mona,Anthony,Daniel,Jamie, Pricenet, Sysworld, Univmoose, Banana, Firstbank,Netvue]):-


lastN = [Elby,Kim,Osborne,Tsuji, Wolverton, Zickerman],
firstN = [Catarina,Lizzie,Mona,Anthony,Daniel,Jamie],
net_addr = [Pricenet, Sysworld, Univmoose, Banana, Firstbank,Netvue],
woman = [Catarina,Lizzie,Mona],
man = [Anthony,Daniel,Jamie],


sys(Osborne), sys(Lizzie), sys(Pricenet),
trip(Lizzie, Osborne, P1), append(P1, [Lizzie], Pi), member(Pricenet, Pi),

sys(Mona), sys(Wolverton), sys(Netvue),
link(Mona, Wolverton), member(Netvue, [Mona, Wolverton]),

sys(Zickerman), sys(Catarina),
link(Zickerman, Catarina), link(Zickerman, Netvue),

sys(Anthony), sys(Jamie), sys(Elby),
trip(Anthony, Jamie, P2), append(P2, [Anthony], Pii), member(Elby, Pii),

sys(Tsuji), sys(Univmoose),
member(Tsuji, woman), trip(Jamie, Tsuji, P3), append(P3, [Jamie], Piii), member(Univmoose, Piii),

sys(Daniel), sys(Sysworld),
link(Daniel, out), link(Daniel, Sysworld), sys(Daniel) = sys(1),

sys(Banana),
member(Banana, woman),

sys(Kim), sys(Firstbank),
trip(Kim, out, P4), append(P4, [Kim], Piv),member(Firstbank, Piv),


allDiff(lastN), allDiff(firstN), allDiff(net_addr), allDiff(woman), allDiff(man).

