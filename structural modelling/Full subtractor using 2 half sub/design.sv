// Code your design here
`include “hs.v”
module fs(a_f,b_f,c_f,d_f,bo_f);
input a_f,b_f,c_f;
output d_f,bo_f;
wire x,y,z;
hs H1(.a(a_f),.b(b_f),.c(c_f),.d(x),.bo(y));
hs H2(.a(x),.b(c_f),.c(c_f),.d(d_f),.bo(z));
or O1(bo_f,y,z);
endmodule


