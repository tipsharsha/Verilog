// right shifting only

module barrelshift (in, shmag, out);
    input [7:0] in;
    input [2:0] shmag;   // shift magnitude
    output [7:0] out;

    wire [7:0] x,y;

    // doing 4-bit shifting on the basis of shmag[2]
    // input for this is in[7:0]
    // output of this to be stored in wire x[7:0]
    mux2x1 m47 (.in0(in[7]),.in1(1'b0),.sel(shmag[2]),.out(x[7]));
    mux2x1 m46 (.in0(in[6]),.in1(1'b0),.sel(shmag[2]),.out(x[6]));
    mux2x1 m45 (.in0(in[5]),.in1(1'b0),.sel(shmag[2]),.out(x[5]));
    mux2x1 m44 (.in0(in[4]),.in1(1'b0),.sel(shmag[2]),.out(x[4]));
    mux2x1 m43 (.in0(in[3]),.in1(in[7]),.sel(shmag[2]),.out(x[3]));
    mux2x1 m42 (.in0(in[2]),.in1(in[6]),.sel(shmag[2]),.out(x[2]));
    mux2x1 m41 (.in0(in[1]),.in1(in[5]),.sel(shmag[2]),.out(x[1]));
    mux2x1 m40 (.in0(in[0]),.in1(in[4]),.sel(shmag[2]),.out(x[0]));

    // doing 2-bit shifting on the basis of shmag[1]
    // input for this is x[7:0]
    // output of this to be stored in wire y[7:0]
    mux2x1 m27 (.in0(x[7]),.in1(1'b0),.sel(shmag[1]),.out(y[7]));
    mux2x1 m26 (.in0(x[6]),.in1(1'b0),.sel(shmag[1]),.out(y[6]));
    mux2x1 m25 (.in0(x[5]),.in1(x[7]),.sel(shmag[1]),.out(y[5]));
    mux2x1 m24 (.in0(x[4]),.in1(x[6]),.sel(shmag[1]),.out(y[4]));
    mux2x1 m23 (.in0(x[3]),.in1(x[5]),.sel(shmag[1]),.out(y[3]));
    mux2x1 m22 (.in0(x[2]),.in1(x[4]),.sel(shmag[1]),.out(y[2]));
    mux2x1 m21 (.in0(x[1]),.in1(x[3]),.sel(shmag[1]),.out(y[1]));
    mux2x1 m20 (.in0(x[0]),.in1(x[2]),.sel(shmag[1]),.out(y[0]));

    // doing 1-bit shifting on the basis of shmag[0]
    // input for this is y[7:0]
    // output of this to be stored in out[7:0]
    mux2x1 m17 (.in0(y[7]),.in1(1'b0),.sel(shmag[0]),.out(out[7]));
    mux2x1 m16 (.in0(y[6]),.in1(y[7]),.sel(shmag[0]),.out(out[6]));
    mux2x1 m15 (.in0(y[5]),.in1(y[6]),.sel(shmag[0]),.out(out[5]));
    mux2x1 m14 (.in0(y[4]),.in1(y[5]),.sel(shmag[0]),.out(out[4]));
    mux2x1 m13 (.in0(y[3]),.in1(y[4]),.sel(shmag[0]),.out(out[3]));
    mux2x1 m12 (.in0(y[2]),.in1(y[3]),.sel(shmag[0]),.out(out[2]));
    mux2x1 m11 (.in0(y[1]),.in1(y[2]),.sel(shmag[0]),.out(out[1]));
    mux2x1 m10 (.in0(y[0]),.in1(y[1]),.sel(shmag[0]),.out(out[0]));

endmodule

