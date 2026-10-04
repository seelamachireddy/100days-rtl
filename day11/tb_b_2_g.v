`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 21:48:59
// Design Name: 
// Module Name: tb_b_2_g
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


module tb_b_2_g();
reg [3:0]b;
wire [3:0]g;
b_2_g uut(b,g);
initial begin
b=4'b0000;
#10;
b=4'b0001;
#10;
b=4'b0010;
#10;
b=4'b0011;
#10;
b=4'b0100;
#10;
b=4'b0101;
#10;
b=4'b0110;
#10;
b=4'b0111;
#10;
b=4'b1001;
#10;
b=4'b1010;
#10;
b=4'b1011;
#10;
b=4'b1100;
#10;
b=4'b1101;
#10;
b=4'b1110;
#10;
b=4'b1111;
#10 $finish();
end
initial begin
$monitor($time,"b=%b,g=%b",b,g);
end
endmodule
