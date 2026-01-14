module Mux
    (
        in_0,
        in_1,
        sel,
        out
    );
    parameter WIDTH = 5;

    input [WIDTH-1:0]in_0;
    input [WIDTH-1:0]in_1;
    input sel;

    output [WIDTH-1:0]out;

    assign out=sel?in_1:in_0;
endmodule
