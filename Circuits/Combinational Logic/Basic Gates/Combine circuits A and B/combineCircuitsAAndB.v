module top_module (input x, input y, output z);

    wire outA;
    wire outB;
    
    wire AorB;
    wire AandB;
    
    assign outA = (x^y) & x;
    assign outB = ((~x & ~y) || (x & y));
    
    assign AorB = outA || outB;
    assign AandB = outA & outB;
    
    assign z = (AorB ^ AandB);
        
endmodule
