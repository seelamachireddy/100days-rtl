`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 09:38:52
// Design Name: 
// Module Name: encoder_8X3
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


module encoder_8X3(en,i,y);
input [7:0]i;
  input en;
  output reg[2:0]y;
  always @(en,i)begin
    if(en)
      case(i)
        8'b00000001:y=0;
        8'b00000010:y=1;
        8'b00000100:y=2;
        8'b00001000:y=3;
        8'b00010000:y=4;
        8'b00100000:y=5;
        8'b01000000:y=6;
        8'b10000000:y=7;
        default y=3'bxxx;
      endcase
    else
      y=3'bzzz;
  end
endmodule
