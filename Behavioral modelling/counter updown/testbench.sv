// Code your testbench here
// or browse Examples

/*
//Normal test bench

module counter3_t;
reg clk,rst;
wire [2:0]count;
counter3 C1(.clk(clk),.rst(rst),.count(count));
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
module counter3_sct;
reg clk,rst;
wire [2:0]count;
integer mcmp;
reg [2:0]e;
counter3 C5(.clk(clk),.rst(rst),.count(count));
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
	repeat(2)
	begin
		rst<=1;
		if(rst)
			e<=1;
		if(e==count)
		begin
          $display("pass….rst=%d count=%d e=%d",rst,count,e);
		end
		else
		begin
          $display("Fail….rst=%d count=%d e=%d",rst,count,e);
			mcmp=mcmp+1;
		end
end
repeat(5)
begin
	rst<=0;
	for(e=1;e<=7;e=e+1)
	begin	
		if(e<7)
		begin
			@(posedge clk)
			e<=e+1;
		end
		else
		begin
			if(e==7)
			begin
				for(e=7;e>1;e=e-1)
				begin
					@(posedge clk)
					e<=e-1;
				end
			end
		end
		if(e==count)
		begin
             $display("pass….rst=%d count=%d e=%d",rst,count,e);
		end
		else
		begin
             $display("Fail….rst=%d count=%d e=%d",rst,count,e);
			mcmp=mcmp+1;
		end
	end
end
if(mcmp>0)
  $display("some conditions failed");
else
   $display("All conditions pass");
end

initial
begin
	#1000;
	$finish();
end
endmodule

