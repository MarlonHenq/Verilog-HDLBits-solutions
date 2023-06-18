module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] intermadiary1;
    wire [7:0] intermadiary2;
	
    assign intermadiary1 = (a < b)? a : b; 
    assign intermadiary2 = (intermadiary1 < c)? intermadiary1 : c;
    assign min  = (intermadiary2 < d)? intermadiary2 : d;
endmodule
