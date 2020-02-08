`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 01:54:02 PM
// Design Name: 
// Module Name: flash
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


module flash(
    input clk,
    input reset,
    output reg [15:0] led = 0
    );
    
    integer flash_delay = 0;
    always @(posedge clk, posedge  reset) begin
        if(reset) begin
        flash_delay <=0;
        led <=0;
        end
        else begin 
            if(flash_delay >= 3) begin 
                flash_delay <=0;
                led <= ~led;
            end 
            else begin 
                flash_delay <= flash_delay + 1;
            end
        end 
    end
endmodule
