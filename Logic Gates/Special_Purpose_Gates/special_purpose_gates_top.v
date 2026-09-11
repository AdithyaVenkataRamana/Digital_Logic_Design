`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:54 09/01/2026 
// Design Name: 
// Module Name:    special_purpose_gates_top 
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

module special_purpose_gates_top(
    input a,
    input b,

    output LED1,
    output LED2,
    output LED3,
    output LED4
);

wire y_xor;
wire y_xnor;

special_purpose_gates U1 (
    .a(a),
    .b(b),
    .y_xor(y_xor),
    .y_xnor(y_xnor)
);

assign LED1 = y_xor;
assign LED2 = y_xor;
assign LED3 = y_xnor;
assign LED4 = y_xnor;

endmodule