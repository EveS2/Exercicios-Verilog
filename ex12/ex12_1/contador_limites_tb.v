`timescale 1ns/1ps

module contador_limites_tb;
    reg clk; reg rst; wire [3:0] q;

    contador_limites uut (.clk(clk), .rst(rst), .q(q));
    always #5 clk = ~clk;

    initial begin
        $dumpfile("contador_limites.vcd"); $dumpvars(0, contador_limites_tb);
        clk = 0; rst = 1; #12 rst = 0; #200 $finish;
    end
endmodule