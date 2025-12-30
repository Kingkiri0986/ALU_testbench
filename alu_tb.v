`timescale 1ns/1ps


module alu_tb;


reg [3:0] A;
reg [3:0] B;
reg [2:0] SEL;
wire [3:0] RESULT;


alu dut (
.A(A),
.B(B),
.SEL(SEL),
.RESULT(RESULT)
);


initial begin
$dumpfile("wave.vcd");
$dumpvars(0, alu_tb);

A = 4'd5; B = 4'd3; SEL = 3'b000; #10; // ADD
A = 4'd5; B = 4'd3; SEL = 3'b001; #10; // SUB
A = 4'd5; B = 4'd3; SEL = 3'b010; #10; // AND
A = 4'd5; B = 4'd3; SEL = 3'b011; #10; // OR
A = 4'd5; B = 4'd3; SEL = 3'b100; #10; // XOR


$finish;
end


endmodule