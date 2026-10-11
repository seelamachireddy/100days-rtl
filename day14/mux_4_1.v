`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 22:25:08
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(input i0,i1,i2,i3,sel0,sel1,output reg y );
always@(*)begin
if ({sel0,sel1}==2'b00)
y=i0;
else if ({sel0,sel1}==2'b01)
y=i1;
else if({sel0,sel1}==2'b10)
y=i2;
else
y=i3;
end
endmodule
