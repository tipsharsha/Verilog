module test_mama;

	reg a,b,c,d;

	wire e,f,g,h;

	BCD M (
		.a(a), 
		.b(b), 
		.c(c),
        .d(d),
        .e(e), 
		.f(f),
        .g(g),
        .h(h)
	);

	initial begin
        $dumpfile ("B.vcd");
        $dumpvars (0,test_mama);
	
		a = 0;
		b = 0;
		c = 0;
        d = 0;

		// Wait 10 ns for global reset to finish
		#10;
      
		// Add stimulus here
		a = 1;
		b = 0;
		c = 1;
        d = 1;

		// Wait 10 ns for global reset to finish
		#10;
      
		a = 0;
		b = 0;
		c = 1;
        d = 0;
		// Wait 10 ns for global reset to finish
		#10;
      
$finish;
	end
      
endmodule
