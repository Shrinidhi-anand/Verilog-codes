// Code your testbench here
// or browse Examples

/*
//Normal test bench

module counter_test;
reg clk,rst;
wire [3:0]count;
counter C63(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=0;
	forever
	begin
		#5 clk=~clk;
	end
end
initial
begin
	rst<=1;
	#20;
	rst<=0;
	#200;
	$finish;
end
endmodule


*/



//Self checking test bench
module counter_sct;
reg clk,rst;
wire [3:0]count;
  logic [3:0]expr;
integer mcmp;
counter C7(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=0;
	forever
	begin
		#10
		clk=~clk;
	end
end
initial
begin
	rst<=1;
end
initial
begin
	repeat(2)
	begin
		@(posedge clk)
		rst<=1;
		if(rst)
			expr=0;
		else
		begin
			if(count==15)
				expr<=0;
			else
				expr<=expr+1;
		end
		@(negedge clk)
		if(expr==count)
          $display("Pass rst=%d count=%d expr=%d",rst,count,expr);
		else
		begin
          $display("Fail rst=%d count=%d expr=%d",rst,count,expr);
			mcmp=mcmp+1;
		end
	end
	repeat(15)
	begin
		rst=0;
if(rst==1)
	expr<=0;
else
		begin
			if(count==15)
				expr<=0;
			else
				expr<=expr+1;
end
@(negedge clk)
		if(expr==count)
          $display("Pass rst=%d count=%d expr=%d",rst,count,expr);
		else
		begin
          $display("Fail rst=%d count=%d expr=%d",rst,count,expr);
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions passed");
$finish;
end
endmodule
