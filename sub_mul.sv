(* use_dsp = "yes" *)
module sub_mul(
  input clk,
	input  [15:0] a, b, d,
	output [15:0] out
);

	logic [31:0] stage0, stage1, stage2;

	always @(posedge clk) begin
	  stage0 <= (d - a) * b;
	  stage1 <= stage0;
	  stage2 <= stage1;
	end

	assign out = stage2;

endmodule