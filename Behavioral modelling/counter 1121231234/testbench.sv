// Code your testbench here
// or browse Examples

/*
//Normal test bench

module counter2_t;
reg clk,rst;
wire [2:0]count;
counter2 C8(.clk(clk),.rst(rst),.count(count));
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
module counter2_sct;
reg clk,rst;
wire [2:0]count;
integer mcmp;
reg [2:0]e,c;
counter2 C4(.clk(clk),.rst(rst),.count(count));
initial
begin
	repeat(2)
	begin
		@(posedge clk)
		rst<=1;
		if(rst==1)
		begin		
			e<=1;
		end
	end
	repeat(4)
	begin
		rst<=0;
		if(rst)
		begin
			e<=1;
		end
		for(c=1;c<8;c=c+1)
		begin
			if(c==1)
			begin
				@(posedge clk)
				e=1;
			end
			else
			begin
				e<=1;
				repeat(c)
				@(posedge clk)
				e <= e + 1;
				if(e==7 && c==7)
					e<=1;
			end
			if(e==count)
			begin
              $display("Pass….rst=%d count=%d e=%d",rst,count,e);
				mcmp=0;
            end
			else
			begin
              $display("Fail….rst=%d count=%d e=%d",rst,count,e);
				mcmp=mcmp+1;
			end
		end
	end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions passed");
end
initial
begin
	#1000;
	$finish;
end
endmodule
