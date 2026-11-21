`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 10:47:57
// Design Name: 
// Module Name: tb_asyn_dff
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


module tb_asyn_dff();
reg clk,rst,d;
wire q;
asyn_dff uut(clk,rst,d,q);
always #5 clk=~clk;
initial begin
clk=1;rst=1;
#10 rst=0; d=0;
#10 d=1;
#30 $finish();
end
initial 
$monitor($time,"clk=%b,rst=%b,d=%b,q=%b",clk,rst,d,q);
endmodule
