`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:40:58 10/21/2016
// Design Name:   tff
// Module Name:   E:/DFF/tff_test.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tff_test;

	// Inputs
	reg T;
	reg clk;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	tff uut (
		.Q(Q), 
		.T(T), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		T = 1;
		clk = 0;
		reset = 0;
		// Wait 100 ns for global reset to finish
		#100;  
		// Add stimulus here
	end
      always #2 reset = 1;
		always #5 clk = ~clk;
		always #10 T = ~T;
endmodule

