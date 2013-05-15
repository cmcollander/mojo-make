module mojo_top(
    input clk,
    input rst_n,
    input cclk,
    output[7:0]led,
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output [3:0] spi_channel,
    input avr_tx,
    output avr_rx,
    input avr_rx_busy
    );

wire rst = ~rst_n;

assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;
	 
assign led[1] = ~rst;
assign led[2] = ~rst;
assign led[3] = ~rst;
assign led[4] = rst;
assign led[5] = rst;
assign led[6] = rst;
assign led[7] = 1;

 
blinker awesome_blinker (
    .clk(clk),
    .rst(rst),
    .blink(led[0])
    );
 


endmodule
