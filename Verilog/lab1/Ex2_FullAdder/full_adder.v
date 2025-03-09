// Author: Your Name
// File: full_adder.v
// Description: A Full Adder in Verilog
// Module: full_adder
// Inputs: a, b, cin
// Outputs: sum, cout

module full_adder (a, b, cin, sum, cout);

// Define the input and output ports
input a, b, cin;
output sum, cout;

// Define IO wires and registers 
wire a, b, cin;  // INPUTS - defined as wires
wire sum, cout;  // OUTPUTS - defined as wires

// Implement the Full Adder logic
assign sum = a ^ b ^ cin;  // XOR for sum
assign cout = (a & b) | (b & cin) | (a & cin);  // OR for carry out

endmodule
