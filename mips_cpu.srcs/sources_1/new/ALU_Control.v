module ALU_Control (
        ALUOp,
        Funct,
        ALUControl
    );
    input [1:0]ALUOp;
    input [5:0]Funct;
    output reg [3:0]ALUControl;

    always@(*)
    case (ALUOp)
        2'b00: // lw,sw
            ALUControl=4'b0010;// add
        2'b01:// beq
            ALUControl=4'b0110;// sub
        2'b10:
        case (Funct)
            6'b100000:// add
                ALUControl=4'b0010;
            6'b100001:// addu
                ALUControl=4'b0010;
            6'b100010:// sub
                ALUControl=4'b0110;
            6'b100011:// subu
                ALUControl=4'b0110;
            6'b100100:// and
                ALUControl=4'b0000;
            6'b100101:// or
                ALUControl=4'b0001;
            6'b101010:// slt
                ALUControl=4'b0111;
            6'b100111:// nor
                ALUControl=4'b1100;
            default:
                ALUControl=4'b0000;
        endcase
        default:
            ALUControl=4'b0000;
    endcase

endmodule
