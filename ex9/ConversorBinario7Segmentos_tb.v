`timescale 1ns / 1ps

module ConversorBinario7Segmentos_tb;
    reg [3:0] numero;
    wire [6:0] segmentos;

    ConversorBinario7Segmentos uut (
        .numero(numero),
        .segmentos(segmentos)
    );

    initial begin
        $dumpfile("conversor.vcd");
        $dumpvars(0, ConversorBinario7Segmentos_tb);

        numero = 4'd0; #10;
        numero = 4'd1; #10;
        numero = 4'd2; #10;
        numero = 4'd3; #10;
        numero = 4'd4; #10;
        numero = 4'd5; #10;
        numero = 4'd6; #10;
        numero = 4'd7; #10;
        numero = 4'd8; #10;
        numero = 4'd9; #10;

        $finish;
    end
endmodule