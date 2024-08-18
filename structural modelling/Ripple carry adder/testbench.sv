// Code your testbench here
// or browse Examples
module ripple_test;
reg [3:0]a_r_t,b_r_t;
reg c_r_t;
wire [3:0]s_r_t;
wire count_r_t;
ripple R69(a_r_t,b_r_t,c_r_t,s_r_t,cout_r_t);
initial
begin
	repeat(5)
	begin
		a_r_t=$random;
		b_r_t=$random;
		c_r_t=$random;
		#10;
      $display("a=%d b=%d c=%d s=%d carry=%d",a_r_t,b_r_t,c_r_t,s_r_t,cout_r_t);
end
$finish;
end
endmodule


