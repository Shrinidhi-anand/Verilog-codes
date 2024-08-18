// Code your testbench here
// or browse Examples
module comp2bit_test;
reg [1:0]a_t,b_t;
wire e_t,l_t,g_t;
com2bit C1(.a(a_t),.b(b_t),.e(e_t),.l(l_t),.g(g_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		b_t=$random;
		#10;
      $display("a=%d b=%d e=%d l=%d g=%d",a_t,b_t,e_t,l_t,g_t);
	end
end
endmodule


