module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    genvar i;
    
    adder ad1(a[0],b[0],cin,cout[0],sum[0]);
	
	 generate
     	for (i = 1; i < 100; i = i + 1) begin : Full_adder_block
        	adder ad(a[i],b[i],cout[i-1],cout[i],sum[i]);
    	end
     endgenerate
    

endmodule
	
	

module adder(
    input a,b,
    input cin,
    output cout,
	output sum );
	
    assign sum  = (a ^ b ^ cin);
    assign cout = ((a & b) | (b & cin) | (cin & a));
endmodule
