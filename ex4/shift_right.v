module shift_right (
    input wire clk,
    input wire shift_in,
    output reg [3:0] q
);
    always @(posedge clk) begin
        q <= {shift_in, q[3:1]};
    end
endmodule