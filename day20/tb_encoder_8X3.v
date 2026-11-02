`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 09:39:27
// Design Name: 
// Module Name: tb_encoder_8X3
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


module tb_encoder_8X3();
reg [7:0] i;
  reg en;
  wire [2:0]y;
  encoder_8X3 dut(en,i,y);
  initial begin
    en=0;i=4;
    #10 en=1;i=32;
    #10 i=64;
    #10 i=128;
    #50 $finish();
  end
  initial
    $monitor($time,"i=%d,en=%b,y=%d",i,en,y);
endmodule