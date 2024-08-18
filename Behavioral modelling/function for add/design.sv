// Code your design here

module funadd(a,b,sum);
input [3:0]a,b;
output reg [4:0]sum;
always@(a,b)
begin
	sum=addition(a,b);
end

function [4:0]addition;
input [3:0]l,m;
begin
	addition=l+m;
end
endfunction
endmodule
