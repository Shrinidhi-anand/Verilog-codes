// Code your design here

module dff(clk,rst,d,q,qb);
input clk,rst,d;
output reg q,qb;
always@(posedge clk)
begin
	case(d)
	1'b0:q<=1'b0;
	1'b1:q<=1'b1;
	default:q<=1'bx;
	endcase
	assign qb=~q;
end
endmodule
