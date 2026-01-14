module top (
        Clk,
        Reset_p
    );
    input Clk;
    input Reset_p;

    parameter PC_WIDTH = 32;
    parameter RegDst_WIDTH = 5;
    parameter ALUSrc_WIDTH = 32;
    parameter ALU_Add_WIDTH = 32;
    parameter MemtoReg_WIDTH = 32;

    // ! Instruction Fetch stage
    wire [PC_WIDTH-1:0]ProgramCounter;
    wire [PC_WIDTH-1:0]PC_Src_out;
    wire [PC_WIDTH-1:0]PC_Plus_4;
    wire [PC_WIDTH-1:0]AddResult;
    wire [PC_WIDTH-1:0]PC_next;
    wire PC_write;
    wire PCSrc;
    wire [31:0]Instruction;
    wire [31:0]imm32;

    assign PC_write = 1'b1;

    Add
        #(.WIDTH(PC_WIDTH))
        PC_Add(
            .SrcA(ProgramCounter),
            .SrcB(32'd4),
            .Out(PC_Plus_4)
        );
    Mux
        #(.WIDTH(PC_WIDTH))
        PCSrc_Mux(
            .in_0(PC_Plus_4),
            .in_1(AddResult),
            .sel(PCSrc),
            .out(PC_Src_out)
        );
    Mux
        #(.WIDTH(PC_WIDTH))
        Jump_Mux(
            .in_0(PC_Src_out),
            .in_1({PC_Plus_4[31:28],Instruction[23:0],2'b00}),
            .sel(Jump),
            .out(PC_next)
        );
    PC PC_inst0 (
           .Clk(Clk),
           .Reset_p(Reset_p),
           .PC_next(PC_next),
           .PC_write(PC_write),
           .PC(ProgramCounter)
       );
    Instruction_Memory Instruction_Memory_inst0 (
                           .Read_Address(ProgramCounter),
                           .Instruction(Instruction)
                       );
    // ! Instruction Decode stage
    wire RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite;
    wire [1:0]ALUOp;
    wire [PC_WIDTH-1:0]Read_Data_1;
    wire [PC_WIDTH-1:0]Read_Data_2;
    wire [4:0]Write_Reg;
    wire [PC_WIDTH-1:0]Write_Data;
    RegFile RegFile_inst0(
                .Clk(Clk),
                .Reset_p(Reset_p),
                .RegWrite(RegWrite),
                .Read_Reg_1(Instruction[25:21]),
                .Read_Reg_2(Instruction[20:16]),
                .Write_Reg(Write_Reg),
                .Write_Data(Write_Data),
                .Read_Data_1(Read_Data_1),
                .Read_Data_2(Read_Data_2)
            );
    Mux
        #(.WIDTH(RegDst_WIDTH))
        RegDst_Mux(
            .in_0(Instruction[20:16]),
            .in_1(Instruction[15:11]),
            .sel(RegDst),
            .out(Write_Reg)
        );
    Sign_Extend Sign_Extend_inst0 (
                    .imm16(Instruction[15:0]),
                    .imm32(imm32)
                );
    Control_Unit Control_Unit_inst0(
                     .OpCode(Instruction[31:26]),
                     .RegDst(RegDst),
                     .Jump(Jump),
                     .Branch(Branch),
                     .MemRead(MemRead),
                     .MemtoReg(MemtoReg),
                     .ALUOp(ALUOp),
                     .MemWrite(MemWrite),
                     .ALUSrc(ALUSrc),
                     .RegWrite(RegWrite)
                 );
    //  ! Execute Address Calc. Stage
    wire [PC_WIDTH-1:0]ALUSrc_out;
    wire [3:0]ALUControl;
    wire [PC_WIDTH-1:0]ReadData;
    wire [PC_WIDTH-1:0]ALUResult;
    Mux
        #(.WIDTH(ALUSrc_WIDTH))
        ALUSrc_Mux(
            .in_0(Read_Data_2),
            .in_1(imm32),
            .sel(ALUSrc),
            .out(ALUSrc_out)
        );
    ALU_Control ALU_Control_inst0(
                    .ALUOp(ALUOp),
                    .Funct(Instruction[5:0]),
                    .ALUControl(ALUControl)
                );
    Add
        #(.WIDTH(ALU_Add_WIDTH))
        ALU_Add(
            .SrcA(PC_Plus_4),
            .SrcB({imm32[29:0],2'b00}),// 左移2位
            .Out(AddResult)
        );
    ALU ALU_inst0(
            .SrcA(Read_Data_1),
            .SrcB(ALUSrc_out),
            .ALUControl(ALUControl),
            .ALUResult(ALUResult),
            .Zero(Zero)
        );
    //  ! Memory Access Stage
    Branch_And Branch_And_inst0(
                   .SrcA(Branch),
                   .SrcB(Zero),
                   .Out(PCSrc)
               );
    Data_Memory Data_Memory_inst0(
                    .Clk(Clk),
                    .MemWrite(MemWrite),
                    .MemRead(MemRead),
                    .Address(ALUResult),
                    .WriteData(Read_Data_2),
                    .ReadData(ReadData)
                );
    //  ! Write Back Stage
    Mux
        #(.WIDTH(MemtoReg_WIDTH))
        MemtoReg_Mux(
            .in_0(ALUResult),
            .in_1(ReadData),
            .sel(MemtoReg),
            .out(Write_Data)
        );
endmodule
