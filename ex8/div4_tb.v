`timescale 1ns / 1ps

module div4_tb;
    reg clk;
    wire clk2;
    wire clk4;

    div4 uut (
        .clk(clk),
        .clk2(clk2),
        .clk4(clk4)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("div4.vcd");
        $dumpvars(0, div4_tb);

        clk = 0;

        #100;
        $finish;
    end
endmodule