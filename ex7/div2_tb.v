`timescale 1ns / 1ps

module div2_tb;
    reg clk;
    reg reset;
    wire out;

    div2 uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("div2.vcd");
        $dumpvars(0, div2_tb);

        clk = 0;
        reset = 1;
        #12;
        reset = 0;

        #100;
        $finish;
    end
endmodule