// Code your testbench here
// or browse Examples
module fullsub_test;
reg a_t,b_t,c_t;
wire d_t,bo_t;
fullsub F1(.a(a_t),.b(b_t),.c(c_t),.d(d_t),.bo(bo_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		b_t=$random;
		c_t=$random;
		#10;
      $display("a=%d b=%d c=%d difference=%d borrorw=%d",a_t,b_t,c_t,d_t,bo_t);
	end
end
endmodule
