`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 11:16:07 PM
// Design Name: 
// Module Name: booth_top
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


module booth_top(
    input [3:0]M,
    input [4:0]Q,
    output [7:0]Z
    );
    
wire [3:0]A_out1;
wire [4:0]Q_out1;    
wire [3:0]A_out2;
wire [4:0]Q_out2; 
wire [3:0]A_out3;
wire [4:0]Q_out3; 
wire [3:0]A_out4;
wire [4:0]Q_out4; 

booth_multiplier ins1(
    .A_in(4'b0000),
    .M(M),
    .Q_in({Q,1'b0}),
    .A_out(A_out1),
    .Q_out(Q_out1)        
    );
    
booth_multiplier ins2(
    .A_in(A_out1),
    .M(M),
    .Q_in(Q_out1),
    .A_out(A_out2),
    .Q_out(Q_out2)        
    );
    
booth_multiplier ins3(
    .A_in(A_out2),
    .M(M),
    .Q_in(Q_out2),
    .A_out(A_out3),
    .Q_out(Q_out3)        
    );
    
booth_multiplier ins4(
    .A_in(A_out3),
    .M(M),
    .Q_in(Q_out3),
    .A_out(A_out4),
    .Q_out(Q_out4)        
    );
    
assign Z= {A_out4,Q_out4[4:1]};

endmodule


