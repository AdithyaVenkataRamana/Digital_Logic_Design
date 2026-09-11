`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:03 09/02/2026 
// Design Name: 
// Module Name:    comparator_2bit 
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
module comparator_2bit(
    a, b, y0, y1, y2
);

input [1:0] a;
input [1:0] b;

output y0;
output y1;
output y2;

assign y0 = (a > b)  ? 1'b1 : 1'b0;
assign y1 = (a == b) ? 1'b1 : 1'b0;
assign y2 = (a < b)  ? 1'b1 : 1'b0;

endmodule