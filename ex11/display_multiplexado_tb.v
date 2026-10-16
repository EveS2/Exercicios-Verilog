`timescale 1ns / 1ps

module display_multiplexado_tb;
    reg clk;
    reg [3:0] num0, num1, num2;
    wire [2:0] sel_display;
    wire [6:0] segmentos;

    display_multiplexado uut (
        .clk(clk),
        .num0(num0), .num1(num1), .num2(num2),
        .sel_display(sel_display),
        .segmentos(segmentos)
    );

    always #10 clk = ~clk;

    initial begin
        $dumpfile("display_multiplexado.vcd");
        $dumpvars(0, display_multiplexado_tb);

        clk = 0;
        num0 = 4'h1; 
        num1 = 4'h2; 
        num2 = 4'h3;

        #100;
        $finish;
    end
endmodule