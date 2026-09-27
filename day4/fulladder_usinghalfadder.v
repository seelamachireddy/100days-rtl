`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2026 11:04:20
// Design Name: 
// Module Name: fulladder_usinghalfadder
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


module fulladder_usinghalfadder(input a,b,c,output sum,carry);
wire w1,w2,w3;
half_adder h1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder h2(.a(w1),.b(c),.sum(sum),.carry(w3));
or o1(carry,w2,w3);



endmodule
