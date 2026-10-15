`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 10:49:56
// Design Name: 
// Module Name: tb_demux_1X4
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


module tb_demux_1X4();
reg i;
reg [1:0]s;
wire [3:0]y;
demux_1X4 uut(i,s,y);
initial begin
i=1'b1;
s=2'b00;#10;
s=2'b01;#10;
s=2'b10;#10;
s=2'b11;#10;

i=1'b0;

s=2'b00;#10;
s=2'b01;#10;
s=2'b10;#10;
s=2'b11;#10;
$finish();
end
initial
$monitor($time,"i=%d,s=%b,y=%b",i,s,y);
endmodule
