`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2026 11:10:40
// Design Name: 
// Module Name: tb_fulladder_usinghalfadder
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


module tb_fulladder_usinghalfadder();
reg a,b,c;
wire sum,carry;


fulladder_usinghalfadder uut(a,b,c,sum,carry);
initial begin
 a=1'b0;b=1'b0;c=1'b0;
  #5 a=1'b0;b=1'b0;c=1'b1;
  #5 a=1'b0;b=1'b1;c=1'b0;
  #5 a=1'b0;b=1'b1;c=1'b1;
  #5 a=1'b1;b=1'b0;c=1'b0;
  #5 a=1'b1;b=1'b0;c=1'b1;
  #5 a=1'b1;b=1'b1;c=1'b0;
  #5 a=1'b1;b=1'b1;c=1'b1;
  #100 $finish();
  end
  initial 
    $monitor($time,"a=%b,b=%b,c=%b.,sum=%b,carry=%b",a,b,c,sum,carry);
endmodule