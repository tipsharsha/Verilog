module multiplexer4_1 ( din ,sel ,dout );

output dout ;
reg dout ;

input [3:0] din ;
wire [3:0] din ;
input [1:0] sel ;
wire [1:0] sel ;

always @ (din or sel) begin
 case(sel)
 2'b00:dout<=din[0];
 2'b01:dout<=din[1];
 2'b10:dout<=din[2];
 2'b11:dout<=din[3];
 endcase
end

endmodule