`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2026 10:27:43
// Design Name: 
// Module Name: tb_basicgates
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


module tb_basicgates();
reg a,b;
wire y1,y2,y3,y4,y5,y6,y7;
basicgates uut(a,b,y1,y2,y3,y4,y5,y6,y7);
initial begin
a=1'b0;b=1'b0;
#10
a=1'b0;b=1'b1;
#10
a=1'b1;b=1'b0;
#10
a=1'b1;b=1'b1;
end
initial 
$monitor($time,"a=%b,b=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b",a,b,y1,y2,y3,y4,y5,y6,y7);
endmodule
