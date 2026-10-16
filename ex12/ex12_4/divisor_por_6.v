module divisor_por_6 (
    input clk,
    input rst,
    output clk_out
);
    reg q_div2;
    reg [1:0] q_div3;

    always @(posedge clk or posedge rst) begin
        if (rst) 
            q_div2 <= 0;
        else     
            q_div2 <= ~q_div2;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) 
            q_div3 <= 2'b00;
        else     
            q_div3 <= (q_div3 == 2'd2) ? 2'b00 : q_div3 + 1'b1;
    end

    reg q_out;
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q_out <= 0;
        else if (q_div3 == 2'd2 && q_div2 == 1'b1) 
            q_out <= ~q_out;
    end
    
    assign clk_out = q_out;

endmodule