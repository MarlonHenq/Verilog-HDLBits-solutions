module top_module(clk, reset, data, start_shifting);
    input clk;
    input reset;    // Synchronous reset to state A
    input data;
    output start_shifting;//  
    reg start_shifting;

    parameter A=0, B=1, C=2, D=3, E=4; 
    reg [2:0] state, next_state;

    always @(*) begin    
        case (state)
            A : begin
                    if (data) begin
                    next_state = B;
                end
                else begin
                    next_state = A;
                end 
            end
            B : begin
                  if (data) begin
                    next_state = C;
                end
                else begin
                    next_state = A;
                end
            end
            C : begin
                  if (data) begin
                    next_state = C;
                end
                else begin
                    next_state = D;
                end
            end
            D : begin
                  if (data) begin
                    next_state = E;
                end
                else begin
                    next_state = A;
                end
            end
            E : begin
                next_state = E;
            end

        endcase


    end

    always @(posedge clk) begin    // This is a sequential always block
        if (reset) begin
            state = A;
        end
        else begin
            state = next_state;
        end
    end
	
    assign start_shifting = (state == E);

endmodule
