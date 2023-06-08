module top_module (input a, input b, input c, output out);//

    wire aux;
    andgate inst1 (aux, a, b, c, 1, 1);
	assign out = !aux;
endmodule