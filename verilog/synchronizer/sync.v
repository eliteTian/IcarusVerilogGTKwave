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

always@(posedge clk_i or posedge rst_i) begin
	if(rst_i) begin
		r0 <= 1'b0;
		r1 <= 1'b0;
		r2 <=  1'b0;
	end else begin
		r0 <= d_i;
		r1 <= r0;
		r2 <= r1;
	end
end

assign q_o = r2;

endmodule
