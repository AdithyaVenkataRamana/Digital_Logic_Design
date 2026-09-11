`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:34:23 09/01/2026 
// Design Name: 
// Module Name:    special_purpose_gates 
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
module special_purpose_gates(
    input a,
    input b,
    output y_xor,
    output y_xnor
);

assign y_xor  = a ^ b;
assign y_xnor = ~(a ^ b);

endmodule