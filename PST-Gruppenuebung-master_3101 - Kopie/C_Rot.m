% Drehen des W�rfels um seine eigene Achse, um alle Farben zu erreichen
% Funktionsintern verwendet
%##########################################################################

% PST Gruppenuebung - Paul B�hm, Bennet Gossen, Lasse J�ger, Anton W�ste
% 24.01.2020
%##########################################################################

function C_Rot (rob)
    Rob_move(160,0,65,90,rob);
    Rob_move(160,0,12,90,rob);
        rob.closeHand
        pause(1)
    rob.moveAngles(5,90, -1);
        rob.openHand
        pause(1)
    rob.moveAngles(5,0, -1);
    Rob_move(160,0,65,90,rob);
end