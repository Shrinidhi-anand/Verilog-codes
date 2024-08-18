// Code your testbench here
// or browse Examples
module ha_test;
reg a_t,b_t;
wire s_t,ca_t;
ha H1(.a(a_t),.b(b_t),.s(s_t),.ca(ca_t));
initial
begin
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		#10;
      $display("a=%d b=%d sum=%d carry=%d",a_t,b_t,s_t,ca_t);
	end
end
endmodule
