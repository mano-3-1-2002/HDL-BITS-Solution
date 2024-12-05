module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] change;
    always@(posedge clk) begin
        change <= in;
        if(reset)
            out <= 0;
        else
            out <= out | (change & ~in);
    end
endmoduleEd
