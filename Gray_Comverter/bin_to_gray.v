`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:50 09/07/2026 
// Design Name: 
// Module Name:    bin_to_gray 
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
module bin_to_gray(
    input [3:0] bin,
    output [3:0] gray
);

assign gray[3] = bin[3];
assign gray[2] = bin[3] ^ bin[2];
assign gray[1] = bin[2] ^ bin[1];
assign gray[0] = bin[1] ^ bin[0];

endmodule
