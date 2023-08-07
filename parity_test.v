`include "parity.v"
module parity_test;
    reg x,y,z;

    wire F;

    parity P(x,y,z,F);

initial begin 
    $dumpfile("parity_output.vcd");
    $dumpvars(0,parity_test);

    x = 0;

    y = 0;

    z = 0;  

    #100;

    x = 0;

    y = 0;

    z = 1;

    #100;

    x = 0;

    y = 1;

    z = 0;

    #100;

    x = 0;

    y = 1;

    z = 1;

    #100;

    x = 1;

    y = 0;

    z = 0;


    #100;

    x = 1;

    y = 0;

    z = 1;

    #100;

    x = 1;

    y = 1;

    z = 0;

    #100;

    x = 1;

    y = 1;

    z = 1;

    #100;

    end

    endmodule