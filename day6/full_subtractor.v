`timescale 1ns / 1ps
module full_subtractor(a,b,c,diff,barrow);
input a,b,c;
output reg diff;
output reg barrow;
always @(*)begin
{barrow,diff}=a-b-c;
end
endmodule
