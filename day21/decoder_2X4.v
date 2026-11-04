`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 10:37:42
// Design Name: 
// Module Name: decoder_2X4
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


module decoder_2X4(i,en,y);
input [1:0]i;
input en;
output reg[3:0]y;
always @(en,i)begin
if(en)begin
case(i)
2'b00:y=4'b0001;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
endcase
end
else
y=4'b0000;
end
endmodule
