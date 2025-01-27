`timescale 1 ns / 1 ps



module alu(A,B,Cin,Sel,S,Cout);
input [31:0] A, B;
input [2:0] Sel;
input Cin;
output [31:0] S;
output Cout;

wire [32:0] carry;
reg [31:0] s;
reg cout;
assign carry = A + B + Cin;
assign Cout = cout;
assign S = s;
always@(*) begin
case (Sel)
3'd0: begin
s = carry[31:0];
cout = carry[32];
end
3'd1: begin
s = A-B+Cin;
end
3'd2:
s= {1'b0,A[31:1]};
3'd3:
s = A && B;
default: begin
s = A||B;
cout = 0;
end
endcase
end

endmodule

