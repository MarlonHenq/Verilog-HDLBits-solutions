module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    wire [31:0] net;
    
    assign net = {a[4:0], b[4:0], c[4:0], d[4:0], e[4:0], f[4:0], 2'b11};
    assign w = net[31:24];
    assign x = net[23:16];
    assign y = net[15:8];
    assign z = net[7:0];

endmodule
