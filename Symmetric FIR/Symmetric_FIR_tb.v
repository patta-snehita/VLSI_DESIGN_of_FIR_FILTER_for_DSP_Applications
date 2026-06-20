`timescale 1ns / 1ps
module FIR_tb(
    );
    reg clk,rst;
    reg signed [7:0]x_in;
    wire signed [17:0]y_out;
   // FIR_FILTER dut(clk,rst,x_in,y_out);
   SYMMETRIC_FIR dut(clk,rst,x_in,y_out);
    always #5 clk=~clk;
    initial
    begin
    $monitor("time=%0t| input=%d| output=%d",$time,x_in,y_out);
     clk=0;
     rst=1;
     x_in=0;
     #20;
     rst=0;
     x_in=2;
     #10
     x_in=4;
     #10
     x_in=6;
     #10
     x_in=8;
     #10
     x_in=10;
     #10
     x_in=12;
     #10
     x_in=14;
     #10
     x_in=16;
     #10
     x_in=0;
     #10;
     x_in=0;
     #10;
     x_in=0;
     #10;
     x_in=0;
     #10;
     #100;
     $finish;
  end  
endmodule
