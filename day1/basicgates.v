`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2026 10:23:35
// Design Name: 
// Module Name: basicgates
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


module basicgates(
    input a,
    input  b,
    output  y1,y2,y3,y4,y5,y6,y7
    );
    and a1(y1,a,b);
    or a2(y2,a,b);
    not a3(y3,a);
    nand a4(y4,a,b);
    nor a5(y5,a,b);
    xor a6(y6,a,b);
    xnor a7(y7,a,b);

endmodule
