% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: 
%%%%% NAME:
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


link(7,1).
link(1,7).
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



net_addr('pricenet.com').
net_addr('sysworld.com').
net_addr('univmoose.edu').
net_addr('banana.com').
net_addr('firstbank.com').
net_addr('netvue.com').


l_name(elby).
l_name(kim).
l_name(osborne).
l_name(tsuji).
l_name(wolverton).
l_name(zickerman).


sys_admin(w, catarina, l_name(L1)).
sys_admin(w, lizzie, l_name(L2)).
sys_admin(w, mona, l_name(L3)).
sys_admin(m, anthony, l_name(L4)).
sys_admin(m, daniel, l_name(L5)).
sys_admin(w, jamie, l_name(L6)).


system(1, sys_admin(S1), net_addr(I1)).
system(2, sys_admin(S2), net_addr(I2)).
system(3, sys_admin(S3), net_addr(I3)).
system(4, sys_admin(S4), net_addr(I4)).
system(5, sys_admin(S5), net_addr(I5)).
system(6, sys_admin(S6), net_addr(I6)).



solve_and_print :-



%%%%% SECTION: trip
%%%%% Below, you should define rules for the predicate "trip", which takes in 
%%%%% two computer systems and returns the list of locations in between them.
%%%%% The signature of this predicate is trip(From,To,Path)


trip(O,O,[O]).
trip(O, D, [O|T]):- link(X, Next), trip(Next, D, T).


