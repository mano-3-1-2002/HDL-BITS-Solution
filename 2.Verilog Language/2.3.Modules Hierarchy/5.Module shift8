module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]a,b,c;
    my_dff8(.clk(clk),.d(d),.q(a));
    my_dff8(.clk(clk),.d(a),.q(b));
    my_dff8(.clk(clk),.d(b),.q(c));
    always @*
        begin
            case (sel)
                0 : q = d;
                1 : q = a;
                2 : q = b;
                3 : q = c;
            endcase
        end
               
    

endmodule
