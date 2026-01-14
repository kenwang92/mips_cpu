// Program Counter
module PC (
        Clk,
        Reset_p,
        PC_next,
        PC_write,
        PC
    );
    input Clk;
    input Reset_p;
    input [31:0]PC_next;
    input PC_write;

    output reg [31:0]PC;

    always @(posedge Clk or posedge Reset_p) begin
        if (Reset_p)
            PC<=32'h0000_0000;
        else if(PC_write)
            PC<=PC_next;
    end
endmodule
