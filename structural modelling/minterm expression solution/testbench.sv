// Code your testbench here
// or browse Examples
module minex_test;
reg a_t,b_t,c_t;
wire f1_t,f2_t;
minex M1(.a(a_t),.b(b_t),.c(c_t),.f1(f1_t),.f2(f2_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		b_t=$random;
		c_t=$random;
		#10;
      $display("a=%d b=%d c=%d f1=%d f2=%d",a_t,b_t,c_t,f1_t,f2_t);
	end
end
endmodule
