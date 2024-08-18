// Code your design here

module counter4(clk,rst,count);
input clk,rst;
output reg [2:0]count;
reg [2:0]n;
always@(posedge clk)
begin
	if(rst)
		n<=1;
	else
	begin
		if(count<=n)
			n<=1;
		else
			n<=n+1;
	end
end

always@(posedge clk)
begin
	if(rst)
		count<=1;
	else
	begin
		if(count==n)
		begin
			if(count==7)
				count<=1;
			else 
count<=count+1;
		end
		else
		begin
			count<=count;
		end
	end
end
endmodule
