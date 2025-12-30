module alu(
input [3:0] A,
input [3:0] B,
input [2:0] SEL,
output reg [3:0] RESULT
);


always @(*) begin
case (SEL)
3'b000: RESULT = A + B;
3'b001: RESULT = A - B;
3'b010: RESULT = A & B;
3'b011: RESULT = A | B;
3'b100: RESULT = A ^ B;
default: RESULT = 4'b0000;
endcase
end


endmodule