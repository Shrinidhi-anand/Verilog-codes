// Code your design here

module enco8to3(a,y);
input [7:0]a;
output reg [2:0]y;
always@(a)
begin
  case(a)
	8'd1:y=3'b000;
	8'd2:y=3'b001;
	8'd4:y=3'b010;
8'd8:y=3'b011;
	8'd16:y=3'b100;
	8'd32:y=3'b101;
8'd64:y=3'b110;
	8'd128:y=3'b111;
	default:y=3'bxxx;
	endcase
end
endmodule

