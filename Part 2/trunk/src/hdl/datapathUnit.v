`include "mux64to1_1600.v"
`include "mux64to1_1600_mod.v"
`include "decoder6to64.v"
`include "register25bit.v"
`include "parityCalc.v"

module datapathUnit(input clk, input[1599:0] in, input[5:0] cntSelOut, input regRst, regWrite, output[1599:0] out);
	wire[24:0] muxOut, muxOut_2;
	wire[24:0] parityOut1, parityOut2;
	wire[63:0] dcdOut;
	
	mux64to1_1600 mux64(in, cntSelOut, muxOut);
	mux64to1_1600_2 mux64_2(in, cntSelOut, muxOut_2);

	parityCalc pr(muxOut, muxOut_2, parityOut2);
	decoder6to64 dcd64(cntSelOut, dcdOut);

	generate
		genvar i;
		for(i = 0; i < 64; i=i+1) begin : cascade
			register25bit reg25(parityOut2, clk, regRst, dcdOut[i], out[25*i +: 25]);
		end
	endgenerate
endmodule
