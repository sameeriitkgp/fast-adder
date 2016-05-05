`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:32 04/04/2016 
// Design Name: 
// Module Name:    adder_16 
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

module adder_16(f, a, b);
input a, b;
output f;

wire [15:0] a, b, f;
wire cr;

CLA_16 m0(f, cr, a, b, 1'b0);

endmodule
