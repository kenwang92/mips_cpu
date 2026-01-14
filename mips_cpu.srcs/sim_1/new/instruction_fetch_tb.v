`timescale 1ns/1ns
module instruction_fetch_tb ();
    reg Clk;
    reg Reset_p;
    reg [31:0]PC_next;
    reg PC_write;
    wire [31:0]Instruction;

    top top (
            Clk,
            Reset_p,
            Instruction,
            PC_next,
            PC_write
        );

    initial
        Clk=1;
    always #4 Clk=~Clk;

    initial begin
        Reset_p=1;
        PC_next=4;
        PC_write=1;
        #81;
        Reset_p=0;
        #500;
        PC_next=8;
        #500;
        $stop;
    end

endmodule
