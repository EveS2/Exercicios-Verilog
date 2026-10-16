`timescale 1ns / 1ps

module contador4bits_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    contador4bits uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("wavelog.vcd");
        $dumpvars(0, contador4bits_tb);

        clk = 0;
        reset = 1;
        #10;

        reset = 0;
        #160;

        $finish;
    end

endmodule