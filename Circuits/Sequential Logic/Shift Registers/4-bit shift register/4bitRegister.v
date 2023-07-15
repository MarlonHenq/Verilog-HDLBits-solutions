module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    
    reg [3:0] value;
    
    always @(posedge clk or posedge areset) begin
        if (areset) 
            value <= 0;
        else begin
            if (load)
                value <= data;
			else begin
                if (ena) begin
                    value[0] <= value[1];
                    value[1] <= value[2];
                    value[2] <= value[3];
                    value[3] <= 0;
                end
        	end
        end
    end

    assign q = value;
endmodule
