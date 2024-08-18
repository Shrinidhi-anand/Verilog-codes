// Code your testbench here
// or browse Examples
module nandgate_test;
reg a_t,b_t;
wire y_t;
nandgate A1(.a(a_t),.b(b_t),.y(y_t));
initial 
begin
	a_t=1'b0;
	b_t=1'b0;
	#10;
  $display("a=%d b=%d y=%d",a_t,b_t,y_t);
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		#10;
      $display("a=%d b=%d y=%d",a_t,b_t,y_t);
	end
end
endmodule
