(* architecture = "xilinx-ultrascale-plus" *)
module mul(input [15:0] a, input [31:0] b, output [31:0] out);
  assign out = a * b;
endmodule
