`timescale 1ps / 1ps 
module top_module ( );
    reg clk;
    dut d(.clk(clk));
    initial begin
        clk = 0;
    end
    always #5 clk = ~clk;

endmodule
