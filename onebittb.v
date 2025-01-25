// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  module onebittb;
          reg A,B,Cin;
          wire S,Cout;
			 reg clock;

 


	
	onebit uut(.a(A),
	.b(B),
	.cin(Cin),
	.s(S),
	.cout(Cout)
	);
	

	initial begin
		clock = 1;
			while(1) begin
				#20;
				clock = ~clock;
			end
	end
	
	initial begin

	
	A = 1'b0;
	B = 1'b0;
	Cin = 1'b1;
	
	#100
	
		A = 1'b0;
	B = 1'b1;
	Cin = 1'b0;
	
	#100
	
		A = 1'b0;
	B = 1'b1;
	Cin = 1'b1;
	
	#100
	
	A = 1'b1;
	B = 1'b0;
	Cin = 1'b0;
	
	#100
	
	A = 1'b1;
	B = 1'b0;
	Cin = 1'b1;
	
	#100
	
		A = 1'b1;
	B = 1'b1;
	Cin = 1'b0;
	
	#100
	
			A = 1'b1;
	B = 1'b1;
	Cin = 1'b1;
	
	#100
	
	#112000 $stop;
	end;
  endmodule
