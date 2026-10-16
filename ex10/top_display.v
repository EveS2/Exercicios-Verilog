module top_display (
    input clk,
    input reset,
    output [3:0] q_contador,
    output [6:0] segmentos_display
);

    wire [3:0] fio_contagem;

    contador_mod10 meu_contador (
        .clk(clk),
        .reset(reset),
        .q(fio_contagem)
    );

    ConversorBinario7Segmentos meu_conversor (
        .numero(fio_contagem),
        .segmentos(segmentos_display)
    );

    assign q_contador = fio_contagem;
endmodule