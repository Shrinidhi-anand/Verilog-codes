// Code your design here
module nandgate(a,b,y);
input a,b;
output y;
wire l;
supply1 vdd;
supply0 gnd;
pmos p1(y,vdd,a);
pmos p2(y,vdd,b);
nmos n2(l,gnd,b);
nmos n1(y,l,a);
endmodule

