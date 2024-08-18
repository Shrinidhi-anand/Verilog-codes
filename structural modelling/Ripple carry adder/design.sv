// Code your design here
//`include “ha.v”
`include “fa.v”
module ripple(a_r,b_r,c_r,s_r,cout_r);
input [3:0]a_r,b_r;
input c_r;
output [3:0]s_r;
output cout_r;
fa F1(a_r[0],b_r[0],c_r,s_r[0],x);
fa F2(a_r[1],b_r[1],x,s_r[1],y);
fa F3(a_r[2],b_r[2],y,s_r[2],z);
fa F4(a_r[3],b_r[3],z,s_r[3],cout_r);
endmodule
