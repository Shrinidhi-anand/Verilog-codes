// Code your testbench here
// or browse Examples



module moore1_test;
reg clk,rst,s_in;
wire s_out;
wire [2:0]cs,ns;
moore1 M8(.clk(clk),.rst(rst),.s_in(s_in),.s_out(s_out));
initial
begin
	clk=0;
	repeat(2)
begin
@(posedge clk)
		rst<=1;
		#5;
	end
	repeat(5)
	begin
		rst<=0;
		s_in=$random;
		#5;
      $display("rsts=%d s_in=%d s_out=%d",rst,s_in,s_out);
	end
$finish;
end
always
begin
	#5 clk=~clk;
end
endmodule



