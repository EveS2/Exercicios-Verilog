`timescale 1ns / 1ps

module shift_left_tb;
    reg clk;
    reg shift_in;
    wire [3:0] q;

    shift_left uut (
        .clk(clk),
        .shift_in(shift_in),
        .q(q)
    );

    always #10 clk = ~clk;

    initial begin
        $dumpfile("shift_left.vcd");
        $dumpvars(0, shift_left_tb);

        clk = 0;
        shift_in = 0; 
        #15

        shift_in = 1;
        #20;
        shift_in = 0;
        #20; 
        shift_in = 1;
        #20;
        shift_in = 1;
        #20;

        shift_in = 0;
        #40;

        $finish;
    end
endmodule