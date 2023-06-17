module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

    wire saida1;
    wire [15:0] sum1;
    wire [15:0] sum2;
    
    add16 instance0 ( a[15:0] , b[15:0], 0, sum[15:0], saida1);
    add16 instance1 ( a[31:16] , b[31:16], 0, sum1[15:0]);
    add16 instance2 ( a[31:16] , b[31:16], 1, sum2[15:0]);
    
    always @(*) begin
        if (saida1 == 0)
            sum[31:16] = sum1[15:0];
        else
            sum[31:16] = sum2[15:0];
    end
    
    
    
    
endmodule
