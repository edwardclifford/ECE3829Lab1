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
    
    reg [3:0] disp_value;
    
    always @ (*)
        case (bt)
            4'b0001:
                begin
                    disp_value = dispA;
                    an = 4'b0111; 
                end
            4'b0010:
                begin
                    disp_value = dispB;
                    an = 4'b1011; 
                end
            4'b0100:
                begin
                    disp_value = dispC;
                    an = 4'b1101; 
                end
            4'b1000:
                begin
                    disp_value = dispD;
                    an = 4'b1110; 
                end
            default:
                begin
                    disp_value = 4'b0000;
                    an = 4'b1111;
                end
        endcase
        
        always @ (disp_value)
        case (disp_value)
            4'b0000:
                seg = 7'b1000000;
            4'b0001:
                seg = 7'b1111001;
            4'b0010:
                seg = 7'b0100100;
            4'b0011:
                seg = 7'b0110000;
            4'b0100:
                seg = 7'b0011001;
            4'b0101:
                seg = 7'b0010010;
            4'b0110:
                seg = 7'b0000010;
            4'b0111:
                seg = 7'b1111000;
            4'b1000:
                seg = 7'b0000000;
            4'b1001:
                seg = 7'b0011000;
            4'b1010:
                seg = 7'b0001000;
            4'b1011:
                seg = 7'b0000011;
            4'b1100:
                seg = 7'b1000110;
            4'b1101:
                seg = 7'b0100001;
            4'b1110:
                seg = 7'b0000110;
            4'b1111:
                seg = 7'b0001110;
        endcase
    
endmodule
