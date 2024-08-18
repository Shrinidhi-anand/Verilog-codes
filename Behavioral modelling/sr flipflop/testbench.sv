// Code your testbench here
// or browse Examples

/* 
//normal test bench
module srff_test;
reg clk,rst;
reg [1:0]sr;
wire q,qb;
srff j50(.sr(sr),.rst(rst),.clk(clk),.q(q),.qb(qb));
initial
begin	
	clk=0;
	forever #10 clk=~clk;
end
initial
begin
	repeat(2)
	begin
		rst<=1;
	end
	repeat(10)
	begin	
		rst<=0;
		sr=$random
		#10;
		$display(“rst =%d sr=%d q=%d qb=%d”,rst,sr,q,qb);
	end
end
endmodule
*/

module srff_sct;
reg clk,rst;
reg [1:0]sr;
wire q,qb;
integer mcmp;
reg expr,exprb;
srff S4(.clk(clk),.rst(rst),.sr(sr),.q(q),.qb(qb));
initial
begin
	clk=0;
	forever #10 clk=~clk;
end
initial
begin
	rst<=1;
  if(rst)
    	expr = 0;
	@(posedge clk);
	rst=0;
 
      	
	repeat(10)
	begin
		@(posedge clk)
		sr=$random;
		if(rst)
		begin
			expr=0;
			exprb=1;
		end
		else
		begin
			case(sr)
			2'b00:expr=expr;
			2'b01:expr=0;
			2'b10:expr=1;
			2'b11:expr=1'bx;	
			endcase
		end
		if(q==expr)
          $display("Pass….rst=%d sr=%d q=%d qb=%d expr=%d exprb=%d",rst,sr,q,qb,expr,exprb);
		else
		begin
          $display("Fail….rst=%d sr=%d q=%d qb=%d expr=%d exprb=%d",rst,sr,q,qb,expr,exprb);
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
      $display("Some cases failed");
	else
      $display("All cases pass");
	$finish;
end
endmodule
