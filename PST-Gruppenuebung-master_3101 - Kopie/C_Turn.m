% Funktion zum Drehen eines Würfels
% Funktionsintern verwendet
%
%##########################################################################

% PST Gruppenuebung - Paul Böhm, Bennet Gossen, Lasse Jäger, Anton Wöste
% 24.01.2020
%##########################################################################

function C_Turn(rob)
  %Rob_move(160,0,65,90,rob);  
  Rob_move(160,0,12,90,rob);
    rob.openHand
  Rob_move(160,0,12,40,rob)
    rob.closeHand
  Rob_move(160,0,20,90,rob)
    pause(2)
  Rob_move(160,0,12,135,rob)
    rob.openHand
  Rob_move(160,0,65,90,rob);
    pause(1);
end