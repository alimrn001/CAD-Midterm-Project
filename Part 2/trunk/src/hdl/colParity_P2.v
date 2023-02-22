module colParity_P2(input [24:0] in, input[24:0] colOut_P1, output [24:0] out);
	wire colPar1, colPar2, colPar3, colPar4, colPar5;
	assign colPar1 = in[24] ^ in[19] ^ in[14] ^ in[9] ^ in[4];
	assign colPar2 = in[23] ^ in[18] ^ in[13] ^ in[8] ^ in[3];
	assign colPar3 = in[22] ^ in[17] ^ in[12] ^ in[7] ^ in[2];
	assign colPar4 = in[21] ^ in[16] ^ in[11] ^ in[6] ^ in[1];
	assign colPar5 = in[20] ^ in[15] ^ in[10] ^ in[5] ^ in[0];

	assign out[0] = colOut_P1[0] ^ colPar1;
	assign out[5] = colOut_P1[5] ^ colPar1;
	assign out[10] = colOut_P1[10] ^ colPar1;
	assign out[15] = colOut_P1[15] ^ colPar1;
	assign out[20] = colOut_P1[20] ^ colPar1;

	assign out[1] = colOut_P1[1] ^ colPar5;
	assign out[6] = colOut_P1[6] ^ colPar5;
	assign out[11] = colOut_P1[11] ^ colPar5;
	assign out[16] = colOut_P1[16] ^ colPar5;
	assign out[21] = colOut_P1[21] ^ colPar5;

	assign out[2] = colOut_P1[2] ^ colPar4;
	assign out[7] = colOut_P1[7] ^ colPar4;
	assign out[12] = colOut_P1[12] ^ colPar4;
	assign out[17] = colOut_P1[17] ^ colPar4;
	assign out[22] = colOut_P1[22] ^ colPar4;

	assign out[3] = colOut_P1[3] ^ colPar3;
	assign out[8] = colOut_P1[8] ^ colPar3;
	assign out[13] = colOut_P1[13] ^ colPar3;
	assign out[18] = colOut_P1[18] ^ colPar3;
	assign out[23] = colOut_P1[23] ^ colPar3;

	assign out[4] = colOut_P1[4] ^ colPar2;
	assign out[9] = colOut_P1[9] ^ colPar2;
	assign out[14] = colOut_P1[14] ^ colPar2;
	assign out[19] = colOut_P1[19] ^ colPar2;
	assign out[24] = colOut_P1[24] ^ colPar2;

endmodule
