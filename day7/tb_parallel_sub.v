`timescale 1ns / 1ps
module tb_parallel_sub();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
parallel_sub uut(a,b,cin,s,cout);
initial begin
      a=4'b1101;b=4'b1011;cin=1'b1;
   #5
    a=4'b1001;b=4'b1111;cin=1'b1;
    #10 $finish();
end
initial begin
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);
end
endmodule
