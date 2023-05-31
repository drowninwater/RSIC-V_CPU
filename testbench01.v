`include "alu.v"
`timescale 1ms/1ms

module alu_tb();
    reg[31:0] Ax Bx;
    wire [31:0] Cx;
    reg[2:0] ALUOpx;
    alu m_alu(
        .A(Ax),
        .B(Bx),
        .ALUOp(ALUOpx),
        .C(Cx)
    );

    initial begin
        Ax=32'h00000002;
        Bx=32'h00000001;
        ALUOpx=3'b000;
    end

    always  begin
        #(5) ALUOpx=3'b001;
        #(5) ALUOpx=3'b000;
    end
endmodule