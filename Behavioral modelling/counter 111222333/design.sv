// Code your design here

module counter1(clk,rst,count);
input clk,rst;
output reg [2:0]count;
reg [1:0]n;
always@(posedge clk)
begin	
	if(rst)
		n<=0;
	else 
	begin
		if(n==3)
			n<=1;
		else
			n<=n+1;
	end
end

always@(posedge clk)                        //Synchronous counter
begin
	if(rst)
		count<=1;
	else 
begin
		if(n==3)
		begin
			if(count==7)
				count<=1;
			else
				count<=count+1;
		end
		else
			count<=count;
	end
end
endmodule
