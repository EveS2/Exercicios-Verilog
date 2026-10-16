`timescale 1ns / 1ps

module top_display_tb;
    reg clk;
    reg reset;
    wire [3:0] q_contador;
    wire [6:0] segmentos_display;

    top_display uut (
        .clk(clk),
        .reset(reset),
        .q_contador(q_contador),
        .segmentos_display(segmentos_display)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("top_display.vcd");
        $dumpvars(0, top_display_tb);

        clk = 0;
        reset = 1;
        #15;

        reset = 0;
        #120;

        $finish;
    end
endmodule