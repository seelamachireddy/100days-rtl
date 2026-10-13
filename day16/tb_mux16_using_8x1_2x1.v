`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 23:13:02
// Design Name: 
// Module Name: tb_mux16_using_8x1_2x1
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


module tb_mux16_using_8x1_2x1();
reg [15:0]i;
reg [3:0]sel;
wire y;
mux16_using_8x1_2x1 uut(i,sel,y);
 initial begin
 i=16'd21569;
 sel=4'b0000;
 #10 sel=4'b0001;
 #10 sel=4'b0010;
 #10 sel=4'b0011;
 #10 sel=4'b0100;
 #10 sel=4'b0101;
 #10 sel=4'b0110;
 #10 sel=4'b0111;
 #10 sel=4'b1000;
 #10 sel=4'b1001;
 #10 sel=4'b1010;
 #10 sel=4'b1011;
 #10 sel=4'b1100;
 #10 sel=4'b1101;
 #10 sel=4'b1110;
 #10 sel=4'b1111;
 #200 $finish();
 end
 initial
 $monitor($time,"i=%b,sel=%b,y=%b",i,sel,y);
endmodule
