`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	
    wire net10;
    wire net11;
    wire net20;
    
    assign net10 = (a && b);
    assign net11 = (c && d);
    
    assign net20 = (net10 || net11);
    
    assign out = net20;
    assign out_n = !net20;
    
    
    
endmodule
