// Code your design here

module demux1to4(a,s,y);
input a;
input [1:0]s;
output reg [3:0]y;
always@(a,s)
begin
	case(s)
		2'b00:y={0,0,0,a};
		2'b01:y={0,0,a,0};
		2'b10:y={0,a,0,0};
		2'b11:y={a,0,0,0};
		default:y=0;
	endcase
end
endmodule
