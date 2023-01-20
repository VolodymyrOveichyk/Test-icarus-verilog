module mux5in1( data_a, data_b,  i_cntr, i_clk, i_reset, o_data);

input [7 : 0] data_a, data_b;
input  i_clk, i_reset;
input [2 :0] i_cntr;
output reg [7 : 0] o_data;

always@(posedge i_clk)begin
if (i_reset) begin
	o_data <= 0;
end else begin 
	case (i_cntr)
		3'b000: o_data <= data_a;
		3'b001: o_data <= data_b;
	default: o_data <= 0;	
	endcase
	end
end


endmodule 