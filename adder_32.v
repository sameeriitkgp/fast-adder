`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:55 04/04/2016 
// Design Name: 
// Module Name:    adder_32 
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

module adder_32_1(c_in, c_out, a, b, s);
input a, b, c_in;
output s, c_out;

wire [31:0] a, b, s;
wire c_out;

CLA_32 m0(s, c_out, a, b, c_in);

endmodule
