`timescale 1ns / 1ps

module lab1_top(
        input [15:0] sw,
        input [3:0] bt,
        output [6:0] seg,
        output [3:0] an
    );
    
    wire [3:0] dispA;
    wire [3:0] dispB;
    wire [3:0] dispC;
    wire [3:0] dispD;
    
    input_select input_select_i (sw[15:14],
                                 sw[13:0],
                                 dispA,
                                 dispB,
                                 dispC,
                                 dispD);
                                 
    seven_seg seven_segment_i (dispA,
                               dispB,
                               dispC,
                               dispD,
                               bt,
                               seg,
                               an);
endmodule