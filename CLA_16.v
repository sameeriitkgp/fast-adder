`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:21 04/04/2016 
// Design Name: 
// Module Name:    CLA_16 
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

module CLA_16(Sum, Cout, A, B, Cin);
input A, B, Cin;
output Sum, Cout;

wire [15:0] Sum;
wire Cout, Cin;
wire [15:0] A, B;

wire c3, c_out_0, c_out_1;
wire [7:0] sum_0, sum_1;

CLA_8 CLA1(Sum[7:0], c3, A[7:0], B[7:0], Cin);
CLA_8 CLA2(sum_0, c_out_0, A[15:8], B[15:8], 1'b0);
CLA_8 CLA3(sum_1, c_out_1, A[15:8], B[15:8], 1'b1);

assign Sum[15:8] = (c3)?sum_1:sum_0;
assign Cout = (c3)?c_out_1:c_out_0;

endmodule
