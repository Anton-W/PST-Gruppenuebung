%##########################################################################
%
% Navigation des Dehvorgangs
% 
% Input: Nummer des Würfels, Soll-Farbwert
%
%##########################################################################

function Rot_Nav (Cu,Col,rob)   
    ii = C_Koo(Cu,0);
        x = ii(1);
        y = ii(2);
    Rob_move(x, y, 65, 90, rob);
    Rob_move(x, y, 12, 90, rob);
        rob.closeHand
    C_Turn(rob)
    F = Scan_Koo(160,0,65,0,rob)
end