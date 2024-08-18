// Code your design here
`include “ha.v”
module fa(a_f,b_f,c_f,s_f,ca_f);
input a_f,b_f,c_f;
output s_f,ca_f;
wire x,y,z;
ha H1(.a(a_f),.b(b_f),.s(x),.ca(y));
ha H2(.a(x),.b(c_f),.s(s_f),.ca(z));
or O1(ca_f,y,z);
endmodule

