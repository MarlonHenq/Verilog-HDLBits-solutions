module top_module (
    input clock,
    input a,
    output p,
    output q );
    
    reg x, y;
    
    always @(clock) begin
        if (clock == 1) begin
        	x = a;
        end
    end
    
    always @(negedge clock) begin
        if (a == 1) begin
        	y = 1;
        end
        else begin
        	y = 0;
        end
    end
        
     

    assign p = x;
	assign q = y;
endmodule
