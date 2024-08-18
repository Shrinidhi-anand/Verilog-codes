// Code your design here

module counter(clk,rst,count);
input clk,rst;
output reg [3:0]count;
  always@(posedge clk,posedge rst)
begin
	if(rst)
		count<=0;
	else
	begin
		if(count==15)
			count<=0;
		else
			count<=count+1;
	end
end
endmodule
