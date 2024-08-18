// Code your design here
module ha(a,b,s,ca);
input a,b;
output s,ca;
xor(s,a,b);
and(ca,a,b);
endmodule
