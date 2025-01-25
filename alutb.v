 module alutb;
          reg[31:0] A,B;
		  reg Cin;
		  reg [2:0] sel;
          wire Cout;
		  wire [31:0] S;
			 reg clock;

 


	
	alu uut(.A(A),
	.B(B),
	.cin(Cin),
	.sel(sel),
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

	
	A = 32'd290;
	B = 32'd101;
	Cin = 1'b1;
	Sel = 3'd0;
	#100;
	
	A = 32'd101;
	B = 32'd101;
	Cin = 1'b1;
	Sel = 3'd1;
	#100;
	
	A = 32'd99;
	B = 32'd8039;
	Cin = 1'b1;
	Sel = 3'd2;
	#100;

	A = 32'd1024;
	B = 32'd7;
	Cin = 1'b1;
	Sel = 3'd3;
	#100;
	
	
	A = 32'd255;
	B = 32'd73;
	Cin = 1'b1;
	Sel = 3'd4;
	#100;
	
	
	#112000 $stop;
	end;
  endmodule
