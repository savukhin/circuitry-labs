ghdl -a counter.vhdl counter_tb.vhdl && ghdl -e CounterTB && ghdl -r CounterTB --vcd=counter.vcd && gtkwave counter.vcd
