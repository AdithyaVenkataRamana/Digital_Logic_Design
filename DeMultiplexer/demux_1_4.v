`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:13 09/01/2026 
// Design Name: 
// Module Name:    demux_1_4 
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
module demux_1_4(
    input I,
    input s0,
    input s1,
    output y0,
    output y1,
    output y2,
    output y3
);

assign y0 = I & (~s1 & ~s0);
assign y1 = I & (~s1 &  s0);
assign y2 = I & ( s1 & ~s0);
assign y3 = I & ( s1 &  s0);

endmodule
