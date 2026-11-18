`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2026 16:01:20
// Design Name: 
// Module Name: tb_dlatch
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


module tb_dlatch();
reg d,en;
wire q,qb;
dlatch uut(d,en,q,qb);
initial begin
en=0;
#10; en=1;d=0;
#10; d=1;
#10; en=0;
#50; $finish();
end 
initial 
$monitor($time,"d=&b,en=%b,q=%b,qb=%b",d,en,q,qb);
endmodule
