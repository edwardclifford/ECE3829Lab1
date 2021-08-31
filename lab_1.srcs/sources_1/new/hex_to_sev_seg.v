`timescale 1ns / 1ps


module hex_to_sev_seg(
    input [3:0] hex,
    output reg [6:0] seg
    );
    
    always @ (hex)
        case (hex)
            4'b0000:
                sev_seg = 7'b1111110;
            4'b0001:
                sev_seg = 7'b0110000;
            4'b0010:
                sev_seg = 7'b1101101;
            4'b0011:
                sev_seg = 7'b1111001;
            4'b0100:
                sev_seg = 7'b0110011;
            4'b0101:
                sev_seg = 7'b1011011;
            4'b0110:
                sev_seg = 7'b1011111;
            4'b0111:
                sev_seg = 7'b1110000;
            4'b1000:
                sev_seg = 7'b1111111;
            4'b1001:
                sev_seg = 7'b1110111;
            4'b1010:
                sev_seg = 7'b1110111;
            4'b1011:
                sev_seg = 7'b0011111;
            4'b1100:
                sev_seg = 7'b1001110;
            4'b1101:
                sev_seg = 7'b0111101;
            4'b1110:
                sev_seg = 7'b1001111;
            4'b1111:
                sev_seg = 7'b1000111;
        endcase
                
endmodule
