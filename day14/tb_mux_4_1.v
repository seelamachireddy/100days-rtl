`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 22:25:31
// Design Name: 
// Module Name: tb_mux_4_1
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


module tb_mux_4_1();
reg i0,i1,i2,i3,sel0,sel1;
wire y;
mux_4_1 uut(i0,i1,i2,i3,sel0,sel1,y);
initial begin
i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;sel0=1'b0;sel1=1'b1;
#10;
i0=1'b1;i1=1'b0;i2=1'b1;i3=1'b1;sel0=1'b1;sel1=1'b0;
#10;
i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;sel0=1'b1;sel1=1'b0;
#10;
i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;sel0=1'b0;sel1=1'b0;
#10 $finish();
end
initial begin
$monitor($time,"i0=%b,i1=%b,i2=%b,i3=%b,sel0=%b,sel1=%b,y=%b",i0,i1,i2,i3,sel0,sel1,y);
end
endmodule

