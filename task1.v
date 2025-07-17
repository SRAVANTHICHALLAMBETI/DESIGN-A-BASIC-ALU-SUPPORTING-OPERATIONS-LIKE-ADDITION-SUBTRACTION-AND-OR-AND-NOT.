module alu(
    input [7:0] a, b,
    input [2:0] op,
    output [7:0] result
);

parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter AND = 3'b010;
parameter OR  = 3'b011;
parameter NOT = 3'b100;

reg [7:0] result_reg;
assign result = result_reg;

always @(a, b, op) begin
    case (op)
        ADD: result_reg = a + b;
        SUB: result_reg = a - b;
        AND: result_reg = a & b;
        OR:  result_reg = a | b;
        NOT: result_reg = ~a;
        default: result_reg = 8'b0;
    endcase
end

endmodule
