module top_module (
    input clk,
    input in, 
    output out);
    
    reg q;
    reg d;
    
    always @(posedge clk) begin
      	q = d;
    end
    
	assign d = in ^ q;
    assign out = q;
endmodule
