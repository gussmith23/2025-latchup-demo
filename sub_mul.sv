// Vivado annotation
(* use_dsp = "yes" *)
// Lakeroad annotations
(* template = "dsp" *)
(* architecture = "xilinx-ultrascale-plus" *)
(* pipeline_depth = 3 *)
module sub_mul(
	// Lakeroad annotations
	(* clk *)
  input clk,
	(* data *)
	input  [15:0] a,
	(* data *)
	input  [15:0] b,
	(* data *)
	input  [15:0] d,
	(* out *)
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