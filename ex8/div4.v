module div4 (
    input clk,
    output clk2,
    output clk4
);
    div2 d1 (
        .clk(clk),
        .out(clk2)
    );

    div2 d2 (
        .clk(clk2),
        .out(clk4)
    );
endmodule