`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:48 05/29/2019
// Design Name:   FSM_Moore
// Module Name:   C:/Users/Amirerfan/xilinx workspace/github/FSM/FSM_test.v
// Project Name:  FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM_Moore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM_test;

	// Inputs
	reg clk;
	reg [1:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	FSM_Moore uut (
		.clk(clk), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		in = 0;
		#100;
		
		clk = 1;
		in = 2;
		#100;
		
		
		clk = 0;
		in = 3;
		#100;
		
		
		clk = 1;
		in = 3;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 0;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 1;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 2;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 3;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 0;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 1;
		#100;
		
		
		clk = 0;
		in = 0;
		#100;
		
		
		clk = 1;
		in = 2;
		#100;
		
		
		clk = 0;
		in = 2;
		#100;
		
		
		// Add stimulus here

	end
      
endmodule

