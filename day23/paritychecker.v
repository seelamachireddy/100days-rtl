`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 10:57:27
// Design Name: 
// Module Name: paritychecker
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


module paritychecker(in,oddpar,evenpar);
input [7:0]in;
output oddpar,evenpar;
assign oddpar=^(in);
assign evenpar=~^(in);
endmodule
