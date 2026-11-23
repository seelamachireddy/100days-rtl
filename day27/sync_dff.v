`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 11:08:37
// Design Name: 
// Module Name: sync_dff
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


module sync_dff(input clk,rst,d,output reg q);
always @(posedge clk)begin
if(rst)
q<=0;
else
q<=d;
end
endmodule
