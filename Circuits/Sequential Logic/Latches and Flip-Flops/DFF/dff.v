module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    
    always @(posedge clk, posedge ar) begin
        if (ar == 1) begin
        	q = 0;
        end
        else
      		q = d; 
    end
    
endmodule
