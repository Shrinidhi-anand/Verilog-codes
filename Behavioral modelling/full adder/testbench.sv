// Code your testbench here
// or browse Examples

/*
//Normal test bench

module fa_test;
reg a_f_t,b_f_t,c_f_t;
wire s_f_t,ca_f_t;
fulladd F1(.a_f(a_f_t),.b_f(b_f_t),.c_f(c_f_t),.s_f(s_f_t),.ca_f(ca_f_t));
initial
begin
	repeat(10)
	begin
		a_f_t=$random;
		b_f_t=$random;
		c_f_t=$random;
		#10;
		$display(“a=%d b=%d c=%d sum=%d carry=%d”,a_f_t,b_f_t,c_f_t,s_f_t,ca_f_t);
	end
end
endmodule



*/

module fulladd_sct;
reg a,b,c;
wire sum,carry;
reg [1:0]expr,x;
int mcmp;
fulladd F3(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial
begin
	repeat(5)
begin
	a=$random;
	b=$random;
	c=$random;
	#10
	x={carry,sum};
	expr=a+b+c;
	#10;
	if(expr==x)
	begin
      $display("%d….pass….a=%d b=%d c=%d sum=%d carry-%d",$time,a,b,c,sum,carry);
	end
	else
	begin
      $display("%d….fail….a=%d b=%d c=%d sum=%d carry-%d",$time,a,b,c,sum,carry);
		mcmp=mcmp+1;
	end
end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions passed");
end
endmodule
