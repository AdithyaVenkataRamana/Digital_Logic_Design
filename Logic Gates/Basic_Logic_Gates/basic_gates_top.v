`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:02 09/01/2026 
// Design Name: 
// Module Name:    basic_gates_top 
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

module basic_gates_top(
    input a,
    input b,

    output LED1,
    output LED2,
    output LED3,
    output LED4,
    output LED5
);

wire y_and;
wire y_or;
wire y_not;

// Instantiate your existing basic_gates module
basic_gates U1 (
    .a(a),
    .b(b),
    .y_and(y_and),
    .y_or(y_or),
    .y_not(y_not)
);

// AND output -> two LEDs
assign LED1 = y_and;
assign LED2 = y_and;

// OR output -> two LEDs
assign LED3 = y_or;
assign LED4 = y_or;

// NOT output -> one LED
assign LED5 = y_not;

endmodule