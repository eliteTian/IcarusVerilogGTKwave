`timescale 1ns/100ps
module sync(
		input	d_i,
		input	clk_i,
		input	rst_i,
		output	q_o
);
reg	r0;
reg	r1;
reg	r2;
localparam DELAY=1;
always@(posedge clk_i or posedge rst_i) begin
	if(rst_i) begin
		r0 <= # DELAY 1'b0;
		r1 <= # DELAY 1'b0;
		r2 <= # DELAY 1'b0;
	end else begin
		r0 <= # DELAY d_i;
		r1 <= # DELAY r0;
		r2 <= # DELAY r1;
	end
end

assign q_o = r2;

endmodule
