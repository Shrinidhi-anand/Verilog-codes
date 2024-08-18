// Code your design here

module counter3(clk,rst,count);
input clk,rst;
output reg [2:0]count;
reg up,down;
always@(posedge clk)
begin
	if(rst)
		count<=1;
	else
	begin	
		if(count==1)
		begin
			up=1;
			down=0;
		end
		if(count==7)
		begin
			up=0;
			down=1;
		end
	end
	if(up==1 && down==0)
		count<=count+1;
	else if(up==0 && down==1)
		count<=count-1;
end
endmodule
