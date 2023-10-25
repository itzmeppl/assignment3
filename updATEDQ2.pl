
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


calltrip(Start, End, Path, T) :- trip(Start, End, Path), append(Path, [Start], T).


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


solve([Elby,Kim,Osborne,Tsuji, Wolverton, Zickerman,
Catarina,Lizzie,Mona,Anthony,Daniel,Jamie,
Pricenet, Sysworld, Univmoose, Banana, Firstbank,Netvue]):-

sys(Elby), sys(Kim), sys(Osborne), sys(Tsuji), sys(Wolverton),sys(Zickerman),
sys(Catarina), sys(Lizzie),sys(Mona),sys(Anthony),sys(Daniel),sys(Jamie), 
sys(Pricenet), sys(Sysworld), sys(Univmoose), sys(Banana), sys(Firstbank),sys(Netvue),


lastN = [Elby,Kim,Osborne,Tsuji, Wolverton, Zickerman],
firstN = [Catarina,Lizzie,Mona,Anthony,Daniel,Jamie],
net_addr = [Pricenet, Sysworld, Univmoose, Banana, Firstbank,Netvue],
woman = [Catarina,Lizzie,Mona],
man = [Anthony,Daniel,Jamie],


trip(Lizzie, Osborne, P1), append(P1, [Lizzie], Pi), member(Pricenet, Pi),

link(Mona, Wolverton), member(Netvue, [Mona, Wolverton]),

trip(Anthony, Jamie, P2), append(P2, [Anthony], Pii), member(Elby, Pii),

link(Daniel, out), link(Daniel, Sysworld), sys(Daniel) = sys(1),

member(Tsuji, woman), trip(Jamie, Tsuji, P3), append(P3, [Jamie], Piii), member(Univmoose, Piii),

member(Banana, woman),

trip(Kim, out, P4), append(P4, [Kim], Piv),member(Firstbank, Piv),

link(Zickerman, Catarina), link(Zickerman, Netvue),



allDiff(lastN), allDiff(firstN), allDiff(net_addr), allDiff(woman), allDiff(man).
