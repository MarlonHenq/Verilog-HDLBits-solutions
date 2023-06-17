module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

    wire saida1;
    
    add16 instance1 ( a[15:0] , b[15:0], 0, sum[15:0], saida1);
    add16 instance2 ( a[31:16] , b[31:16], saida1, sum[31:16]);
    
endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );
    
    assign sum = (a ^ b ^ cin);
    assign cout = ((a & b) || (b & cin) || (a & cin));

endmodule
