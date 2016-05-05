`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:49:52 04/04/2016 
// Design Name: 
// Module Name:    adder_8 
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


/*
The rest of the code is similar. A big adder is built using small adders.
*/


module adder_8(f, a, b);
input a, b;
output f;

wire [7:0] a, b, f;
wire cr;

CLA_8 m0(f, cr, a, b, 1'b0);

endmodule