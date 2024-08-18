// Code your design here
module xnorgate(a,b,y);
input a,b;
output y;
wire l,m,n,p,q,r,o,abar,bbar;
supply1 vdd;
supply0 gnd;
pmos p1(abar,vdd,a);
nmos n1(abar,gnd,a);
pmos p2(x,vdd,abar);
pmos p3(x,vdd,b);
pmos p4(m,vdd,x);
nmos n2(l,gnd,b);
nmos n3(x,l,abar);
nmos n4(m,gnd,x);
pmos p5(bbar,vdd,b);
nmos n5(bbar,gnd,b);
pmos p6(p,vdd,bbar);
pmos p7(p,vdd,a);
nmos n6(q,gnd,a);
nmos n7(p,q,bbar);
pmos p8(n,vdd,p);
nmos n8(n,gnd,p);
pmos p9(r,vdd,m);
pmos p10(o,r,n);
nmos n9(y,gnd,m);
nmos n10(y,gnd,n);
endmodule




