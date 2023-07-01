module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    
    int value = 0;
    int value2 = 0;
    int value3 = 0;
    int value4 = 0;
    always @(*) begin
        value = ((sel[0] * 1) + (sel[1] * 2) + (sel[2] * 4) + (sel[3] * 8) + (sel[4] * 16) + (sel[5] * 32) + (sel[6] * 64) + (sel[7] * 128))*4;
        value2 = value+1;
 		value3 = value+2;
		value4 = value+3;
        
        out[0] = in[value];
        out[1] = in[value2];
        out[2] = in[value3];
        out[3] = in[value4];
    end

endmodule
