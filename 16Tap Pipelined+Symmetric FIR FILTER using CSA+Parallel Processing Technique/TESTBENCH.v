`timescale 1ns / 1ps
module Parallel_FIR_Tb(
    );
    reg clk;
    reg rst;
    reg signed [7:0] x0_in;
    reg signed [7:0] x1_in;
    wire signed [31:0] y0_out;
    wire signed [31:0]y1_out;
    
    Parallel_FIR dut(clk,rst,x0_in,x1_in,y0_out,y1_out);
    
    always #5 clk=~clk;
    initial
    begin
     $monitor("time=%0t|x0=%d|y0=%d|x1=%d|y1=%d",$time,x0_in,y0_out,x1_in,y1_out);
     clk=0;
     rst=1;
     {x0_in,x1_in}=0;
     #20;
     rst=0;
     x0_in=2;x1_in=32; #10;
     x0_in=4;x1_in=30; #10;
     x0_in=6;x1_in=28; #10;
     x0_in=8;x1_in=26; #10;
     x0_in=10;x1_in=24; #10;
     x0_in=12;x1_in=22; #10;
     x0_in=14;x1_in=20; #10;
     x0_in=16;x1_in=18; #10;
     x0_in=18;x1_in=16; #10;
     x0_in=20;x1_in=14; #10;
     x0_in=22;x1_in=12; #10;
     x0_in=24;x1_in=10; #10;
     x0_in=26;x1_in=8;  #10;
     x0_in=28;x1_in=6;  #10;
     x0_in=30;x1_in=4;  #10;
     x0_in=32;x1_in=2;  #10;
     
     repeat(25)
     begin
        x0_in=0;
        x1_in=0;
        #10;
     end  
     #100; 
     $finish;  
    end
endmodule
