module top_module (
    input clk,
    input a,
    output [3:0] q );

    always @(posedge clk) begin
        q = q + 3'd1;
        
        if (q > 6)
            q = 3'd0;
        
        if (a == 1)
            q = 3'd4;
    end 
    
endmodule
