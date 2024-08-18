// Code your testbench here
// or browse Examples
module gates_test;
reg a_t,b_t;
wire y_and_t,y_or_t,y_not_t,y_nand_t,y_nor_t,y_xor_t,y_xnor_t;
gates G1(.a(a_t),.b(b_t),.y_and(y_and_t),.y_or(y_or_t),.y_not(y_not_t),.y_nand(y_nand_t),.y_nor(y_nor_t),.y_xor(y_xor_t),.y_xnor(y_xnor_t));
initial
begin
	repeat(10)
	begin
		a_t=$random;
		b_t=$random;
		#10;
      $display("a=%d b=%d y_and=%d y_or=%d y_not=%d y_nand=%d y_nor=%d y_xor=%d y_xnor=%d",a_t,b_t,y_and_t,y_or_t,y_not_t,y_nand_t,y_nor_t,y_xor_t,y_xnor_t);
	end
end
endmodule



