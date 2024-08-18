// Code your testbench here
// or browse Examples

/*
//Normal test bench
module de2to4_test;
reg [1:0]a_t;
wire [3:0]y_t;
deco2to4 D1(.a(a_t),.b(b_t),.y(y_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		b_t=$random;
		#10;
		//$display(“a=%d b=%d y=%d”,a_t,b_t,y_t);
		//$display(“a=%d b=%d y3=%d y2=%d y1=%d y0=%d”,a_t,b_t,y3_t,y2_t,y1_t,y0_t);
	end
end
endmodule
*/

module deco2to4_test;
reg [1:0]a;
wire [3:0]y;
integer mcmp=0;
reg [3:0]expr;
deco2to4 D2(.a(a),.y(y));
initial
begin
	repeat(5)
	begin	
		a=$random;
		#20;
		expr=4'b0001;
      if(a==2'b00)
			expr=expr;
      if(a==2'b01)
			expr=expr<<1;
      if(a==2'b10)
			expr=expr<<2;
      if(a==2'b11)
			expr=expr<<3;
		if(expr==y)
          $display("%d….Pass….a=%d y=%d expr=%d",$time,a,y,expr); 
		else
		begin
          $display("%d….Pass….a=%d y=%d expr=%d",$time,a,y,expr); 
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
      $display("Some cases failed");
	else
      $display("All cases passed");
end
endmodule
