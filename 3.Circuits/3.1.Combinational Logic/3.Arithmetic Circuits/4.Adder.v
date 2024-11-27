module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire cout[2:0];
    
    full_adder fa0(x[0],y[0],0,sum[0],cout[0]);
    full_adder fa1(x[1],y[1],cout[0],sum[1],cout[1]);
    full_adder fa2(x[2],y[2],cout[1],sum[2],cout[2]);
    full_adder fa3(x[3],y[3],cout[2],sum[3],sum[4]);    

endmodule

module full_adder(
    input a,b,cin,
    output sum,cout);
        
    assign sum=a^b^cin;
    assign cout=a&b|a&cin|b&cin;

endmodule
