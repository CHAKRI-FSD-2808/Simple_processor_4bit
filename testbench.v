`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:38:03
// Design Name: 
// Module Name: processor_tb
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
module processor_tb;
  reg clk;
  reg [3:0] instruction;

  wire [3:0] alu_result_debug, reg0_debug, reg1_debug;

  // Instantiate processor
  processor uut (
    .clk(clk),
    .instruction(instruction),
    .alu_result_debug(alu_result_debug),
    .reg0_debug(reg0_debug),
    .reg1_debug(reg1_debug)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("processor.vcd");
    $dumpvars(0, processor_tb);

    $display("===== Starting Simulation =====");

    #5;

    // ADD R0 + R1
    instruction = 4'b0001; #10;
    $display("ADD: R0 = %b, R1 = %b => Result = %b", reg0_debug, reg1_debug, alu_result_debug);

    // SUB R0 - R1
    instruction = 4'b0010; #10;
    $display("SUB: R0 = %b, R1 = %b => Result = %b", reg0_debug, reg1_debug, alu_result_debug);

    // AND R0 & R1
    instruction = 4'b0011; #10;
    $display("AND: R0 = %b, R1 = %b => Result = %b", reg0_debug, reg1_debug, alu_result_debug);

    // OR R0 | R1
    instruction = 4'b0100; #10;
    $display("OR:  R0 = %b, R1 = %b => Result = %b", reg0_debug, reg1_debug, alu_result_debug);

    // STORE R0 into Memory[0]
    instruction = 4'b0110; #10;
    $display("STORE: Memory[0] <- R0 = %b", reg0_debug);

    // LOAD Memory[0] into R0
    instruction = 4'b0101; #10;
    $display("LOAD: R0 <- Memory[0]");

    // MOV R0 = R1
    instruction = 4'b0111; #10;
    $display("MOV: R0 = R1 = %b", reg1_debug);

    // NOP
    instruction = 4'b0000; #10;
    $display("NOP executed");

    $display("===== End of Simulation =====");
    $finish;
  end
endmodule

