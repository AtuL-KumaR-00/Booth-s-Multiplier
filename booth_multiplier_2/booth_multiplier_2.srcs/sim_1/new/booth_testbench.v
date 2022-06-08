`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 11:18:38 PM
// Design Name: 
// Module Name: booth_testbench
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

module booth_testbench;
    reg [3:0]M;
    reg [3:0]Q;
    wire [7:0]Z;
    
booth_top uut(
    .M(M),
    .Q(Q),
    .Z(Z)
);
initial begin
    M=0;Q=0;
    #10;
    M=5;Q=7;
    #100;
    M=3;Q=8;    //Q=8 in 4 bits is equivalent to -8 in signed binary representation
    #100;
    M=4;Q=6;
    #200;
//    $finish;
end
    
initial begin
    #500 $finish;
    end
endmodule