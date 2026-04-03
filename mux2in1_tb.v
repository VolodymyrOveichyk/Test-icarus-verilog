`timescale 1ns / 1ps

module mux2in1_tb;

parameter NANOS = 1;

reg  i_clk, i_reset;
reg [7 : 0] data_a, data_b;
reg [2 : 0] i_cntr;
wire [7 : 0] o_data

mux2in1 mux2in1 (.i_clk (i_clk), 
                .i_reset(i_reset),
                .i_cntr(i_cntr),
                .data_a(data_a),
                .data_b(data_b),
                .o_data(o_data));
            
initial begin
    data_a = 0;
    data_b = 0;
    i_cntr = 0;
    i_clk = 0;
    i_reset = 0;
end     

initial begin
    #(NANOS*3) i_reset = 1;
    #(NANOS*5) i_reset = 0;
end

initial repeat (14) #(NANOS*7) i_cntr = i_cntr + 1;
initial repeat (20) #(NANOS*5) data_a = data_a + 1;
initial repeat (10) #(NANOS*10) data_b = data_b + 2;

initial begin
    repeat (33) #(NANOS*3) i_clk = ~i_clk;
    $finish;
end
 
initial
 begin
    $dumpfile("mux2in1.vcd");
    $dumpvars(0,mux2in1_tb);
 end

  
endmodule
