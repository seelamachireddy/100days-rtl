`timescale 1ns / 1ps


module tb_r_c_a();
reg[3:0] a,b;
reg c;
wire [3:0]sum;
wire carry;
r_c_a uut(a,b,c,sum,carry);
initial begin
a=4'b0000;b=4'b0000;c=1'b0;
#10
a=4'b1001;b=4'b1001;c=1'b1;
#10 $finish();
end
initial begin
$monitor($time,"a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
end
endmodule
