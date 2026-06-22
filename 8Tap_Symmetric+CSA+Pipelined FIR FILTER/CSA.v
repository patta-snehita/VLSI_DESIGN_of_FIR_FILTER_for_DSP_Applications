`timescale 1ns / 1ps

module CSA(
    input signed [16:0] a,b,c,
    output signed [16:0] sum,carry
    );
    
    assign sum=a^b^c;
    assign carry=(a&b)|(b&c)|(a&c);
    
    
endmodule
