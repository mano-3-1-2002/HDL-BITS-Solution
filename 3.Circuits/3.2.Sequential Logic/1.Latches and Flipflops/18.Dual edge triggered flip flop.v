module top_module (
    input clk,
    input d,
    output q
);
    reg r0,r1;
    always@(posedge clk)
        r0 <= d;
    always@(negedge clk)
        r1 <= d;
    assign q = clk ? r0 : r1;
endmodule
