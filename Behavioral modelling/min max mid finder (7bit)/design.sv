// Code your design here

module comp(a,b,c,min,max,mid);
input [6:0]a,b,c;
output reg min,max,mid;
always@(a,b,c)
begin
	if(a>b)
	begin	
		if(b>c)
		begin
			max=a;
			min=c;
		end
		else 
		begin
			if(a>c)
			begin
				max=a;
				min=b;
			end
			else
			begin
				max=c;
				min=b;
			end
		end
	end
	else
	begin
		if(b>c)
		begin
			if(a>c)
			begin
				max=b;
				min=c;
			end
			else
			begin
				max=b;
				min=a;
			end
		end
		else
		begin
			max=c;
			min=a;
		end
end
	mid = a+b+c-(min+max);
end
endmodule
