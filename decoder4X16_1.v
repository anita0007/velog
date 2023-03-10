module decoder4X16_1(x0,x1,x2,x3,s);
input x0,x1,x2,x3;
wire [15:0] b;
output s;

 
decoder d0(x0,x1,x2|x3,b[0],b[1],b[2],b[3]);
decoder d1(x0,x1,~x2|x3,b[4],b[5],b[6],b[7]);
decoder d3(x0,x1,x2|~x3,b[8],b[9],b[10],b[11]);
decoder d4(x0,x1,~x2|~x3,b[12],b[13],b[14],b[15]);


assign s = b[1]|b[5]|b[9]|b[15];

endmodule