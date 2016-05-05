`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:44 04/04/2016 
// Design Name: 
// Module Name:    CLA_32 
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


module CLA_32(Sum, Cout, A, B, Cin);
input A, B, Cin;
output Sum, Cout;

wire [31:0] Sum;
wire Cout, Cin;
wire [31:0] A, B;

wire c3, c_out_0, c_out_1;
wire [15:0] sum_0, sum_1;

CLA_16 CLA1(Sum[15:0], c3, A[15:0], B[15:0], Cin);
CLA_16 CLA2(sum_0, c_out_0, A[31:16], B[31:16], 1'b0);
CLA_16 CLA3(sum_1, c_out_1, A[31:16], B[31:16], 1'b1);

assign Sum[31:16] = (c3)?sum_1:sum_0;
assign Cout = (c3)?c_out_1:c_out_0;

endmodule
