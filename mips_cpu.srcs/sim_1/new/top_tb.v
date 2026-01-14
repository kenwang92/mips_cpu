`timescale 1ns / 1ns
module top_tb();
    reg Clk;
    reg Reset_p;
    top top_inst0(
            .Clk(Clk),
            .Reset_p(Reset_p)
        );
    initial
        Clk=1;
    always #4 Clk=~Clk;

    initial begin
        Reset_p=1;
        #20;
        Reset_p=0;
        $display("PC\t Instruction\t ALUResult\t WriteData\t Time");
        $monitor("%h\t %h\t %h\t %h\t %t",
                 top_inst0.ProgramCounter,
                 top_inst0.Instruction,
                 top_inst0.ALUResult,
                 top_inst0.Write_Data,
                 $time
                );
        #200;
        $display("Reg[$t1/r9]=%d",top_inst0.RegFile_inst0.reg_array[2]);
        $display("Reg[$t2/r10]=%d",top_inst0.RegFile_inst0.reg_array[3]);
        $display("Reg[$t3]=%d",top_inst0.RegFile_inst0.reg_array[4]);
        $display("Reg[$t4]=%d",top_inst0.RegFile_inst0.reg_array[5]);
        $display("Reg[$t5]=%d",top_inst0.RegFile_inst0.reg_array[6]);
        $display("Reg[$t6]=%d",top_inst0.RegFile_inst0.reg_array[7]);
        $display("Reg[$t7]=%d",top_inst0.RegFile_inst0.reg_array[8]);
        $stop;
    end
endmodule
