module top_module (
    input clk,
    input reset,      // Synchronous reset
    output shift_ena);
    
    reg [3:0] count;
    reg enable;
    
    always @(posedge clk) begin
        if (reset) begin
        	enable = 1;
            count = 0;
        end
        
        if (enable) begin
            if (count < 4) begin
            	count = count + 1;
            end
            else begin
            	enable = 0;
            end
        end
    end

    assign shift_ena = enable;
endmodule
