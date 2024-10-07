module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x;
    wire [15:0]y;
    wire [15:0]z;
    add16 a1(a[15:0],b[15:0],0,sum[15:0],x);
    add16 a2(a[31:16],b[31:16],0, y);
    add16 a3(a[31:16],b[31:16],1,z);
    mux_2x1_dt m1(y,z,x,sum[31:16]);

endmodule
module mux_2x1_dt(
    input [15:0]I0,I1,
    input S,
    output  [15:0]Y);
    assign Y = S?I1:I0;
                
endmodule
