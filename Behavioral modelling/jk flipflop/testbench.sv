// Code your testbench here
// or browse Examples



module jkff_test;
reg clk;
reg [1:0]jk;
wire q,qb;
jkff j50(.jk(jk),.clk(clk),.q(q),.qb(qb));
initial
begin	
	clk=0;
	forever #10 clk=~clk;
end
initial
begin
	repeat(10)
	begin	
		jk=$random
		#10;
      $display("jk=%d q=%d qb=%d",jk,q,qb);
	end
end
endmodule

