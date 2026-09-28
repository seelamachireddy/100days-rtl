`timescale 1ns / 1ps
module half_subtractor(a,b,diff,barrow);
input a,b;
output reg diff;
output reg barrow;
always@(*)begin
diff=a^b;
barrow=(~a)&b;
end
endmodule
