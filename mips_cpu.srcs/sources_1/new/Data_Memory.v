module Data_Memory (
        Clk,
        MemWrite,
        MemRead,
        Address,
        WriteData,
        ReadData
    );
    input Clk;
    input MemWrite;
    input MemRead;
    input [31:0]Address;
    input [31:0]WriteData;
    output [31:0]ReadData;
    reg [31:0]data_mem[0:1023];
    initial begin
        $readmemb("data_mem.txt",data_mem);
    end
    always@(posedge Clk)
        if(MemWrite)
            data_mem[Address[31:2]]<=WriteData;
    assign ReadData=(MemRead)?data_mem[Address[31:2]]:0;
endmodule
