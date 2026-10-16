module contador_decrescente (
    input clk,
    input rst,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 4'd15;
        end else begin
            if (q <= 4'd1)
                q <= 4'd15;
            else
                q <= q - 4'd2;
        end
    end
endmodule