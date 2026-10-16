module shift_left (
    input wire clk,
    input wire shift_in,
    output reg [3:0] q
);
    always @(posedge clk) begin
        q <= {q[2:0], shift_in};
    end
endmodule