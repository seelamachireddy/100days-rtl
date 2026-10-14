`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 09:38:20
// Design Name: 
// Module Name: tb_demux_1X2
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


module tb_demux_1X2();
reg a,s;
wire y0,y1;
demux_1X2 uut(a,s,y0,y1);
initial begin
s=0;a=1;
#10;
s=1;a=1;
#10 $finish();
end
initial 
$monitor($time,"a=%b,s=%b,y0=%b,y1=%b",a,s,y0,y1);
endmodule
