module contador_limites #(
    parameter MIN = 4'd3,
    parameter MAX = 4'd11
)(
    input clk,
    input rst,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= MIN;
        end else begin
            if (q >= MAX)
                q <= MIN;
            else
                q <= q + 1'b1;
        end
    end
endmodule