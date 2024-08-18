// Code your testbench here
// or browse Examples
module fa_test;
reg a_f_t,b_f_t,c_f_t;
wire s_f_t,ca_f_t;
fa F1(.a_f(a_f_t),.b_f(b_f_t),.c_f(c_f_t),.s_f(s_f_t),.ca_f(ca_f_t));
initial
begin
	repeat(10)
	begin
		a_f_t=$random;
		b_f_t=$random;
		c_f_t=$random;
		#10;
      $display("a=%d b=%d c=%d sum=%d carry=%d",a_f_t,b_f_t,c_f_t,s_f_t,ca_f_t);
	end
end
endmodule

