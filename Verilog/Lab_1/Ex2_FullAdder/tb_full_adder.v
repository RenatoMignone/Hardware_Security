// Author: Your Name
// File: tb_full_adder.v
// Description: Testbench for the Full Adder
// Module: tb_full_adder
// Inputs: none
// Outputs: none

module tb_full_adder;     // Testbench for Full Adder

// Internal wires and registers (if any)
reg a, b, cin;            // Registers to store test inputs
wire sum, cout;           // Wires to capture the outputs

// Instantiate the Full Adder
full_adder dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

// Test procedure
initial begin
    $dumpfile("full_adder.vcd");         // Specify the name of the VCD file
    $dumpvars(0, tb_full_adder);         // Dump all variables in the testbench

    // Apply test inputs
    a = 0; b = 0; cin = 0; #10;  // Wait 10 time units
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;

    // End simulation
    $finish;
end

endmodule
