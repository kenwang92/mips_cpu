module Control_Unit (
        OpCode,
        RegDst,
        Jump,
        Branch,
        MemRead,
        MemtoReg,
        ALUOp,
        MemWrite,
        ALUSrc,
        RegWrite
    );
    input [5:0]OpCode;
    output reg RegDst;
    output reg Jump;
    output reg Branch;
    output reg MemRead;
    output reg MemtoReg;
    output reg [1:0]ALUOp;
    output reg MemWrite;
    output reg ALUSrc;
    output reg RegWrite;
    always@(*)
    case (OpCode)
        6'b000000:// R-TYPE
        begin
            RegDst=1;
            Jump = 0;
            Branch=0;
            MemRead=0;
            MemtoReg=0;
            ALUOp=2'b10;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=1;
        end
        6'b100011:// lw
        begin
            RegDst=0;
            Jump = 0;
            Branch=0;
            MemRead=1;
            MemtoReg=1;
            ALUOp=2'b00;
            MemWrite=0;
            ALUSrc=1;
            RegWrite=1;
        end
        6'b101011:// sw
        begin
            RegDst=0;// x
            Jump = 0;
            Branch=0;
            MemRead=0;
            MemtoReg=0;// x
            ALUOp=2'b00;
            MemWrite=1;
            ALUSrc=1;
            RegWrite=0;
        end
        6'b000100:// beq
        begin
            RegDst=0;// x
            Jump = 0;
            Branch=1;
            MemRead=0;
            MemtoReg=0;// x
            ALUOp=2'b01;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=0;
        end
        6'b001000: // addi
        begin
            RegDst = 0;
            Jump = 0;
            Branch = 0;
            MemRead = 0;
            MemtoReg = 0;
            ALUOp = 2'b00;
            MemWrite = 0;
            ALUSrc = 1;
            RegWrite = 1;
        end
        6'b000010: // j
        begin
            RegDst = 0;// x
            Jump = 1;
            Branch = 0;// x
            MemRead = 0;
            MemtoReg = 0;// x
            ALUOp = 2'b00;// x
            MemWrite = 0;
            ALUSrc = 0;// x
            RegWrite = 0;
        end
        default: begin
            RegDst=0;
            Jump = 0;
            Branch=0;
            MemRead=0;
            MemtoReg=0;
            ALUOp=2'b00;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=0;
        end
    endcase

endmodule
