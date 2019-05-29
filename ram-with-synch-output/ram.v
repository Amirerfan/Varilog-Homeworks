`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:57 05/29/2019 
// Design Name: 
// Module Name:    ram 
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
module ram(clk, data_in, data_out, address_in, write_en);
	input clk, write_en;
	input[7:0] data_in;
	input[7:0] address_in;
	output reg[7:0] data_out;
	reg[7:0] ram [63:0];
	
	always @(posedge clk)
	begin
		if(write_en)
			ram[address_in] = data_in;
			
		data_out = ram[address_in];
	end
endmodule
