module ConversorBinario7Segmentos (
    input [3:0] numero,
    output reg [6:0] segmentos
);
    always @(*) begin
        // [6:0] -> g f e d c b a 
        case (numero)
            4'd0: segmentos = 7'b0111111;
            4'd1: segmentos = 7'b0000110;
            4'd2: segmentos = 7'b1011011;
            4'd3: segmentos = 7'b1001111;
            4'd4: segmentos = 7'b1100110;
            4'd5: segmentos = 7'b1101101;
            4'd6: segmentos = 7'b1111101;
            4'd7: segmentos = 7'b0000111;
            4'd8: segmentos = 7'b1111111;
            4'd9: segmentos = 7'b1101111;
            4'd10: segmentos = 7'b1110111; // Letra A
            4'd11: segmentos = 7'b1111100; // Letra b
            4'd12: segmentos = 7'b0111001; // Letra C
            4'd13: segmentos = 7'b1011110; // Letra d
            4'd14: segmentos = 7'b1111001; // Letra E
            4'd15: segmentos = 7'b1110001; // Letra F
            default: segmentos = 7'b0000000;
        endcase
    end
endmodule

module contador_hex_display (
    input clk,
    input rst,
    output [6:0] display
);
    reg [3:0] conta;

    always @(posedge clk or posedge rst) begin
        if (rst) 
            conta <= 4'd0;
        else     
            conta <= conta + 1'b1;
    end

    ConversorBinario7Segmentos decoder (
        .numero(conta),
        .segmentos(display)
    );
    
endmodule