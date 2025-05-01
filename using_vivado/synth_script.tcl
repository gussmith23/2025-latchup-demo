set script_path [ file dirname [ file normalize [ info script ] ] ]
read_verilog -sv "$script_path/../sub_mul.sv"
set_part xcu200-fsgd2104-2-e
read_xdc "$script_path/constraints.xdc"
synth_design -top sub_mul -mode out_of_context -directive AreaMultThresholdDSP
opt_design
write_verilog -force "$script_path/vivado_out.sv"
report_utilization
