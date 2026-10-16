`timescale 1ns / 1ps

module registrador_paralelo_tb;

    reg clk;
    reg load;
    reg [3:0] D;
    wire [3:0] q;

    registrador_paralelo uut (
        .clk(clk),
        .load(load),
        .D(D),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("registrador_paralelo.vcd");
        $dumpvars(0, registrador_paralelo_tb);

        clk = 0;
        load = 0;
        D = 4'b0000;
        #10;

        D = 4'b1010;
        #10;

        load = 1;
        #10;

        load = 0;
        D = 4'b0101;
        #10;

        load = 1;
        #10;

        load = 0;
        #10;

        $finish;
    end
endmodule