`timescale 1ns/100ps
module	sync_tb;
	reg		d;
	reg		clk;
	reg		rst;
	wire	q;
integer i=0;
initial begin
	clk = 1'b0;
	rst = 1'b1;
	#50	rst = 1'b0;


	for (i=0;i!=1000;i=i+1) begin
		//$display("dbg");
		#5 clk <=  ~clk;
	end

end


	sync u0(
			.d_i(d),
			.clk_i(clk),
			.rst_i(rst),
			.q_o(q)
	);

initial begin
	d = 1'b0;
	$dumpfile("sync_wv.vcd");
	$dumpvars(0,sync_tb);
	#100 d = 1'b1;
	#10 d =1'b0;
	#10 d =1'b1;

	# 500;
	$finish;
end

endmodule
