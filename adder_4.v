`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:28 04/04/2016 
// Design Name: 
// Module Name:    adder_4 
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

// Wrapper for 4-bit carry-look-ahead adder

module adder_4(f, a, b);
input a, b;
output f;
wire [3:0] a, b, f;
wire cr;

CLA_4 m0(f, cr, a, b, 1'b0);

endmodule