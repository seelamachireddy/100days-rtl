`timescale 1ns / 1ps
module parallel_sub(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output[3:0]s;
output cout;
wire d1,d2,d3;
full_adder f1(a[0],~b[0],cin,s[0],d1);
full_adder f2(a[1],~b[1],d1,s[1],d2);
full_adder f3(a[2],~b[2],d2,s[2],d3);
full_adder f4(a[3],~b[3],d3,s[3],cout);
endmodule
