module top_module (
    input clk,
    input a,
    output q );
    
    reg x;
    
    always @(posedge clk) begin
        if (a == 1) begin
        	x = 0;
        end
        else begin
        	x = 1;
        end
    end

    assign q = x;
endmodule
