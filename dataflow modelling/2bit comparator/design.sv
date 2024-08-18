// Code your design here
//`include "ha.v"
module com2bit(a,b,e,l,g);
input [1:0]a,b;
output e,l,g;
assign e=(~a[1]&~a[0]&~b[1]&~b[0])|(~a[1]&a[0]&~b[1]&b[0])|(a[1]&a[0]&b[1]&b[0])|(a[1]&~a[0]&b[1]&~b[0]);
assign l=(~a[1]&b[1])|(~a[1]&a[0]&b[0])|(~a[0]&b[0]&b[1]);
assign g=(a[1]&~b[1])|(a[1]&~b[0]&~b[1])|(a[1]&~a[0]&~b[0]);
endmodule
