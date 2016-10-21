`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:46 10/21/2016 
// Design Name: 
// Module Name:    DFlipFlop 
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
module DFlipFlop(
    output reg Q,
	 input D,
    input clk,
	 input reset
    );
	 always@(negedge clk, negedge reset)
	 if(reset == 0)
		Q <= 1'b0;
	 else
		Q <= D;
endmodule
