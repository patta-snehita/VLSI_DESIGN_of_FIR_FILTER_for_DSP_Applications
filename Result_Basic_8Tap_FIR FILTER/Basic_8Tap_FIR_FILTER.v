`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module FIR_FILTER(
     input clk,
     input rst,
     input signed [7:0] x_in,
     output reg signed [19:0]y_out
    );
    
    parameter signed [7:0] h0=2,h1=2,h2=2,h3=3,h4=4,h5=5,h6=6,h7=7;  //co-efficients
    reg signed [7:0] d0,d1,d2,d3,d4,d5,d6,d7; //delay register
    wire signed [15:0]p0,p1,p2,p3,p4,p5,p6,p7;
    
   assign p0=d0*h0,
          p1=d1*h1,
          p2=d2*h2,
          p3=d3*h3,
          p4=d4*h4,
          p5=d5*h5,
          p6=d6*h6,
          p7=d7*h7;
          
    //delay line
    always@(posedge clk or posedge rst)
    begin
      if(rst)
      begin
      {d0,d1,d2,d3,d4,d5,d6,d7}<=0;
      end
      else
      begin
       d7<=d6;
       d6<=d5;
       d5<=d4;
       d4<=d3;
       d3<=d2;
       d2<=d1;
       d1<=d0;
       d0<=x_in;
      end
    end
    
    //FIR calculation
    always@(posedge clk or posedge rst)
    begin
     if(rst)
      y_out=0;
     else
      y_out<=p0+p1+p2+p3+p4+p5+p6+p7;
    end  
endmodule
