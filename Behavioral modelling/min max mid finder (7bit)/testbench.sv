// Code your testbench here
// or browse Examples

/* //Normal test bench
module comp_test;
reg [6:0]a_t,b_t,c_t;
wire [6:0]min_t,max_t,mid_t;
comp C1(.a(a_t),.b(b_t),.c(c_t),.min(min_t),.max(max_t),.mid(mid_t));
initial
begin
	repeat(10)
	begin	
		a_t=$random;
		b_t=$random;
		c_t=$random;
		#10;
		$display(“a=%d b=%d c=%d min=%d max=%d mid=%d”,a_t,b_t,c_t,min_t,max_t,mid_t);
end
end
endmodule
*/
module comp_sct;
reg [6:0]a,b,c;
wire [6:0]min,max,mid;
integer mcmp=0;
reg [6:0]expr_min,expr_max,expr_mid;
comp C3(.a(a),.b(b),.c(c),.min(min),.max(max),.mid(mid));
initial
begin
	repeat(5)
	begin
		a=$random;
		b=$random;
		c=$random;
		#10;
		if(a>b && a>c && b>c)
		begin
			expr_max=a;
			expr_min=c;
			expr_mid=b;
			#10;
		end
		if(a>b && a>c && c>b)
		begin
			expr_max=a;
			expr_min=b;
			expr_mid=c;
			#10;
		end
		if(b>a && b>c && c>a)
		begin
			expr_max=b;
			expr_min=a;
			expr_mid=c;
			#10;
		end
		if(b>a && b>c && a>c)
		begin
			expr_max=b;
			expr_min=c;
			expr_mid=a;
			#10;
		end
		if(c>a && c>b && a>b)
		begin
			expr_max=c;
			expr_min=b;
			expr_mid=a;
			#10;
		end
		if(c>a && c>b && b>a)
		begin
			expr_max=c;
			expr_min=a;
			expr_mid=b;
			#10;
		end
		if(expr_max==max && expr_min==min && expr_mid==mid)
          $display("%d……Pass…..a=%d b=%d c=%d min=%d max=%d mid=%d",$time,a,b,c,expr_min,expr_max,expr_mid);
		else
		begin
          $display("%d……Fail…..a=%d b=%d c=%d min=%d max=%d mid=%d",$time,a,b,c,expr_min,expr_max,expr_mid);
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions passed");
end
endmodule
