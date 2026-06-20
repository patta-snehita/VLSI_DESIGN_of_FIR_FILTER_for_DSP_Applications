`timescale 1ns / 1ps

module SYMMETRIC_FIR(
     input clk,
     input rst,
     input signed [7:0] x_in,
     output reg signed [19:0]y_out
    );
    
    parameter signed [7:0] h0=1,h1=2,h2=3,h3=4;  //symmetric co-efficients
    reg signed [7:0] d0,d1,d2,d3,d4,d5,d6,d7; //delay register
    wire signed [8:0] s0,s1,s2,s3; //symmeric sums
    wire signed [15:0]p0,p1,p2,p3;
    
    
   assign s0=d0+d7,
          s1=d1+d6,
          s2=d2+d5,
          s3=d3+d4;  //paired sums
          
   assign p0=s0*h0,
          p1=s1*h1,
          p2=s2*h2,
          p3=s3*h3;
          
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
      y_out<=p0+p1+p2+p3;
    end 
endmodule
