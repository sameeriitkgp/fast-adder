`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:49:27 04/04/2016 
// Design Name: 
// Module Name:    CLA_8 
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



// 8-bit hybrid carry-look-ahead/carry-select adder //
module CLA_8(Sum, Cout, A, B, Cin);
input A, B, Cin;
output Sum, Cout;

wire [7:0] Sum;
wire Cout, Cin;
wire [7:0] A, B;

wire c3, c_out_0, c_out_1;
wire [3:0] sum_0, sum_1;

CLA_4 CLA1(Sum[3:0], c3, A[3:0], B[3:0], Cin);
CLA_4 CLA2(sum_0, c_out_0, A[7:4], B[7:4], 1'b0);	// Add with carry set to 0
CLA_4 CLA3(sum_1, c_out_1, A[7:4], B[7:4], 1'b1);	// Add with carry set to 1

assign Sum[7:4] = (c3)?sum_1:sum_0;		// Propagate the proper sum
assign Cout = (c3)?c_out_1:c_out_0;		// Propagate the proper carry

endmodule
