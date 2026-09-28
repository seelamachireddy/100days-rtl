`timescale 1ns / 1ps
module tb_half_subtractor();
reg a,b;
wire diff,barrow;
half_subtractor uut(a,b,diff,barrow);
initial begin
a=0;b=0;
#10 
a=0;b=1;
#10
a=1;b=0;
#10
a=1;b=1;
#10
$finish();
end
endmodule
