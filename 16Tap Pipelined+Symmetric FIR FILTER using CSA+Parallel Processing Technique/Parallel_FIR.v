`timescale 1ns / 1ps

module Parallel_FIR(
    input clk,
     input rst,
     input signed [7:0] x0_in,
     input signed [7:0]x1_in,
     output signed [31:0]y0_out,
     output  signed [31:0]y1_out
    );
    FIR_FILTER_16TAP FIR1(clk,rst,x0_in,y0_out);
    FIR_FILTER_16TAP FIR2(clk,rst,x1_in,y1_out);
    
endmodule
