`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:20 10/21/2016 
// Design Name: 
// Module Name:    RippleCounter 
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
module RippleCounter(out,T,clk,reset);
input clk;
input reset;
output [7:0]out;
input T;
tff f0(out[0],T,clk,reset);
tff f1(out[1],out[0],clk,reset);
tff f2(out[2],out[1],clk,reset);
tff f3(out[3],out[2],clk,reset);
tff f4(out[4],out[3],clk,reset);
tff f5(out[5],out[4],clk,reset);
tff f6(out[6],out[5],clk,reset);
tff f7(out[7],out[6],clk,reset);
endmodule
