`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 01:35:05 PM
// Design Name: 
// Module Name: behavioural_example
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


module behavioural_example(
    input a,
    input b,
    input c,
    input d,
    output reg out
    );
    
    always@(a,b,c,d)begin
        out=~(((a&b)|(~c))& d);
    end
endmodule
