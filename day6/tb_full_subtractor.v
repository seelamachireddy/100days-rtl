`timescale 1ns / 1ps
module tb_full_subtractor();
reg a,b,c;
wire diff,barrow;
full_subtractor uut(a,b,c,diff,barrow);
initial begin
a=0;b=0;c=0;
#10
a=0;b=0;c=1;
#10
a=0;b=1;c=0;
#10
a=0;b=1;c=1;
#10
a=1;b=0;c=0;
#10
a=1;b=0;c=1;
#10
a=1;b=1;c=0;
#10
a=1;b=1;c=1;
#10
$finish();
end
initial begin
$monitor($time,"a=%b,b=%b,c=%b,diff=%b,barrow=%b",a,b,c,diff,barrow);
end
endmodule
