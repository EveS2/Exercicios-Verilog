module contador_updown (
    input clk,
    input reset,
    input dir,
    output reg [3:0] q
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 4'b0000;
        end else begin
            if (dir) begin
                q <= q + 1;
            end else begin 
                q <= q - 1;
            end 
        end 
    end
endmodule