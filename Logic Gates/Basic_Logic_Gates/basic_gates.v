`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:36 09/01/2026 
// Design Name: 
// Module Name:    basic_gates 
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
module basic_gates(
    input a,
	 input b,
	 output y_and,
	 output y_or,
	 output y_not
	 
	 );
	 
	 assign y_and = a & b;
	 assign y_or = a | b;
	 assign y_not = ~a;


endmodule
