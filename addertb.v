`timescale 1 ns / 1 ps

  module addertb;
        reg[31:0] A,B;
		reg Cin;
        wire[31:0] S;
		wire Cout;
		reg clock;

 


	
	adder uut(.A(A),
	.B(B),
	.Cin(Cin),
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
	
	#100
	
	A = 32'hAAAABBBB;
	B = 32'h55554444;
	Cin = 1'b0;
	
	#100
	
	
	A = 32'hFFFF1010;
	B = 32'h00001010;
	Cin = 1'b1;
	
	#100
	
	
	
	A = 32'h77778888;
	B = 32'h55559999;
	Cin = 1'b0;
	
	#100
	
	A = 32'h12345678;
	B = 32'h87654321;
	Cin = 1'b1;
	
	#100
	
	
	
	A = 32'h10101010;
	B = 32'h01010101;
	Cin = 1'b0;
	
	#100
		

	A = 32'hFFEEAABB;
	B = 32'hABCDEF0;
	Cin = 1'b1;
	
	#100
	
	
	
	A = 32'h23562356;
	B = 32'h88889999;
	Cin = 1'b0;
	
	#100
		

	
	#112000 $stop;
	end;
  endmodule
