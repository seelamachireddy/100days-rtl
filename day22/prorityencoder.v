`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 10:55:57
// Design Name: 
// Module Name: prorityencoder
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


module prorityencoder(i,a,y);
input [3:0]i;
output reg[1:0]a;
output reg y;
always @(*)begin
casex(i)
4'b0000:begin
a=2'bxx;y=1'b0;
end
4'b0001:begin
a=2'b00;y=1'b1;
end
4'b001x:begin
a=2'b01;y=1'b1;
end
4'b01xx:begin
a=2'b10;y=1'b1;
end
4'b1xxx:begin
a=2'b11;y=1'b1;
end
endcase
end
endmodule
