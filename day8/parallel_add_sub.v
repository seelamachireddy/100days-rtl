`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 22:16:43
// Design Name: 
// Module Name: parallel_add_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module parallel_add_sub(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output[3:0]s;
output cout;
wire d1,d2,d3;
full_adder f1(a[0],cin^b[0],cin,s[0],d1);
full_adder f2(a[1],cin^b[1],d1,s[1],d2);
full_adder f3(a[2],cin^b[2],d2,s[2],d3);
full_adder f4(a[3],cin^b[3],d3,s[3],cout);
endmodule

