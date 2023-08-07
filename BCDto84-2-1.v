module BCD(
    input a,b,c,d,
    output e,f,g,h);

assign e = ((b&d)|(b&c)|a);
assign f = ((b&(~c)&(~d))|((~b)&d)|((~b)&c));
assign g = ((c&(~d))|((~c)&d));
assign h= d;
endmodule