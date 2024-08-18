// Code your testbench here
// or browse Examples

/*
//Normal test bench

module mux_test;
reg [7:0]a;
reg [2:0]s;
wire y;
mux8to1 M4(.a(a),.s(s),.y(y));
initial
begin
	repeat(5)
	begin
		a=$random;
		s=$random;
		#10
		$display(“a=%d s=%d y=%d”,a,s,y);
	end
end
endmodule

*/



//Self checking test bench
module mux_sct;
reg [7:0]a;
reg [2:0]s;
wire y;
logic expr;
integer mcmp;
mux8to1 M5(.a(a),.s(s),.y(y));
initial
begin
	repeat(5)
	begin
		a=$random;
		s=$random;
		#10
		case(s)
		3'b000:expr=a[0];
		3'b001:expr=a[1];
3'b010:expr=a[2];
		3'b011:expr=a[3];
3'b100:expr=a[4];
		3'b101:expr=a[5];
3'b110:expr=a[6];
		3'b111:expr=a[7];
		default:expr=1'bx;
		endcase
		#10;
		if(expr==y)
          $display("%d….pass….a=%d s=%d y=%d exp_y=%d",$time,a,s,y,expr);
		else
		begin
          $display("%d….pass….a=%d s=%d y=%d exp_y=%d",$time,a,s,y,expr);
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
      $display("Some conditions failed");
	else
      $display("All conditions passed");
end
endmodule
