// Code your design here

module fullsub(a,b,c,d,bo);
input a,b,c;
output d,bo;
assign d=a^b^c;
assign bo=~a&b|b&c|c&~a;
endmodule
