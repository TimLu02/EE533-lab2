`timescale 1 ns / 1 ps



module alu_32_bit(A,B,Cin,sel,S,Cout);
input [31:0] A, B;
input [2:0] sel;
input Cin;
output [31:0] S;
output Cout;

reg [32:0] carry;
assign carry = A + B + Cin;

always@(*) begin
case (sel)
3'd0: begin
S = carry[31:0];
Cout = carry[32];
end
3'd1: begin
S = A-B+Cin;
end
3'd2:
S= {1'b0,A[31:1]};
3'd3:
S = A && B;
default: begin
S = A||B;
Cout = 0;
end
endcase
end

endmodule

