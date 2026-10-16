`timescale 1ns / 1ps

module divisor_por_6_tb;
    reg clk; 
    reg rst; 
    wire clk_out;

    divisor_por_6 uut (
        .clk(clk), 
        .rst(rst), 
        .clk_out(clk_out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("divisor_por_6.vcd"); 
        $dumpvars(0, divisor_por_6_tb);

        clk = 0; 
        rst = 1; 
        #12 rst = 0; 
        
        #400 $finish;
    end
endmodule