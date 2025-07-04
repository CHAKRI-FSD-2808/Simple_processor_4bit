`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:33:12
// Design Name: 
// Module Name: control_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module control_unit (
  input [3:0] instruction,
  output reg [2:0] alu_op,
  output reg mem_we, reg_we
);
  always @(*) begin
    alu_op = instruction[2:0];
    mem_we = 0; reg_we = 0;

    case (instruction[3:0])
      4'b0000: ;                      // NOP
      4'b0001: begin alu_op = 3'b001; reg_we = 1; end // ADD
      4'b0010: begin alu_op = 3'b010; reg_we = 1; end // SUB
      4'b0101: begin mem_we = 0; reg_we = 1; end      // LOAD
      4'b0110: begin mem_we = 1; reg_we = 0; end      // STORE
    endcase
  end
endmodule
