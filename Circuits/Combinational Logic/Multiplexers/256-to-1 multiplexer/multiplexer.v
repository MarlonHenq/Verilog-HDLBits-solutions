module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
	
    int value = 0;
    
    always @(*) begin
        value = (sel[0] * 1) + (sel[1] * 2) + (sel[2] * 4) + (sel[3] * 8) + (sel[4] * 16) + (sel[5] * 32) + (sel[6] * 64) + (sel[7] * 128);
        out = in[value];
    end
    
endmodule
