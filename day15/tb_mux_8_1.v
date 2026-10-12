`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 22:55:10
// Design Name: 
// Module Name: tb_mux_8_1
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


module tb_mux_8_1();
reg i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2;
wire y;
mux_8_1 uut(i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2,y);
initial begin
sel0=1'b0;sel1=1'b0;sel2=1'b0;i0=1'b1;i1=1'b0;i2=1'b0;i3=1'b0;i4=1'b0;i5=1'b0;i6=1'b0;i7=1'b0;
#10
sel0=1'b0;sel1=1'b0;sel2=1'b1;i0=1'b0;i1=1'b1;i2=1'b0;i3=1'b0;i4=1'b0;i5=1'b0;i6=1'b0;i7=1'b0;
#10
sel0=1'b0;sel1=1'b1;sel2=1'b0;i0=1'b0;i1=1'b0;i2=1'b1;i3=1'b0;i4=1'b0;i5=1'b0;i6=1'b0;i7=1'b0;
#10
sel0=1'b0;sel1=1'b1;sel2=1'b1;i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b1;i4=1'b0;i5=1'b0;i6=1'b0;i7=1'b0;
#10
sel0=1'b1;sel1=1'b0;sel2=1'b0;i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;i4=1'b1;i5=1'b0;i6=1'b0;i7=1'b0;
#10
sel0=1'b1;sel1=1'b0;sel2=1'b1;i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;i4=1'b0;i5=1'b1;i6=1'b0;i7=1'b0;
#10
sel0=1'b1;sel1=1'b1;sel2=1'b0;i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;i4=1'b0;i5=1'b0;i6=1'b1;i7=1'b0;
#10
sel0=1'b1;sel1=1'b1;sel2=1'b1;i0=1'b0;i1=1'b0;i2=1'b0;i3=1'b0;i4=1'b0;i5=1'b0;i6=1'b0;i7=1'b1;
#50 $finish();
end
initial begin
$monitor($time,"sel0=%b,sel1=%b,sel2=%b,i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,y=%b",sel0,sel1,sel2,i0,i1,i2,i3,i4,i5,i6,i7,y);
end
endmodule
