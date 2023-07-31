module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    reg [99:0] outcout;
    genvar i;
	
    bcd_fadd instance1(a[3:0], b[3:0], cin, outcout[0],sum[3:0]);
    
    generate
        for (i=4; i<400; i=i+4) begin: bcdadder
            bcd_fadd bcdadder(a[i+3:i], b[i+3:i], outcout[(i/4)-1],outcout[i/4],sum[i+3:i]);
        end
    endgenerate
    
    assign cout = outcout[99];
endmodule
