`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:40 09/02/2026 
// Design Name: 
// Module Name:    full_subtractor 
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
module full_subtractor(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
);

assign D = A ^ B ^ Bin;

assign Bout = (~A & B) |
              (~A & Bin) |
              (B & Bin);

endmodule
