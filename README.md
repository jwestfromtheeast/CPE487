# CPE487
code for Digital System Design, CPE 487

Basics for running any of my files (this example will be done with comparator)

Make sure to have GHDL installed and added to your PATH! Make sure to have GTKWave installed for visualization!
open cmd -> navigate to CPE487 directory
ghdl -a comp.vhd           (name of file)
ghdl -a comp_tb.vhd        (name of testbench)
ghdl -e test_comparator    (here the name should be the name of the entity in the testbench file)
ghdl -r test_comparator --vcd=test_comparator.vcd
(NOTE: if
->navigate in cmd to GTKWave directory
gtkwave test_comparator.vcd
