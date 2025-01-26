 module eightbittb;
          reg[7:0] A,B;
		  reg Cin;
		  //reg [2:0] sel;
          wire Cout;
		  wire [7:0] S;
			 reg clock;

 


	
	eightibit uut(.A(A),
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
	
	A = 8'hFF;
	B = 8'h00;
	Cin = 1'b1;
	#100;
	
	A = 8'h77;
	B = 8'h77;
	Cin = 1'b0;
	#100;
	
	
	A = 8'hAA;
	B = 8'h44;
	Cin = 1'b1;
	#100;
	
	A = 8'h23;
	B = 8'h11;
	Cin = 1'b0;
	#100;
	
	A = 8'hAB;
	B = 8'h3B;
	Cin = 1'b1;
	#100;
	
	A = 8'h78;
	B = 8'h26;
	Cin = 1'b0;
	#100;
	
	#112000 $stop;
	end;
  endmodule
