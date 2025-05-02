(* architecture = "xilinx-ultrascale-plus" *)
(* solvers = "bitwuzla, cvc5" *)
module mul(input [15:0] a, input [31:0] b, output [31:0] out);
  assign out = a * b;
endmodule
