// Code your design here
module hs(a,b,d,bo);
input a,b;
output d,bo;
wire x;
xor(d,a,b);
not(x,a);
and(bo,x,b);
endmodule


