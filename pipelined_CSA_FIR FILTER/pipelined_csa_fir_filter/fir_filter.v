`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 15:40:09
// Design Name: 
// Module Name: fir_filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fir_filter(
    input clk,
    input reset,
    input [7:0] x,
    output [31:0] y
    );
    reg [7:0] d1,d2,d3,d4,d5,d6,d7;
    // fir coefficients from matlab
    parameter h0=2;
    parameter h1=5;
    parameter h2=8;
    parameter h3=4;
    parameter h4=8;
    parameter h5=8;
    parameter h6=7;
    parameter h7=4;
 always @(posedge clk)
    begin
       if(reset)
       begin
          d1<=0;
          d2<=0;
          d3<=0;
          d4<=0;
          d5<=0;
          d6<=0;
          d7<=0;
          s1_r <= 0;
          c1_r <= 0;
           s2_r <= 0;
           c2_r <= 0;
           s3_r <= 0;
           s4_r <= 0;
           s5_r <= 0;
            c3_r <= 0;
             c4_r <= 0;
              c5_r <= 0;
       end 
       else 
        begin
           d1<=x;
           d2<=d1;
           d3<=d2;
           d4<=d3;
           d5<=d4;
           d6<=d5;
           d7<=d6;
           s1_r <= s1;
c1_r <= c1;
s2_r <= s2;
c2_r <= c2;
           s3_r <= s3;
           s4_r <= s4;
           s5_r <= s5;
           c3_r <= c3;
           c4_r <= c4;
           c5_r <= c5;

       end
     end
    wire[15:0] m0,m1,m2,m3,m4,m5,m6,m7;
    assign m0 = x  * h0;
    assign m1 = d1 * h1;
assign m2 = d2 * h2;
assign m3 = d3 * h3;
assign m4 = d4 * h4;
assign m5 = d5 * h5;
assign m6 = d6 * h6;
assign m7 = d7 * h7;
wire [15:0] s1,c1;
wire [15:0] s2,c2;
wire [15:0] s3,c3;
wire [15:0] s4,c4;
wire [15:0] s5,c5;
assign s1=m1^m0^m2;
assign c1=(m0&m1)|(m1&m2)|(m2&m0);
assign s2=m3^m4^m5;
assign c2=(m3&m4)|(m4&m5)|(m5&m3);
reg [15:0] s1_r,c1_r,s2_r,c2_r;
assign s3 = s1_r ^ (c1_r<<1) ^ s2_r;

assign c3 =
      (s1_r & (c1_r<<1))
    | (s1_r & s2_r)
    | ((c1_r<<1) & s2_r);
 
assign s4 = (c2_r<<1) ^ m6 ^ m7;

assign c4 =
      ((c2_r<<1) & m6)
    | ((c2_r<<1) & m7)
    | (m6 & m7);
  reg [15:0] s3_r,c3_r,s4_r,c4_r;
  assign s5 = s3_r ^ (c3_r<<1) ^ s4_r;

assign c5 =
      (s3_r & (c3_r<<1))
    | (s3_r & s4_r)
    | ((c3_r<<1) & s4_r);
   reg [15:0] s5_r,c5_r;
   assign y={16'd0,s5}+({16'd0,c4_r}<<1)+({16'd0,c5_r}<<1);
endmodule
