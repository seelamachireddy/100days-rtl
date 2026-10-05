`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 22:06:35
// Design Name: 
// Module Name: tb_g_2_b
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


module tb_g_2_b();
reg [3:0]g;
wire [3:0]b;
g_2_b uut(g,b);
initial begin
g=4'b0000;
#10;
g=4'b0001;
#10;
g=4'b0010;
#10;
g=4'b0011;
#10;
g=4'b0100;
#10;
g=4'b0101;
#10;
g=4'b0110;
#10;
g=4'b0111;
#10;
g=4'b1001;
#10;
g=4'b1010;
#10;
g=4'b1011;
#10;
g=4'b1100;
#10;
g=4'b1101;
#10;
g=4'b1110;
#10;
g=4'b1111;
#10 $finish();
end
initial begin
$monitor($time,"g=%b,b=%b",g,b);
end
endmodule

