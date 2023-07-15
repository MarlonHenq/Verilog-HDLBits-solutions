module top_module (
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [3:0] e,
    output [3:0] q );
    
    always @(*) begin
        case(c)
            32'd0 : q = b;
            32'd1 : q = e;
            32'd2 : q = a;
            32'd3 : q = d;

            default : q = 32'hf;
        endcase
    end

endmodule
