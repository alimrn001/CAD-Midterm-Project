`timescale 1ns/1ns
module parity_P1_TB();
	wire[24:0] out;
	reg[24:0] in1;

	colParity_P1 clpt1(in1, out);
	initial begin 
		#0 in1 = 25'b1010010101011011001001001;
//		#0 in2 = 25'b1001011000101011110011000;
		#10 in1 = 25'b1001011000101011110011000;
		//#0 in2 = 25'b0001101100000000101001001;
	#100 $stop;
	end
endmodule
