onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FinalTOP_opt

do {wave.do}

view wave
view structure
view signals

do {FinalTOP.udo}

run -all

quit -force
