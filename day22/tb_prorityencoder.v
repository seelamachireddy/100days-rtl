`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 10:56:35
// Design Name: 
// Module Name: tb_prorityencoder
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


module tb_prorityencoder();
reg [3:0]i;
wire [1:0]a;
wire y;
prorityencoder uut(i,a,y);
initial begin
repeat(10)begin
i=$random;
#10;
end
end
initial 
$monitor($time,"i=%b,a=%b,y=%b",i,a,y);
endmodule
