module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out=(~c&~b)|(c&a&d)|(~a&c&~d)|(c&~a&b)|(b&~d&~a);

endmodule
