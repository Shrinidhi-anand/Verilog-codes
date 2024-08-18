// Code your testbench here
// or browse Examples



module evencounter_t;
reg clk,rst;
wire [2:0]count;
evencount E46(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=0;
	rst=1;
	forever #10 clk=~clk;
end
initial
begin
	@(posedge clk)
	rst<=0;
	#600;
	$finish;
end
endmodule





