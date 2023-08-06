// Note the Verilog-1995 module declaration syntax here:
module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;

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

    always @(posedge clk) begin    // This is a sequential always block
        if (reset) begin
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
