// Code your testbench here
// or browse Examples
module enco4to2_test;
reg [3:0]a_t;
wire [1:0]y_t;
enco4to2 E1(.a(a_t),.y(y_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		#10;
      $display("a=%d y=%d",a_t,y_t);
	end
end
endmodule



