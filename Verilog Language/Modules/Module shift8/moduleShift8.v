module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] w1;
    wire [7:0] w2;
    wire [7:0] w3;
    
    my_dff8 n1 (clk, d, w1);
    my_dff8 n2 (clk, w1, w2);
    my_dff8 n3 (clk, w2, w3);
    
    assign q = sel[0] ? (sel[1] ? w3 : w1) : (sel[1] ? w2 : d);
    
endmodule