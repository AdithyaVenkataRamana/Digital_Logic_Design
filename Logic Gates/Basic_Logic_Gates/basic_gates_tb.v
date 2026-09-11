`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:46 09/01/2026
// Design Name:   basic_gates
// Module Name:   C:/Users/sgpma/Downloads/Projects/Logic_Gates/basic_gates_tb.v
// Project Name:  Logic_Gates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: basic_gates
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module basic_gates_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y_and;
	wire y_or;
	wire y_not;

	// Instantiate the Unit Under Test (UUT)
	basic_gates uut (
		.a(a), 
		.b(b), 
		.y_and(y_and), 
		.y_or(y_or), 
		.y_not(y_not)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		a = 0; b = 1;
		#10;
		
		a = 1; b = 0;
		#10;
		
		a = 1; b = 1;
		#10;
		$stop;

	end
      
endmodule

