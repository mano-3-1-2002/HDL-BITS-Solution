`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire connect_and;
    wire connect_or;
    assign connect_and = a&b;
    assign connect_or = c&d;
    assign out = connect_and|connect_or;
    assign out_n = ~out;

endmodule
