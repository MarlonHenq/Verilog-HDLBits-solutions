module top_module (
    input clk,
    input shift_ena,
    input count_ena,
    input data,
    output [3:0] q);
    
    reg [3:0]count;
    
     always @(posedge clk) begin
         if (shift_ena) begin
             count = {count[2:0], data };
         end
         
         if (count_ena) begin
            count = count - 1;
         end
         
         q <= count;
    end
    

endmodule
