// Code your design here
module norgate(a,b,y);
input a,b;
output y;
wire l;
supply1 vdd;
supply0 gnd;
pmos p1(l,vdd,a);
pmos p2(y,l,b);
nmos n2(y,gnd,b);
nmos n1(y,gnd,a);
endmodule

