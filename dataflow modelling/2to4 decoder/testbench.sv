// Code your testbench here
// or browse Examples
module de2to4_test;
reg a_t,b_t;
wire y3_t,y2_t,y1_t,y0_t;
de2to4 D1(.a(a_t),.b(b_t),.y3(y3_t),.y2(y2_t),.y1(y1_t),.y0(y0_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		b_t=$random;
		#10;
		//$display(“a=%d b=%d y=%d”,a_t,b_t,{y3_t,y2_t,y1_t,y0_t});
      $display("a=%d b=%d y3=%d y2=%d y1=%d y0=%d",a_t,b_t,y3_t,y2_t,y1_t,y0_t);
	end
end
endmodule


