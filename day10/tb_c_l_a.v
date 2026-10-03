`timescale 1ns / 1ps
module tb_c_l_a();
reg [3:0]a,b;
reg cin;
wire [3:0] sum;
wire cout;
c_l_a uut(a,b,cin,sum,cout);
initial begin
  a=4'b1010;b=4'b1001;cin=1'b1;
   #5 
   a=4'b1011;b=4'b1010;cin=1'b0;
   #5 $finish();
   end
   initial begin
   $monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
end
endmodule
