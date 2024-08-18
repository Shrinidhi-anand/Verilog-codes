// Code your testbench here
// or browse Examples
module notgate_test;
reg a_t;
wire y_t;
notgate N1(.a(a_t),.y(y_t));
initial
begin
	repeat(5)
	begin
		a_t=$random;
		#10;
      	$display("a=%d y=%d",a_t,y_t);
	end
end
endmodule
