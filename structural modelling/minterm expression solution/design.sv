// Code your design here
module minex(a,b,c,f1,f2);
input a,b,c;
output f1,f2;
wire abar,bbar,cbar,x,y,z,l,m,n;
not n1(abar,a);
not n2(bbar,b);
not n3(cbar,c);
and a1(x,bbar,c);
and a2(y,a,bbar);
and a3(z,a,c);
and a4(l,abar,bbar);
and a5(m,bbar,c);
and a6(n,abar,c);
or o1(f1,x,y,z);
or o2(f2,l,m,n);
endmodule
