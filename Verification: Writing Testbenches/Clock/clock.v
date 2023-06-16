module top_module ();
    reg clk;
    
	initial begin
        clk = 0;
        #5;
        
        forever begin
            clk = !clk; 
            #5;
        end
    end
    
    dut instance1 (.clk(clk));
    
endmodule
