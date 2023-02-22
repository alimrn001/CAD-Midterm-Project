`include "input_mod.v"
module mux64to1_1600_2(input [1599:0] in, input [5:0] sel, output [24:0] out);
	wire [1599:0] concatIn;
	input_mod modify(in, concatIn);
	
	assign out = concatIn[25*(sel) +: 25]; 
endmodule
