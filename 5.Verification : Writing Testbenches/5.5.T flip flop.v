module top_module ();
    reg clk;
    reg reset;
    reg t;
    wire q;
    tff tf(.clk(clk),.reset(reset),.t(t),.q(q));
     initial begin
         clk = 0;
        reset = 1'b0;
        #3;
        reset = 1'b1;
        #10;
        reset = 1'b0;   
    end
    always@(posedge clk)begin
        if(reset)begin
            t <= 1'b0;
        end
        else begin
            t <= 1'b1;
        end
    end
    always #5 clk = ~clk;

endmodule
