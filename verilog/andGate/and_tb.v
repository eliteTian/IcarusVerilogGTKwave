`timescale 1ns/100ps
module tb_and ;
	reg	 a;
	reg  b;
	wire  c;
	
	andGate u0 (
				.a_i(a),
				.b_i(b),
				.c_o(c)
	);

initial begin

	$dumpfile("test.vcd");
	$dumpvars(0,tb_and);
	#1 a = 1'b1;
	#5 b = 1'b0;
	#10 b = 1'b1;
	#200 $finish;

end


endmodule
