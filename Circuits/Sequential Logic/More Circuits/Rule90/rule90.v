module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q ); 
    
    always @(clk) begin
        for (i = 2; i < 512 ; i = i + 1 ) begin
            if (data[i-2] == 1 & data[i-1] == 1 & data[i] == 1) begin
                data[i-1] = 0;
            end
            else if (data[i-2] == 1 & data[i-1] == 1 & data[i] == 0) begin
                data[i-1] = 1;
            end
            else if (data[i-2] == 1 & data[i-1] == 0 & data[i] == 1) begin
                data[i-1] = 0;
            end
            else if (data[i-2] == 1 & data[i-1] == 0 & data[i] == 0) begin
                data[i-1] = 1;
            end
            else if (data[i-2] == 0 & data[i-1] == 1 & data[i] == 1) begin
                data[i-1] = 1;
            end
            else if (data[i-2] == 0 & data[i-1] == 1 & data[i] == 0) begin
                data[i-1] = 0;
            end
            else if (data[i-2] == 0 & data[i-1] == 0 & data[i] == 1) begin
                data[i-1] = 1;
            end
            else if (data[i-2] == 0 & data[i-1] == 0 & data[i] == 0) begin
                data[i-1] = 0;
            end
        end
    end

endmodule
