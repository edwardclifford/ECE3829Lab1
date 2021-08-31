`timescale 1ns / 1ps

module input_select(
    input [1:0] mode,
    input [13:0] sw,
    output reg [3:0] dispA,
    output reg [3:0] dispB,
    output reg [3:0] dispC,
    output reg [3:0] dispD
    );
    
    reg [7:0] result;
    
    always @ (*)
        case (mode)
            2'b00:
                begin
                    dispA = sw[13:12];
                    dispB = sw[11:8];
                    dispC = sw[7:4];
                    dispD = sw[3:0];
                end
            2'b01:
                begin
                    dispA = 4'd9;
                    dispB = 4'd7;
                    dispC = 4'd2;
                    dispD = 4'd4; 
                end
            2'b10:
                begin
                    result = (sw[7:4] + sw[3:0]);
                    dispA = sw[7:4];
                    dispB = sw[3:0];
                    dispC = result[7:4];
                    dispD = result[3:0];
                end
            2'b11:
                begin
                    result = (sw[7:4] * sw[3:0]);
                    dispA = sw[7:4];
                    dispB = sw[3:0];
                    dispC = result[7:4];
                    dispD = result[3:0];
                end
        endcase
endmodule