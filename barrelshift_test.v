module barrelshift_test;

// Inputs
reg [7:0] in;
reg [2:0] shmag;

// Output
wire [7:0] out;

barrelshift bs (
    .in(in),
    .shmag(shmag),
    .out(out)
    );

initial begin
    $dumpfile("barrelshift_output.vcd");  // Specify output filename
    $dumpvars(0,barrelshift_test);

    // Initialise Inputs
    in=8'b1010_1101;
    shmag=3'b000;

    #10;  // Wait 10s

    // Add more stimulus
    in=8'b1010_1101;
    shmag=3'b101;

    #10;  // Wait 10s

    in=8'b1010_1101;
    shmag=3'b111;

    #10;  // Wait 10s

    in=8'b1010_1101;
    shmag=3'b110;

    #10;  // Wait 10s

    in=8'b1010_1101;
    shmag=3'b100;

    #10;  // Wait 10s

    $finish;
end

endmodule