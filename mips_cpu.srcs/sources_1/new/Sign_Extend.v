module Sign_Extend (
        imm16,
        imm32
    );
    input [15:0]imm16;
    output [31:0]imm32;
    assign imm32={{16{imm16[15]}},imm16[15:0]};
endmodule
