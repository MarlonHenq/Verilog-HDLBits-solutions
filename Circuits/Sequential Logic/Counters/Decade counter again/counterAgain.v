module top_module (
    input clk,
    input reset,
    output [3:0] q);
    
    always @(posedge clk) begin
        if (reset)
            q = 0;
        else
        	q = q + 1;
        
        if (q == 11)
            q = 1;
        
        if (q == 0)
            q = 1;
    end

endmodule
