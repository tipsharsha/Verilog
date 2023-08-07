module multiplexer4_1 ( din ,sel ,dout );

output dout ;
reg dout ;

input [3:0] din ;
wire [3:0] din ;
input [1:0] sel ;
wire [1:0] sel ;

always @ (din or sel) begin
 if (sel==0)
  dout = din[0];
 else if (sel==1)
  dout = din[1];
 else if (sel==2)
  dout = din[2];
 else
  dout = din[3];
end

endmodule