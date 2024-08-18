// Code your testbench here
// or browse Examples
module maxmin_test;
reg [3:0]a_t,b_t;
wire [3:0]max_t,min_t;
maxmin M1(a_t,b_t,max_t,min_t);
initial
begin
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		#10;
      $display("a=%d b=%d max=%d min=%d",a_t,b_t,max_t,min_t);
	end
end
endmodule

