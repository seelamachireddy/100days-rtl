`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 11:30:12
// Design Name: 
// Module Name: tb_encoder_4X2
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


module tb_encoder_4X2();
reg [3:0]d;
wire [1:0]y;
encoder_4X2 uut(d,y);
initial begin
d=4'b0001;#10;
d=4'b0010;#10;
d=4'b0100;#10;
d=4'b1000;#10;
$finish();
end
initial 
$monitor($time,"d=%b,y=%b",d,y);
endmodule
