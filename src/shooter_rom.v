`default_nettype none
module shooter_rom(
    input  wire [3:0]  row_index,
    output wire [15:0] row_data
);
    reg [15:0] rom_array[0:15];
    initial begin
        // A simple 16×16 “tank” or “ship”-like pattern (example).
        rom_array[ 0] = 16'b0000000110000000;
        rom_array[ 1] = 16'b0000001111000000;
        rom_array[ 2] = 16'b0000011111100000;
        rom_array[ 3] = 16'b0000111111110000;
        rom_array[ 4] = 16'b0001111111111000;
        rom_array[ 5] = 16'b0011111111111100;
        rom_array[ 6] = 16'b0111111111111110;
        rom_array[ 7] = 16'b1111111111111111;
        rom_array[ 8] = 16'b1111111111111111;
        rom_array[ 9] = 16'b1111111111111111;
        rom_array[10] = 16'b0000011111100000;
        rom_array[11] = 16'b0000011111100000;
        rom_array[12] = 16'b0000011111100000;
        rom_array[13] = 16'b0000011111100000;
        rom_array[14] = 16'b0001111111111000;
        rom_array[15] = 16'b0001111111111000;
    end
    assign row_data = rom_array[row_index];
endmodule