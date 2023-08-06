module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        // State transition logic
        case (state)
            1 : begin
                    if (in) begin
                    next_state = B;
                end
                else begin
                    next_state = A;
                end 
            end
            0 : begin
                  if (in) begin
                    next_state = A;
                end
                else begin
                    next_state = B;
                end
            end
        endcase


    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        if (areset) begin
            state <= B;
        end
        else begin
            state = next_state;
        end
    end
	
    assign out = (state == B);
    // Output logic
    // assign out = (state == ...);

endmodule
