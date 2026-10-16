`timescale 1ns/1ps
module contador_hex_display_tb;
    reg clk; 
    reg rst; 
    wire [6:0] display;

    contador_hex_display uut (
        .clk(clk), 
        .rst(rst), 
        .display(display)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("contador_hex_display.vcd"); 
        $dumpvars(0, contador_hex_display_tb);

        clk = 0; 
        rst = 1; 
        #12 rst = 0; 
        #200 $finish;
    end
endmodule