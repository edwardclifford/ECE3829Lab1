`timescale 1ns / 1ps

module seven_seg(
    input [3:0] dispA,
    input [3:0] dispB,
    input [3:0] dispC,
    input [3:0] dispD,
    input [3:0] bt,
    output reg [6:0] seg,
    output reg [3:0] an
    );
    
    
    always @ (bt)
        case (bt)
            4'b0001:
                begin
                    hex_to_sev_seg(dispA, seg);
                    an = 4'b0111; 
                end
            4'b0010:
                begin
                    hex_to_sev_seg(dispB, seg);
                    an = 4'b0111; 
                end
            4'b0100:
                begin
                    hex_to_sev_seg(dispC, seg);
                    an = 4'b0111; 
                end
            4'b1000:
                begin
                    hex_to_sev_seg(dispD, seg);
                    an = 4'b0111; 
                end
            default:
                begin
                    an = 4'b1111;
                end
        endcase
    
endmodule
