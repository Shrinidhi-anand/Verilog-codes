// Code your testbench here
// or browse Examples

/*
//Normal test bench



*/

module funadd_test;
reg [3:0]a,b;
wire [4:0]sum;
funadd F12(a,b,sum);
initial
begin
	#20;
	repeat(5)
	begin
		a=$random;
		b=$random;
		#10
      $display("a=%d b=%d sum=%d",a,b,sum);
	end
end
endmodule
