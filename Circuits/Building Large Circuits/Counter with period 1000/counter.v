module top_module (
    input clk,
    input reset,
    output [9:0] q);

    reg [9:0]count;
    
    
    always @(posedge clk) begin
        count = count + 1;
        
        if (reset == 1)
            count = 10'b0000000000;
        
        if (count == 1000 )
            count = 10'b0000000000;
        
        q = count; 
    end
    
    
endmodule
