`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:24:39 10/21/2016
// Design Name:   DFlipFlop
// Module Name:   E:/DFF/dff_testfix.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_testfix;

	// Inputs
	reg D;
	reg clk;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	DFlipFlop uut (
		.Q(Q), 
		.D(D), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
   
		// Add stimulus here

	end
     always #5 clk = ~clk;
	  always #10 D = ~D;

endmodule

