`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 23:11:28
// Design Name: 
// Module Name: mux16_using_8x1_2x1
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


module mux16_using_8x1_2x1(input [15:0]i,input [3:0]sel,output y);
 wire y1,y2;
 mux_8_1 m1( i[0], i[1], i[2], i[3],
    i[4], i[5], i[6], i[7],
    sel[0], sel[1], sel[2], y1);
 mux_8_1 m2(i[8], i[9], i[10], i[11],
    i[12], i[13], i[14], i[15],
    sel[0], sel[1], sel[2], y2);
 mux_2_1 m3(y1,y2,sel[3],y);
endmodule
