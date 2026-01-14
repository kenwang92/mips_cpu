module RegFile (
        Clk,
        Reset_p,
        RegWrite,
        Read_Reg_1,
        Read_Reg_2,
        Write_Reg,
        Write_Data,
        Read_Data_1,
        Read_Data_2
    );
    input Clk;
    input Reset_p;
    input RegWrite;
    input [4:0]Read_Reg_1;// rs
    input [4:0]Read_Reg_2;// rt
    input [4:0]Write_Reg;// rd
    input [31:0]Write_Data;
    output [31:0]Read_Data_1;
    output [31:0]Read_Data_2;

    reg [31:0]reg_array[0:31];
    integer i;

    // 避免寫入$zero暫存器
    always@(posedge Clk or posedge Reset_p)
        if(Reset_p)
            for(i=0;i<32;i=i+1)
                reg_array[i]<=32'b0;
        else if(RegWrite&&(Write_Reg!=0)) begin
            reg_array[0]<=32'b0;// $zero硬鎖0
            reg_array[Write_Reg]<=Write_Data;
        end

    assign Read_Data_1=reg_array[Read_Reg_1];
    assign Read_Data_2=reg_array[Read_Reg_2];

endmodule
