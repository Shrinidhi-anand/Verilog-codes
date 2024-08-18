// Code your design here

module deco2to4(a,y);
input [1:0]a;
output reg [3:0]y;
always@(a)
begin
  if(a==2'b00)
		y=4'b0001;
  else if(a==2'b01)
		y=4'b0010;
  else if(a==2'b10)
		y=4'b0100;
  else if(a==2'b11)
		y=4'b1000;
	else
		y=4'bxxxx;
end
endmodule
