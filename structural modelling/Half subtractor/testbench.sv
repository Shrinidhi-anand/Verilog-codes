// Code your testbench here
// or browse Examples
module hs_test;
reg a_t,b_t;
wire d_t,bo_t;
hs H1(.a(a_t),.b(b_t),.d(d_t),.bo(bo_t));
initial
begin
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		#10;
      $display("a=%d b=%d difference=%d borrow=%d",a_t,b_t,d_t,bo_t);
	end
end
endmodule
