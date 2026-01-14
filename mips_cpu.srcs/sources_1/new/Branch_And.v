module Branch_And (
        SrcA,
        SrcB,
        Out
    );
    input SrcA;
    input SrcB;

    output Out;

    assign Out=SrcA&SrcB;
endmodule
