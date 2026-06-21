`timescale 1ns / 1ps
module FIR_FILTER_16TAP(
     input clk,
     input rst,
     input signed [7:0] x_in,
     output reg signed [23:0]y_out
    );
    
    parameter signed [7:0] h0=1,h1=2,h2=3,h3=4,h4=4,h5=5,h6=6,h7=7,h8=8;  //symmetric co-efficients
    reg signed [7:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15; //delay register
     
    reg signed [8:0] s0_reg,s1_reg,s2_reg,s3_reg,s4_reg,s5_reg,s6_reg,s7_reg;//stage1 pair addition register
    reg signed [16:0] p0_reg,p1_reg,p2_reg,p3_reg,p4_reg,p5_reg,p6_reg,p7_reg,p8_reg; //stage2 multiplier register
    reg signed [17:0] a0_reg,a1_reg,a2_reg,a3_reg;        //stage 3 partial sum register
    reg signed [18:0]b0_reg,b1_reg; //stage4 partial register
    
    //delay line
    always@(posedge clk or posedge rst)
    begin
      if(rst)
      begin
      {d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15}<=0;
      end
      else
      begin
      d15<=d14;
       d14<=d13;
       d13<=d12;
       d12<=d11;
       d11<=d10;
       d10<=d9;
       d9 <=d8;
       d8 <=d7;
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
    //stage 1
    always@(posedge clk or posedge rst)
    begin
      if(rst)
      begin
        {s0_reg,s1_reg,s2_reg,s3_reg,s4_reg,s5_reg,s6_reg,s7_reg}<=0;
      end
      else
      begin
       s0_reg<=d0+d15;
       s1_reg<=d1+d14;
       s2_reg<=d2+d13;
       s3_reg<=d3+d12;
       s4_reg<=d4+d11;
       s5_reg<=d5+d10;
       s6_reg<=d6+d9;
       s7_reg<=d7+d8;
      end
    end
    
    //stage2
     always@(posedge clk or posedge rst)
    begin
      if(rst)
      begin
        {p0_reg,p1_reg,p2_reg,p3_reg,p4_reg,p5_reg,p6_reg,p7_reg}<=0;
      end
      else
      begin
       p0_reg<=s0_reg*h0;
       p1_reg<=s1_reg*h1;
       p2_reg<=s2_reg*h2;
       p3_reg<=s3_reg*h3;
       p4_reg<=s4_reg*h4;
        p5_reg<=s5_reg*h5;
        p6_reg<=s6_reg*h6;
        p7_reg<=s7_reg*h7;
      end
    end
    
    //stage3
     always@(posedge clk or posedge rst)
    begin
      if(rst)
      begin
        {a0_reg,a1_reg,a2_reg,a3_reg}<=0;
      end
      else
      begin
       a0_reg<=p0_reg+p1_reg;
       a1_reg<=p2_reg+p3_reg;
       a2_reg<=p4_reg+p5_reg;
       a3_reg<=p6_reg+p7_reg;
      end
    end
    
    always@(posedge clk or posedge rst)
    begin
     if(rst)
     begin
        {b0_reg,b1_reg}<=0;
     end
    else
    begin
        b0_reg<=a0_reg+a1_reg;
        b1_reg<=a2_reg+a3_reg;
    end
   end
       
    //stage4
    //Last FIR calculation
    always@(posedge clk or posedge rst)
    begin
     if(rst)
      y_out=0;
     else
      y_out<=b0_reg+b1_reg;
    end 
endmodule


