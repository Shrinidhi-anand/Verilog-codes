// Code your design here

module moore1(s_in,clk,rst,s_out);
input clk,rst,s_in;
output wire s_out;
parameter s0=0;
parameter s1=1;
parameter s2=2;
parameter s3=3;
parameter s4=4;
reg [2:0]cs,ns;
//present state logic
always@(posedge clk)
begin
	if(rst)
	begin
		cs<=s0;
	end
	else
		cs<=ns;
end
//next state logic
always@(s_in,cs)
	begin
	case(cs)
	s0:
	begin
		if(s_in==0)
			ns<=s1;
		else 
			ns<=s0;
	end
	s1:
	begin
		if(s_in==0)
			ns<=s1;
		else 
			ns<=s2;
	end
	s2:
	begin
		if(s_in==0)
			ns<=s1;
		else 
			ns<=s3;
	end
	s3:
	begin
		if(s_in==0)
			ns<=s4;
		else 
			ns<=s0;
	end
	s4:
	begin
		if(s_in==0)
			ns<=s0;
		else
			ns<=s0;
	end
	default:ns<=s0;
	endcase
end
assign s_out=(cs==s4);
endmodule

