module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0]couto;
    genvar i;
    generate
        bcd_fadd bcd(a[3:0],b[3:0],cin,couto[0],sum[3:0]);
        for(i=4;i<400;i=i+4) begin:bcdadder
            bcd_fadd bcdadd(a[i+3:i],b[i+3:i],couto[i/4-1],couto[i/4],sum[i+3:i]);
        end
    endgenerate
    assign cout=couto[99];
endmodule
