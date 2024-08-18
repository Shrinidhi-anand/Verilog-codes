// Code your design here

module srff(sr,clk,rst,q,qb);
input clk,rst;
input [1:0]sr;
output reg q,qb;
always@(posedge clk)
begin
	if(rst)
	begin
		q=0;
		qb=1;
	end
	else
	begin
		case(sr)	
		2'b00:q=q;
		2'b01:q=0;
		2'b10:q=1;
		2'b11:
begin
			q=1'bx;		
			qb=1'bz;
		end
		endcase
		assign qb=~q;
	end
end
endmodule
