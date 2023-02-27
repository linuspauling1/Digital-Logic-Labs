`timescale 1ps/1ps
`include "simple_circuit.v"

module circuit_tb;

reg A;
wire B;

circuit circuit_under_test(A,B);

initial begin
    $dumpfile("simple_circuit_tb.vcd");
    $dumpvars(0,circuit_tb);

    A = 1;
    #10;
    A = 0;
    #20;
    A = 1;
    #30;

    $display("Primul exercițiu!\n");
end

endmodule