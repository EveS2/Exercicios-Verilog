module display_multiplexado (
    input clk,                    
    input [3:0] num0, num1, num2, 
    output reg [2:0] sel_display, 
    output reg [6:0] segmentos   
);

    
    reg [1:0] contador_display = 0;
    reg [3:0] num_atual;          

    always @(posedge clk) begin
        if (contador_display == 2)
            contador_display <= 0; 
        else
            contador_display <= contador_display + 1;
    end

    always @(*) begin
        case(contador_display)
            2'b00: begin
                sel_display = 3'b110; 
                num_atual = num0;     
            end
            2'b01: begin
                sel_display = 3'b101; 
                num_atual = num1;     
            end
            2'b10: begin
                sel_display = 3'b011; 
                num_atual = num2;     
            end
            default: begin
                sel_display = 3'b111; 
                num_atual = 4'b0000;
            end
        endcase
    end

    always @(*) begin
        case(num_atual)
            4'h0: segmentos = 7'b1111110; // 0
            4'h1: segmentos = 7'b0110000; // 1
            4'h2: segmentos = 7'b1101101; // 2
            4'h3: segmentos = 7'b1111001; // 3
            4'h4: segmentos = 7'b0110011; // 4
            4'h5: segmentos = 7'b1011011; // 5
            4'h6: segmentos = 7'b1011111; // 6
            4'h7: segmentos = 7'b1110000; // 7
            4'h8: segmentos = 7'b1111111; // 8
            4'h9: segmentos = 7'b1111011; // 9
            default: segmentos = 7'b0000000; // Apagado
        endcase
    end

endmodule