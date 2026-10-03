`timescale 1ns / 1ps
module c_l_a(a,b,cin,sum,cout );
input[3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire w1,w2,w3;
wire[3:0]p,g;
assign p=a^b;
assign g=a&b;
assign w1=g[0]|(p[0]&cin);
assign w2=g[1]|(p[1]&g[0])|(p[0]&p[1]&cin);
assign w3=g[2]|(p[2]&g[1])|(p[1]&p[2]&g[0])|(p[0]&p[1]&p[2]&cin);
assign w4=g[3]|(p[3]&g[2])|(p[2]&p[3]&g[1])|(p[1]&p[2]&p[3]&g[0])|(p[0]&p[1]&p[2]&p[3]&cin);
assign {cout,sum}=a+b+cin;
endmodule

