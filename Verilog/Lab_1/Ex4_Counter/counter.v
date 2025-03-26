// Author: Alessio Caviglia
// File: counter_4bit.v
// Description: A 4-bit binary counter in Verilog
// Module: counter_4bit
// Inputs: clk, reset
// Outputs: count

module counter_4bit (
    input clk,
    input reset,
    output reg [3:0] count
);

// Counter logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'b0000;  // Reset the counter to 0
    end else begin
        count <= count + 1;  // Increment the counter
    end
end

endmodule
