`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2016 09:25:01 PM
// Design Name: 
// Module Name: 6809 Superset module of MC6809 and MC6809E signals
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


module mc6809s(
    input   [7:0] D,
    output  [7:0] DOut,
    output  [15:0] ADDR,
    output  RnW,
    input   CLK,
    output  BS,
    output  BA,
    input   nIRQ,
    input   nFIRQ,
    input   nNMI,
    output  AVMA,
    output  BUSY,
    output  LIC,
    input   nRESET,
    input   nHALT,
    input   nDMABREQ,
    output  [111:0] RegData
);

 mc6809i corecpu(.D(D), .DOut(DOut), .ADDR(ADDR), .RnW(RnW), .CLK(CLK), .BS(BS), .BA(BA), .nIRQ(nIRQ), .nFIRQ(nFIRQ), .nNMI(nNMI), .AVMA(AVMA), .BUSY(BUSY), .LIC(LIC), .nRESET(nRESET),
                 .nDMABREQ(nDMABREQ), .nHALT(nHALT), .RegData(RegData) );

endmodule
