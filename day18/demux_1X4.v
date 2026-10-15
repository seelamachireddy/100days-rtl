`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 10:49:14
// Design Name: 
// Module Name: demux_1X4
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


module demux_1X4(input i,input[1:0]s,output reg[3:0]y);
always @(*)begin
y=4'b0000;
case(s)
2'b00:y[0]=i;
2'b01:y[1]=i;
2'b10:y[2]=i;
2'b11:y[3]=i;
endcase
end
endmodule
