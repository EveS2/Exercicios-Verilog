module registrador_paralelo (
    input clk,
    input load,
    input [3:0] D,
    output reg [3:0] q
);
    always @(posedge clk) begin
        if (load) begin
            q <= D;
        end
    end
endmodule