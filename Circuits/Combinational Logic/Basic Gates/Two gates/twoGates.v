module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire intern1;
    
    assign intern1 = ~((in1 || in2) && ~(in1 && in2)); //XNOR
    
    assign out = ((intern1 || in3) && ~(intern1 && in3));

endmodule
