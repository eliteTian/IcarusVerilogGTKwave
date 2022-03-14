module	orGate_tb;
	reg		a;
	reg		b;
	wire	c;

	orGate u0(
			.a_i(a),
			.b_i(b),
			.c_o(c)
	);

initial begin
	$dumpfile("orGate_wv.vcd");
	$dumpvars(0,orGate_tb);
	#1 a = 1'b1;
	#10 b =1'b0;
	#10 b =1'b1;

	# 500;
	$finish;
end

endmodule
