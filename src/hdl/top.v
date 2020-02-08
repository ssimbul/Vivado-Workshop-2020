`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 01:54:02 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module top(
    input CLK_5_MHZ,
    input reset,
    input shift_sel,
    input func_sel,
    output [15:0] led
    );
    
    wire CLK_2_HZ;
    clock_divider clk_div(
     .CLK_5_MHZ (CLK_5_MHZ),
     .reset (reset),
     .CLK_2_HZ  (CLK_2_HZ)
    );
    
    wire [15:0] shift_led;
    shift shifter (
        .sel (shift_sel),
        .clk (CLK_2_HZ),
        .led (shift_led),
        .reset (reset)
    );
    
    wire [15:0] flash_led;
    flash flasher(
        .clk (CLK_2_HZ),
        .reset (reset),
        .led (flash_led)
    );
    
    mux display_mux(
        .sel(func_sel),
        .A(shift_led),
        .B (flash_led),
        .out(led)
    );
endmodule
