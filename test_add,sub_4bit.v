`timescale 1ns/100ps
`include "add,sub_4bit.v"

module addsub4bit_tb;

reg [3:0] A,B;
reg m;
wire s0,s1,s2,s3;
wire c1,c2,c3,c4;

addsub4bit obj(A,B,m,s0,s1,s2,s3,c1,c2,c3,c4);

initial begin
	A = 4;
	B = 10;
	m = 0;
end

integer x,y;
initial begin

	for(x=0; x<=3; x=x+1) begin
		for(y=0; y<=2; y=y+1) begin
			#10 B = B+1;
		end
		#10 A = A+1;
		B = 10;
	end

	A = 4;
	B = 10;
	m = 1;

	for(x=0; x<=3; x=x+1) begin
		for(y=0; y<=2; y=y+1) begin
			#10 B = B+1;
		end
		#10 A = A+1;
		B = 10;
	end

end

endmodule
