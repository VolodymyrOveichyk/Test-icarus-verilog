# Test icarus verilog
It is example for testing icarus verilog. 
All this files you can get after compilation and start simulation.

On start you have only mux2in1.v and mux2in1_tb.v

For get other files you should download icarus verilog, after this, type in command line next commands:

	icarus -o mux2in1 mux2in1_tb.v mux2in1.v

And next:

	vvp mux2in1

And  type command:
	
	gtkwave mux2in1.vcd
	
for start simulation.	
