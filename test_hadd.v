`timescale 1ns/100ps
`include "hadd.v"

module halfadder_tb;
reg a,b;
wire s,c;

halfadder obj(a,b,s,c);

initial begin
	a = 0;
	#10 a = 0;
	#10 a = 1;
	#10 a = 1;
end

initial begin
	b = 0;
	#10 b = 1;
	#10 b = 0;
	#10 b = 1;
end

endmodule
