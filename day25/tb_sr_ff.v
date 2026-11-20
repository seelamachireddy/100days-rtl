`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 10:29:22
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff();
reg clk,rst,s,r;
wire q,qb;
sr_ff a(clk,rst,s,r,q,qb);
always #5 clk=~clk;
initial begin
clk=0;rst=1;
#10 rst=0;s=0;r=0;
#10 s=0;r=1;
#10 s=1;r=0;
#10 s=1;r=1;
#50 $finish();
end
initial 
$monitor($time,"clk=%b,rst=%b,s=%b,r=%b,q=%b,qb=%b",clk,rst,s,r,q,qb);
endmodule
