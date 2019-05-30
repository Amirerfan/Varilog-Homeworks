`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:22 05/29/2019 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(clk, INPUT_A, INPUT_B, RES);
	input clk;
	input[7:0] INPUT_A, INPUT_B;
	output[15:0] RES;
	reg[15:0] RES;
	reg[15:0] in_a, in_b;
	reg[15:0] pipe;
	wire[15:0] mult_res;
	
	assign mult_res = in_a * in_b;

	always @(posedge clk)
	begin
		in_a <= INPUT_A;
		in_b <= INPUT_B;
		pipe<= mult_res;
		RES <= pipe;
	end

endmodule
