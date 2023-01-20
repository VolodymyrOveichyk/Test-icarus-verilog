# Test icarus verilog
It is example for testing icarus verilog. 
All this file you can get after compilation and start simulation.

On start you have only mux5in1.v and mux5in1_tb.v

For get other files you should download icarus verilog after this, type in command line next commands:

	icarus -o mux5in1 mux5in1_tb.v mux5in1.v

And next:

	vvp mux5in1

And for start simulation type:
	
	gtkwave mux5in1.vcd
	
// It is manual in process
