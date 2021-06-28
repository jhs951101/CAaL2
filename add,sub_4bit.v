module addsub4bit(A,B,m,s0,s1,s2,s3,c1,c2,c3,c4);

input [3:0] A, B;
input m;
output s0,s1,s2,s3;
output c1,c2,c3,c4;

wire w[3:0];

xor(w[0], B[0], m);
xor(w[1], B[1], m);
xor(w[2], B[2], m);
xor(w[3], B[3], m);

fulladder u1(A[0], w[0], m, s0, c1);
fulladder u2(A[1], w[1], c1, s1, c2);
fulladder u3(A[2], w[2], c2, s2, c3);
fulladder u4(A[3], w[3], c3, s3, c4);

endmodule
