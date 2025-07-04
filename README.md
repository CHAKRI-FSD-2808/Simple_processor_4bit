# SIimple_processor_4bit
#  Verilog-Based 4-Bit Processor Project

This project implements a basic "4-bit processor" using Verilog HDL. The design includes core components such as an Arithmetic Logic Unit (ALU), a Register File, a small Memory Unit, and a Control Unit. The modules are integrated into a top-level module and verified using a testbench.


##  Modules Overview

 top_module.v
Top-level module integrating the ALU, control unit, memory, and register file into a cohesive processor.

1. ALU.v
Performs basic arithmetic and logical operations (like ADD, SUB, AND, OR, etc.). Designed for 4-bit operands.

2. register_file.v
Implements a small register bank to store operands and results. It supports read and write operations via control signals.

3. memory_4x4.v
Implements a 4x4 memory unit (4 addresses, each storing 4-bit data). Used to simulate instruction or data memory.

4. control_unit.v
Decodes opcodes and generates control signals for data flow, ALU operations, register access, etc.

 6. testbench.v
Stimulates the processor with input signals and verifies outputs. Useful for simulation in tools like ModelSim or Vivado.

---

