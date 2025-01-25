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

	
	A = 32'd0;
	B = 32'd0;
	Cin = 1'b1;
	
	#100
	
	
	A = 32'd100;
	B = 32'd100;
	Cin = 1'b0;
	
	#100
	
	
	A = 32'd255;
	B = 32'd108;
	Cin = 1'b1;
	
	#100	
	
	A = 32'd17899;
	B = 32'd16738;
	Cin = 1'b0;
	
	#100	
	
	A = 32'd255;
	B = 32'd108;
	Cin = 1'b1;
	
	#100	
	
	A = 32'd26099;
	B = 32'd62748;
	Cin = 1'b0;
	
	#100	
		
	
	A = 32'hFFFF;
	B = 32'hFFFF;
	Cin = 1'b1;
	
	#100	
			
	
	
	#112000 $stop;
	end;
  endmodule
