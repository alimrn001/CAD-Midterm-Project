module colParity_P1(input[24:0] in, output[24:0] out);
	wire colPar1, colPar2, colPar3, colPar4, colPar5;
	assign colPar1 = in[24] ^ in[19] ^ in[14] ^ in[9] ^ in[4];
	assign colPar2 = in[23] ^ in[18] ^ in[13] ^ in[8] ^ in[3];
	assign colPar3 = in[22] ^ in[17] ^ in[12] ^ in[7] ^ in[2];
	assign colPar4 = in[21] ^ in[16] ^ in[11] ^ in[6] ^ in[1];
	assign colPar5 = in[20] ^ in[15] ^ in[10] ^ in[5] ^ in[0];

	assign out[0] = in[0] ^ colPar4;
	assign out[5] = in[5] ^ colPar4;
	assign out[10] = in[10] ^ colPar4;
	assign out[15] = in[15] ^ colPar4;
	assign out[20] = in[20] ^ colPar4;

	assign out[1] = in[1] ^ colPar3;
	assign out[6] = in[6] ^ colPar3;
	assign out[11] = in[11] ^ colPar3;
	assign out[16] = in[16] ^ colPar3;
	assign out[21] = in[21] ^ colPar3;

	assign out[2] = in[2] ^ colPar2;
	assign out[7] = in[7] ^ colPar2;
	assign out[12] = in[12] ^ colPar2;
	assign out[17] = in[17] ^ colPar2;
	assign out[22] = in[22] ^ colPar2;

	assign out[3] = in[3] ^ colPar1;
	assign out[8] = in[8] ^ colPar1;
	assign out[13] = in[13] ^ colPar1;
	assign out[18] = in[18] ^ colPar1;
	assign out[23] = in[23] ^ colPar1;

	assign out[4] = in[4] ^ colPar5;
	assign out[9] = in[9] ^ colPar5;
	assign out[14] = in[14] ^ colPar5;
	assign out[19] = in[19] ^ colPar5;
	assign out[24] = in[24] ^ colPar5;

endmodule

