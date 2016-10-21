`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:57:41 10/21/2016
// Design Name:   ripple_counter
// Module Name:   E:/DFF/ripple_test.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_test;

	// Inputs
	reg T;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	ripple_counter uut (
		.out(out), 
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
     always #5 reset =1;
	  always #10 clk = ~clk;
endmodule

