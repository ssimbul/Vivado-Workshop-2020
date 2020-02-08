`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 01:54:02 PM
// Design Name: 
// Module Name: shift
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


module shift(
    input sel,
    input clk,
    input reset,
    output reg [15:0] led = 0
    );
    
    reg [3:0] shift_count = 0;
    always @(posedge clk, posedge reset) begin 
        if (reset) begin 
            shift_count <=0;
            led<=0;
        end
        else begin 
        if(shift_count >=15) begin 
            shift_count <=0; 
        end
        
        led <=sel ? 1 <<shift_count : 2**15 >> shift_count;
        
        shift_count<= shift_count +1;
        end 
        
    end
endmodule
