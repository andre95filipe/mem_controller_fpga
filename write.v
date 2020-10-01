module write (
              input clk,
              output pin,
            );

  reg [8:0] counter = 9'b000000000;
always @ ( posedge clk ) begin
  if(counter == 9'b111110100)
  begin
    counter = 9'b000000000;
    pin = pin == 1'b1 ? 1'b0 : 1'b1;
  end
  else
  begin
    counter = counter + 1;
  end
end

endmodule
