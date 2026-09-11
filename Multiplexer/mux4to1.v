`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:43 09/01/2026 
// Design Name: 
// Module Name:    mux4to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux4to1(
    input I0,
    input I1,
    input I2,
    input I3,
    input s0,
    input s1,
    output Y
);

assign Y = (~s1 & ~s0 & I0) |(~s1 &  s0 & I1) |( s1 & ~s0 & I2) |( s1 &  s0 & I3);

endmodule
