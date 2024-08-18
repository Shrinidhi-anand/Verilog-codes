// Code your testbench here
// or browse Examples

/*
//Normal test bench
module demux_test;
reg a_t;
reg [1:0]s_t;
wire [3:0]y_t;
demux1to4 D1(.a(a_t),.s(s_t),.y(y_t));
initial
begin
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		#10;
		$display(“a=%b s=%b y=%b”a_t,s_t,y_t);
	end
end
endmodule



*/

module demux_test;
reg a;
reg [1:0]s;
wire [3:0]y;
integer mcmp;
reg [3:0]expr;
demux1to4 D1(.a(a),.s(s),.y(y));
initial
begin
	repeat(5)
	begin
		a=$random;
		s=$random;
		#10;
		if(a==0)
			expr=0;
		else
		begin
			expr=4'b0001;
			#20
          if(s==2'b00)
				expr=expr;
          if(s==2'b01)
				expr=expr<<1;
          if(s==2'b10)
				expr=expr<<2;
          if(s==2'b11)
				expr=expr<<3;
			#10;
		end
	end
	if(y==expr)
      $display("%d….pass….a=%d s=%d y=%d",a,s,expr);
	else
      $display("%d….Fail….a=%d s=%d y=%d",a,s,expr);
end	
endmodule
