module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire saida1;
    wire [31:0] b2;
    
    assign b2 = (b ^ {32{sub}});
    
    add16 instance1 ( a[15:0] , b2[15:0], sub, sum[15:0], saida1);
    add16 instance2 ( a[31:16] , b2[31:16], saida1, sum[31:16]);

endmodule
