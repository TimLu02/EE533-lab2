`timescale 1 ns / 1 ps

  module alutb;
        reg[31:0] A,B;
		reg Cin;
		reg [2:0] Sel;
        wire[31:0] S;
		wire Cout;
		reg clock;

 


	
	alu uut(.A(A),
	.B(B),
	.Cin(Cin),
	.Sel(Sel),
	.S(S),
	.Cout(Cout)
	);
	

	initial begin
		clock = 1;
			while(1) begin
				#20;
				clock = ~clock;
			end
	end
	
	initial begin

	
	A = 32'hAAAABBBB;
	B = 32'h55554444;
	Cin = 1'b1;
	Sel = 3'b000;
	#100
	
	A = 32'hAAAABBBB;
	B = 32'h5555CCCC;
	Cin = 1'b1;
	Sel = 3'b001;
	#100
	
	A = 32'hFFFFBBBB;
	B = 32'h55554444;
	Cin = 1'b1;
	Sel = 3'b010;
	#100
	
	A = 32'hFFFFBBBB;
	B = 32'h55554444;
	Cin = 1'b1;
	Sel = 3'b011;
	#100
	
	A = 32'hAAAABBBB;
	B = 32'hEEEE4444;
	Cin = 1'b1;
	Sel = 3'b100;
	#100
	
	#112000 $stop;
	end;
  endmodule
