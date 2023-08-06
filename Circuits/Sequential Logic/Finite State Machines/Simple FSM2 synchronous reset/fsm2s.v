module top_module(
    input clk,
    input reset,    
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
        case (state)
            OFF : begin
                    if (j) begin
                    next_state = ON;
                end
                else begin
                    next_state = OFF;
                end 
            end
            ON : begin
                  if (k) begin
                    next_state = OFF;
                end
                else begin
                    next_state = ON;
                end
            end
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            state <= OFF;
        end
        else begin
            state = next_state;
        end
    end

        assign out = ~(state == OFF);
    // Output logic
    // assign out = (state == ...);

endmodule
