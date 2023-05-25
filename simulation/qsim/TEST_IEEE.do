onerror {quit -f}
vlib work
vlog -work work TEST_IEEE.vo
vlog -work work TEST_IEEE.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TEST_IEEE_vlg_vec_tst
vcd file -direction TEST_IEEE.msim.vcd
vcd add -internal TEST_IEEE_vlg_vec_tst/*
vcd add -internal TEST_IEEE_vlg_vec_tst/i1/*
add wave /*
run -all
