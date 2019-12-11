`default_nettype none
module ram_test_ram_block #(parameter D=8, A=4)
  (output reg  [D-1:0] q,
   input  wire [D-1:0] d,
   input  wire [A-1:0] a,
   input  wire 	     clk, we);

   (* synthesis, ram_block *)
   reg [D-1:0] mem [2**A-1:0];

   always @(posedge clk) begin
	if (we) mem[a] <= d;
	q <= mem[a];
   end
endmodule // ram_test
