// Code your design here

module evencount(clk,rst,count);
input clk,rst;
output reg [3:0]count;
always@(posedge clk)
begin
	if(rst==1)
		count<=0;
	else
	begin
		if(count==14)
		begin
			count<=0;
		end
		else
			count<=count+2;
	end
end
endmodule
