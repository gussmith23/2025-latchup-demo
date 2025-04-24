read_verilog -sv example.sv
set_part xcu200-fsgd2104-2-e
read_xdc example.xdc
synth_design -top presubmul_3_stage_unsigned_16_bit -mode out_of_context -directive AreaMultThresholdDSP
opt_design
write_verilog -force example_vivado_synth.sv
report_utilization
