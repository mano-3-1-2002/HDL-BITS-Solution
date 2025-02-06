module top_module(
    input clk,
    input in,
    input reset,
    output out); //
    parameter A = 2'b00,B =2'b01,C = 2'b10,D = 2'b11;
    reg [1:0] state,next_state;
    
    always@(posedge clk)
        begin
            if(reset)
                state <= 0;
            else
                state <= next_state;
        end
    always@(*)
        case(state)
            A:begin if(in==1)
                next_state = B;
                else
                    next_state = A;
            end
            B:begin if(in==0)
                next_state = C;
                else
                    next_state = B;
            end
            C:begin if(in==1)
                next_state = D;
                else
                    next_state = A;
            end
            D:begin if(in==1)
                next_state = B;
                else
                    next_state = C;
            end
            default:next_state = A;
        endcase
    assign out = (state == D)?1:0;

endmodule
