%##########################################################################
%
% Drehen des Würfels um seine eigene Achse, um alle Farben zu erreichen
% 24.01.2020
%
%##########################################################################

function C_Rot (rob)
    Rob_move(160,0,65,90,rob);
    Rob_move(160,0,12,90,rob);
        rob.closeHand
        pause(1)
    rob.moveAngles([5],[90], -1);
        rob.openHand
        pause(1)
    rob.moveAngles([5],[0], -1);
    Rob_move(160,0,65,90,rob);
end