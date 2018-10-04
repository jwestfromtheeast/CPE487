# CPE487  
##Code for Digital System Design  
  
###Basics for running any of my files (this example will be done with comparator)  
  
####Make sure to have GHDL installed and added to your PATH! Make sure to have GTKWave installed for visualization!  
#####open cmd -> navigate to CPE487 directory  
`ghdl -a comp.vhd`           (name of file)  
`ghdl -a comp_tb.vhd`        (name of testbench)  
`ghdl -e test_comparator`    (here the name should be the name of the entity in the testbench file)  
`ghdl -r test_comparator --vcd=test_comparator.vcd`  
(NOTE: if you get error `unit "std_logic_unsigned" not found in library "ieee"`  
THEN: add `--ieee=synopsys` after your ghdl command (ie `-a` `-e` `-r`)  
the line would then look something like this: `ghdl -a --ieee=synopsys comp_tb.vhd`)  
->navigate in cmd to GTKWave directory  
`gtkwave test_comparator.vcd`
