`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 22:54:26
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(input i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2,output reg y);
always@(*)begin
case({sel0,sel1,sel2})
3'b000:y=i0;
3'b001:y=i1;
3'b010:y=i2;
3'b011:y=i3;
3'b100:y=i4;
3'b101:y=i5;
3'b110:y=i6;
3'b111:y=i7;
endcase
end
endmodule
