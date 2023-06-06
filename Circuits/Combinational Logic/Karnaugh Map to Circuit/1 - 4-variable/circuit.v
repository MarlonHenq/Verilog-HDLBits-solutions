module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out = (!a && !b && !c) || (!a && !c && !d) || (a && !c && !b) || (a && c && d) || (!a && c && b) || (!a && c && !d);

endmodule
