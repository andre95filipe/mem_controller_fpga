// look in pins.pcf for all the pin names on the TinyFPGA BX board


module top (
    input OLDCLK,     // 16MHz clock
    output PIN_23,     // 1kHz pin
    output PIN_24,     // 1kHz pin
    output USBPU      // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
    assign USBPU = 0;

    wire CLK;
    wire LOCKED;

    assign PIN_24 = ~PIN_23;


    pll p (
              .clock_in(OLDCLK),
              .clock_out(CLK),
              .locked(LOCKED)
          );

    write w (
              .clk(CLK),
              .pin(PIN_23)
            );


endmodule
