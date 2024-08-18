// Code your testbench here
// or browse Examples

/*
//Normal test bench
module compa_test;
reg [1:0]a_t,b_t;
wire e_t,g_t,l_t;
compa C4(.a(a_t),.b(b_t),.e(e_t),.l(l_t),.g(g_t));
initial
begin
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		#10;
		$display(“a=%d b=%d l=%d g=%d e=%d”,a_t,b_t,l_t,g_t,e_t);
	end
end
endmodule

*/

module compa_sct;
reg [1:0]a,b;
wire e,l,g;
integer mcmp;
reg [2:0]leg,x;
compa C7(.a(a),.b(b),.e(e),.l(l),.g(g));
initial
begin
	repeat(5)
    begin
		a=$random;
		b=$random;
		#10;
		if(a>b)
			#20 
			leg = 3'b001;
		if(a==b)
			#20
			leg = 3'b010;
		if(a<b)
			#20
			leg=3'b100;
		#10;
		x={l,e,g};
		if(x==leg)
          $display("%d….pass….a=%d b=%d l=%d e=%d g=%d el=%d ee=%d eg=%d",$time,a,b,l,e,g,leg[2],leg[1],leg[0]);
		else
		begin
          $display("%d….pass….a=%d b=%d l=%d e=%d g=%d el=%d ee=%d eg=%d",$time,a,b,l,e,g,leg[2],leg[1],leg[0]);
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions pass");
end
endmodule

