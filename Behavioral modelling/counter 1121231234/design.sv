// Code your design here

module counter2(clk,rst,count);
input clk,rst;
output reg [2:0]count;
reg [2:0]n;
always@(posedge clk)
begin
	if(rst)
		n<=1;
	else
begin
		if(n==7 && count==7)
			n<=1;
		else if(n==count)
			n<=n+1;
		else 
			n<=n;
	end
end
always@(posedge clk)
begin
	if(rst)
		count<=1;
	else 
begin
		if(count==0)
			count<=1;
		if(count<n)
			count<=count+1;
		if(count==n)
			count<=1;
	end
end
endmodule
