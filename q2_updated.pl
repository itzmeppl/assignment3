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



allDiff([]).
allDiff([H|T]):- not member(H,T), allDiff(T).


trip(O,O,[O]).
trip(O, D, [O|T]):- link(X, Next), trip(Next, D, T).




solve([L1,L2,L3,L4,L5,L6,SA1,SA2,SA3,SA4,SA5,SA6,I1,I2,I3,I4,I5,I6]):-

sys_admin(w, catarina, l_name(L1)),
sys_admin(w, lizzie, l_name(L2)),
sys_admin(w, mona, l_name(L3)),
sys_admin(m, anthony, l_name(L4)),
sys_admin(m, daniel, l_name(L5)),
sys_admin(m, jamie, l_name(L6)),


system(1, sys_admin(SA1), net_addr(I1)),
system(2, sys_admin(SA2), net_addr(I2)),
system(3, sys_admin(SA3), net_addr(I3)),
system(4, sys_admin(SA4), net_addr(I4)),
system(5, sys_admin(SA5), net_addr(I5)),
system(6, sys_admin(SA6), net_addr(I6)),

%constraint 2
link(Si, Sii), system(Si, sys_admin(w, mona, Li), Ii), 
system(Sii, sys_admin(MFi, Fi, l_name(wolverton), Iii),



not Iiii = net_addr(netvue.com),
not Iiv = net_addr(netvue.com),
not Iv = net_addr(netvue.com),
not Ivi = net_addr(netvue.com),

%constraint 4
system(Siii, sys_admin(m, daniel, Lii), Iiii),
system(Siv, SAi, sysworld.com), link(Siii, Siv),

%constraint 6
system(Sv, sys_admin(w, Fii, Liii), net_addr(bananas.com)),

%constraint 8
system(Svi, sys_admin(w, catarina, Liv), Ivi), 

