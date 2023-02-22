`include "colParity_P1.v"
`include "colParity_P2.v"

module parityCalc(input [24:0] in1, input[24:0] in2, output[24:0] out);
	wire[24:0] res_p1;

	colParity_P1 parity1(in1, res_p1);
	colParity_P2 parity2(in2, res_p1, out);

endmodule
