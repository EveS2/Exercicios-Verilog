module div2 (
    input clk,
    output reg out
);
    initial begin
        out = 0;
    end

    always @(posedge clk) begin
        out <= ~out;
    end
endmodule