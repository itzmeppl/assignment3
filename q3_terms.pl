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

%%%%% SECTION: appendT
%%%%% Add your rules for appendT(Term1,Term2,Result) below
appendT(Y, nil, Result) :- Result = Y.
appendT(nil, Y, Result) :- Result = Y.
appendT(next(H,nil), List2, Result) :- Result = next(H,List2).
appendT(next(H,T), List2, Result) :- appendT(T, List2,Temp), Result = next(H, Temp).


%%%%% SECTION: list2term
%%%%% Add your rules for list2term(List,Term) below
list2term([],Term) :- Term = nil.
list2term([a], Term) :- Term = next(a,nil).

list2term([H|T], Term) :- not is_list(H), list2term(T,Temp), Term = next(H, Temp).
list2term([H|T], Term) :- is_list(H), list2term(H,HTemp), list2term(T,Temp), Term = next(HTemp, Temp).


%%%%% SECTION: flat
%%%%% Add your rules for flat(Term,FlatTerm) below
flat(nil, FlatTerm) :- FlatTerm = nil.
flat(next(nil, T), FlatTerm) :- flat(T, FlatTerm).
flat(next(next(H, T1), T2), FlatTerm) :- flat(next(Head, T1), Temp),flat(T2, Temp2),appendT(Temp, Temp2, FlatTerm).
flat(next(H, T), next(H, FlatTerm)) :-atom(Head), flat(Tail, FlatTerm).
