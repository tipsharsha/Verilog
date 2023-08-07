module majority_test;

	reg a,b,c;

	wire f;

	majority M (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f)
	);

	initial begin
        $dumpfile ("majority_output.vcd");
        $dumpvars (0,majority_test);
	
		a = 0;
		b = 0;
		c = 0;

		// Wait 10 ns for global reset to finish
		#10;
      
		// Add stimulus here
		a = 1;
		b = 0;
		c = 1;

		// Wait 10 ns for global reset to finish
		#10;
      
		a = 0;
		b = 0;
		c = 1;

		// Wait 10 ns for global reset to finish
		#10;
      
$finish;
	end
      
endmodule
