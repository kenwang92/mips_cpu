module Add (
        SrcA,
        SrcB,
        Out
    );
    parameter WIDTH = 32;

    input [WIDTH-1:0]SrcA;
    input [WIDTH-1:0]SrcB;

    output [WIDTH-1:0]Out;

    assign Out=SrcA+SrcB;
endmodule
