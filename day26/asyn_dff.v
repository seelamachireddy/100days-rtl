`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 10:47:41
// Design Name: 
// Module Name: asyn_dff
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


module asyn_dff(input clk,rst,d,output reg q);
always @(posedge clk or negedge rst)begin
if(!rst)
q<=0;
else
q<=d;
end
endmodule
