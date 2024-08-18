// Code your testbench here
// or browse Examples

/*
//Normal test bench

module counter4_t;
reg clk,rst;
wire [2:0]count;
counter4 C3(.clk(clk),.rst(rst),.count(count));
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
module counter4_sct;
reg clk,rst;
wire [2:0]count;
integer mcmp;
reg [2:0]e,f;
counter4 c2(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=0;
	forevjavascript:void(0)er #10 clk=~clk;
end
initial
begin
	repeat(3)
	begin
		#5
		rst=1;
		begin
			if(rst)
			begin
				e<=1;
				f<=1;
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
	repeat(5)
	begin
		rst=0;
		@(posedge clk)
		if(rst)
		begin
			e<=1;
			f<=1;
		end
		else
		begin
			for(f=1;f<=7;f=f+1)
			begin
				repeat(f)
				begin
					e<=f;
					@(posedge clk)
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
		end
	end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions pass");
end
initial
begin
	#1000;
	$finish();
end
endmodule
