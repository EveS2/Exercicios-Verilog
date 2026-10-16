`timescale 1ns / 1ps

module contador_updown_tb;
    reg clk;
    reg reset;
    reg dir;

    wire [3:0] q;

    contador_updown uut (
        .clk(clk),
        .reset(reset),
        .dir(dir),
        .q(q)
    );

    always begin
        #10 clk = ~clk;
    end

    initial begin
        $dumpfile("contador_updown.vcd");
        $dumpvars(0, contador_updown_tb);

        clk = 0;
        reset = 1;
        dir = 1;
        #25;

        reset = 0;
        #150;

        dir = 0;
        #100;

        reset = 1;
        #20;
        reset = 0;
        #60;

        $finish;
    end
endmodule