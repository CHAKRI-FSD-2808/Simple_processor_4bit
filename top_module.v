`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:34:14
// Design Name: 
// Module Name: top_module
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

module processor (
  input clk,
  input [3:0] instruction,
  output [3:0] alu_result_debug,
  output [3:0] reg0_debug,
  output [3:0] reg1_debug
);

  wire [3:0] r1, r2, alu_result, mem_out;
  wire [2:0] alu_op;
  wire mem_we, reg_we;

  control_unit CU(.instruction(instruction), .alu_op(alu_op), .mem_we(mem_we), .reg_we(reg_we));
  register_file RF(.clk(clk), .we(reg_we), .read_reg1(2'b00), .read_reg2(2'b01), .write_reg(2'b00), .write_data(alu_result), .read_data1(r1), .read_data2(r2));
  alu ALU(.A(r1), .B(r2), .opcode(alu_op), .result(alu_result));
  memory MEM(.clk(clk), .we(mem_we), .address(2'b00), .data_in(r1), .data_out(mem_out));
  
  assign alu_result_debug = alu_result;
  assign reg0_debug = r1;
  assign reg1_debug = r2;
endmodule



