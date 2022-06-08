`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 11:46:53 PM
// Design Name: 
// Module Name: booth_multiplier
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


module booth_multiplier(
    input [3:0] A_in,
    input [3:0] M,
    input [4:0] Q_in,
    output [3:0] A_out,
    output [4:0] Q_out
    );
    
    reg [3:0] A_temp;
    reg [4:0] Q_temp;
    wire [3:0] A_sum = A_in + M;
    wire [3:0] A_diff = A_in + ~M + 1;  
    
    always @(M, A_in, Q_in, A_sum, A_diff)   begin
        if(Q_in[1:0]==2'b00 || Q_in[1:0]==2'b11 ) begin
            A_temp={A_in[3],A_in[3:1]};
            Q_temp={A_in[0],Q_in[4:1]};
        end
        else if(Q_in[1:0]==2'b01)   begin
            A_temp = {A_sum[3],A_sum[3:1]};
            Q_temp = {A_sum[0],Q_in[4:1]};
        end
        else begin
            A_temp = {A_diff[3],A_diff[3:1]};
            Q_temp = {A_diff[0],Q_in[4:1]};
        end
    end
    
    assign A_out = A_temp;
    assign Q_out = Q_temp;
endmodule
