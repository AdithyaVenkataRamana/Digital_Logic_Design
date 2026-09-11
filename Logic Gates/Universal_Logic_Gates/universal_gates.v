`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:07 09/01/2026 
// Design Name: 
// Module Name:    universal_gates 
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
module universal_gates(

    input a,
	 input b,
	 output y_nand,
	 output y_nor
	 );
	 
	 assign y_nand = ~(a & b);
	 assign y_nor = ~(a | b);


endmodule
