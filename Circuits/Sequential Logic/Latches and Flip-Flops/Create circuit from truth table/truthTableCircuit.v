module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    
    reg Qold;
    
    always @(posedge clk) begin
        case({j,k})
            2'b00 : Qold = Qold;
            2'b01 : Qold = 0;
           	2'b10 : Qold = 1;
            2'b11 : Qold = !Qold;
        endcase
    end

    assign Q = Qold;
endmodule
