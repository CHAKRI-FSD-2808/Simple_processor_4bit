`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:30:01
// Design Name: 
// Module Name: register_file
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

module register_file (
  input clk,
  input we,
  input [1:0] read_reg1, read_reg2, write_reg,
  input [3:0] write_data,
  output [3:0] read_data1, read_data2
);
  reg [3:0] registers [3:0];

  assign read_data1 = registers[read_reg1];
  assign read_data2 = registers[read_reg2];
  
  initial 
  begin
  registers[0] = 4'b0010;  // R0 = 2
  registers[1] = 4'b0001;  // R1 = 1
  end


  always @(posedge clk) begin
    if (we)
      registers[write_reg] <= write_data;
  end
endmodule


