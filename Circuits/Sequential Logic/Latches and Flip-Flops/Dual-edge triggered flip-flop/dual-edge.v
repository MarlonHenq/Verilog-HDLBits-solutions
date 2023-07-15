module top_module (
    input clk,
    input d,
    output q
);
    reg value1, value2;
    
    always @(posedge clk) 
    	value1 = d^value2;
   	
    always @(negedge clk) 
    	value2 = d^value1;
    
   
   assign q = value1^value2;

endmodule
