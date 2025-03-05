// Author: Your Name
// File: rca.v
// Description: A 4-bit Ripple Carry Adder in Verilog
// Module: ripple_carry_adder
// Inputs: A, B, Cin
// Outputs: Sum, Cout

module ripple_carry_adder (A, B, Cin, Sum, Cout);

// Define the input and output ports
input [3:0] A, B;
input Cin;
output [3:0] Sum;
output Cout;

// Define IO wires and registers 
wire [3:0] A, B;  // INPUTS - defined as wires
wire Cin;         // INPUT - defined as wire
wire [3:0] Sum;   // OUTPUT - defined as wire
wire Cout;        // OUTPUT - defined as wire

// Internal wires for carry signals
wire C1, C2, C3;

// Instantiate the Full Adders
full_adder fa0 (
    .a(A[0]),
    .b(B[0]),
    .cin(Cin),
    .sum(Sum[0]),
    .cout(C1)
);

full_adder fa1 (
    .a(A[1]),
    .b(B[1]),
    .cin(C1),
    .sum(Sum[1]),
    .cout(C2)
);

full_adder fa2 (
    .a(A[2]),
    .b(B[2]),
    .cin(C2),
    .sum(Sum[2]),
    .cout(C3)
);

full_adder fa3 (
    .a(A[3]),
    .b(B[3]),
    .cin(C3),
    .sum(Sum[3]),
    .cout(Cout)
);

endmodule
