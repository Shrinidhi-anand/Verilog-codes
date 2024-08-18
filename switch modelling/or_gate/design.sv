// Code your design here
module orgate(a,b,y);
input a,b;
output y;
wire l,m;
supply1 vdd;
supply0 gnd;
pmos p1(l,vdd,a);
pmos p2(m,l,b);
nmos n2(m,gnd,b);
nmos n1(m,gnd,a);
pmos p3(y,vdd,m);
nmos n3(y,gnd,m);
endmodule



