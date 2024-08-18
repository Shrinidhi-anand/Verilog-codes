// Code your design here

module oddcount(clk,rst,count);
input clk,rst;
output reg [3:0]count;
always@(posedge clk)
begin
	if(rst==1)
		count<=1;
	else
	begin
		if(count==1)
		begin
			count<=15;
		end
		else
			count<=count-2;
	end
end
endmodule
