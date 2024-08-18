// Code your design here
module gates(a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
input a,b;
output y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor;
and A1(y_and,a,b);
or O1(y_or,a,b);
not N1(y_not,a,b);
nand N2(y_nand,a,b);
nor N3(y_nor,a,b);
xor X1(y_xor,a,b);
xnor X2(y_xnor,a,b);
endmodule

