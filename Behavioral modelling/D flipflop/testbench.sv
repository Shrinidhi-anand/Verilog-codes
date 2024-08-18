// Code your testbench here
// or browse Examples

/*
//Normal test bench

module dff_test;
reg clk,rst,d;
wire q,qb;
dff D13(.clk(clk),.rst(rst),.d(d),.q(q),.qb(qb));
initial
begin
	clk=0;
	rst<=1;
	d<=1’b0;
	#20;
	rst<=0;
	repeat(5)
	begin	
		d<=$random;
		#10;
		$display(“%d….rst=%d d=%d q=%d qb=%d”,$time,rst,d,q,qb);
	end
end
endmodule


*/



//Self checking test bench
module dff_test();
reg clk,rst,d;
wire q,qb;
integer mcmp;
reg expr,exprb;
dff D100(.clk(clk),.rst(rst),.d(d),.q(q),.qb(qb));
initial
begin
	clk=0;
	forever #10 clk=~clk;
  @(posedge clk) rst<=1'b1;
	#50;
end
initial
begin
	repeat(10)
	begin
		@(posedge clk)
		d<=$random;
		rst<=0;
		if(rst)
		begin
			@(negedge clk)
			expr<=0;
			exprb<=1;
		end
		else
		begin
			@(posedge clk)
			expr<=d;
			exprb<=~d;
		end
		@(negedge clk)
		if(q==expr)
          $display("Pass rst=%d d=%d q=%d qb=%d expq=%d expqb=%d",rst,d,q,qb,expr,exprb);
		else
		begin
          $display("Pass rst=%d d=%d q=%d qb=%d expq=%d expqb=%d",rst,d,q,qb,expr,exprb);
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

