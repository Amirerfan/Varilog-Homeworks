`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:29 05/29/2019 
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
module ram(clk, data_in, address_in, data_out, write_enable);
	input clk;
	input[7:0] data_in;
	input[7:0] address_in;
	input write_enable;
	output [7:0] data_out;
	reg[7:0] ram [63:0];
	integer i;
	
	initial 
	begin
		for(i=0; i<64; i=i+1)
		begin
			ram[i] = i*2;
		end
	end
	
	always @(posedge clk)
	begin
		if(write_enable)
			ram[address_in] = data_in;
	end	
	
	assign data_out = ram[address_in];
	
endmodule
