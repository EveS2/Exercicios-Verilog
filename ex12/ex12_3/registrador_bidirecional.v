module registrador_bidirecional (
    input clk,
    input rst,
    input dir, 
    input si,  
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 4'b0000;
        end else begin
            if (dir)
                q <= {si, q[3:1]}; 
            else
                q <= {q[2:0], si}; 
        end
    end
endmodule