// Code your design here
module andgate(a,b,y);
input a,b;
output y;
wire l,m;
supply1 vdd;
supply0 gnd;
pmos p1(m,vdd,a);
pmos p2(m,vdd,b);
nmos n2(l,gnd,b);
nmos n1(m,l,a);
pmos p3(y,vdd,m);
nmos n3(y,gnd,m);
endmodule
