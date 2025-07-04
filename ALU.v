`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:19:51
// Design Name: 
// Module Name: ALU
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
module alu(
  input [3:0] A, B,
  input [2:0] opcode,
  output reg [3:0] result
           );
           
  always @(*) begin
    case(opcode)
      3'b000: result = 4'b0000;          // NOP
      3'b001: result = A + B;            // ADD
      3'b010: result = A - B;            // SUB
      3'b011: result = A & B;            // AND
      3'b100: result = A | B;            // OR
      default: result = 4'b0000;
    endcase
  end
endmodule

