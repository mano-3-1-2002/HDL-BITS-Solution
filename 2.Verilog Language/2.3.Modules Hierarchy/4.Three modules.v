module top_module ( input clk, input d, output q );
    wire a,b;
    
    my_dff m(.clk(clk), .d(d), .q(a));
    my_dff mn(.clk(clk), .d(a), .q(b));
    my_dff mno(.clk(clk), .d(b), .q(q));
    

endmodule
