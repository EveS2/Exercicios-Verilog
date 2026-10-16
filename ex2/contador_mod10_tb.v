`timescale 1ns / 1ps

module contador_mod10_tb;
    reg clk;
    reg reset;
    wire [3:0] q;

    contador_mod10 uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #12;

        reset = 0;
        #150;

        $finish;
    end 

    initial begin
        $dumpfile("contador_mod10.vcd");
        $dumpvars(0, contador_mod10_tb);
    end 
endmodule