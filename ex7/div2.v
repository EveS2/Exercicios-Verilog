module div2 (
    input clk,
    input reset,
    output reg out
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 1'b0;
        end else begin
            out <= ~out;
        end
    end
endmodule