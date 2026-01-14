module ALU (
        SrcA,
        SrcB,
        ALUControl,
        ALUResult,
        Zero
    );
    input [31:0]SrcA;
    input [31:0]SrcB;
    input [3:0]ALUControl;
    output reg [31:0]ALUResult;
    output Zero;
    always@(*)
    case (ALUControl)
        4'b0000:// and
            ALUResult=SrcA&SrcB;
        4'b0001:// or
            ALUResult=SrcA|SrcB;
        4'b0010:// add
            ALUResult=SrcA+SrcB;
        4'b0110:// sub
            ALUResult=SrcA-SrcB;
        4'b0111:// slt
            ALUResult=(SrcA<SrcB)?32'd1:32'd0;
        4'b1100:// nor
            ALUResult=~(SrcA|SrcB);
        default:
            ALUResult=32'b0;
    endcase

    assign Zero=(ALUResult==0);

endmodule
