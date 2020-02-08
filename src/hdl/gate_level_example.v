`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 01:35:05 PM
// Design Name: 
// Module Name: gate_level_example
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


module gate_level_example(
    input a,
    input b,
    input c,
    input d,
    output out
    );
    
    wire net1; //Nets for wires, nets are outputs for each logic gate
    wire net2; //always numbe nets, its easier
    wire net3;
    wire net4;
    
    and A1(net1,a,b); // and gate with output net1 and 2 inputs a b
    not N1 (net2,c); // inverter with output net 2 and input c
    or O1(net3,net1,net2); // or gate with output net 3 and 2 inputs net 1 net 2
    and A2(net4,net3,d); // and gate with output net 4 and 2 inputs net3 and d
    not (out,net4); // inverter with output out and input net 4
endmodule
