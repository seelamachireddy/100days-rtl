`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 10:57:54
// Design Name: 
// Module Name: tb_paritychecker
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


module tb_paritychecker();
reg [7:0]in;
wire oddpar,evenpar;
paritychecker uut(in,oddpar,evenpar);
initial begin
repeat(10)begin
in=$random;
#10;
end
#200 $finish();
end
initial
$monitor($time,"in=%b,oddpar=%b,evenpar=%b",in,oddpar,evenpar);
endmodule
