module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    
    always @ (posedge clk) begin
        if (reset) begin
            q = 8'b00000000;
        end
        else begin
            q[0] <= d[0];
            q[1] <= d[1];
            q[2] <= d[2];
            q[3] <= d[3];
            q[4] <= d[4];
            q[5] <= d[5];
            q[6] <= d[6];
            q[7] <= d[7];
        end
    end
    

endmodule
