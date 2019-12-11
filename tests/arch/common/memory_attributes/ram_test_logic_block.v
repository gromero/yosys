`default_nettype none
module ram_test_logic_block #(parameter D=9, A=8)
  (output reg  [D-1:0] q,
   input  wire [D-1:0] d,
   input  wire [A-1:0] a,
   input  wire 	     clk, we);

   (* synthesis, logic_block *)
   reg [D-1:0] mem [2**A-1:0];

   always @(posedge clk) begin
	if (we) mem[a] <= d;
	q <= mem[a];
   end
endmodule // ram_test
