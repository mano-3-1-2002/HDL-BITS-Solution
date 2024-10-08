module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]x;
    wire cout1,cout2;
    assign x=b^{32{sub}};
    add16 (a[15:0],x[15:0],sub,sum[15:0],cout1);
    add16 (a[31:16],x[31:16],cout1,sum[31:16],cout2);
    

endmodule
