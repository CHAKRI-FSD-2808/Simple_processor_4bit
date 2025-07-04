`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:31:00
// Design Name: 
// Module Name: memory_4x4
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

module memory (
  input clk,
  input we,
  input [1:0] address,
  input [3:0] data_in,
  output reg [3:0] data_out
);
  reg [3:0] mem [3:0];
  
  initial begin
  mem[0] = 4'b1010;  // Memory[0] = 10
end


  always @(posedge clk) begin
    if (we)
      mem[address] <= data_in;
    data_out <= mem[address];
  end
endmodule


