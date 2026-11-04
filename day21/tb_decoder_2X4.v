`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 10:38:09
// Design Name: 
// Module Name: tb_decoder_2X4
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


module tb_decoder_2X4();
reg [1:0]i;
reg en;
wire [3:0]y;
decoder_2X4 uut(i,en,y);
initial begin
en=0;i=1;
#10 i=2;
#10 i=3;
#10 en=1;i=1;
#10 i=2;
#10 i=3;
#50 $finish();
end
initial 
$monitor($time,"i=%b,en=%b,y=%b",i,en,y);
endmodule
