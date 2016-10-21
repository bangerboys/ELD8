`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:33 10/21/2016 
// Design Name: 
// Module Name:    ripple_counter 
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
module ripple_counter(out,T,clk,reset);
input clk;
input reset;
output [7:0]out;
input T;
tff f0(out[0],T,clk,reset);
tff f1(out[1],T,out[0],reset);
tff f2(out[2],T,out[1],reset);
tff f3(out[3],T,out[2],reset);
tff f4(out[4],T,out[3],reset);
tff f5(out[5],T,out[4],reset);
tff f6(out[6],T,out[5],reset);
tff f7(out[7],T,out[6],reset);
endmodule
