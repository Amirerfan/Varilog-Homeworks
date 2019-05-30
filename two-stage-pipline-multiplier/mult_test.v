`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:06:33 05/29/2019
// Design Name:   multiplier
// Module Name:   C:/Users/Amirerfan/xilinx workspace/github/two-stage-pipline-multiplier/mult_test.v
// Project Name:  two-stage-pipline-multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mult_test;

	// Inputs
	reg clk;
	reg [7:0] INPUT_A;
	reg [7:0] INPUT_B;

	// Outputs
	wire [15:0] RES;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.clk(clk), 
		.INPUT_A(INPUT_A), 
		.INPUT_B(INPUT_B), 
		.RES(RES)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		INPUT_A = 0;
		INPUT_B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 1;
		INPUT_A = 5;
		INPUT_B = 8;
		
		#100;
		clk = 0;
		INPUT_A = 2;
		INPUT_B = 3;
		
		#100;
		clk = 1;
		
		#100;
		clk = 0;
		INPUT_A = 4;
		INPUT_B = 8;
		
		forever #100 clk = ~clk;
	end
      
endmodule

