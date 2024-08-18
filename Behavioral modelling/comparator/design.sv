// Code your design here

module compa(a,b,e,g,l);	
  input [1:0]a,b;
output reg e,g,l;
always@(a,b)
begin
	if(a==b)
	begin
		e=1;
		g=0;
		l=0;
	end
	else if(a>b)
	begin
		e=0;
		g=1;
		l=0;
	end
	else if(a<b)
	begin
		e=0;
		l=1;
		g=0;
	end
	else
	begin
		e=1'bx;
		g=1'bx;
		l=1'bx;
	end
end
endmodule
