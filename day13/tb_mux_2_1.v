`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 22:14:13
// Design Name: 
// Module Name: tb_mux_2_1
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


module tb_mux_2_1();
reg i0,i1,sel;
wire y;
mux_2_1 uut(i0,i1,sel,y);
initial begin
i0=1'b1;i1=1'b0;sel=1'b0;
#10;
i0=1'b0;i1=1'b1;sel=1'b1;
end
initial begin
$monitor($time,"i0=%b,i1=%b,sel=%b,y=%b",i0,i1,sel,y);
end
endmodule
