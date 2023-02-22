module input_mod(input [1599:0] in, output reg [1599:0] out);
	always@(*) begin
		out = {in[24:0], in[1599:25]};
	end
endmodule 
