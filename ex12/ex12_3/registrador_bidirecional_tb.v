`timescale 1ns/1ps

module registrador_bidirecional_tb;
    reg clk; 
    reg rst; 
    reg dir; 
    reg si; 
    wire [3:0] q;

    registrador_bidirecional uut (
        .clk(clk), 
        .rst(rst), 
        .dir(dir), 
        .si(si), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin

        $dumpfile("registrador_bidirecional.vcd"); 
        $dumpvars(0, registrador_bidirecional_tb);

        clk = 0; 
        rst = 1; 
        si = 1; 
        dir = 0;

        #12 rst = 0;
        #40 dir = 1; 
        si = 0;
        #50 $finish;
    end
endmodule