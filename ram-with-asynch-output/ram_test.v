`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:25 05/29/2019
// Design Name:   ram
// Module Name:   C:/Users/Amirerfan/xilinx workspace/github/ram-with-asynch-output/ram_test.v
// Project Name:  ram-with-asynch-output
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_test;

	// Inputs
	reg clk;
	reg [7:0] data_in;
	reg [7:0] address_in;
	reg write_enable;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.clk(clk), 
		.data_in(data_in), 
		.address_in(address_in), 
		.data_out(data_out), 
		.write_enable(write_enable)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data_in = 0;
		address_in = 0;
		write_enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
      clk = 1;
		address_in = 20;		
		#100;
		clk = 0;
		write_enable = 1;
		address_in = 8;
		data_in = 5;
		#100;
		clk = 1;
		address_in = 6;
		#100;
		clk = 0;
		address_in = 3;
		// Add stimulus here

	end
      
endmodule

