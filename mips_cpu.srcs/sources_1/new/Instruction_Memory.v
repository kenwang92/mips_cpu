// Instruction Memory初始化(mem.txt做為ROM映像檔)
module Instruction_Memory (
        Read_Address,
        Instruction
    );
    input [31:0]Read_Address;
    output [31:0]Instruction;

    reg [31:0]instr_mem[0:1023];
    initial begin
        $readmemb("instr_mem.txt",instr_mem);
    end

    // 每次PC偏移4轉index要除4(右移2)
    assign Instruction=instr_mem[Read_Address[31:2]];
endmodule
