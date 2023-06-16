module top_module();
    reg clk;
    reg in;
    reg [2:0]s;
    
    initial begin
        in = 0;
        s = 3'b010;
        #10; //10

        s = 3'b110;
        #10; //20

        in = 1;
        s = 3'b010;
        #10; //30

        in = 0;
        s = 3'b111;
        #10; //40

        in = 1;
        s = 3'b000;

        #30;
        in = 0;
    end
    
	initial begin
        clk = 0;
        #5;
 
        forever begin
            clk = !clk; 
            #5;
        end
    end
    
    
    q7 instance1 (.clk(clk), .in(in), .s(s));
endmodule
