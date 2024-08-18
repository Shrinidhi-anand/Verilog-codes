// Code your design here

module maxmin(a,b,max,min);
input [3:0]a,b;
output [3:0]max,min;
assign max=(a>b)?a:b;
assign min=(a<b)?a:b;
endmodule
