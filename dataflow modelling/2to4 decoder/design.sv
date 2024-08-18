// Code your design here
//`include "ha.v"
module de2to4(a,b,y3,y2,y1,y0);
input a,b;
output y3,y2,y1,y0;
assign y3=a&b;
assign y2=a&~b;
assign y1=~a&b;
assign y0=~a&~b;
endmodule

//Alternate design
/*module deco2to4(a,y);
input [1:0]a;
output [3:0]y;
wire [3:0]l,m,n;
assign l=(a==2’b11)?4’b1000:4’bxxxx;
assign m=(a==2’b10)?4’b0100:l;
assign n=(a==2’b01)?4’b0010: m;
assign y=(a==2’b00)?4’b0001:n;
endmodule
*/