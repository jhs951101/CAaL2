
`timescale 1ns/100ps
`include "fadd.v"

module fulladder_tb;

reg a,b, cin;
wire s,cout;

fulladder obj(a,b,cin,s,cout);

initial begin
	b = 0;
	cin = 0;
end

initial begin
	a = 0;
	#10 a = 0;
	#10 a = 0;
	#10 a = 0;
	#10 a = 1;
	#10 a = 1;
	#10 a = 1;
	#10 a = 1;
end

always begin
	#10 b = 0;
	#10 b = 1;
	#10 b = 1;
	#10 b = 0;
end

always begin
	#10 cin = 1;
	#10 cin = 0;
end

endmodule
