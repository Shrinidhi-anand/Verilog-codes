// Code your testbench here
// or browse Examples

/*
//Normal test bench




*/

module enco_test;
reg [7:0]a;
wire [2:0]y;
enco8to3 E1(.a(a),.y(y));
initial
begin
  		a= 4'b0100;
  		#10;
  		$display("%d….a=%d y=%d",$time,a,y);
	repeat(5)
	begin
		a=$random;
		#10;
      $display("%d….a=%d y=%d",$time,a,y);
	end
end
endmodule
