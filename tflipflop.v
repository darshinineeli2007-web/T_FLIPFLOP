// T Flip-Flop
module tflipflop (
    input T,        // Toggle input
    input clk,      // Clock input
    input reset,    // Asynchronous reset
    output reg Q    // Output
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;           // Reset output to 0
    else if (T)
        Q <= ~Q;             // Toggle when T = 1
    else
        Q <= Q;              // Hold state when T = 0
end

endmodule
