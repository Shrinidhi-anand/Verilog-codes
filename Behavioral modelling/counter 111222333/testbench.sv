// Code your testbench here
// or browse Examples

/*
//Normal test bench

module counter1_t;
reg clk,rst;
wire [2:0]count;
counter1 C6(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=0;
	rst=1;
	forever #10 clk=~clk;
end
initial
begin
	@(posedge clk)
	rst<=0;
	#600;
	$finish;
end
endmodule


*/



//Self checking test bench
module counter1_sct;
reg clk,rst;
wire [2:0]count;
integer mcmp;
reg [2:0]expr;
counter1 C5(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=0;
	forever #10 clk=~clk;
end
initial
begin
	rst<=1;
	repeat(2)
	begin
		@(negedge clk)
		rst<=1;
	end
	@(posedge clk)
	rst<=0;
	repeat(5)
	begin
		@(posedge clk)
		for(expr=1;expr<8;expr=expr+1)
		begin
			if(expr==0)
				expr<=1;
			begin
				repeat(3)
				begin
					@(posedge clk)
					if(expr==count)
                      $display("Pass rst=%d count=%d expr=%d",rst,count,expr);
					else
					begin
                      $display("Pass rst=%d count=%d expr=%d",rst,count,expr);			
						mcmp=mcmp+1;
					end
				end
			end
		end
	end
	if(mcmp>0)
      $display("Some cases failed");
	else
      $display("All conditions pass");
$finish();
end
initial
begin
	repeat(50)
	begin
		@(posedge clk);
	end
	$finish();
end
endmodule
