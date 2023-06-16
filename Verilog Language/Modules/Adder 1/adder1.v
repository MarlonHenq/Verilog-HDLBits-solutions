module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin;
	wire cout;
    
    assign cin = 0;
    
    add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(cin), .cout(cout), .sum(sum[15:0]));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(cout), .sum(sum[31:16]));
endmodule
