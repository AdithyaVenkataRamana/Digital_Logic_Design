`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:22 09/01/2026 
// Design Name: 
// Module Name:    universal_gates_top 
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

module universal_gates_top(
    input a,
    input b,

    output LED1,
    output LED2,
    output LED3,
    output LED4
);

wire y_nand;
wire y_nor;

universal_gates U1 (
    .a(a),
    .b(b),
    .y_nand(y_nand),
    .y_nor(y_nor)
);

assign LED1 = y_nand;
assign LED2 = y_nand;

assign LED3 = y_nor;
assign LED4 = y_nor;

endmodule